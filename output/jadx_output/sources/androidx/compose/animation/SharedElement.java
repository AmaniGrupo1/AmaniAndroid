package androidx.compose.animation;

import androidx.compose.animation.SharedTransitionStateMachine;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: compiled from: SharedElement.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\u0018\u001a\u00020\u0019J\r\u0010\u001e\u001a\u00020\u001fH\u0000¢\u0006\u0002\b J\u0017\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0000¢\u0006\u0004\b%\u0010&J\u0006\u0010+\u001a\u00020\u001fJ\b\u0010,\u001a\u0004\u0018\u00010-J\u0006\u0010.\u001a\u00020\u001fJ\u0016\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u0002062\u0006\u0010\r\u001a\u00020\u0013J\u000e\u0010<\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u0013J\u000e\u0010>\u001a\u00020\u001f2\u0006\u0010=\u001a\u00020\u0013R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001c0(¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010/\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b0\u00101R\u0011\u00102\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b3\u00101R\u0014\u00107\u001a\b\u0012\u0004\u0012\u00020\u001308X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00109\u001a\b\u0012\u0004\u0012\u00020\u001308X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001f0(X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010*¨\u0006?"}, d2 = {"Landroidx/compose/animation/SharedElement;", "", "key", "scope", "Landroidx/compose/animation/SharedTransitionScopeImpl;", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V", "getKey", "()Ljava/lang/Object;", "getScope", "()Landroidx/compose/animation/SharedTransitionScopeImpl;", "stateMachine", "Landroidx/compose/animation/SharedTransitionStateMachine;", "state", "Landroidx/compose/animation/SharedTransitionStateMachine$State;", "getState$animation", "()Landroidx/compose/animation/SharedTransitionStateMachine$State;", "enabledEntries", "", "Landroidx/compose/animation/SharedElementEntry;", "getEnabledEntries", "()Ljava/util/List;", "allEntries", "getAllEntries", "isAnimating", "", "momentumAnimation", "Landroidx/compose/animation/core/Animatable;", "Landroidx/compose/ui/geometry/Offset;", "Landroidx/compose/animation/core/AnimationVector2D;", "updateMatch", "", "updateMatch$animation", "animationSpecFinalized", "updateExitVelocity", "velocity", "Landroidx/compose/ui/unit/Velocity;", "updateExitVelocity-TH1AsA0$animation", "(J)V", "momentumAnimationOffset", "Lkotlin/Function0;", "getMomentumAnimationOffset", "()Lkotlin/jvm/functions/Function0;", "invalidateTargetBoundsProvider", "tryInitializingCurrentBounds", "Landroidx/compose/ui/geometry/Rect;", "onSharedTransitionFinished", "foundMatch", "getFoundMatch", "()Z", "boundsTransformIsActive", "getBoundsTransformIsActive", "onLookaheadPlaced", "placementScope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "_allEntries", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "_enabledEntries", "observingVisibilityChange", "getObservingVisibilityChange$animation", "addEntry", "sharedElementState", "removeEntry", "animation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SharedElement {
    public static final int $stable = 8;
    private boolean animationSpecFinalized;
    private final Object key;
    private final SharedTransitionScopeImpl scope;
    private final SharedTransitionStateMachine stateMachine = new SharedTransitionStateMachine(this);
    private final Animatable<Offset, AnimationVector2D> momentumAnimation = new Animatable<>(Offset.m4441boximpl(Offset.INSTANCE.m4468getZeroF1C5BW0()), VectorConvertersKt.getVectorConverter(Offset.INSTANCE), null, null, 12, null);
    private final Function0<Offset> momentumAnimationOffset = new Function0<Offset>() { // from class: androidx.compose.animation.SharedElement$momentumAnimationOffset$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Offset invoke() {
            return Offset.m4441boximpl(m121invokeF1C5BW0());
        }

        /* JADX INFO: renamed from: invoke-F1C5BW0, reason: not valid java name */
        public final long m121invokeF1C5BW0() {
            Object it$iv;
            if (!this.this$0.animationSpecFinalized && this.this$0.getScope().isTransitionActive() && this.this$0.momentumAnimation.isRunning()) {
                List<SharedElementEntry> enabledEntries = this.this$0.getEnabledEntries();
                int index$iv$iv = 0;
                int size = enabledEntries.size();
                while (true) {
                    if (index$iv$iv >= size) {
                        it$iv = null;
                        break;
                    }
                    Object item$iv$iv = enabledEntries.get(index$iv$iv);
                    it$iv = item$iv$iv;
                    if (((SharedElementEntry) it$iv).getTarget()) {
                        break;
                    }
                    index$iv$iv++;
                }
                SharedElementEntry it = (SharedElementEntry) it$iv;
                if (it != null) {
                    SharedElement sharedElement = this.this$0;
                    FiniteAnimationSpec<Rect> animationSpec = it.getBoundsAnimation().getAnimationSpec();
                    if (animationSpec instanceof SpringSpec) {
                        SpringSpec spring = AnimationSpecKt.spring(((SpringSpec) animationSpec).getDampingRatio(), ((SpringSpec) animationSpec).getStiffness(), Offset.m4441boximpl(VisibilityThresholdsKt.getVisibilityThreshold(Offset.INSTANCE)));
                        BuildersKt__Builders_commonKt.launch$default(sharedElement.getScope().getCoroutineScope(), null, null, new SharedElement$momentumAnimationOffset$1$2$1(sharedElement, spring, null), 3, null);
                    }
                    sharedElement.animationSpecFinalized = true;
                }
            }
            return ((Offset) this.this$0.momentumAnimation.getValue()).m4462unboximpl();
        }
    };
    private final SnapshotStateList<SharedElementEntry> _allEntries = SnapshotStateKt.mutableStateListOf();
    private final SnapshotStateList<SharedElementEntry> _enabledEntries = SnapshotStateKt.mutableStateListOf();
    private final Function0<Unit> observingVisibilityChange = new Function0<Unit>() { // from class: androidx.compose.animation.SharedElement$observingVisibilityChange$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            List<SharedElementEntry> allEntries = this.this$0.getAllEntries();
            int size = allEntries.size();
            for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                Object item$iv$iv = allEntries.get(index$iv$iv);
                SharedElementEntry it = (SharedElementEntry) item$iv$iv;
                if (it.getTarget() && it.isEnabled()) {
                    return;
                }
            }
        }
    };

    public SharedElement(Object key, SharedTransitionScopeImpl scope) {
        this.key = key;
        this.scope = scope;
    }

    public final Object getKey() {
        return this.key;
    }

    public final SharedTransitionScopeImpl getScope() {
        return this.scope;
    }

    public final SharedTransitionStateMachine.State getState$animation() {
        return this.stateMachine.getState();
    }

    public final List<SharedElementEntry> getEnabledEntries() {
        return this._enabledEntries;
    }

    public final List<SharedElementEntry> getAllEntries() {
        return this._allEntries;
    }

    public final boolean isAnimating() {
        List<SharedElementEntry> enabledEntries = getEnabledEntries();
        int size = enabledEntries.size();
        for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
            Object item$iv$iv = enabledEntries.get(index$iv$iv);
            SharedElementEntry it = (SharedElementEntry) item$iv$iv;
            if (it.getBoundsAnimation().isRunning()) {
                return true;
            }
        }
        return false;
    }

    public final void updateMatch$animation() throws Throwable {
        Function0<Unit> testBlockToRun = this.scope.getTestBlockToRun();
        if (testBlockToRun != null) {
            testBlockToRun.invoke();
        }
        CollectionsKt.removeAll((List) this._enabledEntries, (Function1) new Function1<SharedElementEntry, Boolean>() { // from class: androidx.compose.animation.SharedElement$updateMatch$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(SharedElementEntry it) {
                return Boolean.valueOf((this.this$0.getAllEntries().contains(it) && it.isEnabled()) ? false : true);
            }
        });
        List<SharedElementEntry> allEntries = getAllEntries();
        int size = allEntries.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = allEntries.get(index$iv);
            SharedElementEntry it = (SharedElementEntry) item$iv;
            if (it.isEnabled() && !getEnabledEntries().contains(it)) {
                this._enabledEntries.add(it);
            }
        }
        List $this$fastForEach$iv = this._enabledEntries;
        boolean hasVisibleContent = SharedElementKt.hasVisibleContent($this$fastForEach$iv);
        this.stateMachine.checkForAndDeferStateUpdates(hasVisibleContent);
    }

    /* JADX INFO: renamed from: updateExitVelocity-TH1AsA0$animation, reason: not valid java name */
    public final void m120updateExitVelocityTH1AsA0$animation(long velocity) {
        BuildersKt__Builders_commonKt.launch$default(this.scope.getCoroutineScope(), null, null, new SharedElement$updateExitVelocity$1(this, velocity, null), 3, null);
    }

    public final Function0<Offset> getMomentumAnimationOffset() {
        return this.momentumAnimationOffset;
    }

    public final void invalidateTargetBoundsProvider() {
        this.stateMachine.invalidateTargetBoundsProvider();
    }

    public final Rect tryInitializingCurrentBounds() {
        return this.stateMachine.tryInitializingCurrentBounds();
    }

    public final void onSharedTransitionFinished() {
        if (getEnabledEntries().size() <= 1 || !SharedElementKt.hasVisibleContent(getEnabledEntries())) {
            this.stateMachine.resetState();
        }
    }

    public final boolean getFoundMatch() {
        return getState$animation().getActiveMatchFound() || getState$animation().getMatchIsOrHasBeenConfigured() || this.stateMachine.getActiveMatchDeferred();
    }

    public final boolean getBoundsTransformIsActive() {
        return getState$animation().getMatchIsOrHasBeenConfigured();
    }

    public final void onLookaheadPlaced(Placeable.PlacementScope placementScope, SharedElementEntry state) {
        LayoutCoordinates it;
        this.stateMachine.processPendingRequest();
        if (Intrinsics.areEqual(getState$animation(), NoMatchFound.INSTANCE) || !state.isEnabled()) {
            return;
        }
        SharedTransitionStateMachine.State matchState = getState$animation();
        if (state.getBoundsAnimation().getTarget() && matchState.getActiveMatchFound() && (it = placementScope.getCoordinates()) != null) {
            long lookaheadSize = IntSizeKt.m7688toSizeozmzZPI(it.mo6149getSizeYbymL2g());
            SharedTransitionScopeImpl $this$onLookaheadPlaced_u24lambda_u240_u240_u240 = state.getSharedElement().scope;
            long topLeft = LookaheadScope.m6171localLookaheadPositionOfauaQtc$default($this$onLookaheadPlaced_u24lambda_u240_u240_u240, state.getSharedElement().scope.getLookaheadRoot$animation(), it, 0L, false, 6, null);
            SharedTransitionScopeImpl sharedTransitionScopeImpl = state.getSharedElement().scope;
            long structuralOffset = LayoutCoordinates.m6148localPositionOfS_NoaFU$default(state.getSharedElement().scope.getLookaheadRoot$animation(), it, 0L, false, 2, null);
            this.stateMachine.m129configureActiveMatchL7TYDSY(lookaheadSize, topLeft, structuralOffset);
        }
    }

    public final Function0<Unit> getObservingVisibilityChange$animation() {
        return this.observingVisibilityChange;
    }

    public final void addEntry(SharedElementEntry sharedElementState) throws Throwable {
        this._allEntries.add(sharedElementState);
        updateMatch$animation();
    }

    public final void removeEntry(SharedElementEntry sharedElementState) throws Throwable {
        this._allEntries.remove(sharedElementState);
        this._enabledEntries.remove(sharedElementState);
        updateMatch$animation();
    }
}
