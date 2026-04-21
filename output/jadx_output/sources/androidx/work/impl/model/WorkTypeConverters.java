package androidx.work.impl.model;

import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.utils.NetworkRequest28;
import androidx.work.impl.utils.NetworkRequestCompat;
import androidx.work.impl.utils.NetworkRequestCompatKt;
import com.google.firebase.firestore.model.Values;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;

/* JADX INFO: compiled from: WorkTypeConverters.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004#$%&B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0016\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001c\u001a\u00020\u0017H\u0007J\u0015\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u0017H\u0001¢\u0006\u0002\b\u001fJ\u0015\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u001eH\u0001¢\u0006\u0002\b\"¨\u0006'"}, d2 = {"Landroidx/work/impl/model/WorkTypeConverters;", "", "<init>", "()V", "stateToInt", "", "state", "Landroidx/work/WorkInfo$State;", "intToState", Values.VECTOR_MAP_VECTORS_KEY, "backoffPolicyToInt", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "intToBackoffPolicy", "networkTypeToInt", "networkType", "Landroidx/work/NetworkType;", "intToNetworkType", "outOfQuotaPolicyToInt", "policy", "Landroidx/work/OutOfQuotaPolicy;", "intToOutOfQuotaPolicy", "setOfTriggersToByteArray", "", "triggers", "", "Landroidx/work/Constraints$ContentUriTrigger;", "byteArrayToSetOfTriggers", "bytes", "toNetworkRequest", "Landroidx/work/impl/utils/NetworkRequestCompat;", "toNetworkRequest$work_runtime_release", "fromNetworkRequest", "requestCompat", "fromNetworkRequest$work_runtime_release", "StateIds", "BackoffPolicyIds", "NetworkTypeIds", "OutOfPolicyIds", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkTypeConverters {
    public static final WorkTypeConverters INSTANCE = new WorkTypeConverters();

    /* JADX INFO: compiled from: WorkTypeConverters.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[WorkInfo.State.values().length];
            try {
                iArr[WorkInfo.State.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[WorkInfo.State.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[WorkInfo.State.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[WorkInfo.State.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[WorkInfo.State.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[WorkInfo.State.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BackoffPolicy.values().length];
            try {
                iArr2[BackoffPolicy.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr2[BackoffPolicy.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[NetworkType.values().length];
            try {
                iArr3[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr3[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr3[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr3[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr3[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e13) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[OutOfQuotaPolicy.values().length];
            try {
                iArr4[OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr4[OutOfQuotaPolicy.DROP_WORK_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e15) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    private WorkTypeConverters() {
    }

    /* JADX INFO: compiled from: WorkTypeConverters.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/work/impl/model/WorkTypeConverters$StateIds;", "", "<init>", "()V", "ENQUEUED", "", DebugCoroutineInfoImplKt.RUNNING, "SUCCEEDED", "FAILED", "BLOCKED", "CANCELLED", "COMPLETED_STATES", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class StateIds {
        public static final int BLOCKED = 4;
        public static final int CANCELLED = 5;
        public static final String COMPLETED_STATES = "(2, 3, 5)";
        public static final int ENQUEUED = 0;
        public static final int FAILED = 3;
        public static final StateIds INSTANCE = new StateIds();
        public static final int RUNNING = 1;
        public static final int SUCCEEDED = 2;

        private StateIds() {
        }
    }

    /* JADX INFO: compiled from: WorkTypeConverters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds;", "", "<init>", "()V", "EXPONENTIAL", "", "LINEAR", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class BackoffPolicyIds {
        public static final int EXPONENTIAL = 0;
        public static final BackoffPolicyIds INSTANCE = new BackoffPolicyIds();
        public static final int LINEAR = 1;

        private BackoffPolicyIds() {
        }
    }

    /* JADX INFO: compiled from: WorkTypeConverters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/work/impl/model/WorkTypeConverters$NetworkTypeIds;", "", "<init>", "()V", "NOT_REQUIRED", "", "CONNECTED", "UNMETERED", "NOT_ROAMING", "METERED", "TEMPORARILY_UNMETERED", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class NetworkTypeIds {
        public static final int CONNECTED = 1;
        public static final NetworkTypeIds INSTANCE = new NetworkTypeIds();
        public static final int METERED = 4;
        public static final int NOT_REQUIRED = 0;
        public static final int NOT_ROAMING = 3;
        public static final int TEMPORARILY_UNMETERED = 5;
        public static final int UNMETERED = 2;

        private NetworkTypeIds() {
        }
    }

    /* JADX INFO: compiled from: WorkTypeConverters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkTypeConverters$OutOfPolicyIds;", "", "<init>", "()V", "RUN_AS_NON_EXPEDITED_WORK_REQUEST", "", "DROP_WORK_REQUEST", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class OutOfPolicyIds {
        public static final int DROP_WORK_REQUEST = 1;
        public static final OutOfPolicyIds INSTANCE = new OutOfPolicyIds();
        public static final int RUN_AS_NON_EXPEDITED_WORK_REQUEST = 0;

        private OutOfPolicyIds() {
        }
    }

    @JvmStatic
    public static final int stateToInt(WorkInfo.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        switch (WhenMappings.$EnumSwitchMapping$0[state.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @JvmStatic
    public static final WorkInfo.State intToState(int value) {
        switch (value) {
            case 0:
                return WorkInfo.State.ENQUEUED;
            case 1:
                return WorkInfo.State.RUNNING;
            case 2:
                return WorkInfo.State.SUCCEEDED;
            case 3:
                return WorkInfo.State.FAILED;
            case 4:
                return WorkInfo.State.BLOCKED;
            case 5:
                return WorkInfo.State.CANCELLED;
            default:
                throw new IllegalArgumentException("Could not convert " + value + " to State");
        }
    }

    @JvmStatic
    public static final int backoffPolicyToInt(BackoffPolicy backoffPolicy) {
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        switch (WhenMappings.$EnumSwitchMapping$1[backoffPolicy.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @JvmStatic
    public static final BackoffPolicy intToBackoffPolicy(int value) {
        switch (value) {
            case 0:
                return BackoffPolicy.EXPONENTIAL;
            case 1:
                return BackoffPolicy.LINEAR;
            default:
                throw new IllegalArgumentException("Could not convert " + value + " to BackoffPolicy");
        }
    }

    @JvmStatic
    public static final int networkTypeToInt(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        switch (WhenMappings.$EnumSwitchMapping$2[networkType.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            default:
                if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
                    return 5;
                }
                throw new IllegalArgumentException("Could not convert " + networkType + " to int");
        }
    }

    @JvmStatic
    public static final NetworkType intToNetworkType(int value) {
        switch (value) {
            case 0:
                return NetworkType.NOT_REQUIRED;
            case 1:
                return NetworkType.CONNECTED;
            case 2:
                return NetworkType.UNMETERED;
            case 3:
                return NetworkType.NOT_ROAMING;
            case 4:
                return NetworkType.METERED;
            default:
                if (Build.VERSION.SDK_INT >= 30 && value == 5) {
                    return NetworkType.TEMPORARILY_UNMETERED;
                }
                throw new IllegalArgumentException("Could not convert " + value + " to NetworkType");
        }
    }

    @JvmStatic
    public static final int outOfQuotaPolicyToInt(OutOfQuotaPolicy policy) {
        Intrinsics.checkNotNullParameter(policy, "policy");
        switch (WhenMappings.$EnumSwitchMapping$3[policy.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @JvmStatic
    public static final OutOfQuotaPolicy intToOutOfQuotaPolicy(int value) {
        switch (value) {
            case 0:
                return OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
            case 1:
                return OutOfQuotaPolicy.DROP_WORK_REQUEST;
            default:
                throw new IllegalArgumentException("Could not convert " + value + " to OutOfQuotaPolicy");
        }
    }

    @JvmStatic
    public static final byte[] setOfTriggersToByteArray(Set<Constraints.ContentUriTrigger> triggers) {
        Intrinsics.checkNotNullParameter(triggers, "triggers");
        if (triggers.isEmpty()) {
            return new byte[0];
        }
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = outputStream;
        try {
            ByteArrayOutputStream byteArrayOutputStream = objectOutputStream;
            objectOutputStream = new ObjectOutputStream(outputStream);
            try {
                ObjectOutputStream objectOutputStream2 = objectOutputStream;
                objectOutputStream2.writeInt(triggers.size());
                for (Constraints.ContentUriTrigger trigger : triggers) {
                    objectOutputStream2.writeUTF(trigger.getUri().toString());
                    objectOutputStream2.writeBoolean(trigger.getIsTriggeredForDescendants());
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                byte[] byteArray = outputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }

    @JvmStatic
    public static final Set<Constraints.ContentUriTrigger> byteArrayToSetOfTriggers(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        Set triggers = new LinkedHashSet();
        if (bytes.length == 0) {
            return triggers;
        }
        ByteArrayInputStream inputStream = new ByteArrayInputStream(bytes);
        ObjectInputStream objectInputStream = inputStream;
        try {
            ByteArrayInputStream byteArrayInputStream = objectInputStream;
            try {
                objectInputStream = new ObjectInputStream(inputStream);
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                ObjectInputStream objectInputStream2 = objectInputStream;
                int i = objectInputStream2.readInt();
                for (int i2 = 0; i2 < i; i2++) {
                    Uri uri = Uri.parse(objectInputStream2.readUTF());
                    boolean triggersForDescendants = objectInputStream2.readBoolean();
                    Intrinsics.checkNotNull(uri);
                    triggers.add(new Constraints.ContentUriTrigger(uri, triggersForDescendants));
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(objectInputStream, null);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(objectInputStream, null);
                return triggers;
            } finally {
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @JvmStatic
    public static final NetworkRequestCompat toNetworkRequest$work_runtime_release(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (Build.VERSION.SDK_INT >= 28) {
            if (!(bytes.length == 0)) {
                ObjectInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                try {
                    ByteArrayInputStream it = byteArrayInputStream;
                    byteArrayInputStream = new ObjectInputStream(it);
                    try {
                        ObjectInputStream inputStream = byteArrayInputStream;
                        int[] transports = new int[inputStream.readInt()];
                        int length = transports.length;
                        for (int i = 0; i < length; i++) {
                            int i2 = i;
                            transports[i2] = inputStream.readInt();
                        }
                        int[] capabilities = new int[inputStream.readInt()];
                        int length2 = capabilities.length;
                        for (int i3 = 0; i3 < length2; i3++) {
                            int i4 = i3;
                            capabilities[i4] = inputStream.readInt();
                        }
                        NetworkRequestCompat networkRequestCompatCreateNetworkRequestCompat$work_runtime_release = NetworkRequest28.INSTANCE.createNetworkRequestCompat$work_runtime_release(capabilities, transports);
                        CloseableKt.closeFinally(byteArrayInputStream, null);
                        CloseableKt.closeFinally(byteArrayInputStream, null);
                        return networkRequestCompatCreateNetworkRequestCompat$work_runtime_release;
                    } finally {
                    }
                } finally {
                }
            }
        }
        return new NetworkRequestCompat(null);
    }

    @JvmStatic
    public static final byte[] fromNetworkRequest$work_runtime_release(NetworkRequestCompat requestCompat) {
        Intrinsics.checkNotNullParameter(requestCompat, "requestCompat");
        if (Build.VERSION.SDK_INT < 28) {
            return new byte[0];
        }
        NetworkRequest request = requestCompat.getNetworkRequest();
        if (request == null) {
            return new byte[0];
        }
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = outputStream;
        try {
            ByteArrayOutputStream it = objectOutputStream;
            objectOutputStream = new ObjectOutputStream(it);
            try {
                ObjectOutputStream outputStream2 = objectOutputStream;
                int[] transports = NetworkRequestCompatKt.getTransportTypesCompat(request);
                int[] capabilities = NetworkRequestCompatKt.getCapabilitiesCompat(request);
                outputStream2.writeInt(transports.length);
                for (int element$iv : transports) {
                    outputStream2.writeInt(element$iv);
                }
                outputStream2.writeInt(capabilities.length);
                for (int element$iv2 : capabilities) {
                    outputStream2.writeInt(element$iv2);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(objectOutputStream, null);
                byte[] byteArray = outputStream.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                return byteArray;
            } finally {
            }
        } finally {
        }
    }
}
