package io.grpc.util;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import io.grpc.ConnectivityState;
import io.grpc.LoadBalancer;
import io.grpc.util.MultiChildLoadBalancer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes22.dex */
public class RoundRobinLoadBalancer extends MultiChildLoadBalancer {
    protected LoadBalancer.SubchannelPicker currentPicker;
    private final AtomicInteger sequence;

    public RoundRobinLoadBalancer(LoadBalancer.Helper helper) {
        super(helper);
        this.sequence = new AtomicInteger(new Random().nextInt());
        this.currentPicker = new EmptyPicker();
    }

    @Override // io.grpc.util.MultiChildLoadBalancer
    protected LoadBalancer.SubchannelPicker getSubchannelPicker(Map<Object, LoadBalancer.SubchannelPicker> childPickers) {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.util.MultiChildLoadBalancer
    protected void updateOverallBalancingState() {
        List<MultiChildLoadBalancer.ChildLbState> activeList = getReadyChildren();
        if (activeList.isEmpty()) {
            boolean isConnecting = false;
            for (MultiChildLoadBalancer.ChildLbState childLbState : getChildLbStates()) {
                ConnectivityState state = childLbState.getCurrentState();
                if (state == ConnectivityState.CONNECTING || state == ConnectivityState.IDLE) {
                    isConnecting = true;
                    break;
                }
            }
            if (isConnecting) {
                updateBalancingState(ConnectivityState.CONNECTING, new EmptyPicker());
                return;
            } else {
                updateBalancingState(ConnectivityState.TRANSIENT_FAILURE, createReadyPicker(getChildLbStates()));
                return;
            }
        }
        updateBalancingState(ConnectivityState.READY, createReadyPicker(activeList));
    }

    private void updateBalancingState(ConnectivityState state, LoadBalancer.SubchannelPicker picker) {
        if (state != this.currentConnectivityState || !picker.equals(this.currentPicker)) {
            getHelper().updateBalancingState(state, picker);
            this.currentConnectivityState = state;
            this.currentPicker = picker;
        }
    }

    protected LoadBalancer.SubchannelPicker createReadyPicker(Collection<MultiChildLoadBalancer.ChildLbState> children) {
        List<LoadBalancer.SubchannelPicker> pickerList = new ArrayList<>();
        for (MultiChildLoadBalancer.ChildLbState child : children) {
            LoadBalancer.SubchannelPicker picker = child.getCurrentPicker();
            pickerList.add(picker);
        }
        return new ReadyPicker(pickerList, this.sequence);
    }

    static class ReadyPicker extends LoadBalancer.SubchannelPicker {
        private final int hashCode;
        private final AtomicInteger index;
        private final List<LoadBalancer.SubchannelPicker> subchannelPickers;

        public ReadyPicker(List<LoadBalancer.SubchannelPicker> list, AtomicInteger index) {
            Preconditions.checkArgument(!list.isEmpty(), "empty list");
            this.subchannelPickers = list;
            this.index = (AtomicInteger) Preconditions.checkNotNull(index, "index");
            int sum = 0;
            for (LoadBalancer.SubchannelPicker picker : this.subchannelPickers) {
                sum += picker.hashCode();
            }
            this.hashCode = sum;
        }

        @Override // io.grpc.LoadBalancer.SubchannelPicker
        public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs args) {
            return this.subchannelPickers.get(nextIndex()).pickSubchannel(args);
        }

        public String toString() {
            return MoreObjects.toStringHelper((Class<?>) ReadyPicker.class).add("subchannelPickers", this.subchannelPickers).toString();
        }

        private int nextIndex() {
            int i = this.index.getAndIncrement() & Integer.MAX_VALUE;
            return i % this.subchannelPickers.size();
        }

        List<LoadBalancer.SubchannelPicker> getSubchannelPickers() {
            return this.subchannelPickers;
        }

        public int hashCode() {
            return this.hashCode;
        }

        public boolean equals(Object o) {
            if (!(o instanceof ReadyPicker)) {
                return false;
            }
            ReadyPicker other = (ReadyPicker) o;
            if (other == this) {
                return true;
            }
            return this.hashCode == other.hashCode && this.index == other.index && this.subchannelPickers.size() == other.subchannelPickers.size() && new HashSet(this.subchannelPickers).containsAll(other.subchannelPickers);
        }
    }

    static final class EmptyPicker extends LoadBalancer.SubchannelPicker {
        EmptyPicker() {
        }

        @Override // io.grpc.LoadBalancer.SubchannelPicker
        public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs args) {
            return LoadBalancer.PickResult.withNoResult();
        }

        public int hashCode() {
            return getClass().hashCode();
        }

        public boolean equals(Object o) {
            return o instanceof EmptyPicker;
        }
    }
}
