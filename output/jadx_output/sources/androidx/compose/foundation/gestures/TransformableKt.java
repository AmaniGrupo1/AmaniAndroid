package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.TransformEvent;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: Transformable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u001a:\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\b2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u001a(\u0010\f\u001a\u00020\r*\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0014\u001a\u001a\u0010\u0015\u001a\u00020\t*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0017\u001a\u001c\u0010\u0018\u001a\u0004\u0018\u00010\t*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@¢\u0006\u0002\u0010\u0017\u001a<\u0010\u0019\u001a\u00020\r*\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\bH\u0082@¢\u0006\u0002\u0010\u001b\"\u000e\u0010\n\u001a\u00020\u000bX\u0080T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"transformable", "Landroidx/compose/ui/Modifier;", "state", "Landroidx/compose/foundation/gestures/TransformableState;", "lockRotationOnZoomPan", "", "enabled", "canPan", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "SCROLL_FACTOR", "", "detectZoomByCtrlMouseScroll", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "channel", "Lkotlinx/coroutines/channels/Channel;", "Landroidx/compose/foundation/gestures/TransformEvent;", "scrollConfig", "Landroidx/compose/foundation/gestures/ScrollConfig;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitFirstCtrlMouseScroll", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitCtrlMouseScrollOrNull", "detectZoom", "panZoomLock", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TransformableKt {
    public static final float SCROLL_FACTOR = 545.0f;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableKt$awaitCtrlMouseScrollOrNull$1, reason: invalid class name */
    /* JADX INFO: compiled from: Transformable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableKt", f = "Transformable.kt", i = {0, 0}, l = {312}, m = "awaitCtrlMouseScrollOrNull", n = {"$this$awaitCtrlMouseScrollOrNull", "scrollConfig"}, s = {"L$0", "L$1"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransformableKt.awaitCtrlMouseScrollOrNull(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableKt$awaitFirstCtrlMouseScroll$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Transformable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableKt", f = "Transformable.kt", i = {0, 0}, l = {299}, m = "awaitFirstCtrlMouseScroll", n = {"$this$awaitFirstCtrlMouseScroll", "scrollConfig"}, s = {"L$0", "L$1"}, v = 1)
    static final class C02731 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02731(Continuation<? super C02731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransformableKt.awaitFirstCtrlMouseScroll(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableKt$detectZoom$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Transformable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableKt", f = "Transformable.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, l = {337, 339, 385}, m = "detectZoom", n = {"$this$detectZoom", "channel", "canPan", "panZoomLock", "rotation", "zoom", "pan", "pastTouchSlop", "touchSlop", "lockedToPanZoom", "$this$detectZoom", "channel", "canPan", "panZoomLock", "rotation", "zoom", "pan", "pastTouchSlop", "touchSlop", "lockedToPanZoom", "$this$detectZoom", "channel", "canPan", NotificationCompat.CATEGORY_EVENT, "panZoomLock", "rotation", "zoom", "pan", "pastTouchSlop", "touchSlop", "lockedToPanZoom", "canceled"}, s = {"L$0", "L$1", "L$2", "Z$0", "F$0", "F$1", "J$0", "I$0", "F$2", "I$1", "L$0", "L$1", "L$2", "Z$0", "F$0", "F$1", "J$0", "I$0", "F$2", "I$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "F$0", "F$1", "J$0", "I$0", "F$2", "I$1", "I$2"}, v = 1)
    static final class C02741 extends ContinuationImpl {
        float F$0;
        float F$1;
        float F$2;
        int I$0;
        int I$1;
        int I$2;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02741(Continuation<? super C02741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransformableKt.detectZoom(null, false, null, null, this);
        }
    }

    public static /* synthetic */ Modifier transformable$default(Modifier modifier, TransformableState transformableState, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return transformable(modifier, transformableState, z, z2);
    }

    public static final Modifier transformable(Modifier $this$transformable, TransformableState state, boolean lockRotationOnZoomPan, boolean enabled) {
        return transformable($this$transformable, state, new Function1() { // from class: androidx.compose.foundation.gestures.TransformableKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TransformableKt.transformable$lambda$0((Offset) obj));
            }
        }, lockRotationOnZoomPan, enabled);
    }

    static final boolean transformable$lambda$0(Offset it) {
        return true;
    }

    public static /* synthetic */ Modifier transformable$default(Modifier modifier, TransformableState transformableState, Function1 function1, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = true;
        }
        return transformable(modifier, transformableState, function1, z, z2);
    }

    public static final Modifier transformable(Modifier $this$transformable, TransformableState state, Function1<? super Offset, Boolean> function1, boolean lockRotationOnZoomPan, boolean enabled) {
        return $this$transformable.then(new TransformableElement(state, function1, lockRotationOnZoomPan, enabled));
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableKt$detectZoomByCtrlMouseScroll$2, reason: invalid class name */
    /* JADX INFO: compiled from: Transformable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableKt$detectZoomByCtrlMouseScroll$2", f = "Transformable.kt", i = {0, 1}, l = {272, 284}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope", "$this$awaitPointerEventScope"}, s = {"L$0", "L$0"}, v = 1)
    static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Channel<TransformEvent> $channel;
        final /* synthetic */ CoroutineContext $currentContext;
        final /* synthetic */ ScrollConfig $scrollConfig;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(CoroutineContext coroutineContext, ScrollConfig scrollConfig, Channel<TransformEvent> channel, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$currentContext = coroutineContext;
            this.$scrollConfig = scrollConfig;
            this.$channel = channel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$currentContext, this.$scrollConfig, this.$channel, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003e A[Catch: all -> 0x00ca, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00ca, blocks: (B:24:0x0071, B:17:0x003e), top: B:43:0x0071 }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00a8 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b2 A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #0 {all -> 0x00c6, blocks: (B:28:0x00ae, B:30:0x00b2, B:21:0x0054), top: B:40:0x00ae }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00d3  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a9 -> B:40:0x00ae). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws Throwable {
            AnonymousClass2 anonymousClass2;
            AnonymousClass2 anonymousClass22;
            AwaitPointerEventScope $this$awaitPointerEventScope;
            Object $result2;
            long scrollDelta;
            Object objAwaitCtrlMouseScrollOrNull;
            Object $result3;
            AnonymousClass2 anonymousClass23;
            AwaitPointerEventScope $this$awaitPointerEventScope2;
            Offset offset;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        AwaitPointerEventScope $this$awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                        AnonymousClass2 anonymousClass24 = this;
                        if (!JobKt.isActive(anonymousClass24.$currentContext)) {
                            anonymousClass24.L$0 = $this$awaitPointerEventScope3;
                            anonymousClass24.label = 1;
                            Object objAwaitFirstCtrlMouseScroll = TransformableKt.awaitFirstCtrlMouseScroll($this$awaitPointerEventScope3, anonymousClass24.$scrollConfig, anonymousClass24);
                            if (objAwaitFirstCtrlMouseScroll == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            try {
                                AwaitPointerEventScope awaitPointerEventScope = $this$awaitPointerEventScope3;
                                $result2 = $result;
                                $result = objAwaitFirstCtrlMouseScroll;
                                anonymousClass22 = anonymousClass24;
                                $this$awaitPointerEventScope = awaitPointerEventScope;
                                scrollDelta = ((Offset) $result).m4462unboximpl();
                                anonymousClass22.$channel.mo10050trySendJP2dKIU(TransformEvent.TransformStarted.INSTANCE);
                                Object $result4 = $result2;
                                AwaitPointerEventScope $this$awaitPointerEventScope4 = $this$awaitPointerEventScope;
                                anonymousClass2 = anonymousClass22;
                                float zoomChange = (float) Math.pow(2.0f, Float.intBitsToFloat(bits$iv$iv$iv) / 545.0f);
                                anonymousClass2.$channel.mo10050trySendJP2dKIU(new TransformEvent.TransformDelta(zoomChange, Offset.INSTANCE.m4468getZeroF1C5BW0(), 0.0f, null));
                                anonymousClass2.L$0 = $this$awaitPointerEventScope4;
                                anonymousClass2.label = 2;
                                objAwaitCtrlMouseScrollOrNull = TransformableKt.awaitCtrlMouseScrollOrNull($this$awaitPointerEventScope4, anonymousClass2.$scrollConfig, anonymousClass2);
                                if (objAwaitCtrlMouseScrollOrNull == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                AwaitPointerEventScope awaitPointerEventScope2 = $this$awaitPointerEventScope4;
                                $result3 = $result4;
                                $result = objAwaitCtrlMouseScrollOrNull;
                                anonymousClass23 = anonymousClass2;
                                $this$awaitPointerEventScope2 = awaitPointerEventScope2;
                                try {
                                    offset = (Offset) $result;
                                    if (offset == null) {
                                        scrollDelta = offset.m4462unboximpl();
                                        $result4 = $result3;
                                        $this$awaitPointerEventScope4 = $this$awaitPointerEventScope2;
                                        anonymousClass2 = anonymousClass23;
                                        long value$iv$iv = scrollDelta;
                                        int bits$iv$iv$iv = (int) (4294967295L & value$iv$iv);
                                        float zoomChange2 = (float) Math.pow(2.0f, Float.intBitsToFloat(bits$iv$iv$iv) / 545.0f);
                                        anonymousClass2.$channel.mo10050trySendJP2dKIU(new TransformEvent.TransformDelta(zoomChange2, Offset.INSTANCE.m4468getZeroF1C5BW0(), 0.0f, null));
                                        anonymousClass2.L$0 = $this$awaitPointerEventScope4;
                                        anonymousClass2.label = 2;
                                        objAwaitCtrlMouseScrollOrNull = TransformableKt.awaitCtrlMouseScrollOrNull($this$awaitPointerEventScope4, anonymousClass2.$scrollConfig, anonymousClass2);
                                        if (objAwaitCtrlMouseScrollOrNull == coroutine_suspended) {
                                        }
                                    } else {
                                        anonymousClass23.$channel.mo10050trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE);
                                        $result = $result3;
                                        $this$awaitPointerEventScope3 = $this$awaitPointerEventScope2;
                                        anonymousClass24 = anonymousClass23;
                                        if (!JobKt.isActive(anonymousClass24.$currentContext)) {
                                            return Unit.INSTANCE;
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    anonymousClass2 = anonymousClass23;
                                    anonymousClass2.$channel.mo10050trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                anonymousClass2.$channel.mo10050trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE);
                                throw th;
                            }
                            long value$iv$iv2 = scrollDelta;
                            int bits$iv$iv$iv2 = (int) (4294967295L & value$iv$iv2);
                        }
                        break;
                    case 1:
                        AwaitPointerEventScope $this$awaitPointerEventScope5 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        anonymousClass22 = this;
                        $this$awaitPointerEventScope = $this$awaitPointerEventScope5;
                        $result2 = $result;
                        scrollDelta = ((Offset) $result).m4462unboximpl();
                        anonymousClass22.$channel.mo10050trySendJP2dKIU(TransformEvent.TransformStarted.INSTANCE);
                        Object $result42 = $result2;
                        AwaitPointerEventScope $this$awaitPointerEventScope42 = $this$awaitPointerEventScope;
                        anonymousClass2 = anonymousClass22;
                        long value$iv$iv22 = scrollDelta;
                        int bits$iv$iv$iv22 = (int) (4294967295L & value$iv$iv22);
                        float zoomChange22 = (float) Math.pow(2.0f, Float.intBitsToFloat(bits$iv$iv$iv22) / 545.0f);
                        anonymousClass2.$channel.mo10050trySendJP2dKIU(new TransformEvent.TransformDelta(zoomChange22, Offset.INSTANCE.m4468getZeroF1C5BW0(), 0.0f, null));
                        anonymousClass2.L$0 = $this$awaitPointerEventScope42;
                        anonymousClass2.label = 2;
                        objAwaitCtrlMouseScrollOrNull = TransformableKt.awaitCtrlMouseScrollOrNull($this$awaitPointerEventScope42, anonymousClass2.$scrollConfig, anonymousClass2);
                        if (objAwaitCtrlMouseScrollOrNull == coroutine_suspended) {
                        }
                        break;
                    case 2:
                        AwaitPointerEventScope $this$awaitPointerEventScope6 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        anonymousClass23 = this;
                        $this$awaitPointerEventScope2 = $this$awaitPointerEventScope6;
                        $result3 = $result;
                        offset = (Offset) $result;
                        if (offset == null) {
                        }
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th3) {
                th = th3;
                anonymousClass2 = this;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object detectZoomByCtrlMouseScroll(PointerInputScope $this$detectZoomByCtrlMouseScroll, Channel<TransformEvent> channel, ScrollConfig scrollConfig, Continuation<? super Unit> continuation) {
        CoroutineContext currentContext = continuation.get$context();
        Object objAwaitPointerEventScope = $this$detectZoomByCtrlMouseScroll.awaitPointerEventScope(new AnonymousClass2(currentContext, scrollConfig, channel, null), continuation);
        return objAwaitPointerEventScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitPointerEventScope : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004f -> B:18:0x0053). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitFirstCtrlMouseScroll(AwaitPointerEventScope $this$awaitFirstCtrlMouseScroll, ScrollConfig scrollConfig, Continuation<? super Offset> continuation) {
        C02731 c02731;
        AwaitPointerEventScope $this$awaitFirstCtrlMouseScroll2;
        ScrollConfig scrollConfig2;
        Object $result;
        Object obj;
        Offset offset;
        if (continuation instanceof C02731) {
            c02731 = (C02731) continuation;
            if ((c02731.label & Integer.MIN_VALUE) != 0) {
                c02731.label -= Integer.MIN_VALUE;
            } else {
                c02731 = new C02731(continuation);
            }
        }
        Object $result2 = c02731.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02731.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                $this$awaitFirstCtrlMouseScroll2 = $this$awaitFirstCtrlMouseScroll;
                scrollConfig2 = scrollConfig;
                c02731.L$0 = $this$awaitFirstCtrlMouseScroll2;
                c02731.L$1 = scrollConfig2;
                c02731.label = 1;
                Object objAwaitCtrlMouseScrollOrNull = awaitCtrlMouseScrollOrNull($this$awaitFirstCtrlMouseScroll2, scrollConfig2, c02731);
                if (objAwaitCtrlMouseScrollOrNull != $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitCtrlMouseScrollOrNull;
                obj = obj2;
                offset = (Offset) $result2;
                if (offset != null) {
                    $result2 = $result;
                    $result3 = obj;
                    c02731.L$0 = $this$awaitFirstCtrlMouseScroll2;
                    c02731.L$1 = scrollConfig2;
                    c02731.label = 1;
                    Object objAwaitCtrlMouseScrollOrNull2 = awaitCtrlMouseScrollOrNull($this$awaitFirstCtrlMouseScroll2, scrollConfig2, c02731);
                    if (objAwaitCtrlMouseScrollOrNull2 != $result3) {
                    }
                } else {
                    return offset;
                }
                break;
            case 1:
                scrollConfig2 = (ScrollConfig) c02731.L$1;
                $this$awaitFirstCtrlMouseScroll2 = (AwaitPointerEventScope) c02731.L$0;
                ResultKt.throwOnFailure($result2);
                obj = $result3;
                $result = $result2;
                offset = (Offset) $result2;
                if (offset != null) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitCtrlMouseScrollOrNull(AwaitPointerEventScope $this$awaitCtrlMouseScrollOrNull, ScrollConfig scrollConfig, Continuation<? super Offset> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objAwaitPointerEvent$default;
        AwaitPointerEventScope $this$awaitCtrlMouseScrollOrNull2;
        ScrollConfig $this$awaitCtrlMouseScrollOrNull_u24lambda_u240;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                anonymousClass1.L$0 = $this$awaitCtrlMouseScrollOrNull;
                anonymousClass1.L$1 = scrollConfig;
                anonymousClass1.label = 1;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitCtrlMouseScrollOrNull, null, anonymousClass1, 1, null);
                if (objAwaitPointerEvent$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                $this$awaitCtrlMouseScrollOrNull2 = $this$awaitCtrlMouseScrollOrNull;
                $this$awaitCtrlMouseScrollOrNull_u24lambda_u240 = scrollConfig;
                break;
                break;
            case 1:
                $this$awaitCtrlMouseScrollOrNull_u24lambda_u240 = (ScrollConfig) anonymousClass1.L$1;
                $this$awaitCtrlMouseScrollOrNull2 = (AwaitPointerEventScope) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                objAwaitPointerEvent$default = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        PointerEvent pointer = (PointerEvent) objAwaitPointerEvent$default;
        if (!PointerEvent_androidKt.m5977isCtrlPressed5xRPYO0(pointer.getKeyboardModifiers()) || !PointerEventType.m5959equalsimpl0(pointer.getType(), PointerEventType.INSTANCE.m5968getScroll7fucELk())) {
            return null;
        }
        long scrollDelta = $this$awaitCtrlMouseScrollOrNull_u24lambda_u240.mo426calculateMouseWheelScroll8xgXZGE($this$awaitCtrlMouseScrollOrNull2, pointer, $this$awaitCtrlMouseScrollOrNull2.mo5906getSizeYbymL2g());
        if (Offset.m4449equalsimpl0(scrollDelta, Offset.INSTANCE.m4468getZeroF1C5BW0())) {
            return null;
        }
        List<PointerInputChange> changes = pointer.getChanges();
        int size = changes.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = changes.get(index$iv);
            PointerInputChange it = (PointerInputChange) item$iv;
            it.consume();
        }
        return Offset.m4441boximpl(scrollDelta);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Path cross not found for [B:98:0x0313, B:100:0x0317], limit reached: 119 */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x030f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x034f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x012a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02f5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x02c7 -> B:90:0x02d8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object detectZoom(AwaitPointerEventScope $this$detectZoom, boolean z, Channel<TransformEvent> channel, Function1<? super Offset, Boolean> function1, Continuation<? super Unit> continuation) {
        C02741 c02741;
        Channel<TransformEvent> channel2;
        boolean panZoomLock;
        Function1<? super Offset, Boolean> function12;
        float rotation;
        float zoom;
        long pan;
        int i;
        int i2;
        AwaitPointerEventScope $this$detectZoom2;
        float touchSlop;
        float rotation2;
        Object obj;
        long pan2;
        C02741 c027412;
        Object $result;
        int i3;
        int i4;
        float zoom2;
        Function1<? super Offset, Boolean> function13;
        Channel<TransformEvent> channel3;
        AwaitPointerEventScope $this$detectZoom3;
        Object objAwaitPointerEvent$default;
        boolean panZoomLock2;
        Continuation<? super Unit> continuation2;
        float touchSlop2;
        List<PointerInputChange> changes;
        int size;
        int index$iv$iv;
        int i5;
        Object $result2;
        int i6;
        int i7;
        Object obj2;
        long pan3;
        float zoom3;
        Object objAwaitPointerEvent;
        Object $result3;
        AwaitPointerEventScope $this$detectZoom4;
        PointerEvent event;
        Function1<? super Offset, Boolean> function14;
        Channel<TransformEvent> channel4;
        long pan4;
        C02741 c027413;
        int i8;
        int i9;
        Continuation<? super Unit> continuation3;
        int i10;
        int i11;
        float zoom4;
        int index$iv;
        int size2;
        int i12;
        List<PointerInputChange> list;
        int size3;
        int i13;
        int index$iv$iv2;
        boolean z2;
        int $i$f$fastAny;
        int $i$f$fastForEach;
        boolean z3;
        if (continuation instanceof C02741) {
            c02741 = (C02741) continuation;
            if ((c02741.label & Integer.MIN_VALUE) != 0) {
                c02741.label -= Integer.MIN_VALUE;
            } else {
                c02741 = new C02741(continuation);
            }
        }
        C02741 c027414 = c02741;
        Object $result4 = c027414.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c027414.label) {
            case 0:
                ResultKt.throwOnFailure($result4);
                channel2 = channel;
                panZoomLock = z;
                function12 = function1;
                rotation = 0.0f;
                long pan5 = Offset.INSTANCE.m4468getZeroF1C5BW0();
                float touchSlop3 = $this$detectZoom.getViewConfiguration().getTouchSlop();
                c027414.L$0 = $this$detectZoom;
                c027414.L$1 = channel2;
                c027414.L$2 = function12;
                c027414.Z$0 = panZoomLock;
                c027414.F$0 = 0.0f;
                c027414.F$1 = 1.0f;
                c027414.J$0 = pan5;
                c027414.I$0 = 0;
                c027414.F$2 = touchSlop3;
                c027414.I$1 = 0;
                c027414.label = 1;
                if (TapGestureDetectorKt.awaitFirstDown$default($this$detectZoom, false, null, c027414, 2, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zoom = 1.0f;
                pan = pan5;
                i = 0;
                i2 = 0;
                $this$detectZoom2 = $this$detectZoom;
                touchSlop = touchSlop3;
                AwaitPointerEventScope $this$detectZoom5 = $this$detectZoom2;
                Channel<TransformEvent> channel5 = channel2;
                Function1<? super Offset, Boolean> function15 = function12;
                boolean panZoomLock3 = panZoomLock;
                rotation2 = rotation;
                obj = coroutine_suspended;
                pan2 = pan;
                c027412 = c027414;
                float touchSlop4 = zoom;
                int i14 = i;
                float touchSlop5 = touchSlop;
                $result = $result4;
                i3 = i2;
                Continuation<? super Unit> continuation4 = continuation;
                c027412.L$0 = $this$detectZoom5;
                c027412.L$1 = channel5;
                c027412.L$2 = function15;
                c027412.L$3 = null;
                c027412.Z$0 = panZoomLock3;
                c027412.F$0 = rotation2;
                c027412.F$1 = touchSlop4;
                c027412.J$0 = pan2;
                c027412.I$0 = i14;
                c027412.F$2 = touchSlop5;
                c027412.I$1 = i3;
                Continuation<? super Unit> continuation5 = continuation4;
                c027412.label = 2;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$detectZoom5, null, c027412, 1, null);
                if (objAwaitPointerEvent$default == obj) {
                    return obj;
                }
                float f = touchSlop4;
                touchSlop2 = touchSlop5;
                i4 = i14;
                zoom2 = f;
                AwaitPointerEventScope awaitPointerEventScope = $this$detectZoom5;
                panZoomLock2 = panZoomLock3;
                function13 = function15;
                channel3 = channel5;
                $this$detectZoom3 = awaitPointerEventScope;
                continuation2 = continuation5;
                PointerEvent event2 = (PointerEvent) objAwaitPointerEvent$default;
                changes = event2.getChanges();
                Continuation<? super Unit> continuation6 = continuation2;
                size = changes.size();
                int i15 = i3;
                index$iv$iv = 0;
                while (true) {
                    if (index$iv$iv >= size) {
                        i12 = size;
                        list = changes;
                        Object item$iv$iv = list.get(index$iv$iv);
                        if (((PointerInputChange) item$iv$iv).isConsumed()) {
                            i5 = 1;
                        } else {
                            index$iv$iv++;
                            changes = list;
                            size = i12;
                        }
                    } else {
                        i5 = 0;
                    }
                }
                if (i5 != 0) {
                    float zoomChange = TransformGestureDetectorKt.calculateZoom(event2);
                    float rotationChange = TransformGestureDetectorKt.calculateRotation(event2);
                    $result2 = $result;
                    long panChange = TransformGestureDetectorKt.calculatePan(event2);
                    if (i4 == 0) {
                        float zoom5 = zoom2 * zoomChange;
                        rotation2 += rotationChange;
                        pan2 = Offset.m4457plusMKHz9U(pan2, panChange);
                        int i16 = i4;
                        float centroidSize = TransformGestureDetectorKt.calculateCentroidSize(event2, false);
                        float zoom6 = 1;
                        float zoomMotion = Math.abs(zoom6 - zoom5) * centroidSize;
                        float centroidSize2 = Math.abs(((3.1415927f * rotation2) * centroidSize) / 180.0f);
                        float panMotion = Offset.m4450getDistanceimpl(pan2);
                        if (zoomMotion > touchSlop2 || centroidSize2 > touchSlop2 || (panMotion > touchSlop2 && function13.invoke(Offset.m4441boximpl(panChange)).booleanValue())) {
                            i10 = (!panZoomLock2 || centroidSize2 >= touchSlop2) ? 0 : 1;
                            channel3.mo10050trySendJP2dKIU(TransformEvent.TransformStarted.INSTANCE);
                            i4 = 1;
                            zoom2 = zoom5;
                        } else {
                            i10 = i15;
                            i4 = i16;
                            zoom2 = zoom5;
                        }
                    } else {
                        i10 = i15;
                    }
                    if (i4 == 0) {
                        i11 = i4;
                        zoom4 = zoom2;
                    } else {
                        float effectiveRotation = i10 != 0 ? 0.0f : rotationChange;
                        if (!(effectiveRotation == 0.0f)) {
                            i11 = i4;
                            zoom4 = zoom2;
                        } else if (zoomChange == 1.0f) {
                            i11 = i4;
                            zoom4 = zoom2;
                            if (!Offset.m4449equalsimpl0(panChange, Offset.INSTANCE.m4468getZeroF1C5BW0()) && function13.invoke(Offset.m4441boximpl(panChange)).booleanValue()) {
                            }
                            List<PointerInputChange> changes2 = event2.getChanges();
                            size2 = changes2.size();
                            for (index$iv = 0; index$iv < size2; index$iv++) {
                                Object item$iv = changes2.get(index$iv);
                                PointerInputChange it = (PointerInputChange) item$iv;
                                if (PointerEventKt.positionChanged(it)) {
                                    it.consume();
                                }
                            }
                        } else {
                            i11 = i4;
                            zoom4 = zoom2;
                        }
                        channel3.mo10050trySendJP2dKIU(new TransformEvent.TransformDelta(zoomChange, panChange, effectiveRotation, null));
                        List<PointerInputChange> changes22 = event2.getChanges();
                        size2 = changes22.size();
                        while (index$iv < size2) {
                        }
                    }
                    i7 = i11;
                    obj2 = obj;
                    i6 = i10;
                    pan3 = pan2;
                    zoom3 = zoom4;
                } else {
                    $result2 = $result;
                    int i17 = i4;
                    ChannelResult.m10064boximpl(channel3.mo10050trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE));
                    i6 = i15;
                    i7 = i17;
                    obj2 = obj;
                    pan3 = pan2;
                    zoom3 = zoom2;
                }
                PointerEventPass pointerEventPass = PointerEventPass.Final;
                c027412.L$0 = $this$detectZoom3;
                c027412.L$1 = channel3;
                c027412.L$2 = function13;
                c027412.L$3 = event2;
                c027412.Z$0 = panZoomLock2;
                c027412.F$0 = rotation2;
                c027412.F$1 = zoom3;
                c027412.J$0 = pan3;
                c027412.I$0 = i7;
                c027412.F$2 = touchSlop2;
                c027412.I$1 = i6;
                c027412.I$2 = i5;
                int i18 = i5;
                c027412.label = 3;
                objAwaitPointerEvent = $this$detectZoom3.awaitPointerEvent(pointerEventPass, c027412);
                if (objAwaitPointerEvent != obj2) {
                    return obj2;
                }
                $result3 = $result2;
                $this$detectZoom4 = $this$detectZoom3;
                event = event2;
                function14 = function13;
                channel4 = channel3;
                pan4 = pan3;
                obj = obj2;
                c027413 = c027412;
                i8 = i18;
                i9 = i7;
                $result4 = objAwaitPointerEvent;
                continuation3 = continuation6;
                PointerEvent finalEvent = (PointerEvent) $result4;
                List<PointerInputChange> changes3 = finalEvent.getChanges();
                Continuation<? super Unit> continuation7 = continuation3;
                size3 = changes3.size();
                i13 = i8;
                index$iv$iv2 = 0;
                while (true) {
                    if (index$iv$iv2 >= size3) {
                        Object item$iv$iv2 = changes3.get(index$iv$iv2);
                        if (((PointerInputChange) item$iv$iv2).isConsumed()) {
                            z2 = true;
                        } else {
                            index$iv$iv2++;
                        }
                    } else {
                        z2 = false;
                    }
                }
                boolean finallyCanceled = !z2 && i9 == 0;
                if (i13 == 0 && !finallyCanceled) {
                    List<PointerInputChange> changes4 = event.getChanges();
                    $i$f$fastAny = changes4.size();
                    $i$f$fastForEach = 0;
                    while (true) {
                        if ($i$f$fastForEach >= $i$f$fastAny) {
                            Object item$iv$iv3 = changes4.get($i$f$fastForEach);
                            if (((PointerInputChange) item$iv$iv3).getPressed()) {
                                z3 = true;
                            } else {
                                $i$f$fastForEach++;
                            }
                        } else {
                            z3 = false;
                        }
                    }
                    if (z3) {
                        continuation4 = continuation7;
                        i3 = i6;
                        $result = $result3;
                        touchSlop5 = touchSlop2;
                        i14 = i9;
                        touchSlop4 = zoom3;
                        c027412 = c027413;
                        pan2 = pan4;
                        function15 = function14;
                        panZoomLock3 = panZoomLock2;
                        channel5 = channel4;
                        $this$detectZoom5 = $this$detectZoom4;
                        c027412.L$0 = $this$detectZoom5;
                        c027412.L$1 = channel5;
                        c027412.L$2 = function15;
                        c027412.L$3 = null;
                        c027412.Z$0 = panZoomLock3;
                        c027412.F$0 = rotation2;
                        c027412.F$1 = touchSlop4;
                        c027412.J$0 = pan2;
                        c027412.I$0 = i14;
                        c027412.F$2 = touchSlop5;
                        c027412.I$1 = i3;
                        Continuation<? super Unit> continuation52 = continuation4;
                        c027412.label = 2;
                        objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$detectZoom5, null, c027412, 1, null);
                        if (objAwaitPointerEvent$default == obj) {
                        }
                    }
                }
                return Unit.INSTANCE;
            case 1:
                i2 = c027414.I$1;
                touchSlop = c027414.F$2;
                i = c027414.I$0;
                pan = c027414.J$0;
                zoom = c027414.F$1;
                rotation = c027414.F$0;
                panZoomLock = c027414.Z$0;
                function12 = (Function1) c027414.L$2;
                channel2 = (Channel) c027414.L$1;
                $this$detectZoom2 = (AwaitPointerEventScope) c027414.L$0;
                ResultKt.throwOnFailure($result4);
                AwaitPointerEventScope $this$detectZoom52 = $this$detectZoom2;
                Channel<TransformEvent> channel52 = channel2;
                Function1<? super Offset, Boolean> function152 = function12;
                boolean panZoomLock32 = panZoomLock;
                rotation2 = rotation;
                obj = coroutine_suspended;
                pan2 = pan;
                c027412 = c027414;
                float touchSlop42 = zoom;
                int i142 = i;
                float touchSlop52 = touchSlop;
                $result = $result4;
                i3 = i2;
                Continuation<? super Unit> continuation42 = continuation;
                c027412.L$0 = $this$detectZoom52;
                c027412.L$1 = channel52;
                c027412.L$2 = function152;
                c027412.L$3 = null;
                c027412.Z$0 = panZoomLock32;
                c027412.F$0 = rotation2;
                c027412.F$1 = touchSlop42;
                c027412.J$0 = pan2;
                c027412.I$0 = i142;
                c027412.F$2 = touchSlop52;
                c027412.I$1 = i3;
                Continuation<? super Unit> continuation522 = continuation42;
                c027412.label = 2;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$detectZoom52, null, c027412, 1, null);
                if (objAwaitPointerEvent$default == obj) {
                }
                break;
            case 2:
                int i19 = c027414.I$1;
                float touchSlop6 = c027414.F$2;
                i4 = c027414.I$0;
                long pan6 = c027414.J$0;
                zoom2 = c027414.F$1;
                float rotation3 = c027414.F$0;
                boolean panZoomLock4 = c027414.Z$0;
                function13 = (Function1) c027414.L$2;
                channel3 = (Channel) c027414.L$1;
                $this$detectZoom3 = (AwaitPointerEventScope) c027414.L$0;
                ResultKt.throwOnFailure($result4);
                objAwaitPointerEvent$default = $result4;
                panZoomLock2 = panZoomLock4;
                i3 = i19;
                rotation2 = rotation3;
                continuation2 = continuation;
                obj = coroutine_suspended;
                pan2 = pan6;
                c027412 = c027414;
                touchSlop2 = touchSlop6;
                $result = objAwaitPointerEvent$default;
                PointerEvent event22 = (PointerEvent) objAwaitPointerEvent$default;
                changes = event22.getChanges();
                Continuation<? super Unit> continuation62 = continuation2;
                size = changes.size();
                int i152 = i3;
                index$iv$iv = 0;
                while (true) {
                    if (index$iv$iv >= size) {
                    }
                    index$iv$iv++;
                    changes = list;
                    size = i12;
                }
                if (i5 != 0) {
                }
                PointerEventPass pointerEventPass2 = PointerEventPass.Final;
                c027412.L$0 = $this$detectZoom3;
                c027412.L$1 = channel3;
                c027412.L$2 = function13;
                c027412.L$3 = event22;
                c027412.Z$0 = panZoomLock2;
                c027412.F$0 = rotation2;
                c027412.F$1 = zoom3;
                c027412.J$0 = pan3;
                c027412.I$0 = i7;
                c027412.F$2 = touchSlop2;
                c027412.I$1 = i6;
                c027412.I$2 = i5;
                int i182 = i5;
                c027412.label = 3;
                objAwaitPointerEvent = $this$detectZoom3.awaitPointerEvent(pointerEventPass2, c027412);
                if (objAwaitPointerEvent != obj2) {
                }
                break;
            case 3:
                i8 = c027414.I$2;
                i6 = c027414.I$1;
                float touchSlop7 = c027414.F$2;
                i9 = c027414.I$0;
                pan4 = c027414.J$0;
                zoom3 = c027414.F$1;
                float rotation4 = c027414.F$0;
                panZoomLock2 = c027414.Z$0;
                PointerEvent event3 = (PointerEvent) c027414.L$3;
                Function1<? super Offset, Boolean> function16 = (Function1) c027414.L$2;
                Channel<TransformEvent> channel6 = (Channel) c027414.L$1;
                AwaitPointerEventScope $this$detectZoom6 = (AwaitPointerEventScope) c027414.L$0;
                ResultKt.throwOnFailure($result4);
                $this$detectZoom4 = $this$detectZoom6;
                event = event3;
                continuation3 = continuation;
                channel4 = channel6;
                rotation2 = rotation4;
                function14 = function16;
                obj = coroutine_suspended;
                c027413 = c027414;
                touchSlop2 = touchSlop7;
                $result3 = $result4;
                PointerEvent finalEvent2 = (PointerEvent) $result4;
                List<PointerInputChange> changes32 = finalEvent2.getChanges();
                Continuation<? super Unit> continuation72 = continuation3;
                size3 = changes32.size();
                i13 = i8;
                index$iv$iv2 = 0;
                while (true) {
                    if (index$iv$iv2 >= size3) {
                    }
                    index$iv$iv2++;
                }
                if (z2) {
                }
                if (i13 == 0) {
                    List<PointerInputChange> changes42 = event.getChanges();
                    $i$f$fastAny = changes42.size();
                    $i$f$fastForEach = 0;
                    while (true) {
                        if ($i$f$fastForEach >= $i$f$fastAny) {
                        }
                        $i$f$fastForEach++;
                    }
                    if (z3) {
                    }
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
