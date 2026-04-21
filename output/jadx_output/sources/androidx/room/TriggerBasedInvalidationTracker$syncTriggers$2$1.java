package androidx.room;

import androidx.room.ObservedTableStates;
import androidx.room.Transactor;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: InvalidationTracker.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "connection", "Landroidx/room/Transactor;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1", f = "InvalidationTracker.kt", i = {0}, l = {301, 309}, m = "invokeSuspend", n = {"connection"}, s = {"L$0"})
final class TriggerBasedInvalidationTracker$syncTriggers$2$1 extends SuspendLambda implements Function2<Transactor, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TriggerBasedInvalidationTracker$syncTriggers$2$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation<? super TriggerBasedInvalidationTracker$syncTriggers$2$1> continuation) {
        super(2, continuation);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this.this$0, continuation);
        triggerBasedInvalidationTracker$syncTriggers$2$1.L$0 = obj;
        return triggerBasedInvalidationTracker$syncTriggers$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Transactor transactor, Continuation<? super Unit> continuation) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) create(transactor, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        Object $result2;
        Transactor connection;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Transactor connection2 = (Transactor) this.L$0;
                this.L$0 = connection2;
                this.label = 1;
                Object objInTransaction = connection2.inTransaction(this);
                if (objInTransaction == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $result2 = $result;
                $result = objInTransaction;
                connection = connection2;
                if (((Boolean) $result).booleanValue()) {
                    ObservedTableStates.ObserveOp[] tablesToSync = this.this$0.observedTableStates.getTablesToSync$room_runtime_release();
                    if (tablesToSync != null) {
                        this.L$0 = null;
                        this.label = 2;
                        if (connection.withTransaction(Transactor.SQLiteTransactionType.IMMEDIATE, new AnonymousClass1(tablesToSync, this.this$0, connection, null), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $result = $result2;
                    }
                    return Unit.INSTANCE;
                }
                return Unit.INSTANCE;
            case 1:
                Transactor connection3 = (Transactor) this.L$0;
                ResultKt.throwOnFailure($result);
                connection = connection3;
                $result2 = $result;
                if (((Boolean) $result).booleanValue()) {
                }
                break;
            case 2:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/room/TransactionScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1", f = "InvalidationTracker.kt", i = {0, 0, 1, 1}, l = {313, 314}, m = "invokeSuspend", n = {"$this$forEachIndexed$iv", "index$iv", "$this$forEachIndexed$iv", "index$iv"}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Unit>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Transactor $connection;
        final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1$WhenMappings */
        /* JADX INFO: compiled from: InvalidationTracker.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ObservedTableStates.ObserveOp.values().length];
                try {
                    iArr[ObservedTableStates.ObserveOp.NO_OP.ordinal()] = 1;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[ObservedTableStates.ObserveOp.ADD.ordinal()] = 2;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[ObservedTableStates.ObserveOp.REMOVE.ordinal()] = 3;
                } catch (NoSuchFieldError e3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$tablesToSync = observeOpArr;
            this.this$0 = triggerBasedInvalidationTracker;
            this.$connection = transactor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$tablesToSync, this.this$0, this.$connection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TransactionScope<Unit> transactionScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(transactionScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00ad  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x008d -> B:25:0x00aa). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00a7 -> B:25:0x00aa). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a9 -> B:25:0x00aa). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            int tableId;
            Transactor transactor;
            int length;
            ObservedTableStates.ObserveOp[] observeOpArr;
            int $i$f$forEachIndexed;
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
            AnonymousClass1 anonymousClass1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ObservedTableStates.ObserveOp[] observeOpArr2 = this.$tablesToSync;
                    TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2 = this.this$0;
                    tableId = 0;
                    transactor = this.$connection;
                    length = observeOpArr2.length;
                    observeOpArr = observeOpArr2;
                    $i$f$forEachIndexed = 0;
                    triggerBasedInvalidationTracker = triggerBasedInvalidationTracker2;
                    anonymousClass1 = this;
                    if ($i$f$forEachIndexed >= length) {
                        int index$iv = tableId + 1;
                        switch (WhenMappings.$EnumSwitchMapping$0[observeOpArr[$i$f$forEachIndexed].ordinal()]) {
                            case 1:
                                tableId = index$iv;
                                break;
                            case 2:
                                anonymousClass1.L$0 = observeOpArr;
                                anonymousClass1.L$1 = triggerBasedInvalidationTracker;
                                anonymousClass1.L$2 = transactor;
                                anonymousClass1.I$0 = index$iv;
                                anonymousClass1.I$1 = $i$f$forEachIndexed;
                                anonymousClass1.I$2 = length;
                                anonymousClass1.label = 1;
                                if (triggerBasedInvalidationTracker.startTrackingTable(transactor, tableId, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                tableId = index$iv;
                                break;
                                break;
                            case 3:
                                anonymousClass1.L$0 = observeOpArr;
                                anonymousClass1.L$1 = triggerBasedInvalidationTracker;
                                anonymousClass1.L$2 = transactor;
                                anonymousClass1.I$0 = index$iv;
                                anonymousClass1.I$1 = $i$f$forEachIndexed;
                                anonymousClass1.I$2 = length;
                                anonymousClass1.label = 2;
                                if (triggerBasedInvalidationTracker.stopTrackingTable(transactor, tableId, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                tableId = index$iv;
                                break;
                                break;
                            default:
                                throw new NoWhenBranchMatchedException();
                        }
                        $i$f$forEachIndexed++;
                        if ($i$f$forEachIndexed >= length) {
                            return Unit.INSTANCE;
                        }
                    }
                    break;
                case 1:
                    length = this.I$2;
                    $i$f$forEachIndexed = this.I$1;
                    tableId = this.I$0;
                    transactor = (Transactor) this.L$2;
                    triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) this.L$1;
                    observeOpArr = (ObservedTableStates.ObserveOp[]) this.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
                    $i$f$forEachIndexed++;
                    if ($i$f$forEachIndexed >= length) {
                    }
                    break;
                case 2:
                    length = this.I$2;
                    $i$f$forEachIndexed = this.I$1;
                    tableId = this.I$0;
                    transactor = (Transactor) this.L$2;
                    triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) this.L$1;
                    observeOpArr = (ObservedTableStates.ObserveOp[]) this.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
                    $i$f$forEachIndexed++;
                    if ($i$f$forEachIndexed >= length) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
