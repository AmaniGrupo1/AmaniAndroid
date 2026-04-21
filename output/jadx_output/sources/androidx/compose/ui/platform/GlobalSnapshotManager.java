package androidx.compose.ui.platform;

import androidx.compose.runtime.snapshots.Snapshot;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: compiled from: GlobalSnapshotManager.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/GlobalSnapshotManager;", "", "<init>", "()V", "started", "Ljava/util/concurrent/atomic/AtomicBoolean;", "sent", "ensureStarted", "", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GlobalSnapshotManager {
    public static final GlobalSnapshotManager INSTANCE = new GlobalSnapshotManager();
    private static final AtomicBoolean started = new AtomicBoolean(false);
    private static final AtomicBoolean sent = new AtomicBoolean(false);
    public static final int $stable = 8;

    private GlobalSnapshotManager() {
    }

    public final void ensureStarted() {
        if (started.compareAndSet(false, true)) {
            final Channel channel = ChannelKt.Channel$default(1, null, null, 6, null);
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(AndroidUiDispatcher.INSTANCE.getMain()), null, null, new AnonymousClass1(channel, null), 3, null);
            Snapshot.INSTANCE.registerGlobalWriteObserver(new Function1<Object, Unit>() { // from class: androidx.compose.ui.platform.GlobalSnapshotManager.ensureStarted.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object p1) {
                    invoke2(p1);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object it) {
                    if (GlobalSnapshotManager.sent.compareAndSet(false, true)) {
                        channel.mo10050trySendJP2dKIU(Unit.INSTANCE);
                    }
                }
            });
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1, reason: invalid class name */
    /* JADX INFO: compiled from: GlobalSnapshotManager.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", i = {0}, l = {64}, m = "invokeSuspend", n = {"$this$consume$iv$iv"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Channel<Unit> $channel;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Channel<Unit> channel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$channel = channel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$channel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0067 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:18:0x005f, B:20:0x0067, B:21:0x0087), top: B:35:0x005f }] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0087 A[Catch: all -> 0x0093, TRY_LEAVE, TryCatch #0 {all -> 0x0093, blocks: (B:18:0x005f, B:20:0x0067, B:21:0x0087), top: B:35:0x005f }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0054 -> B:35:0x005f). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object e$iv) {
            ReceiveChannel $this$consume$iv$iv;
            int $i$f$consumeEach;
            int $i$f$consume;
            ReceiveChannel $this$consumeEach_u24lambda_u240$iv;
            ChannelIterator it;
            AnonymousClass1 anonymousClass1;
            Object objHasNext;
            Object $result;
            AnonymousClass1 anonymousClass12;
            ReceiveChannel $this$consume$iv$iv2;
            Throwable cause$iv$iv;
            ChannelIterator channelIterator;
            ReceiveChannel receiveChannel;
            int $i$f$consume2;
            int $i$f$consume3;
            Object obj;
            Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(e$iv);
                    ReceiveChannel $this$consumeEach$iv = this.$channel;
                    $this$consume$iv$iv = $this$consumeEach$iv;
                    Throwable cause$iv$iv2 = null;
                    try {
                        $i$f$consumeEach = 0;
                        $i$f$consume = 0;
                        $this$consumeEach_u24lambda_u240$iv = null;
                        it = $this$consume$iv$iv.iterator();
                        anonymousClass1 = this;
                        try {
                            anonymousClass1.L$0 = $this$consume$iv$iv;
                            anonymousClass1.L$1 = it;
                            anonymousClass1.label = 1;
                            objHasNext = it.hasNext(anonymousClass1);
                        } catch (Throwable th) {
                            e$iv$iv = th;
                        }
                    } catch (Throwable th2) {
                        e$iv$iv = th2;
                    }
                    if (objHasNext != $result2) {
                        return $result2;
                    }
                    Object obj2 = $result2;
                    $result = e$iv;
                    e$iv = objHasNext;
                    anonymousClass12 = anonymousClass1;
                    $this$consume$iv$iv2 = $this$consume$iv$iv;
                    cause$iv$iv = cause$iv$iv2;
                    channelIterator = it;
                    receiveChannel = $this$consumeEach_u24lambda_u240$iv;
                    $i$f$consume2 = $i$f$consumeEach;
                    $i$f$consume3 = $i$f$consume;
                    obj = obj2;
                    try {
                        if (!((Boolean) e$iv).booleanValue()) {
                            GlobalSnapshotManager.sent.set(false);
                            Snapshot.INSTANCE.sendApplyNotifications();
                            e$iv = $result;
                            $result2 = obj;
                            $i$f$consume = $i$f$consume3;
                            $i$f$consumeEach = $i$f$consume2;
                            $this$consumeEach_u24lambda_u240$iv = receiveChannel;
                            it = channelIterator;
                            cause$iv$iv2 = cause$iv$iv;
                            $this$consume$iv$iv = $this$consume$iv$iv2;
                            anonymousClass1 = anonymousClass12;
                            anonymousClass1.L$0 = $this$consume$iv$iv;
                            anonymousClass1.L$1 = it;
                            anonymousClass1.label = 1;
                            objHasNext = it.hasNext(anonymousClass1);
                            if (objHasNext != $result2) {
                            }
                        } else {
                            Unit unit = Unit.INSTANCE;
                            ChannelsKt.cancelConsumed($this$consume$iv$iv2, cause$iv$iv);
                            return Unit.INSTANCE;
                        }
                    } catch (Throwable th3) {
                        e$iv$iv = th3;
                        $this$consume$iv$iv = $this$consume$iv$iv2;
                    }
                    Throwable cause$iv$iv3 = e$iv$iv;
                    try {
                        throw e$iv$iv;
                    } catch (Throwable e$iv$iv) {
                        ChannelsKt.cancelConsumed($this$consume$iv$iv, cause$iv$iv3);
                        throw e$iv$iv;
                    }
                    break;
                case 1:
                    ChannelIterator channelIterator2 = (ChannelIterator) this.L$1;
                    $this$consume$iv$iv = (ReceiveChannel) this.L$0;
                    try {
                        ResultKt.throwOnFailure(e$iv);
                        anonymousClass12 = this;
                        $this$consume$iv$iv2 = $this$consume$iv$iv;
                        cause$iv$iv = null;
                        channelIterator = channelIterator2;
                        receiveChannel = null;
                        $i$f$consume2 = 0;
                        $i$f$consume3 = 0;
                        obj = $result2;
                        $result = e$iv;
                        if (!((Boolean) e$iv).booleanValue()) {
                        }
                    } catch (Throwable th4) {
                        e$iv$iv = th4;
                    }
                    Throwable cause$iv$iv32 = e$iv$iv;
                    throw e$iv$iv;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
