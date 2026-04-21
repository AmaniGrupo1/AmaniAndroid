package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: compiled from: AnimateBoundsModifier.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0016\u0010\u0013J\u001d\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b!\u0010\"J6\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020<J\u0018\u0010=\u001a\u00020\u00062\u0006\u00107\u001a\u0002082\u0006\u0010;\u001a\u00020<H\u0002R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u001c\u0010\u0018\u001a\u00020\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u0013R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010#\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b#\u0010$R/\u0010&\u001a\u0004\u0018\u00010\u00062\b\u0010%\u001a\u0004\u0018\u00010\u00068B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b'\u0010\u001e\"\u0004\b(\u0010)R\u0013\u0010,\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b-\u0010\u001eR\u0016\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u00020\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\n¨\u0006>"}, d2 = {"Landroidx/compose/animation/BoundsTransformDeferredAnimation;", "", "<init>", "()V", "animatable", "Landroidx/compose/animation/core/Animatable;", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/animation/core/AnimationVector4D;", "targetSize", "Landroidx/compose/ui/geometry/Size;", "J", "targetOffset", "Landroidx/compose/ui/geometry/Offset;", "isPending", "", "updateTargetSize", "", "size", "updateTargetSize-uvyYCjk", "(J)V", "updateTargetOffset", "offset", "updateTargetOffset-k-4lQ0M", "currentPosition", "currentSize", "getCurrentSize-NH-jbRc", "()J", "setCurrentSize-uvyYCjk", "currentBounds", "getCurrentBounds", "()Landroidx/compose/ui/geometry/Rect;", "updateCurrentBounds", "position", "updateCurrentBounds-tz77jQw", "(JJ)V", "isIdle", "()Z", "<set-?>", "animatedValue", "getAnimatedValue", "setAnimatedValue", "(Landroidx/compose/ui/geometry/Rect;)V", "animatedValue$delegate", "Landroidx/compose/runtime/MutableState;", Values.VECTOR_MAP_VECTORS_KEY, "getValue", "directManipulationParents", "", "Landroidx/compose/ui/layout/LayoutCoordinates;", "additionalOffset", "updateTargetOffsetAndAnimate", "lookaheadScope", "Landroidx/compose/ui/layout/LookaheadScope;", "placementScope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "directManipulationParentsDirty", "includeMotionFrameOfReference", "boundsTransform", "Landroidx/compose/animation/BoundsTransform;", "animate", "animation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BoundsTransformDeferredAnimation {
    public static final int $stable = 8;
    private Animatable<Rect, AnimationVector4D> animatable;
    private List<LayoutCoordinates> directManipulationParents;
    private boolean isPending;
    private long targetSize = Size.INSTANCE.m4529getUnspecifiedNHjbRc();
    private long targetOffset = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
    private long currentPosition = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
    private long currentSize = Size.INSTANCE.m4529getUnspecifiedNHjbRc();

    /* JADX INFO: renamed from: animatedValue$delegate, reason: from kotlin metadata */
    private final MutableState animatedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    private long additionalOffset = Offset.INSTANCE.m4468getZeroF1C5BW0();

    /* JADX INFO: renamed from: updateTargetSize-uvyYCjk, reason: not valid java name */
    public final void m80updateTargetSizeuvyYCjk(long size) {
        if ((this.targetSize != InlineClassHelperKt.UnspecifiedPackedFloats) && !IntSize.m7674equalsimpl0(IntSizeKt.m7684roundToIntSizeuvyYCjk(size), IntSizeKt.m7684roundToIntSizeuvyYCjk(this.targetSize))) {
            this.isPending = true;
        }
        this.targetSize = size;
        if (this.currentSize == InlineClassHelperKt.UnspecifiedPackedFloats) {
            this.currentSize = size;
        }
    }

    /* JADX INFO: renamed from: updateTargetOffset-k-4lQ0M, reason: not valid java name */
    private final void m76updateTargetOffsetk4lQ0M(long offset) {
        if (((this.targetOffset & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats) && !IntOffset.m7632equalsimpl0(IntOffsetKt.m7650roundk4lQ0M(offset), IntOffsetKt.m7650roundk4lQ0M(this.targetOffset))) {
            this.isPending = true;
        }
        this.targetOffset = offset;
        if ((9223372034707292159L & this.currentPosition) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            this.currentPosition = offset;
        }
    }

    /* JADX INFO: renamed from: getCurrentSize-NH-jbRc, reason: not valid java name and from getter */
    public final long getCurrentSize() {
        return this.currentSize;
    }

    /* JADX INFO: renamed from: setCurrentSize-uvyYCjk, reason: not valid java name */
    public final void m78setCurrentSizeuvyYCjk(long j) {
        this.currentSize = j;
    }

    public final Rect getCurrentBounds() {
        long size = this.currentSize;
        long position = this.currentPosition;
        if ((9223372034707292159L & position) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            if (size != InlineClassHelperKt.UnspecifiedPackedFloats) {
                return RectKt.m4492Recttz77jQw(position, size);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: updateCurrentBounds-tz77jQw, reason: not valid java name */
    public final void m79updateCurrentBoundstz77jQw(long position, long size) {
        this.currentPosition = position;
        this.currentSize = size;
    }

    public final boolean isIdle() {
        if (this.isPending) {
            return false;
        }
        Animatable<Rect, AnimationVector4D> animatable = this.animatable;
        return !(animatable != null && animatable.isRunning());
    }

    private final Rect getAnimatedValue() {
        State $this$getValue$iv = this.animatedValue;
        return (Rect) $this$getValue$iv.getValue();
    }

    private final void setAnimatedValue(Rect rect) {
        MutableState $this$setValue$iv = this.animatedValue;
        $this$setValue$iv.setValue(rect);
    }

    public final Rect getValue() {
        if (isIdle()) {
            return null;
        }
        return getAnimatedValue();
    }

    public final void updateTargetOffsetAndAnimate(LookaheadScope lookaheadScope, Placeable.PlacementScope placementScope, CoroutineScope coroutineScope, boolean directManipulationParentsDirty, boolean includeMotionFrameOfReference, BoundsTransform boundsTransform) {
        long delta;
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates != null) {
            LayoutCoordinates lookaheadScopeCoordinates = lookaheadScope.getLookaheadScopeCoordinates(placementScope);
            long delta2 = Offset.INSTANCE.m4468getZeroF1C5BW0();
            if (!includeMotionFrameOfReference && directManipulationParentsDirty) {
                ArrayList arrayList = this.directManipulationParents;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                LayoutCoordinates currentCoords = coordinates;
                int index = 0;
                while (!Intrinsics.areEqual(lookaheadScope.toLookaheadCoordinates(currentCoords), lookaheadScopeCoordinates)) {
                    if (currentCoords.getIntroducesMotionFrameOfReference()) {
                        if (arrayList.size() == index) {
                            arrayList.add(currentCoords);
                            delta2 = Offset.m4457plusMKHz9U(delta2, LayoutCoordinatesKt.positionInParent(currentCoords));
                        } else if (!Intrinsics.areEqual(arrayList.get(index), currentCoords)) {
                            long delta3 = Offset.m4456minusMKHz9U(delta2, LayoutCoordinatesKt.positionInParent(arrayList.get(index)));
                            arrayList.set(index, currentCoords);
                            delta2 = Offset.m4457plusMKHz9U(delta3, LayoutCoordinatesKt.positionInParent(currentCoords));
                        }
                        index++;
                    }
                    LayoutCoordinates parentCoordinates = currentCoords.getParentCoordinates();
                    if (parentCoordinates == null) {
                        break;
                    } else {
                        currentCoords = parentCoordinates;
                    }
                }
                int i = arrayList.size() - 1;
                if (index <= i) {
                    while (true) {
                        delta2 = Offset.m4456minusMKHz9U(delta2, LayoutCoordinatesKt.positionInParent(arrayList.get(i)));
                        arrayList.remove(arrayList.size() - 1);
                        if (i == index) {
                            break;
                        } else {
                            i--;
                        }
                    }
                }
                this.directManipulationParents = arrayList;
                delta = delta2;
            } else {
                delta = delta2;
            }
            this.additionalOffset = Offset.m4457plusMKHz9U(this.additionalOffset, delta);
            long targetOffset = LookaheadScope.m6171localLookaheadPositionOfauaQtc$default(lookaheadScope, lookaheadScopeCoordinates, coordinates, 0L, includeMotionFrameOfReference, 2, null);
            m76updateTargetOffsetk4lQ0M(Offset.m4457plusMKHz9U(targetOffset, this.additionalOffset));
            setAnimatedValue(animate(coroutineScope, boundsTransform).m4489translatek4lQ0M(Offset.m4444constructorimpl(this.additionalOffset ^ (-9223372034707292160L))));
        }
    }

    private final Rect animate(CoroutineScope coroutineScope, BoundsTransform boundsTransform) {
        Rect value;
        if ((9223372034707292159L & this.targetOffset) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            if (this.targetSize != InlineClassHelperKt.UnspecifiedPackedFloats) {
                Rect target = RectKt.m4492Recttz77jQw(this.targetOffset, this.targetSize);
                Animatable<Rect, AnimationVector4D> animatable = this.animatable;
                Animatable<Rect, AnimationVector4D> animatable2 = animatable == null ? new Animatable<>(target, VectorConvertersKt.getVectorConverter(Rect.INSTANCE), null, null, 12, null) : animatable;
                this.animatable = animatable2;
                if (this.isPending) {
                    this.isPending = false;
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass1(animatable2, target, boundsTransform, this, null), 1, null);
                }
            }
        }
        Animatable<Rect, AnimationVector4D> animatable3 = this.animatable;
        return (animatable3 == null || (value = animatable3.getValue()) == null) ? Rect.INSTANCE.getZero() : value;
    }

    /* JADX INFO: renamed from: androidx.compose.animation.BoundsTransformDeferredAnimation$animate$1, reason: invalid class name */
    /* JADX INFO: compiled from: AnimateBoundsModifier.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.animation.BoundsTransformDeferredAnimation$animate$1", f = "AnimateBoundsModifier.kt", i = {}, l = {434}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Animatable<Rect, AnimationVector4D> $anim;
        final /* synthetic */ BoundsTransform $boundsTransform;
        final /* synthetic */ Rect $target;
        int label;
        final /* synthetic */ BoundsTransformDeferredAnimation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Animatable<Rect, AnimationVector4D> animatable, Rect rect, BoundsTransform boundsTransform, BoundsTransformDeferredAnimation boundsTransformDeferredAnimation, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$anim = animatable;
            this.$target = rect;
            this.$boundsTransform = boundsTransform;
            this.this$0 = boundsTransformDeferredAnimation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$anim, this.$target, this.$boundsTransform, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Animatable<Rect, AnimationVector4D> animatable = this.$anim;
                    Rect rect = this.$target;
                    BoundsTransform boundsTransform = this.$boundsTransform;
                    Rect currentBounds = this.this$0.getCurrentBounds();
                    Intrinsics.checkNotNull(currentBounds);
                    FiniteAnimationSpec<Rect> finiteAnimationSpecCreateAnimationSpec = boundsTransform.createAnimationSpec(currentBounds, this.$target);
                    this.label = 1;
                    if (animatable.animateTo(rect, (4 & 2) != 0 ? animatable.defaultSpringSpec : finiteAnimationSpecCreateAnimationSpec, (4 & 4) != 0 ? animatable.getVelocity() : null, (4 & 8) != 0 ? null : null, this) == coroutine_suspended) {
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
    }
}
