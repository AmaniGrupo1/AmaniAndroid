package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import io.grpc.ConnectivityState;
import io.grpc.ConnectivityStateInfo;
import io.grpc.EquivalentAddressGroup;
import io.grpc.LoadBalancer;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes22.dex */
final class PickFirstLoadBalancer extends LoadBalancer {
    private ConnectivityState currentState = ConnectivityState.IDLE;
    private final LoadBalancer.Helper helper;
    private LoadBalancer.Subchannel subchannel;

    PickFirstLoadBalancer(LoadBalancer.Helper helper) {
        this.helper = (LoadBalancer.Helper) Preconditions.checkNotNull(helper, "helper");
    }

    @Override // io.grpc.LoadBalancer
    public Status acceptResolvedAddresses(LoadBalancer.ResolvedAddresses resolvedAddresses) {
        List<EquivalentAddressGroup> servers = resolvedAddresses.getAddresses();
        if (servers.isEmpty()) {
            Status unavailableStatus = Status.UNAVAILABLE.withDescription("NameResolver returned no usable address. addrs=" + resolvedAddresses.getAddresses() + ", attrs=" + resolvedAddresses.getAttributes());
            handleNameResolutionError(unavailableStatus);
            return unavailableStatus;
        }
        if (resolvedAddresses.getLoadBalancingPolicyConfig() instanceof PickFirstLoadBalancerConfig) {
            PickFirstLoadBalancerConfig config = (PickFirstLoadBalancerConfig) resolvedAddresses.getLoadBalancingPolicyConfig();
            if (config.shuffleAddressList != null && config.shuffleAddressList.booleanValue()) {
                servers = new ArrayList(servers);
                Collections.shuffle(servers, config.randomSeed != null ? new Random(config.randomSeed.longValue()) : new Random());
            }
        }
        if (this.subchannel == null) {
            final LoadBalancer.Subchannel subchannel = this.helper.createSubchannel(LoadBalancer.CreateSubchannelArgs.newBuilder().setAddresses(servers).build());
            subchannel.start(new LoadBalancer.SubchannelStateListener() { // from class: io.grpc.internal.PickFirstLoadBalancer.1
                @Override // io.grpc.LoadBalancer.SubchannelStateListener
                public void onSubchannelState(ConnectivityStateInfo stateInfo) {
                    PickFirstLoadBalancer.this.processSubchannelState(subchannel, stateInfo);
                }
            });
            this.subchannel = subchannel;
            updateBalancingState(ConnectivityState.CONNECTING, new Picker(LoadBalancer.PickResult.withSubchannel(subchannel)));
            subchannel.requestConnection();
        } else {
            this.subchannel.updateAddresses(servers);
        }
        return Status.OK;
    }

    @Override // io.grpc.LoadBalancer
    public void handleNameResolutionError(Status error) {
        if (this.subchannel != null) {
            this.subchannel.shutdown();
            this.subchannel = null;
        }
        updateBalancingState(ConnectivityState.TRANSIENT_FAILURE, new Picker(LoadBalancer.PickResult.withError(error)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSubchannelState(LoadBalancer.Subchannel subchannel, ConnectivityStateInfo stateInfo) {
        LoadBalancer.SubchannelPicker picker;
        ConnectivityState newState = stateInfo.getState();
        if (newState == ConnectivityState.SHUTDOWN) {
            return;
        }
        if (newState == ConnectivityState.TRANSIENT_FAILURE || newState == ConnectivityState.IDLE) {
            this.helper.refreshNameResolution();
        }
        if (this.currentState == ConnectivityState.TRANSIENT_FAILURE) {
            if (newState == ConnectivityState.CONNECTING) {
                return;
            }
            if (newState == ConnectivityState.IDLE) {
                requestConnection();
                return;
            }
        }
        switch (newState) {
            case IDLE:
                picker = new RequestConnectionPicker(subchannel);
                break;
            case CONNECTING:
                picker = new Picker(LoadBalancer.PickResult.withNoResult());
                break;
            case READY:
                picker = new Picker(LoadBalancer.PickResult.withSubchannel(subchannel));
                break;
            case TRANSIENT_FAILURE:
                picker = new Picker(LoadBalancer.PickResult.withError(stateInfo.getStatus()));
                break;
            default:
                throw new IllegalArgumentException("Unsupported state:" + newState);
        }
        updateBalancingState(newState, picker);
    }

    private void updateBalancingState(ConnectivityState state, LoadBalancer.SubchannelPicker picker) {
        this.currentState = state;
        this.helper.updateBalancingState(state, picker);
    }

    @Override // io.grpc.LoadBalancer
    public void shutdown() {
        if (this.subchannel != null) {
            this.subchannel.shutdown();
        }
    }

    @Override // io.grpc.LoadBalancer
    public void requestConnection() {
        if (this.subchannel != null) {
            this.subchannel.requestConnection();
        }
    }

    private static final class Picker extends LoadBalancer.SubchannelPicker {
        private final LoadBalancer.PickResult result;

        Picker(LoadBalancer.PickResult result) {
            this.result = (LoadBalancer.PickResult) Preconditions.checkNotNull(result, "result");
        }

        @Override // io.grpc.LoadBalancer.SubchannelPicker
        public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs args) {
            return this.result;
        }

        public String toString() {
            return MoreObjects.toStringHelper((Class<?>) Picker.class).add("result", this.result).toString();
        }
    }

    private final class RequestConnectionPicker extends LoadBalancer.SubchannelPicker {
        private final AtomicBoolean connectionRequested = new AtomicBoolean(false);
        private final LoadBalancer.Subchannel subchannel;

        RequestConnectionPicker(LoadBalancer.Subchannel subchannel) {
            this.subchannel = (LoadBalancer.Subchannel) Preconditions.checkNotNull(subchannel, "subchannel");
        }

        @Override // io.grpc.LoadBalancer.SubchannelPicker
        public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs args) {
            if (this.connectionRequested.compareAndSet(false, true)) {
                PickFirstLoadBalancer.this.helper.getSynchronizationContext().execute(new Runnable() { // from class: io.grpc.internal.PickFirstLoadBalancer.RequestConnectionPicker.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RequestConnectionPicker.this.subchannel.requestConnection();
                    }
                });
            }
            return LoadBalancer.PickResult.withNoResult();
        }
    }

    public static final class PickFirstLoadBalancerConfig {

        @Nullable
        final Long randomSeed;

        @Nullable
        public final Boolean shuffleAddressList;

        public PickFirstLoadBalancerConfig(@Nullable Boolean shuffleAddressList) {
            this(shuffleAddressList, null);
        }

        PickFirstLoadBalancerConfig(@Nullable Boolean shuffleAddressList, @Nullable Long randomSeed) {
            this.shuffleAddressList = shuffleAddressList;
            this.randomSeed = randomSeed;
        }
    }
}
