package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.selects.SelectClause1;

/* JADX INFO: compiled from: Channels.common.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u001a$\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\b\b\u0000\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0087@¢\u0006\u0002\u0010\u0006\u001a$\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\b\"\b\b\u0000\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0007\u001aP\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00030\u00052\u001d\u0010\u000b\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0005\u0012\u0004\u0012\u0002H\n0\f¢\u0006\u0002\b\rH\u0086\b\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u000e\u001a2\u0010\u000f\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00052\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00100\fH\u0086H¢\u0006\u0002\u0010\u0012\u001a$\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0014\"\u0004\b\u0000\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086@¢\u0006\u0002\u0010\u0006\u001a\u001a\u0010\u0015\u001a\u00020\u0010*\u0006\u0012\u0002\b\u00030\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"DEFAULT_CLOSE_MESSAGE", "", "receiveOrNull", ExifInterface.LONGITUDE_EAST, "", "Lkotlinx/coroutines/channels/ReceiveChannel;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onReceiveOrNull", "Lkotlinx/coroutines/selects/SelectClause1;", "consume", "R", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "consumeEach", "", "action", "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toList", "", "cancelConsumed", "cause", "", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/channels/ChannelsKt")
final /* synthetic */ class ChannelsKt__Channels_commonKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$consumeEach$1, reason: invalid class name */
    /* JADX INFO: compiled from: Channels.common.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {161}, m = "consumeEach", n = {"action", "$this$consume$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt__Channels_commonKt.consumeEach(null, null, this);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$toList$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Channels.common.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {209}, m = "toList", n = {"$this$toList_u24lambda_u242", "$this$consume$iv$iv"}, s = {"L$1", "L$2"})
    static final class C07271<E> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C07271(Continuation<? super C07271> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ChannelsKt.toList(null, this);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'receiveCatching'", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    public static final /* synthetic */ Object receiveOrNull(ReceiveChannel $this$receiveOrNull, Continuation $completion) {
        Intrinsics.checkNotNull($this$receiveOrNull, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.receiveOrNull?>");
        return $this$receiveOrNull.receiveOrNull($completion);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'onReceiveCatching'")
    public static final /* synthetic */ SelectClause1 onReceiveOrNull(ReceiveChannel $this$onReceiveOrNull) {
        Intrinsics.checkNotNull($this$onReceiveOrNull, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.onReceiveOrNull?>");
        return $this$onReceiveOrNull.getOnReceiveOrNull();
    }

    public static final <E, R> R consume(ReceiveChannel<? extends E> receiveChannel, Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        try {
            R rInvoke = function1.invoke(receiveChannel);
            ChannelsKt.cancelConsumed(receiveChannel, null);
            return rInvoke;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f A[Catch: all -> 0x0099, TryCatch #3 {all -> 0x0099, blocks: (B:24:0x0077, B:26:0x007f, B:27:0x008e), top: B:45:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #3 {all -> 0x0099, blocks: (B:24:0x0077, B:26:0x007f, B:27:0x008e), top: B:45:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006e -> B:45:0x0077). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object consumeEach(ReceiveChannel<? extends E> receiveChannel, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        ReceiveChannel<? extends E> receiveChannel2;
        Object $result;
        Function1<? super E, Unit> function12;
        ReceiveChannel<? extends E> receiveChannel3;
        Throwable cause$iv;
        ChannelIterator channelIterator;
        int i;
        Object obj;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object e = anonymousClass1.result;
        Object $result2 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure(e);
                receiveChannel2 = receiveChannel;
                Throwable cause$iv2 = null;
                try {
                    int $i$f$consumeEach = 0;
                    Function1<? super E, Unit> function13 = function1;
                    ChannelIterator it = receiveChannel2.iterator();
                    anonymousClass1.L$0 = function13;
                    anonymousClass1.L$1 = receiveChannel2;
                    anonymousClass1.L$2 = it;
                    anonymousClass1.label = 1;
                    Object objHasNext = it.hasNext(anonymousClass1);
                    if (objHasNext != $result2) {
                        return $result2;
                    }
                    Object obj2 = $result2;
                    $result = e;
                    e = objHasNext;
                    function12 = function13;
                    receiveChannel3 = receiveChannel2;
                    cause$iv = cause$iv2;
                    channelIterator = it;
                    i = $i$f$consumeEach;
                    obj = obj2;
                    try {
                        if (((Boolean) e).booleanValue()) {
                            Unit unit = Unit.INSTANCE;
                            ChannelsKt.cancelConsumed(receiveChannel3, cause$iv);
                            return Unit.INSTANCE;
                        }
                        function12.invoke(channelIterator.next());
                        e = $result;
                        $result2 = obj;
                        $i$f$consumeEach = i;
                        it = channelIterator;
                        cause$iv2 = cause$iv;
                        receiveChannel2 = receiveChannel3;
                        function13 = function12;
                        anonymousClass1.L$0 = function13;
                        anonymousClass1.L$1 = receiveChannel2;
                        anonymousClass1.L$2 = it;
                        anonymousClass1.label = 1;
                        Object objHasNext2 = it.hasNext(anonymousClass1);
                        if (objHasNext2 != $result2) {
                        }
                    } catch (Throwable th) {
                        e$iv = th;
                        receiveChannel2 = receiveChannel3;
                        Throwable cause$iv3 = e$iv;
                        try {
                            throw e$iv;
                        } catch (Throwable e$iv) {
                            ChannelsKt.cancelConsumed(receiveChannel2, cause$iv3);
                            throw e$iv;
                        }
                    }
                } catch (Throwable th2) {
                    e$iv = th2;
                    Throwable cause$iv32 = e$iv;
                    throw e$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) anonymousClass1.L$2;
                receiveChannel2 = (ReceiveChannel) anonymousClass1.L$1;
                Function1<? super E, Unit> function14 = (Function1) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure(e);
                    function12 = function14;
                    receiveChannel3 = receiveChannel2;
                    cause$iv = null;
                    channelIterator = channelIterator2;
                    i = 0;
                    obj = $result2;
                    $result = e;
                    if (((Boolean) e).booleanValue()) {
                    }
                } catch (Throwable th3) {
                    e$iv = th3;
                    Throwable cause$iv322 = e$iv;
                    throw e$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private static final <E> Object consumeEach$$forInline(ReceiveChannel<? extends E> receiveChannel, Function1<? super E, Unit> function1, Continuation<? super Unit> continuation) {
        try {
            ChannelIterator<? extends E> it = receiveChannel.iterator();
            while (((Boolean) it.hasNext(null)).booleanValue()) {
                Object e = it.next();
                function1.invoke(e);
            }
            Unit unit = Unit.INSTANCE;
            ChannelsKt.cancelConsumed(receiveChannel, null);
            return Unit.INSTANCE;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009b A[Catch: all -> 0x00bf, TryCatch #4 {all -> 0x00bf, blocks: (B:24:0x0093, B:26:0x009b, B:27:0x00b0), top: B:49:0x0093 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0 A[Catch: all -> 0x00bf, TRY_LEAVE, TryCatch #4 {all -> 0x00bf, blocks: (B:24:0x0093, B:26:0x009b, B:27:0x00b0), top: B:49:0x0093 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0085 -> B:49:0x0093). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object toList(ReceiveChannel<? extends E> receiveChannel, Continuation<? super List<? extends E>> continuation) {
        C07271 c07271;
        ReceiveChannel<? extends E> receiveChannel2;
        ?? r11;
        List $this$toList_u24lambda_u242;
        int $i$f$consume;
        int $i$f$consume2;
        List $this$toList_u24lambda_u2422;
        int $i$f$consumeEach;
        ChannelIterator it;
        Object objHasNext;
        Object $result;
        List list;
        ?? r12;
        ReceiveChannel<? extends E> receiveChannel3;
        Throwable cause$iv$iv;
        ChannelIterator channelIterator;
        int i;
        List list2;
        int $i$f$consume3;
        int $i$f$consumeEach2;
        if (continuation instanceof C07271) {
            c07271 = (C07271) continuation;
            if ((c07271.label & Integer.MIN_VALUE) != 0) {
                c07271.label -= Integer.MIN_VALUE;
            } else {
                c07271 = new C07271(continuation);
            }
        }
        C07271 c072712 = c07271;
        Object e$iv = c072712.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c072712.label) {
            case 0:
                ResultKt.throwOnFailure(e$iv);
                List $this$toList_u24lambda_u2423 = CollectionsKt.createListBuilder();
                receiveChannel2 = receiveChannel;
                Throwable cause$iv$iv2 = null;
                try {
                    r11 = $this$toList_u24lambda_u2423;
                    $this$toList_u24lambda_u242 = null;
                    $i$f$consume = 0;
                    $i$f$consume2 = 0;
                    $this$toList_u24lambda_u2422 = $this$toList_u24lambda_u2423;
                    $i$f$consumeEach = 0;
                    it = receiveChannel2.iterator();
                    try {
                        c072712.L$0 = $this$toList_u24lambda_u2422;
                        c072712.L$1 = r11;
                        c072712.L$2 = receiveChannel2;
                        c072712.L$3 = it;
                        c072712.label = 1;
                        objHasNext = it.hasNext(c072712);
                    } catch (Throwable th) {
                        e$iv$iv = th;
                    }
                } catch (Throwable th2) {
                    e$iv$iv = th2;
                }
                if (objHasNext != coroutine_suspended) {
                    return coroutine_suspended;
                }
                int i2 = $i$f$consume;
                $result = e$iv;
                e$iv = objHasNext;
                list = $this$toList_u24lambda_u2422;
                r12 = r11;
                receiveChannel3 = receiveChannel2;
                cause$iv$iv = cause$iv$iv2;
                channelIterator = it;
                i = $i$f$consume2;
                list2 = $this$toList_u24lambda_u242;
                $i$f$consume3 = $i$f$consumeEach;
                $i$f$consumeEach2 = i2;
                try {
                    if (((Boolean) e$iv).booleanValue()) {
                        Unit unit = Unit.INSTANCE;
                        ChannelsKt.cancelConsumed(receiveChannel3, cause$iv$iv);
                        return CollectionsKt.build(list);
                    }
                    r12.add(channelIterator.next());
                    e$iv = $result;
                    $i$f$consume = $i$f$consumeEach2;
                    $i$f$consumeEach = $i$f$consume3;
                    $this$toList_u24lambda_u242 = list2;
                    $i$f$consume2 = i;
                    it = channelIterator;
                    cause$iv$iv2 = cause$iv$iv;
                    receiveChannel2 = receiveChannel3;
                    r11 = r12;
                    $this$toList_u24lambda_u2422 = list;
                    c072712.L$0 = $this$toList_u24lambda_u2422;
                    c072712.L$1 = r11;
                    c072712.L$2 = receiveChannel2;
                    c072712.L$3 = it;
                    c072712.label = 1;
                    objHasNext = it.hasNext(c072712);
                    if (objHasNext != coroutine_suspended) {
                    }
                } catch (Throwable th3) {
                    e$iv$iv = th3;
                    receiveChannel2 = receiveChannel3;
                }
                Throwable cause$iv$iv3 = e$iv$iv;
                try {
                    throw e$iv$iv;
                } catch (Throwable e$iv$iv) {
                    ChannelsKt.cancelConsumed(receiveChannel2, cause$iv$iv3);
                    throw e$iv$iv;
                }
                break;
            case 1:
                ChannelIterator channelIterator2 = (ChannelIterator) c072712.L$3;
                receiveChannel2 = (ReceiveChannel) c072712.L$2;
                List $this$toList_u24lambda_u2424 = (List) c072712.L$1;
                List list3 = (List) c072712.L$0;
                try {
                    ResultKt.throwOnFailure(e$iv);
                    list = list3;
                    r12 = $this$toList_u24lambda_u2424;
                    receiveChannel3 = receiveChannel2;
                    cause$iv$iv = null;
                    channelIterator = channelIterator2;
                    i = 0;
                    list2 = null;
                    $i$f$consume3 = 0;
                    $i$f$consumeEach2 = 0;
                    $result = e$iv;
                    if (((Boolean) e$iv).booleanValue()) {
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

    public static final void cancelConsumed(ReceiveChannel<?> receiveChannel, Throwable cause) {
        if (cause != null) {
            CancellationException = cause instanceof CancellationException ? (CancellationException) cause : null;
            if (CancellationException == null) {
                CancellationException = ExceptionsKt.CancellationException("Channel was consumed, consumer had failed", cause);
            }
        }
        receiveChannel.cancel(CancellationException);
    }
}
