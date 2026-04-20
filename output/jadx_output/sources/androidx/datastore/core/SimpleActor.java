package androidx.datastore.core;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: SimpleActor.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Be\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\n\u0012\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00020\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Landroidx/datastore/core/SimpleActor;", ExifInterface.GPS_DIRECTION_TRUE, "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "onComplete", "Lkotlin/Function1;", "", "", "onUndeliveredElement", "Lkotlin/Function2;", "consumeMessage", "Lkotlin/coroutines/Continuation;", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "messageQueue", "Lkotlinx/coroutines/channels/Channel;", "remainingMessages", "Landroidx/datastore/core/AtomicInt;", "offer", NotificationCompat.CATEGORY_MESSAGE, "(Ljava/lang/Object;)V", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SimpleActor<T> {
    private final Function2<T, Continuation<? super Unit>, Object> consumeMessage;
    private final Channel<T> messageQueue;
    private final AtomicInt remainingMessages;
    private final CoroutineScope scope;

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleActor(CoroutineScope scope, final Function1<? super Throwable, Unit> onComplete, final Function2<? super T, ? super Throwable, Unit> onUndeliveredElement, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> consumeMessage) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Intrinsics.checkNotNullParameter(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.checkNotNullParameter(consumeMessage, "consumeMessage");
        this.scope = scope;
        this.consumeMessage = consumeMessage;
        this.messageQueue = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInt(0);
        Job job = (Job) this.scope.getCoroutineContext().get(Job.INSTANCE);
        if (job != null) {
            job.invokeOnCompletion(new Function1() { // from class: androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SimpleActor._init_$lambda$0(onComplete, this, onUndeliveredElement, (Throwable) obj);
                }
            });
        }
    }

    static final Unit _init_$lambda$0(Function1 $onComplete, SimpleActor this$0, Function2 $onUndeliveredElement, Throwable ex) {
        $onComplete.invoke(ex);
        this$0.messageQueue.close(ex);
        while (true) {
            Object msg = ChannelResult.m10069getOrNullimpl(this$0.messageQueue.mo10057tryReceivePtdJZtk());
            if (msg != null) {
                $onUndeliveredElement.invoke(msg, ex);
            } else {
                return Unit.INSTANCE;
            }
        }
    }

    public final void offer(T msg) {
        Object $this$onClosed_u2dWpGqRn0$iv = this.messageQueue.mo10050trySendJP2dKIU(msg);
        if (!($this$onClosed_u2dWpGqRn0$iv instanceof ChannelResult.Closed)) {
            if (!ChannelResult.m10074isSuccessimpl($this$onClosed_u2dWpGqRn0$iv)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (this.remainingMessages.getAndIncrement() == 0) {
                BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass2(this, null), 3, null);
                return;
            }
            return;
        }
        Throwable it = ChannelResult.m10068exceptionOrNullimpl($this$onClosed_u2dWpGqRn0$iv);
        if (it != null) {
            throw it;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.SimpleActor$offer$2, reason: invalid class name */
    /* JADX INFO: compiled from: SimpleActor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", i = {}, l = {114, 114}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ SimpleActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(SimpleActor<T> simpleActor, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = simpleActor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x005b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x006d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006e -> B:22:0x0071). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AnonymousClass2 anonymousClass2;
            AnonymousClass2 anonymousClass22;
            Function2 function2;
            Object obj;
            Object $result2;
            Object objReceive;
            Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    if (((SimpleActor) this.this$0).remainingMessages.get() > 0) {
                        anonymousClass2 = this;
                        CoroutineScopeKt.ensureActive(((SimpleActor) anonymousClass2.this$0).scope);
                        function2 = ((SimpleActor) anonymousClass2.this$0).consumeMessage;
                        anonymousClass2.L$0 = function2;
                        anonymousClass2.label = 1;
                        objReceive = ((SimpleActor) anonymousClass2.this$0).messageQueue.receive(anonymousClass2);
                        if (objReceive == $result3) {
                            return $result3;
                        }
                        Object obj2 = $result3;
                        $result2 = $result;
                        $result = objReceive;
                        anonymousClass22 = anonymousClass2;
                        obj = obj2;
                        anonymousClass22.L$0 = null;
                        anonymousClass22.label = 2;
                        if (function2.invoke($result, anonymousClass22) != obj) {
                            return obj;
                        }
                        $result = $result2;
                        $result3 = obj;
                        anonymousClass2 = anonymousClass22;
                        if (((SimpleActor) anonymousClass2.this$0).remainingMessages.decrementAndGet() == 0) {
                            return Unit.INSTANCE;
                        }
                        CoroutineScopeKt.ensureActive(((SimpleActor) anonymousClass2.this$0).scope);
                        function2 = ((SimpleActor) anonymousClass2.this$0).consumeMessage;
                        anonymousClass2.L$0 = function2;
                        anonymousClass2.label = 1;
                        objReceive = ((SimpleActor) anonymousClass2.this$0).messageQueue.receive(anonymousClass2);
                        if (objReceive == $result3) {
                        }
                    } else {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    break;
                case 1:
                    Function2 function22 = (Function2) this.L$0;
                    ResultKt.throwOnFailure($result);
                    anonymousClass22 = this;
                    function2 = function22;
                    obj = $result3;
                    $result2 = $result;
                    anonymousClass22.L$0 = null;
                    anonymousClass22.label = 2;
                    if (function2.invoke($result, anonymousClass22) != obj) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    anonymousClass2 = this;
                    if (((SimpleActor) anonymousClass2.this$0).remainingMessages.decrementAndGet() == 0) {
                    }
                    CoroutineScopeKt.ensureActive(((SimpleActor) anonymousClass2.this$0).scope);
                    function2 = ((SimpleActor) anonymousClass2.this$0).consumeMessage;
                    anonymousClass2.L$0 = function2;
                    anonymousClass2.label = 1;
                    objReceive = ((SimpleActor) anonymousClass2.this$0).messageQueue.receive(anonymousClass2);
                    if (objReceive == $result3) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
