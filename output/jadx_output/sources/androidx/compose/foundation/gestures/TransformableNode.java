package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.TransformEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.core.app.NotificationCompat;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: compiled from: Transformable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B3\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0014\u001a\u00020\u0015H\u0016J2\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ'\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\b\u0010#\u001a\u00020\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0002X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Landroidx/compose/foundation/gestures/TransformableNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "state", "Landroidx/compose/foundation/gestures/TransformableState;", "canPan", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "", "lockRotationOnZoomPan", "enabled", "<init>", "(Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function1;ZZ)V", "updatedCanPan", "channel", "Lkotlinx/coroutines/channels/Channel;", "Landroidx/compose/foundation/gestures/TransformEvent;", "scrollConfig", "Landroidx/compose/foundation/gestures/ScrollConfig;", "onAttach", "", "pointerInputNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "pointerInputModifierMouse", "update", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "onCancelPointerInput", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class TransformableNode extends DelegatingNode implements PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    private Function1<? super Offset, Boolean> canPan;
    private boolean enabled;
    private boolean lockRotationOnZoomPan;
    private PointerInputModifierNode pointerInputModifierMouse;
    private ScrollConfig scrollConfig;
    private TransformableState state;
    private final Function1<Offset, Boolean> updatedCanPan = new Function1() { // from class: androidx.compose.foundation.gestures.TransformableNode$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Boolean.valueOf(this.f$0.canPan.invoke((Offset) obj).booleanValue());
        }
    };
    private final Channel<TransformEvent> channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
    private final SuspendingPointerInputModifierNode pointerInputNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: Transformable.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1", f = "Transformable.kt", i = {}, l = {196}, m = "invokeSuspend", n = {}, s = {}, v = 1)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $this_SuspendingPointerInputModifierNode;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ TransformableNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(PointerInputScope pointerInputScope, TransformableNode transformableNode, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$this_SuspendingPointerInputModifierNode = pointerInputScope;
                this.this$0 = transformableNode;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_SuspendingPointerInputModifierNode, this.this$0, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: Transformable.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1", f = "Transformable.kt", i = {0, 0, 1}, l = {175, 178}, m = "invokeSuspend", n = {"$this$launch", NotificationCompat.CATEGORY_EVENT, "$this$launch"}, s = {"L$0", "L$1", "L$0"}, v = 1)
            static final class C00211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                int label;
                final /* synthetic */ TransformableNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00211(TransformableNode transformableNode, Continuation<? super C00211> continuation) {
                    super(2, continuation);
                    this.this$0 = transformableNode;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C00211 c00211 = new C00211(this.this$0, continuation);
                    c00211.L$0 = obj;
                    return c00211;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C00211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
                /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
                /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
                /* JADX WARN: Removed duplicated region for block: B:33:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0095 -> B:13:0x003d). Please report as a decompilation issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x009b -> B:13:0x003d). Please report as a decompilation issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00a0 -> B:13:0x003d). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object obj) {
                    CoroutineScope coroutineScope;
                    C00211 c00211;
                    C00211 c002112;
                    Ref.ObjectRef objectRef;
                    CoroutineScope coroutineScope2;
                    Ref.ObjectRef objectRef2;
                    Object obj2;
                    Object obj3;
                    T t;
                    Object obj4;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure(obj);
                            coroutineScope = (CoroutineScope) this.L$0;
                            c00211 = this;
                            obj4 = obj;
                            if (!CoroutineScopeKt.isActive(coroutineScope)) {
                                objectRef2 = new Ref.ObjectRef();
                                c00211.L$0 = coroutineScope;
                                c00211.L$1 = objectRef2;
                                c00211.L$2 = objectRef2;
                                c00211.label = 1;
                                Object objReceive = c00211.this$0.channel.receive(c00211);
                                if (objReceive == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                c002112 = c00211;
                                coroutineScope2 = coroutineScope;
                                obj2 = coroutine_suspended;
                                obj3 = obj4;
                                t = objReceive;
                                objectRef = objectRef2;
                                objectRef2.element = t;
                                if (objectRef.element instanceof TransformEvent.TransformStarted) {
                                    obj4 = obj3;
                                    coroutine_suspended = obj2;
                                    coroutineScope = coroutineScope2;
                                    c00211 = c002112;
                                } else {
                                    try {
                                    } catch (CancellationException e) {
                                        obj4 = obj3;
                                        coroutine_suspended = obj2;
                                        coroutineScope = coroutineScope2;
                                        c00211 = c002112;
                                    }
                                    c002112.L$0 = coroutineScope2;
                                    c002112.L$1 = null;
                                    c002112.L$2 = null;
                                    c002112.label = 2;
                                    if (c002112.this$0.state.transform(MutatePriority.UserInput, new C00221(objectRef, c002112.this$0, null), c002112) == obj2) {
                                        return obj2;
                                    }
                                    obj4 = obj3;
                                    coroutine_suspended = obj2;
                                    coroutineScope = coroutineScope2;
                                    c00211 = c002112;
                                }
                                if (!CoroutineScopeKt.isActive(coroutineScope)) {
                                    return Unit.INSTANCE;
                                }
                            }
                            break;
                        case 1:
                            Ref.ObjectRef objectRef3 = (Ref.ObjectRef) this.L$2;
                            Ref.ObjectRef objectRef4 = (Ref.ObjectRef) this.L$1;
                            CoroutineScope coroutineScope3 = (CoroutineScope) this.L$0;
                            ResultKt.throwOnFailure(obj);
                            c002112 = this;
                            objectRef = objectRef4;
                            coroutineScope2 = coroutineScope3;
                            objectRef2 = objectRef3;
                            obj2 = coroutine_suspended;
                            obj3 = obj;
                            t = obj;
                            objectRef2.element = t;
                            if (objectRef.element instanceof TransformEvent.TransformStarted) {
                            }
                            if (!CoroutineScopeKt.isActive(coroutineScope)) {
                            }
                            break;
                        case 2:
                            coroutineScope = (CoroutineScope) this.L$0;
                            try {
                                ResultKt.throwOnFailure(obj);
                                c00211 = this;
                                obj4 = obj;
                            } catch (CancellationException e2) {
                                c00211 = this;
                                obj4 = obj;
                            }
                            if (!CoroutineScopeKt.isActive(coroutineScope)) {
                            }
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: Transformable.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/TransformScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$1$1", f = "Transformable.kt", i = {0}, l = {187}, m = "invokeSuspend", n = {"$this$transform"}, s = {"L$0"}, v = 1)
                static final class C00221 extends SuspendLambda implements Function2<TransformScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ Ref.ObjectRef<TransformEvent> $event;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    int label;
                    final /* synthetic */ TransformableNode this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00221(Ref.ObjectRef<TransformEvent> objectRef, TransformableNode transformableNode, Continuation<? super C00221> continuation) {
                        super(2, continuation);
                        this.$event = objectRef;
                        this.this$0 = transformableNode;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        C00221 c00221 = new C00221(this.$event, this.this$0, continuation);
                        c00221.L$0 = obj;
                        return c00221;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(TransformScope transformScope, Continuation<? super Unit> continuation) {
                        return ((C00221) create(transformScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
                    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x006e -> B:20:0x0074). Please report as a decompilation issue!!! */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object invokeSuspend(Object obj) {
                        TransformScope transformScope;
                        C00221 c00221;
                        Object obj2;
                        Ref.ObjectRef<TransformEvent> objectRef;
                        Object obj3;
                        T t;
                        TransformScope transformScope2;
                        C00221 c002212;
                        Object obj4;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        switch (this.label) {
                            case 0:
                                ResultKt.throwOnFailure(obj);
                                transformScope = (TransformScope) this.L$0;
                                c00221 = this;
                                obj2 = obj;
                                if (!(c00221.$event.element instanceof TransformEvent.TransformStopped)) {
                                    TransformEvent transformEvent = c00221.$event.element;
                                    TransformEvent.TransformDelta transformDelta = transformEvent instanceof TransformEvent.TransformDelta ? (TransformEvent.TransformDelta) transformEvent : null;
                                    if (transformDelta != null) {
                                        transformScope.mo447transformByd4ec7I(transformDelta.getZoomChange(), transformDelta.getPanChange(), transformDelta.getRotationChange());
                                    }
                                    objectRef = c00221.$event;
                                    c00221.L$0 = transformScope;
                                    c00221.L$1 = objectRef;
                                    c00221.label = 1;
                                    Object objReceive = c00221.this$0.channel.receive(c00221);
                                    if (objReceive == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    Object obj5 = coroutine_suspended;
                                    obj3 = obj2;
                                    t = objReceive;
                                    transformScope2 = transformScope;
                                    c002212 = c00221;
                                    obj4 = obj5;
                                    objectRef.element = t;
                                    obj2 = obj3;
                                    coroutine_suspended = obj4;
                                    c00221 = c002212;
                                    transformScope = transformScope2;
                                    if (!(c00221.$event.element instanceof TransformEvent.TransformStopped)) {
                                        return Unit.INSTANCE;
                                    }
                                }
                                break;
                            case 1:
                                Ref.ObjectRef<TransformEvent> objectRef2 = (Ref.ObjectRef) this.L$1;
                                TransformScope transformScope3 = (TransformScope) this.L$0;
                                ResultKt.throwOnFailure(obj);
                                objectRef = objectRef2;
                                transformScope2 = transformScope3;
                                c002212 = this;
                                obj4 = coroutine_suspended;
                                obj3 = obj;
                                t = obj;
                                objectRef.element = t;
                                obj2 = obj3;
                                coroutine_suspended = obj4;
                                c00221 = c002212;
                                transformScope = transformScope2;
                                if (!(c00221.$event.element instanceof TransformEvent.TransformStopped)) {
                                }
                                break;
                            default:
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                        BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new C00211(this.this$0, null), 1, null);
                        this.label = 1;
                        if (ForEachGestureKt.awaitEachGesture(this.$this_SuspendingPointerInputModifierNode, new AnonymousClass2(this.this$0, $this$coroutineScope, null), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Transformable.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.gestures.TransformableNode$pointerInputNode$1$1$2", f = "Transformable.kt", i = {}, l = {198}, m = "invokeSuspend", n = {}, s = {}, v = 1)
            static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ CoroutineScope $$this$coroutineScope;
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ TransformableNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(TransformableNode transformableNode, CoroutineScope coroutineScope, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.this$0 = transformableNode;
                    this.$$this$coroutineScope = coroutineScope;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$$this$coroutineScope, continuation);
                    anonymousClass2.L$0 = obj;
                    return anonymousClass2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    try {
                        try {
                            switch (this.label) {
                                case 0:
                                    ResultKt.throwOnFailure($result);
                                    AwaitPointerEventScope $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                                    this.label = 1;
                                    if (TransformableKt.detectZoom($this$awaitEachGesture, this.this$0.lockRotationOnZoomPan, this.this$0.channel, this.this$0.updatedCanPan, this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                                case 1:
                                    ResultKt.throwOnFailure($result);
                                    break;
                                default:
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } catch (CancellationException exception) {
                            if (!CoroutineScopeKt.isActive(this.$$this$coroutineScope)) {
                                throw exception;
                            }
                        }
                        return Unit.INSTANCE;
                    } finally {
                        this.this$0.channel.mo10050trySendJP2dKIU(TransformEvent.TransformStopped.INSTANCE);
                    }
                }
            }
        }

        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
        public final Object invoke(PointerInputScope $this$SuspendingPointerInputModifierNode, Continuation<? super Unit> continuation) {
            Object objCoroutineScope;
            return (this.this$0.enabled && (objCoroutineScope = CoroutineScopeKt.coroutineScope(new AnonymousClass1($this$SuspendingPointerInputModifierNode, this.this$0, null), continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objCoroutineScope : Unit.INSTANCE;
        }
    }));

    public TransformableNode(TransformableState state, Function1<? super Offset, Boolean> function1, boolean lockRotationOnZoomPan, boolean enabled) {
        this.state = state;
        this.canPan = function1;
        this.lockRotationOnZoomPan = lockRotationOnZoomPan;
        this.enabled = enabled;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        this.scrollConfig = AndroidScrollable_androidKt.platformScrollConfig(this);
    }

    public final void update(TransformableState state, Function1<? super Offset, Boolean> canPan, boolean lockRotationOnZoomPan, boolean enabled) {
        this.canPan = canPan;
        boolean needsReset = (Intrinsics.areEqual(this.state, state) && this.enabled == enabled && this.lockRotationOnZoomPan == lockRotationOnZoomPan) ? false : true;
        if (needsReset) {
            this.state = state;
            this.enabled = enabled;
            this.lockRotationOnZoomPan = lockRotationOnZoomPan;
            this.pointerInputNode.resetPointerInputHandler();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo233onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        boolean z;
        final ScrollConfig scrollConfig = this.scrollConfig;
        if (this.enabled) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int $i$f$fastAny = 0;
            int index$iv$iv = 0;
            int size = changes.size();
            while (true) {
                if (index$iv$iv < size) {
                    Object item$iv$iv = changes.get(index$iv$iv);
                    PointerInputChange it = (PointerInputChange) item$iv$iv;
                    List<PointerInputChange> list = changes;
                    int type = it.getType();
                    int $i$f$fastAny2 = $i$f$fastAny;
                    int $i$f$fastAny3 = PointerType.INSTANCE.m6086getMouseT8wyACA();
                    if (PointerType.m6081equalsimpl0(type, $i$f$fastAny3)) {
                        z = true;
                        break;
                    } else {
                        index$iv$iv++;
                        changes = list;
                        $i$f$fastAny = $i$f$fastAny2;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (z && scrollConfig != null && this.pointerInputModifierMouse == null) {
                this.pointerInputModifierMouse = (PointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.gestures.TransformableNode$onPointerEvent$2
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope $this$SuspendingPointerInputModifierNode, Continuation<? super Unit> continuation) {
                        Object objDetectZoomByCtrlMouseScroll = TransformableKt.detectZoomByCtrlMouseScroll($this$SuspendingPointerInputModifierNode, this.this$0.channel, scrollConfig, continuation);
                        return objDetectZoomByCtrlMouseScroll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDetectZoomByCtrlMouseScroll : Unit.INSTANCE;
                    }
                }));
            }
        }
        this.pointerInputNode.mo233onPointerEventH0pRuoY(pointerEvent, pass, bounds);
        PointerInputModifierNode pointerInputModifierNode = this.pointerInputModifierMouse;
        if (pointerInputModifierNode != null) {
            pointerInputModifierNode.mo233onPointerEventH0pRuoY(pointerEvent, pass, bounds);
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputNode.onCancelPointerInput();
        PointerInputModifierNode pointerInputModifierNode = this.pointerInputModifierMouse;
        if (pointerInputModifierNode != null) {
            pointerInputModifierNode.onCancelPointerInput();
        }
    }
}
