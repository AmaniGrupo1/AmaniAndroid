package androidx.compose.ui.focus;

import android.os.Trace;
import android.view.KeyEvent;
import androidx.collection.MutableLongSet;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.firestore.model.Values;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: FocusOwnerImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0002\b\u001aJ!\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020!H\u0016J\u0010\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020\u0015H\u0016J/\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016¢\u0006\u0004\b)\u0010*J\u001a\u0010#\u001a\u00020\u00152\b\b\u0002\u0010+\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002J\u0017\u0010,\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016¢\u0006\u0004\b-\u0010*J\u001f\u0010,\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\u0015H\u0016¢\u0006\u0004\b/\u00100J7\u00101\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u00102\u001a\u0004\u0018\u00010\u00192\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001504H\u0016¢\u0006\u0004\b5\u00106J%\u00107\u001a\u00020\u00152\u0006\u00108\u001a\u0002092\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00150;H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\u00152\u0006\u00108\u001a\u000209H\u0016¢\u0006\u0004\b?\u0010@J\u001e\u0010A\u001a\u00020\u00152\u0006\u0010B\u001a\u00020C2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00150;H\u0016J\u0010\u0010D\u001a\u00020\u00152\u0006\u0010B\u001a\u00020EH\u0016J\b\u0010F\u001a\u00020!H\u0016J\b\u0010G\u001a\u00020!H\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020\tH\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020JH\u0016J\b\u0010K\u001a\u00020!H\u0016Jd\u0010L\u001a\u00020!\"\n\b\u0000\u0010M\u0018\u0001*\u00020N*\u00020N2\f\u0010O\u001a\b\u0012\u0004\u0012\u0002HM0P2\u0012\u0010Q\u001a\u000e\u0012\u0004\u0012\u0002HM\u0012\u0004\u0012\u00020!042\f\u0010R\u001a\b\u0012\u0004\u0012\u00020!0;2\u0012\u0010S\u001a\u000e\u0012\u0004\u0012\u0002HM\u0012\u0004\u0012\u00020!04H\u0082\b¢\u0006\u0004\bT\u0010UJ0\u0010V\u001a\u0004\u0018\u0001HM\"\n\b\u0000\u0010M\u0018\u0001*\u00020W*\u00020N2\f\u0010O\u001a\b\u0012\u0004\u0012\u0002HM0PH\u0082\b¢\u0006\u0004\bX\u0010YJ\n\u0010Z\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010[\u001a\u00020\u0015H\u0016J\b\u0010\\\u001a\u00020\u0015H\u0016J\n\u0010]\u001a\u0004\u0018\u00010\tH\u0002J\u000e\u0010o\u001a\u0004\u0018\u00010p*\u00020NH\u0002J\u0017\u0010q\u001a\u00020\u00152\u0006\u00108\u001a\u000209H\u0002¢\u0006\u0004\br\u0010@R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010^\u001a\u00020_8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010aR\u001a\u0010b\u001a\b\u0012\u0004\u0012\u00020d0cX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\be\u0010fR*\u0010h\u001a\u0004\u0018\u00010\t2\b\u0010g\u001a\u0004\u0018\u00010\t8V@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010\u000b\"\u0004\bj\u0010\rR$\u0010k\u001a\u00020\u00152\u0006\u0010g\u001a\u00020\u0015@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010l\"\u0004\bm\u0010n¨\u0006s"}, d2 = {"Landroidx/compose/ui/focus/FocusOwnerImpl;", "Landroidx/compose/ui/focus/FocusOwner;", "platformFocusOwner", "Landroidx/compose/ui/focus/PlatformFocusOwner;", "owner", "Landroidx/compose/ui/node/Owner;", "<init>", "(Landroidx/compose/ui/focus/PlatformFocusOwner;Landroidx/compose/ui/node/Owner;)V", "rootFocusNode", "Landroidx/compose/ui/focus/FocusTargetNode;", "getRootFocusNode$ui", "()Landroidx/compose/ui/focus/FocusTargetNode;", "setRootFocusNode$ui", "(Landroidx/compose/ui/focus/FocusTargetNode;)V", "focusInvalidationManager", "Landroidx/compose/ui/focus/FocusInvalidationManager;", "modifier", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "requestOwnerFocus", "", "focusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "previouslyFocusedRect", "Landroidx/compose/ui/geometry/Rect;", "requestOwnerFocus-7o62pno", "keysCurrentlyDown", "Landroidx/collection/MutableLongSet;", "takeFocus", "takeFocus-aToIllA", "(ILandroidx/compose/ui/geometry/Rect;)Z", "releaseFocus", "", "clearOwnerFocus", "clearFocus", "force", "refreshFocusEvents", "clearFocus-I7lrPNg", "(ZZZI)Z", "resetFocus", "resetFocus-3ESFkO8", "(I)Z", "forced", "moveFocus", "moveFocus-3ESFkO8", "wrapAroundForOneDimensionalFocus", "moveFocus-aToIllA", "(IZ)Z", "focusSearch", "focusedRect", "onFound", "Lkotlin/Function1;", "focusSearch-ULY8qGw", "(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;", "dispatchKeyEvent", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "onFocusedItem", "Lkotlin/Function0;", "dispatchKeyEvent-YhN2O0w", "(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z", "dispatchInterceptedSoftKeyboardEvent", "dispatchInterceptedSoftKeyboardEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "dispatchRotaryEvent", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "dispatchIndirectPointerEvent", "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;", "dispatchIndirectPointerCancel", "focusTargetAvailable", "scheduleInvalidation", "node", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "scheduleInvalidationForOwner", "traverseAncestorsIncludingSelf", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/node/DelegatableNode;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/ui/node/NodeKind;", "onPreVisit", "onVisit", "onPostVisit", "traverseAncestorsIncludingSelf-QFhIj7k", "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "nearestAncestorIncludingSelf", "", "nearestAncestorIncludingSelf-64DMado", "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;", "getFocusRect", "hasFocusableContent", "hasNonInteropFocusableContent", "findFocusTargetNode", "rootState", "Landroidx/compose/ui/focus/FocusState;", "getRootState", "()Landroidx/compose/ui/focus/FocusState;", "listeners", "Landroidx/collection/MutableObjectList;", "Landroidx/compose/ui/focus/FocusListener;", "getListeners", "()Landroidx/collection/MutableObjectList;", Values.VECTOR_MAP_VECTORS_KEY, "activeFocusTargetNode", "getActiveFocusTargetNode", "setActiveFocusTargetNode", "isFocusCaptured", "()Z", "setFocusCaptured", "(Z)V", "lastLocalKeyInputNode", "Landroidx/compose/ui/Modifier$Node;", "validateKeyEvent", "validateKeyEvent-ZmokQxo", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FocusOwnerImpl implements FocusOwner {
    public static final int $stable = 8;
    private FocusTargetNode activeFocusTargetNode;
    private final FocusInvalidationManager focusInvalidationManager;
    private boolean isFocusCaptured;
    private MutableLongSet keysCurrentlyDown;
    private final Owner owner;
    private final PlatformFocusOwner platformFocusOwner;
    private FocusTargetNode rootFocusNode = new FocusTargetNode(Focusability.INSTANCE.m4387getNeverLCbbffg(), false, null, null, 14, null);
    private final Modifier modifier = new ModifierNodeElement<FocusTargetNode>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        @Override // androidx.compose.ui.node.ModifierNodeElement
        /* JADX INFO: renamed from: create */
        public FocusTargetNode getNode() {
            return this.this$0.getRootFocusNode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void update(FocusTargetNode node) {
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public void inspectableProperties(InspectorInfo $this$inspectableProperties) {
            $this$inspectableProperties.setName("RootFocusTarget");
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public int hashCode() {
            return this.this$0.getRootFocusNode().hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public boolean equals(Object other) {
            return other == this;
        }
    };
    private final MutableObjectList<FocusListener> listeners = new MutableObjectList<>(1);

    /* JADX INFO: compiled from: FocusOwnerImpl.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FocusOwnerImpl(PlatformFocusOwner platformFocusOwner, Owner owner) {
        this.platformFocusOwner = platformFocusOwner;
        this.owner = owner;
        this.focusInvalidationManager = new FocusInvalidationManager(this, this.owner);
    }

    /* JADX INFO: renamed from: getRootFocusNode$ui, reason: from getter */
    public final FocusTargetNode getRootFocusNode() {
        return this.rootFocusNode;
    }

    public final void setRootFocusNode$ui(FocusTargetNode focusTargetNode) {
        this.rootFocusNode = focusTargetNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Modifier getModifier() {
        return this.modifier;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: requestOwnerFocus-7o62pno */
    public boolean mo4348requestOwnerFocus7o62pno(FocusDirection focusDirection, Rect previouslyFocusedRect) {
        return this.platformFocusOwner.mo4394requestOwnerFocus7o62pno(focusDirection, previouslyFocusedRect);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: takeFocus-aToIllA */
    public boolean mo4350takeFocusaToIllA(final int focusDirection, Rect previouslyFocusedRect) {
        Boolean boolMo4346focusSearchULY8qGw = mo4346focusSearchULY8qGw(focusDirection, previouslyFocusedRect, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$takeFocus$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                return Boolean.valueOf(it.mo4361requestFocus3ESFkO8(focusDirection));
            }
        });
        if (boolMo4346focusSearchULY8qGw != null) {
            return boolMo4346focusSearchULY8qGw.booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void releaseFocus() {
        FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
        if (ComposeUiFlags.isOptimizedFocusEventDispatchEnabled && getActiveFocusTargetNode() != null) {
            FocusTargetNode previousActive = getActiveFocusTargetNode();
            setActiveFocusTargetNode(null);
            if (previousActive != null) {
                previousActive.dispatchFocusCallbacks$ui(FocusStateImpl.Active, FocusStateImpl.Inactive);
            }
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void clearOwnerFocus() {
        this.platformFocusOwner.clearOwnerFocus();
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void clearFocus(boolean force) {
        mo4343clearFocusI7lrPNg(force, true, true, FocusDirection.INSTANCE.m4333getExitdhqQ8s());
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: clearFocus-I7lrPNg */
    public boolean mo4343clearFocusI7lrPNg(boolean force, boolean refreshFocusEvents, boolean clearOwnerFocus, int focusDirection) {
        boolean clearedFocusSuccessfully;
        if (!force) {
            switch (WhenMappings.$EnumSwitchMapping$0[FocusTransactionsKt.m4370performCustomClearFocusMxy_nc0(this.rootFocusNode, focusDirection).ordinal()]) {
                case 1:
                case 2:
                case 3:
                    clearedFocusSuccessfully = false;
                    break;
                case 4:
                    clearedFocusSuccessfully = clearFocus(force, refreshFocusEvents);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        } else {
            clearedFocusSuccessfully = clearFocus(force, refreshFocusEvents);
        }
        if (clearedFocusSuccessfully && clearOwnerFocus) {
            clearOwnerFocus();
        }
        return clearedFocusSuccessfully;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: resetFocus-3ESFkO8 */
    public boolean mo4349resetFocus3ESFkO8(final int focusDirection) {
        boolean successfulClear = mo4343clearFocusI7lrPNg(false, true, false, focusDirection);
        if (!successfulClear) {
            return false;
        }
        Boolean boolMo4346focusSearchULY8qGw = mo4346focusSearchULY8qGw(focusDirection, null, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$resetFocus$successfulReset$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                return Boolean.valueOf(it.mo4361requestFocus3ESFkO8(focusDirection));
            }
        });
        boolean successfulReset = boolMo4346focusSearchULY8qGw != null ? boolMo4346focusSearchULY8qGw.booleanValue() : false;
        if (!successfulReset) {
            clearOwnerFocus();
        }
        return successfulReset;
    }

    static /* synthetic */ boolean clearFocus$default(FocusOwnerImpl focusOwnerImpl, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return focusOwnerImpl.clearFocus(z, z2);
    }

    private final boolean clearFocus(boolean forced, boolean refreshFocusEvents) {
        FocusTargetNode previousActiveFocusTargetNode;
        Object obj;
        NodeChain nodes;
        FocusTargetNode previousActiveFocusTargetNode2;
        FocusTargetNode previousActiveFocusTargetNode3;
        Object node$iv$iv;
        DelegatingNode this_$iv$iv$iv;
        int $i$f$forEachImmediateDelegate$ui;
        Modifier.Node node;
        int count$iv$iv;
        MutableVector mutableVector;
        if (getActiveFocusTargetNode() == null) {
            return true;
        }
        Object obj2 = null;
        if (getIsFocusCaptured() && !forced) {
            return false;
        }
        FocusTargetNode previousActiveFocusTargetNode4 = getActiveFocusTargetNode();
        setActiveFocusTargetNode(null);
        if (!refreshFocusEvents || previousActiveFocusTargetNode4 == null) {
            return true;
        }
        previousActiveFocusTargetNode4.dispatchFocusCallbacks$ui(getIsFocusCaptured() ? FocusStateImpl.Captured : FocusStateImpl.Active, FocusStateImpl.Inactive);
        FocusTargetNode $this$visitAncestors_u2dY_u2dYKmho_u24default$iv = previousActiveFocusTargetNode4;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv2 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv.getNode().getParent();
        LayoutNode layout$iv$iv = DelegatableNodeKt.requireLayoutNode($this$visitAncestors_u2dY_u2dYKmho_u24default$iv);
        while (layout$iv$iv != null) {
            Modifier.Node head$iv$iv = layout$iv$iv.getNodes().getHead();
            if ((head$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                while (node$iv$iv2 != null) {
                    if ((node$iv$iv2.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv2;
                        MutableVector mutableVector2 = null;
                        Modifier.Node this_$iv$iv$iv2 = it$iv;
                        while (this_$iv$iv$iv2 != null) {
                            if (this_$iv$iv$iv2 instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) this_$iv$iv$iv2;
                                previousActiveFocusTargetNode3 = previousActiveFocusTargetNode4;
                                it.dispatchFocusCallbacks$ui(FocusStateImpl.ActiveParent, FocusStateImpl.Inactive);
                                node$iv$iv = null;
                            } else {
                                previousActiveFocusTargetNode3 = previousActiveFocusTargetNode4;
                                if (((this_$iv$iv$iv2.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) == 0 || !(this_$iv$iv$iv2 instanceof DelegatingNode)) {
                                    node$iv$iv = null;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv3 = (DelegatingNode) this_$iv$iv$iv2;
                                    int $i$f$forEachImmediateDelegate$ui2 = 0;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv3.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            this_$iv$iv$iv = this_$iv$iv$iv3;
                                            if (count$iv$iv2 == 1) {
                                                $i$f$forEachImmediateDelegate$ui = $i$f$forEachImmediateDelegate$ui2;
                                                node = next$iv$iv;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    $i$f$forEachImmediateDelegate$ui = $i$f$forEachImmediateDelegate$ui2;
                                                    node = this_$iv$iv$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    $i$f$forEachImmediateDelegate$ui = $i$f$forEachImmediateDelegate$ui2;
                                                    node = this_$iv$iv$iv2;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = node;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    node = null;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        } else {
                                            this_$iv$iv$iv = this_$iv$iv$iv3;
                                            $i$f$forEachImmediateDelegate$ui = $i$f$forEachImmediateDelegate$ui2;
                                            node = this_$iv$iv$iv2;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        this_$iv$iv$iv3 = this_$iv$iv$iv;
                                        $i$f$forEachImmediateDelegate$ui2 = $i$f$forEachImmediateDelegate$ui;
                                        this_$iv$iv$iv2 = node;
                                    }
                                    Modifier.Node node2 = this_$iv$iv$iv2;
                                    node$iv$iv = null;
                                    if (count$iv$iv2 == 1) {
                                        obj2 = null;
                                        previousActiveFocusTargetNode4 = previousActiveFocusTargetNode3;
                                        this_$iv$iv$iv2 = node2;
                                    }
                                }
                            }
                            obj2 = node$iv$iv;
                            this_$iv$iv$iv2 = DelegatableNodeKt.pop(mutableVector2);
                            previousActiveFocusTargetNode4 = previousActiveFocusTargetNode3;
                        }
                        previousActiveFocusTargetNode2 = previousActiveFocusTargetNode4;
                    } else {
                        previousActiveFocusTargetNode2 = previousActiveFocusTargetNode4;
                    }
                    node$iv$iv2 = node$iv$iv2.getParent();
                    obj2 = obj2;
                    previousActiveFocusTargetNode4 = previousActiveFocusTargetNode2;
                }
                previousActiveFocusTargetNode = previousActiveFocusTargetNode4;
                obj = obj2;
            } else {
                previousActiveFocusTargetNode = previousActiveFocusTargetNode4;
                obj = obj2;
            }
            layout$iv$iv = layout$iv$iv.getParent$ui();
            node$iv$iv2 = (layout$iv$iv == null || (nodes = layout$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            obj2 = obj;
            previousActiveFocusTargetNode4 = previousActiveFocusTargetNode;
        }
        return true;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    /* JADX INFO: renamed from: moveFocus-3ESFkO8 */
    public boolean mo4341moveFocus3ESFkO8(int focusDirection) {
        return mo4347moveFocusaToIllA(focusDirection, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001c  */
    /* JADX WARN: Type inference failed for: r3v0, types: [T, java.lang.Boolean] */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: moveFocus-aToIllA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo4347moveFocusaToIllA(final int focusDirection, boolean wrapAroundForOneDimensionalFocus) {
        if (!ComposeUiFlags.isViewFocusFixEnabled) {
            if (ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
                FocusTargetNode activeFocusTargetNode = getActiveFocusTargetNode();
                if (activeFocusTargetNode != null && activeFocusTargetNode.getIsInteropViewHost()) {
                }
            }
        } else if (this.platformFocusOwner.mo4393moveFocusInChildren3ESFkO8(focusDirection)) {
            return true;
        }
        final Ref.ObjectRef requestFocusSuccess = new Ref.ObjectRef();
        requestFocusSuccess.element = false;
        FocusTargetNode activeNodeBefore = getActiveFocusTargetNode();
        Boolean focusSearchSuccess = mo4346focusSearchULY8qGw(focusDirection, this.platformFocusOwner.getEmbeddedViewFocusRect(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$focusSearchSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Boolean] */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                requestFocusSuccess.element = Boolean.valueOf(it.mo4361requestFocus3ESFkO8(focusDirection));
                return requestFocusSuccess.element;
            }
        });
        if (Intrinsics.areEqual((Object) focusSearchSuccess, (Object) true) && activeNodeBefore != getActiveFocusTargetNode()) {
            return true;
        }
        if (focusSearchSuccess == null || requestFocusSuccess.element == 0) {
            return false;
        }
        if (focusSearchSuccess.booleanValue() && ((Boolean) requestFocusSuccess.element).booleanValue()) {
            return true;
        }
        if (FocusOwnerImplKt.m4354is1dFocusSearch3ESFkO8(focusDirection) && wrapAroundForOneDimensionalFocus) {
            boolean clearFocus = mo4343clearFocusI7lrPNg(false, true, false, focusDirection);
            return clearFocus && mo4350takeFocusaToIllA(focusDirection, null);
        }
        if (ComposeUiFlags.isViewFocusFixEnabled || ComposeUiFlags.isBypassUnfocusableComposeViewEnabled) {
            return false;
        }
        return this.platformFocusOwner.mo4393moveFocusInChildren3ESFkO8(focusDirection);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: focusSearch-ULY8qGw */
    public Boolean mo4346focusSearchULY8qGw(int focusDirection, Rect focusedRect, final Function1<? super FocusTargetNode, Boolean> onFound) {
        boolean z;
        FocusTargetNode focusTargetNode;
        int i;
        FocusTargetNode focusTargetNode2;
        Modifier.Node node;
        int i2;
        MutableVector mutableVector;
        final FocusTargetNode focusTargetNodeFindFocusTargetNode = findFocusTargetNode();
        if (focusTargetNodeFindFocusTargetNode != null) {
            FocusTargetNode focusTargetNode3 = focusTargetNodeFindFocusTargetNode;
            FocusRequester focusRequesterM4376customFocusSearchOMvw8 = FocusTraversalKt.m4376customFocusSearchOMvw8(focusTargetNode3, focusDirection, this.owner.getLayoutDirection());
            if (Intrinsics.areEqual(focusRequesterM4376customFocusSearchOMvw8, FocusRequester.INSTANCE.getCancel())) {
                return null;
            }
            if (Intrinsics.areEqual(focusRequesterM4376customFocusSearchOMvw8, FocusRequester.INSTANCE.getRedirect$ui())) {
                FocusTargetNode focusTargetNodeFindFocusTargetNode2 = findFocusTargetNode();
                if (focusTargetNodeFindFocusTargetNode2 != null) {
                    return onFound.invoke(focusTargetNodeFindFocusTargetNode2);
                }
                return null;
            }
            if (!Intrinsics.areEqual(focusRequesterM4376customFocusSearchOMvw8, FocusRequester.INSTANCE.getDefault())) {
                if (!ComposeUiFlags.isRequestFocusOnNonFocusableFocusTargetEnabled) {
                    return Boolean.valueOf(focusRequesterM4376customFocusSearchOMvw8.findFocusTargetNode$ui(onFound));
                }
                FocusRequester focusRequester = focusRequesterM4376customFocusSearchOMvw8;
                int i3 = 0;
                int i4 = 0;
                boolean z2 = false;
                if (!(focusRequester != FocusRequester.INSTANCE.getDefault())) {
                    throw new IllegalStateException("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n".toString());
                }
                if (!(focusRequester != FocusRequester.INSTANCE.getCancel())) {
                    throw new IllegalStateException("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n".toString());
                }
                if (focusRequester.getFocusRequesterNodes$ui().getSize() == 0) {
                    System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
                } else {
                    boolean z3 = false;
                    MutableVector<FocusRequesterModifierNode> focusRequesterNodes$ui = focusRequester.getFocusRequesterNodes$ui();
                    int i5 = 0;
                    FocusRequesterModifierNode[] focusRequesterModifierNodeArr = focusRequesterNodes$ui.content;
                    int size = focusRequesterNodes$ui.getSize();
                    while (i5 < size) {
                        FocusRequesterModifierNode focusRequesterModifierNode = focusRequesterModifierNodeArr[i5];
                        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
                        if (!focusRequesterModifierNode.getNode().getIsAttached()) {
                            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
                        }
                        int i6 = 1;
                        FocusRequester focusRequester2 = focusRequester;
                        int i7 = i3;
                        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], i4);
                        Modifier.Node child = focusRequesterModifierNode.getNode().getChild();
                        if (child == null) {
                            z = false;
                            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusRequesterModifierNode.getNode(), false);
                        } else {
                            z = false;
                            mutableVector2.add(child);
                        }
                        while (true) {
                            if ((mutableVector2.getSize() != 0 ? i6 : 0) != 0) {
                                Modifier.Node node2 = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
                                if ((node2.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                                    Modifier.Node child2 = node2;
                                    while (true) {
                                        if (child2 == null) {
                                            mutableVector2 = mutableVector2;
                                            break;
                                        }
                                        if ((child2.getKindSet() & iM6460constructorimpl) != 0) {
                                            MutableVector mutableVector3 = null;
                                            MutableVector mutableVector4 = mutableVector2;
                                            Modifier.Node nodePop = child2;
                                            while (nodePop != null) {
                                                Modifier.Node node3 = child;
                                                if (!(nodePop instanceof FocusTargetNode)) {
                                                    if (((nodePop.getKindSet() & iM6460constructorimpl) != 0 ? i6 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                                        focusTargetNode = focusTargetNode3;
                                                        i = i6;
                                                    } else {
                                                        int i8 = 0;
                                                        Modifier.Node delegate = ((DelegatingNode) nodePop).getDelegate();
                                                        while (delegate != null) {
                                                            Modifier.Node node4 = delegate;
                                                            if (((node4.getKindSet() & iM6460constructorimpl) != 0 ? i6 : 0) != 0) {
                                                                i8++;
                                                                Modifier.Node node5 = nodePop;
                                                                if (i8 == i6) {
                                                                    node = node4;
                                                                    focusTargetNode2 = focusTargetNode3;
                                                                } else {
                                                                    if (mutableVector3 == null) {
                                                                        i2 = i8;
                                                                        focusTargetNode2 = focusTargetNode3;
                                                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                                    } else {
                                                                        i2 = i8;
                                                                        focusTargetNode2 = focusTargetNode3;
                                                                        mutableVector = mutableVector3;
                                                                    }
                                                                    if (node5 != null) {
                                                                        if (mutableVector != null) {
                                                                            mutableVector.add(node5);
                                                                        }
                                                                        node = null;
                                                                    } else {
                                                                        node = node5;
                                                                    }
                                                                    if (mutableVector != null) {
                                                                        mutableVector.add(node4);
                                                                    }
                                                                    mutableVector3 = mutableVector;
                                                                    i8 = i2;
                                                                }
                                                            } else {
                                                                focusTargetNode2 = focusTargetNode3;
                                                                node = nodePop;
                                                            }
                                                            delegate = delegate.getChild();
                                                            nodePop = node;
                                                            focusTargetNode3 = focusTargetNode2;
                                                            i6 = 1;
                                                        }
                                                        Modifier.Node node6 = nodePop;
                                                        focusTargetNode = focusTargetNode3;
                                                        i = 1;
                                                        if (i8 == 1) {
                                                            i6 = 1;
                                                            child = node3;
                                                            nodePop = node6;
                                                            focusTargetNode3 = focusTargetNode;
                                                        }
                                                    }
                                                } else {
                                                    if (onFound.invoke((FocusTargetNode) nodePop).booleanValue()) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    focusTargetNode = focusTargetNode3;
                                                    i = i6;
                                                }
                                                i6 = i;
                                                nodePop = DelegatableNodeKt.pop(mutableVector3);
                                                child = node3;
                                                focusTargetNode3 = focusTargetNode;
                                            }
                                            mutableVector2 = mutableVector4;
                                        } else {
                                            child2 = child2.getChild();
                                            mutableVector2 = mutableVector2;
                                        }
                                    }
                                } else {
                                    DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, node2, z);
                                }
                            }
                        }
                        i5++;
                        focusRequester = focusRequester2;
                        i3 = i7;
                        focusTargetNode3 = focusTargetNode3;
                        i4 = 0;
                    }
                    z2 = z3;
                }
                return Boolean.valueOf(z2);
            }
        } else {
            focusTargetNodeFindFocusTargetNode = null;
        }
        return FocusTraversalKt.m4377focusSearch0X8WOeE(this.rootFocusNode, focusDirection, this.owner.getLayoutDirection(), focusedRect, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode it) {
                boolean zBooleanValue;
                if (Intrinsics.areEqual(it, focusTargetNodeFindFocusTargetNode)) {
                    zBooleanValue = false;
                } else {
                    if (Intrinsics.areEqual(it, this.getRootFocusNode())) {
                        throw new IllegalStateException("Focus search landed at the root.".toString());
                    }
                    zBooleanValue = onFound.invoke(it).booleanValue();
                }
                return Boolean.valueOf(zBooleanValue);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:247:0x052f, code lost:
    
        android.os.Trace.endSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0534, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0626, code lost:
    
        if (r50.invoke().booleanValue() == false) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x062a, code lost:
    
        r0 = r30.getNode();
        r1 = r45;
        r3 = 0;
        r7 = null;
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0635, code lost:
    
        if (r8 == null) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0639, code lost:
    
        if ((r8 instanceof androidx.compose.ui.input.key.KeyInputModifierNode) == false) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x063b, code lost:
    
        r9 = (androidx.compose.ui.input.key.KeyInputModifierNode) r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x0643, code lost:
    
        if (r9.mo232onKeyEventZmokQxo(r49) == false) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0647, code lost:
    
        r17 = r0;
        r20 = r1;
        r21 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x064f, code lost:
    
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0657, code lost:
    
        if ((r10.getKindSet() & r1) == 0) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0659, code lost:
    
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x065b, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x065c, code lost:
    
        if (r9 == 0) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0660, code lost:
    
        if ((r8 instanceof androidx.compose.ui.node.DelegatingNode) == false) goto L407;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0662, code lost:
    
        r9 = 0;
        r10 = (androidx.compose.ui.node.DelegatingNode) r8;
        r14 = r10.getDelegate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x066b, code lost:
    
        if (r14 == null) goto L411;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x066d, code lost:
    
        r15 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x067c, code lost:
    
        if ((r15.getKindSet() & r1) == 0) goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x067e, code lost:
    
        r17 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0681, code lost:
    
        r17 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0683, code lost:
    
        if (r17 == 0) goto L337;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0685, code lost:
    
        r9 = r9 + 1;
        r17 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x068a, code lost:
    
        if (r9 != 1) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x068c, code lost:
    
        r8 = kotlin.Unit.INSTANCE;
        r8 = r15;
        r20 = r1;
        r21 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0695, code lost:
    
        if (r7 != null) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0697, code lost:
    
        r20 = r1;
        r21 = r3;
        r1 = new androidx.compose.runtime.collection.MutableVector(new androidx.compose.ui.Modifier.Node[16], 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x06ae, code lost:
    
        r20 = r1;
        r21 = r3;
        r1 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x06b3, code lost:
    
        r0 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x06b5, code lost:
    
        if (r0 == null) goto L333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x06b7, code lost:
    
        if (r1 == null) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x06b9, code lost:
    
        java.lang.Boolean.valueOf(r1.add(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x06c0, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x06c1, code lost:
    
        if (r1 == null) goto L335;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x06c3, code lost:
    
        java.lang.Boolean.valueOf(r1.add(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x06ca, code lost:
    
        r7 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x06cc, code lost:
    
        r17 = r0;
        r20 = r1;
        r21 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x06d2, code lost:
    
        r14 = r14.getChild();
        r0 = r17;
        r1 = r20;
        r3 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x06e0, code lost:
    
        r17 = r0;
        r20 = r1;
        r21 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x06e7, code lost:
    
        if (r9 != 1) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x06ea, code lost:
    
        r0 = r17;
        r1 = r20;
        r3 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x06f2, code lost:
    
        r17 = r0;
        r20 = r1;
        r21 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x06f8, code lost:
    
        r8 = androidx.compose.ui.node.DelegatableNodeKt.pop(r7);
        r0 = r17;
        r1 = r20;
        r3 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x070c, code lost:
    
        if (r13 == null) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x070e, code lost:
    
        r0 = r13;
        r3 = 0;
        r7 = r0.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0718, code lost:
    
        if (r3 >= r7) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x071a, code lost:
    
        r8 = r0.get(r3);
        r9 = (androidx.compose.ui.input.key.KeyInputModifierNode) r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0726, code lost:
    
        if (r9.mo232onKeyEventZmokQxo(r49) == false) goto L351;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x072a, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0730, code lost:
    
        r0 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0733, code lost:
    
        r0 = kotlin.Unit.INSTANCE;
     */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: dispatchKeyEvent-YhN2O0w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo4345dispatchKeyEventYhN2O0w(KeyEvent keyEvent, Function0<Boolean> onFocusedItem) throws Throwable {
        int i;
        int i2;
        Object obj;
        Modifier.Node focusedKeyInputNode;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv;
        int i3;
        NodeChain nodes;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv2;
        int i4;
        int i5;
        int i6;
        int count$iv$iv$iv;
        MutableVector mutableVector;
        Object obj2;
        int i7;
        String sectionName$iv;
        int i8;
        NodeChain nodes2;
        int i9;
        String sectionName$iv2;
        int i10;
        String sectionName$iv3;
        int i11;
        String sectionName$iv4;
        MutableVector mutableVector2;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv;
        int i12;
        int i13;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
        int i14;
        int i15;
        MutableVector mutableVector3;
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
        FocusOwnerImpl this_$iv;
        int i16;
        NodeChain nodes3;
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
        FocusOwnerImpl this_$iv2;
        int i17;
        int i18;
        int i19;
        Modifier.Node node;
        int count$iv$iv$iv$iv;
        MutableVector mutableVector4;
        String sectionName$iv5 = "FocusOwnerImpl:dispatchKeyEvent";
        Trace.beginSection("FocusOwnerImpl:dispatchKeyEvent");
        int i20 = 0;
        try {
            i = 0;
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        if (!this.focusInvalidationManager.getIsInvalidationScheduled()) {
            if (m4353validateKeyEventZmokQxo(keyEvent)) {
                DelegatableNode activeFocusTarget = findFocusTargetNode();
                int i21 = 8192;
                int i22 = 1;
                if (activeFocusTarget == null || (focusedKeyInputNode = lastLocalKeyInputNode(activeFocusTarget)) == null) {
                    if (activeFocusTarget != null) {
                        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv = activeFocusTarget;
                        int iM6460constructorimpl = NodeKind.m6460constructorimpl(8192);
                        boolean value$iv$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv.getNode().getIsAttached();
                        if (!value$iv$iv$iv$iv) {
                            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                        }
                        Modifier.Node node$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv.getNode();
                        LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestorIncludingSelf_u2d64DMado$iv);
                        loop10: while (true) {
                            if (layout$iv$iv$iv == null) {
                                i2 = i21;
                                obj2 = null;
                                break;
                            }
                            Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
                            if ((head$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                                while (node$iv$iv$iv != null) {
                                    if ((node$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                                        Modifier.Node it$iv$iv = node$iv$iv$iv;
                                        MutableVector mutableVector5 = null;
                                        i2 = i21;
                                        Modifier.Node nodePop = it$iv$iv;
                                        while (nodePop != null) {
                                            if (nodePop instanceof KeyInputModifierNode) {
                                                obj2 = nodePop;
                                                break loop10;
                                            }
                                            Modifier.Node this_$iv$iv$iv$iv = nodePop;
                                            if (((this_$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i22 : i) == 0 || !(nodePop instanceof DelegatingNode)) {
                                                i10 = i20;
                                                sectionName$iv3 = sectionName$iv5;
                                                nodePop = DelegatableNodeKt.pop(mutableVector5);
                                                i20 = i10;
                                                sectionName$iv5 = sectionName$iv3;
                                                i = 0;
                                                i22 = 1;
                                            } else {
                                                int count$iv$iv$iv2 = 0;
                                                DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                                Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                                while (node$iv$iv$iv$iv != null) {
                                                    Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                                    if (((next$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i22 : i) != 0) {
                                                        count$iv$iv$iv2++;
                                                        if (count$iv$iv$iv2 == i22) {
                                                            nodePop = next$iv$iv$iv;
                                                            Unit unit = Unit.INSTANCE;
                                                            i11 = i20;
                                                            sectionName$iv4 = sectionName$iv5;
                                                        } else {
                                                            if (mutableVector5 == null) {
                                                                i11 = i20;
                                                                sectionName$iv4 = sectionName$iv5;
                                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                            } else {
                                                                i11 = i20;
                                                                sectionName$iv4 = sectionName$iv5;
                                                                mutableVector2 = mutableVector5;
                                                            }
                                                            Modifier.Node theNode$iv$iv$iv = nodePop;
                                                            if (theNode$iv$iv$iv != null) {
                                                                if (mutableVector2 != null) {
                                                                    Boolean.valueOf(mutableVector2.add(theNode$iv$iv$iv));
                                                                }
                                                                nodePop = null;
                                                            }
                                                            if (mutableVector2 != null) {
                                                                Boolean.valueOf(mutableVector2.add(next$iv$iv$iv));
                                                            }
                                                            mutableVector5 = mutableVector2;
                                                        }
                                                    } else {
                                                        i11 = i20;
                                                        sectionName$iv4 = sectionName$iv5;
                                                    }
                                                    try {
                                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                                        i20 = i11;
                                                        sectionName$iv5 = sectionName$iv4;
                                                        i = 0;
                                                        i22 = 1;
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                    }
                                                }
                                                i10 = i20;
                                                sectionName$iv3 = sectionName$iv5;
                                                if (count$iv$iv$iv2 == 1) {
                                                    i20 = i10;
                                                    sectionName$iv5 = sectionName$iv3;
                                                    i = 0;
                                                    i22 = 1;
                                                } else {
                                                    nodePop = DelegatableNodeKt.pop(mutableVector5);
                                                    i20 = i10;
                                                    sectionName$iv5 = sectionName$iv3;
                                                    i = 0;
                                                    i22 = 1;
                                                }
                                            }
                                        }
                                        i9 = i20;
                                        sectionName$iv2 = sectionName$iv5;
                                    } else {
                                        i9 = i20;
                                        sectionName$iv2 = sectionName$iv5;
                                        i2 = i21;
                                    }
                                    node$iv$iv$iv = node$iv$iv$iv.getParent();
                                    i21 = i2;
                                    i20 = i9;
                                    sectionName$iv5 = sectionName$iv2;
                                    i = 0;
                                    i22 = 1;
                                }
                                i7 = i20;
                                sectionName$iv = sectionName$iv5;
                                i8 = i21;
                            } else {
                                i7 = i20;
                                sectionName$iv = sectionName$iv5;
                                i8 = i21;
                            }
                            layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
                            node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes2 = layout$iv$iv$iv.getNodes()) == null) ? null : nodes2.getTail();
                            i21 = i8;
                            i20 = i7;
                            sectionName$iv5 = sectionName$iv;
                            i = 0;
                            i22 = 1;
                        }
                        KeyInputModifierNode keyInputModifierNode = (KeyInputModifierNode) obj2;
                        if (keyInputModifierNode != null) {
                            focusedKeyInputNode = keyInputModifierNode.getNode();
                        }
                    } else {
                        i2 = 8192;
                    }
                    DelegatableNode $this$nearestAncestor_u2d64DMado$iv3 = this.rootFocusNode;
                    int iM6460constructorimpl2 = NodeKind.m6460constructorimpl(i2);
                    int i23 = 0;
                    boolean value$iv$iv$iv$iv2 = $this$nearestAncestor_u2d64DMado$iv3.getNode().getIsAttached();
                    if (!value$iv$iv$iv$iv2) {
                        InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node$iv$iv$iv2 = $this$nearestAncestor_u2d64DMado$iv3.getNode().getParent();
                    LayoutNode layout$iv$iv$iv2 = DelegatableNodeKt.requireLayoutNode($this$nearestAncestor_u2d64DMado$iv3);
                    loop14: while (true) {
                        if (layout$iv$iv$iv2 == null) {
                            obj = null;
                            break;
                        }
                        Modifier.Node head$iv$iv$iv2 = layout$iv$iv$iv2.getNodes().getHead();
                        if ((head$iv$iv$iv2.getAggregateChildKindSet() & iM6460constructorimpl2) != 0) {
                            while (node$iv$iv$iv2 != null) {
                                if ((node$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0) {
                                    Modifier.Node it$iv$iv2 = node$iv$iv$iv2;
                                    MutableVector mutableVector6 = null;
                                    $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv3;
                                    Modifier.Node nodePop2 = it$iv$iv2;
                                    while (nodePop2 != null) {
                                        if (nodePop2 instanceof KeyInputModifierNode) {
                                            obj = nodePop2;
                                            break loop14;
                                        }
                                        Modifier.Node this_$iv$iv$iv$iv3 = nodePop2;
                                        if (((this_$iv$iv$iv$iv3.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) == 0 || !(nodePop2 instanceof DelegatingNode)) {
                                            i5 = i23;
                                            nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                                            i23 = i5;
                                        } else {
                                            int count$iv$iv$iv3 = 0;
                                            DelegatingNode this_$iv$iv$iv$iv4 = (DelegatingNode) nodePop2;
                                            Modifier.Node node$iv$iv$iv$iv2 = this_$iv$iv$iv$iv4.getDelegate();
                                            while (node$iv$iv$iv$iv2 != null) {
                                                Modifier.Node next$iv$iv$iv2 = node$iv$iv$iv$iv2;
                                                if (((next$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) != 0) {
                                                    int count$iv$iv$iv4 = count$iv$iv$iv3 + 1;
                                                    Modifier.Node node2 = nodePop2;
                                                    if (count$iv$iv$iv4 == 1) {
                                                        nodePop2 = next$iv$iv$iv2;
                                                        Object node$iv$iv$iv3 = Unit.INSTANCE;
                                                        count$iv$iv$iv = count$iv$iv$iv4;
                                                        i6 = i23;
                                                    } else {
                                                        if (mutableVector6 == null) {
                                                            count$iv$iv$iv = count$iv$iv$iv4;
                                                            i6 = i23;
                                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                        } else {
                                                            count$iv$iv$iv = count$iv$iv$iv4;
                                                            i6 = i23;
                                                            mutableVector = mutableVector6;
                                                        }
                                                        if (node2 != null) {
                                                            if (mutableVector != null) {
                                                                Boolean.valueOf(mutableVector.add(node2));
                                                            }
                                                            node2 = null;
                                                        }
                                                        if (mutableVector != null) {
                                                            Boolean.valueOf(mutableVector.add(next$iv$iv$iv2));
                                                        }
                                                        mutableVector6 = mutableVector;
                                                        nodePop2 = node2;
                                                    }
                                                    count$iv$iv$iv3 = count$iv$iv$iv;
                                                } else {
                                                    i6 = i23;
                                                }
                                                node$iv$iv$iv$iv2 = node$iv$iv$iv$iv2.getChild();
                                                i23 = i6;
                                            }
                                            Modifier.Node node3 = nodePop2;
                                            i5 = i23;
                                            if (count$iv$iv$iv3 == 1) {
                                                nodePop2 = node3;
                                                i23 = i5;
                                            } else {
                                                nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                                                i23 = i5;
                                            }
                                        }
                                    }
                                    i4 = i23;
                                } else {
                                    $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv3;
                                    i4 = i23;
                                }
                                node$iv$iv$iv2 = node$iv$iv$iv2.getParent();
                                $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv2;
                                i23 = i4;
                            }
                            $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv3;
                            i3 = i23;
                        } else {
                            $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv3;
                            i3 = i23;
                        }
                        layout$iv$iv$iv2 = layout$iv$iv$iv2.getParent$ui();
                        node$iv$iv$iv2 = (layout$iv$iv$iv2 == null || (nodes = layout$iv$iv$iv2.getNodes()) == null) ? null : nodes.getTail();
                        $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv;
                        i23 = i3;
                    }
                    KeyInputModifierNode keyInputModifierNode2 = (KeyInputModifierNode) obj;
                    focusedKeyInputNode = keyInputModifierNode2 != null ? keyInputModifierNode2.getNode() : null;
                } else {
                    i2 = 8192;
                }
                if (focusedKeyInputNode != null) {
                    Modifier.Node $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = focusedKeyInputNode;
                    int iM6460constructorimpl3 = NodeKind.m6460constructorimpl(i2);
                    FocusOwnerImpl this_$iv3 = this;
                    List ancestors$iv = null;
                    boolean value$iv$iv$iv$iv$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3.getNode().getIsAttached();
                    if (!value$iv$iv$iv$iv$iv) {
                        InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node$iv$iv$iv$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3.getNode().getParent();
                    LayoutNode layout$iv$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3);
                    while (layout$iv$iv$iv$iv != null) {
                        Modifier.Node head$iv$iv$iv$iv = layout$iv$iv$iv$iv.getNodes().getHead();
                        if ((head$iv$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl3) != 0) {
                            while (node$iv$iv$iv$iv3 != null) {
                                if ((node$iv$iv$iv$iv3.getKindSet() & iM6460constructorimpl3) != 0) {
                                    Modifier.Node it$iv$iv$iv = node$iv$iv$iv$iv3;
                                    MutableVector mutableVector7 = null;
                                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                    Modifier.Node nodePop3 = it$iv$iv$iv;
                                    while (nodePop3 != null) {
                                        FocusOwnerImpl this_$iv4 = this_$iv3;
                                        if (nodePop3 instanceof KeyInputModifierNode) {
                                            Modifier.Node node4 = nodePop3;
                                            if (ancestors$iv == null) {
                                                ancestors$iv = new ArrayList();
                                            }
                                            ancestors$iv.add(node4);
                                            i18 = iM6460constructorimpl3;
                                        } else {
                                            Modifier.Node this_$iv$iv$iv$iv$iv = nodePop3;
                                            if (((this_$iv$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl3) != 0 ? 1 : 0) == 0 || !(nodePop3 instanceof DelegatingNode)) {
                                                i18 = iM6460constructorimpl3;
                                            } else {
                                                int count$iv$iv$iv$iv2 = 0;
                                                DelegatingNode this_$iv$iv$iv$iv$iv2 = (DelegatingNode) nodePop3;
                                                Modifier.Node node$iv$iv$iv$iv$iv = this_$iv$iv$iv$iv$iv2.getDelegate();
                                                while (node$iv$iv$iv$iv$iv != null) {
                                                    Modifier.Node next$iv$iv$iv$iv = node$iv$iv$iv$iv$iv;
                                                    if (((next$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl3) != 0 ? 1 : 0) != 0) {
                                                        int count$iv$iv$iv$iv3 = count$iv$iv$iv$iv2 + 1;
                                                        Modifier.Node node5 = nodePop3;
                                                        if (count$iv$iv$iv$iv3 == 1) {
                                                            Object node$iv$iv$iv$iv4 = Unit.INSTANCE;
                                                            count$iv$iv$iv$iv = count$iv$iv$iv$iv3;
                                                            i19 = iM6460constructorimpl3;
                                                            node = next$iv$iv$iv$iv;
                                                        } else {
                                                            if (mutableVector7 == null) {
                                                                count$iv$iv$iv$iv = count$iv$iv$iv$iv3;
                                                                i19 = iM6460constructorimpl3;
                                                                mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                            } else {
                                                                count$iv$iv$iv$iv = count$iv$iv$iv$iv3;
                                                                i19 = iM6460constructorimpl3;
                                                                mutableVector4 = mutableVector7;
                                                            }
                                                            if (node5 != null) {
                                                                if (mutableVector4 != null) {
                                                                    Boolean.valueOf(mutableVector4.add(node5));
                                                                }
                                                                node = null;
                                                            } else {
                                                                node = node5;
                                                            }
                                                            if (mutableVector4 != null) {
                                                                Boolean.valueOf(mutableVector4.add(next$iv$iv$iv$iv));
                                                            }
                                                            mutableVector7 = mutableVector4;
                                                        }
                                                        count$iv$iv$iv$iv2 = count$iv$iv$iv$iv;
                                                    } else {
                                                        i19 = iM6460constructorimpl3;
                                                        node = nodePop3;
                                                    }
                                                    node$iv$iv$iv$iv$iv = node$iv$iv$iv$iv$iv.getChild();
                                                    nodePop3 = node;
                                                    iM6460constructorimpl3 = i19;
                                                }
                                                Modifier.Node node6 = nodePop3;
                                                i18 = iM6460constructorimpl3;
                                                if (count$iv$iv$iv$iv2 == 1) {
                                                    this_$iv3 = this_$iv4;
                                                    nodePop3 = node6;
                                                    iM6460constructorimpl3 = i18;
                                                }
                                            }
                                        }
                                        nodePop3 = DelegatableNodeKt.pop(mutableVector7);
                                        this_$iv3 = this_$iv4;
                                        iM6460constructorimpl3 = i18;
                                    }
                                    this_$iv2 = this_$iv3;
                                    i17 = iM6460constructorimpl3;
                                } else {
                                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                    this_$iv2 = this_$iv3;
                                    i17 = iM6460constructorimpl3;
                                }
                                node$iv$iv$iv$iv3 = node$iv$iv$iv$iv3.getParent();
                                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                                this_$iv3 = this_$iv2;
                                iM6460constructorimpl3 = i17;
                            }
                            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                            this_$iv = this_$iv3;
                            i16 = iM6460constructorimpl3;
                        } else {
                            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                            this_$iv = this_$iv3;
                            i16 = iM6460constructorimpl3;
                        }
                        layout$iv$iv$iv$iv = layout$iv$iv$iv$iv.getParent$ui();
                        node$iv$iv$iv$iv3 = (layout$iv$iv$iv$iv == null || (nodes3 = layout$iv$iv$iv$iv.getNodes()) == null) ? null : nodes3.getTail();
                        $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
                        this_$iv3 = this_$iv;
                        iM6460constructorimpl3 = i16;
                    }
                    DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                    int i24 = iM6460constructorimpl3;
                    if (ancestors$iv != null) {
                        List $this$fastForEachReversed$iv$iv = ancestors$iv;
                        int size = $this$fastForEachReversed$iv$iv.size() - 1;
                        if (size >= 0) {
                            do {
                                int index$iv$iv = size;
                                size--;
                                Object item$iv$iv = $this$fastForEachReversed$iv$iv.get(index$iv$iv);
                                KeyInputModifierNode it = (KeyInputModifierNode) item$iv$iv;
                                if (it.mo234onPreKeyEventZmokQxo(keyEvent)) {
                                    break;
                                }
                            } while (size >= 0);
                        }
                        Unit unit2 = Unit.INSTANCE;
                    }
                    Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4.getNode();
                    int i25 = i24;
                    int i26 = 0;
                    MutableVector mutableVector8 = null;
                    Modifier.Node nodePop4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                    while (true) {
                        if (nodePop4 == null) {
                            break;
                        }
                        if (nodePop4 instanceof KeyInputModifierNode) {
                            KeyInputModifierNode it2 = (KeyInputModifierNode) nodePop4;
                            if (it2.mo234onPreKeyEventZmokQxo(keyEvent)) {
                                break;
                            }
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                            i12 = i25;
                            i13 = i26;
                        } else {
                            Modifier.Node this_$iv$iv$iv = nodePop4;
                            if (((this_$iv$iv$iv.getKindSet() & i25) != 0 ? 1 : 0) == 0 || !(nodePop4 instanceof DelegatingNode)) {
                                $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                                i12 = i25;
                                i13 = i26;
                            } else {
                                int count$iv$iv = 0;
                                DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop4;
                                Modifier.Node node$iv$iv$iv4 = this_$iv$iv$iv2.getDelegate();
                                while (node$iv$iv$iv4 != null) {
                                    Modifier.Node next$iv$iv = node$iv$iv$iv4;
                                    if (((next$iv$iv.getKindSet() & i25) != 0 ? 1 : 0) != 0) {
                                        count$iv$iv++;
                                        $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                                        if (count$iv$iv == 1) {
                                            Unit unit3 = Unit.INSTANCE;
                                            nodePop4 = next$iv$iv;
                                            i14 = i25;
                                            i15 = i26;
                                        } else {
                                            if (mutableVector8 == null) {
                                                i14 = i25;
                                                i15 = i26;
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                i14 = i25;
                                                i15 = i26;
                                                mutableVector3 = mutableVector8;
                                            }
                                            Modifier.Node theNode$iv$iv = nodePop4;
                                            if (theNode$iv$iv != null) {
                                                if (mutableVector3 != null) {
                                                    Boolean.valueOf(mutableVector3.add(theNode$iv$iv));
                                                }
                                                nodePop4 = null;
                                            }
                                            if (mutableVector3 != null) {
                                                Boolean.valueOf(mutableVector3.add(next$iv$iv));
                                            }
                                            mutableVector8 = mutableVector3;
                                        }
                                    } else {
                                        $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                                        i14 = i25;
                                        i15 = i26;
                                    }
                                    node$iv$iv$iv4 = node$iv$iv$iv4.getChild();
                                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
                                    i25 = i14;
                                    i26 = i15;
                                }
                                $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                                i12 = i25;
                                i13 = i26;
                                if (count$iv$iv == 1) {
                                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
                                    i25 = i12;
                                    i26 = i13;
                                }
                            }
                        }
                        nodePop4 = DelegatableNodeKt.pop(mutableVector8);
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
                        i25 = i12;
                        i26 = i13;
                    }
                }
                Trace.endSection();
                return false;
            }
            Trace.endSection();
            throw th;
        }
        System.out.println((Object) "FocusRelatedWarning: Dispatching key event while focus system is invalidated.");
        Trace.endSection();
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo */
    public boolean mo4344dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent) {
        int i;
        SoftKeyboardInterceptionModifierNode focusedSoftKeyboardInterceptionNode;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv;
        int i2;
        int i3;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
        int i4;
        int i5;
        MutableVector mutableVector;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
        int i6;
        int i7;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv4;
        int i8;
        int i9;
        MutableVector mutableVector2;
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
        int i10;
        NodeChain nodes;
        int i11;
        int i12;
        Modifier.Node node;
        int count$iv$iv$iv$iv;
        Modifier.Node node2;
        MutableVector mutableVector3;
        Modifier.Node node3;
        Modifier.Node node4;
        DelegatableNode delegatableNode;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
        int i13;
        NodeChain nodes2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
        MutableVector mutableVector4;
        if (this.focusInvalidationManager.getIsInvalidationScheduled()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            return false;
        }
        DelegatableNode delegatableNodeFindActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        int i14 = 131072;
        int i15 = 1;
        if (delegatableNodeFindActiveFocusNode != null) {
            DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = delegatableNodeFindActiveFocusNode;
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(131072);
            boolean value$iv$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode().getIsAttached();
            if (!value$iv$iv$iv$iv) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode();
            LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestorIncludingSelf_u2d64DMado$iv5);
            loop0: while (true) {
                if (layout$iv$iv$iv == null) {
                    i = i14;
                    delegatableNode = null;
                    break;
                }
                Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
                if ((head$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                    while (node$iv$iv$iv != null) {
                        if ((node$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                            Modifier.Node it$iv$iv = node$iv$iv$iv;
                            MutableVector mutableVector5 = null;
                            i = i14;
                            Modifier.Node nodePop = it$iv$iv;
                            while (nodePop != null) {
                                if (nodePop instanceof SoftKeyboardInterceptionModifierNode) {
                                    delegatableNode = nodePop;
                                    break loop0;
                                }
                                Modifier.Node this_$iv$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i15 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    nodePop = DelegatableNodeKt.pop(mutableVector5);
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                    i15 = 1;
                                } else {
                                    int count$iv$iv$iv = 0;
                                    DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                        if (((next$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i15 : 0) != 0) {
                                            count$iv$iv$iv++;
                                            if (count$iv$iv$iv == i15) {
                                                nodePop = next$iv$iv$iv;
                                                $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                            } else {
                                                if (mutableVector5 == null) {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    mutableVector4 = mutableVector5;
                                                }
                                                Modifier.Node theNode$iv$iv$iv = nodePop;
                                                if (theNode$iv$iv$iv != null) {
                                                    if (mutableVector4 != null) {
                                                        mutableVector4.add(theNode$iv$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector4 != null) {
                                                    mutableVector4.add(next$iv$iv$iv);
                                                }
                                                mutableVector5 = mutableVector4;
                                            }
                                        } else {
                                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                        }
                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
                                        i15 = 1;
                                    }
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    if (count$iv$iv$iv == 1) {
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        i15 = 1;
                                    } else {
                                        nodePop = DelegatableNodeKt.pop(mutableVector5);
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        i15 = 1;
                                    }
                                }
                            }
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                        } else {
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                            i = i14;
                        }
                        node$iv$iv$iv = node$iv$iv$iv.getParent();
                        i15 = 1;
                        i14 = i;
                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
                    }
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    i13 = i14;
                } else {
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    i13 = i14;
                }
                layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
                node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes2 = layout$iv$iv$iv.getNodes()) == null) ? null : nodes2.getTail();
                i15 = 1;
                i14 = i13;
                $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
            }
            focusedSoftKeyboardInterceptionNode = (SoftKeyboardInterceptionModifierNode) delegatableNode;
        } else {
            i = 131072;
            focusedSoftKeyboardInterceptionNode = null;
        }
        if (focusedSoftKeyboardInterceptionNode == null) {
            return false;
        }
        SoftKeyboardInterceptionModifierNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = focusedSoftKeyboardInterceptionNode;
        int iM6460constructorimpl2 = NodeKind.m6460constructorimpl(i);
        List ancestors$iv = null;
        boolean value$iv$iv$iv$iv$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2.getNode().getIsAttached();
        if (!value$iv$iv$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv$iv$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2.getNode().getParent();
        LayoutNode layout$iv$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2);
        while (layout$iv$iv$iv$iv != null) {
            Modifier.Node head$iv$iv$iv$iv = layout$iv$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl2) != 0) {
                while (node$iv$iv$iv$iv2 != null) {
                    if ((node$iv$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0) {
                        Modifier.Node it$iv$iv$iv = node$iv$iv$iv$iv2;
                        MutableVector mutableVector6 = null;
                        Modifier.Node nodePop2 = it$iv$iv$iv;
                        while (nodePop2 != null) {
                            DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                            if (nodePop2 instanceof SoftKeyboardInterceptionModifierNode) {
                                Modifier.Node node5 = nodePop2;
                                if (ancestors$iv == null) {
                                    Object result$iv$iv = new ArrayList();
                                    ancestors$iv = (List) result$iv$iv;
                                }
                                ancestors$iv.add(node5);
                                i11 = iM6460constructorimpl2;
                            } else {
                                Modifier.Node this_$iv$iv$iv$iv$iv = nodePop2;
                                if (((this_$iv$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) == 0 || !(nodePop2 instanceof DelegatingNode)) {
                                    i11 = iM6460constructorimpl2;
                                } else {
                                    int count$iv$iv$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv$iv2 = (DelegatingNode) nodePop2;
                                    Modifier.Node node$iv$iv$iv$iv$iv = this_$iv$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv$iv = node$iv$iv$iv$iv$iv;
                                        if (((next$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv$iv$iv2++;
                                            i12 = iM6460constructorimpl2;
                                            if (count$iv$iv$iv$iv2 == 1) {
                                                node = next$iv$iv$iv$iv;
                                            } else {
                                                if (mutableVector6 == null) {
                                                    count$iv$iv$iv$iv = count$iv$iv$iv$iv2;
                                                    node2 = nodePop2;
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv$iv$iv = count$iv$iv$iv$iv2;
                                                    node2 = nodePop2;
                                                    mutableVector3 = mutableVector6;
                                                }
                                                Modifier.Node theNode$iv$iv$iv$iv = node2;
                                                if (theNode$iv$iv$iv$iv != null) {
                                                    if (mutableVector3 != null) {
                                                        mutableVector3.add(theNode$iv$iv$iv$iv);
                                                    }
                                                    node3 = null;
                                                } else {
                                                    node3 = node2;
                                                }
                                                if (mutableVector3 != null) {
                                                    node4 = node3;
                                                    mutableVector3.add(next$iv$iv$iv$iv);
                                                } else {
                                                    node4 = node3;
                                                }
                                                node = node4;
                                                count$iv$iv$iv$iv2 = count$iv$iv$iv$iv;
                                                mutableVector6 = mutableVector3;
                                            }
                                        } else {
                                            i12 = iM6460constructorimpl2;
                                            node = nodePop2;
                                        }
                                        node$iv$iv$iv$iv$iv = node$iv$iv$iv$iv$iv.getChild();
                                        iM6460constructorimpl2 = i12;
                                        nodePop2 = node;
                                    }
                                    i11 = iM6460constructorimpl2;
                                    Modifier.Node node6 = nodePop2;
                                    if (count$iv$iv$iv$iv2 == 1) {
                                        $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                        iM6460constructorimpl2 = i11;
                                        nodePop2 = node6;
                                    }
                                }
                            }
                            nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                            iM6460constructorimpl2 = i11;
                        }
                    }
                    node$iv$iv$iv$iv2 = node$iv$iv$iv$iv2.getParent();
                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                    iM6460constructorimpl2 = iM6460constructorimpl2;
                }
                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                i10 = iM6460constructorimpl2;
            } else {
                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                i10 = iM6460constructorimpl2;
            }
            layout$iv$iv$iv$iv = layout$iv$iv$iv$iv.getParent$ui();
            node$iv$iv$iv$iv2 = (layout$iv$iv$iv$iv == null || (nodes = layout$iv$iv$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
            iM6460constructorimpl2 = i10;
        }
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
        int i16 = iM6460constructorimpl2;
        if (ancestors$iv != null) {
            List $this$fastForEachReversed$iv$iv = ancestors$iv;
            int size = $this$fastForEachReversed$iv$iv.size() - 1;
            if (size >= 0) {
                do {
                    int index$iv$iv = size;
                    size--;
                    Object item$iv$iv = $this$fastForEachReversed$iv$iv.get(index$iv$iv);
                    SoftKeyboardInterceptionModifierNode it = (SoftKeyboardInterceptionModifierNode) item$iv$iv;
                    if (it.mo5541onPreInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                        return true;
                    }
                } while (size >= 0);
            }
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4.getNode();
        int i17 = i16;
        int i18 = 0;
        MutableVector mutableVector7 = null;
        Modifier.Node nodePop3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
        while (nodePop3 != null) {
            if (nodePop3 instanceof SoftKeyboardInterceptionModifierNode) {
                SoftKeyboardInterceptionModifierNode it2 = (SoftKeyboardInterceptionModifierNode) nodePop3;
                if (it2.mo5541onPreInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                    return true;
                }
                $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                i6 = i17;
                i7 = i18;
            } else {
                Modifier.Node this_$iv$iv$iv = nodePop3;
                if (((this_$iv$iv$iv.getKindSet() & i17) != 0 ? 1 : 0) == 0 || !(nodePop3 instanceof DelegatingNode)) {
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                    i6 = i17;
                    i7 = i18;
                } else {
                    int count$iv$iv = 0;
                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop3;
                    Modifier.Node node$iv$iv$iv2 = this_$iv$iv$iv2.getDelegate();
                    while (node$iv$iv$iv2 != null) {
                        Modifier.Node next$iv$iv = node$iv$iv$iv2;
                        if (((next$iv$iv.getKindSet() & i17) != 0 ? 1 : 0) != 0) {
                            count$iv$iv++;
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                            if (count$iv$iv == 1) {
                                nodePop3 = next$iv$iv;
                                i8 = i17;
                                i9 = i18;
                            } else {
                                if (mutableVector7 == null) {
                                    i8 = i17;
                                    i9 = i18;
                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                } else {
                                    i8 = i17;
                                    i9 = i18;
                                    mutableVector2 = mutableVector7;
                                }
                                mutableVector7 = mutableVector2;
                                Modifier.Node theNode$iv$iv = nodePop3;
                                if (theNode$iv$iv != null) {
                                    if (mutableVector7 != null) {
                                        mutableVector7.add(theNode$iv$iv);
                                    }
                                    nodePop3 = null;
                                }
                                if (mutableVector7 != null) {
                                    mutableVector7.add(next$iv$iv);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                            i8 = i17;
                            i9 = i18;
                        }
                        node$iv$iv$iv2 = node$iv$iv$iv2.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv4;
                        i17 = i8;
                        i18 = i9;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                    i6 = i17;
                    i7 = i18;
                    if (count$iv$iv == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                        i17 = i6;
                        i18 = i7;
                    }
                }
            }
            nodePop3 = DelegatableNodeKt.pop(mutableVector7);
            $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
            i17 = i6;
            i18 = i7;
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4.getNode();
        int i19 = i16;
        int i20 = 0;
        MutableVector mutableVector8 = null;
        Modifier.Node nodePop4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
        while (nodePop4 != null) {
            if (nodePop4 instanceof SoftKeyboardInterceptionModifierNode) {
                SoftKeyboardInterceptionModifierNode it3 = (SoftKeyboardInterceptionModifierNode) nodePop4;
                if (it3.mo5540onInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                    return true;
                }
                $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                i2 = i19;
                i3 = i20;
            } else {
                Modifier.Node this_$iv$iv$iv3 = nodePop4;
                if (((this_$iv$iv$iv3.getKindSet() & i19) != 0 ? 1 : 0) == 0 || !(nodePop4 instanceof DelegatingNode)) {
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                    i2 = i19;
                    i3 = i20;
                } else {
                    int count$iv$iv2 = 0;
                    DelegatingNode this_$iv$iv$iv4 = (DelegatingNode) nodePop4;
                    Modifier.Node node$iv$iv$iv3 = this_$iv$iv$iv4.getDelegate();
                    while (node$iv$iv$iv3 != null) {
                        Modifier.Node next$iv$iv2 = node$iv$iv$iv3;
                        if (((next$iv$iv2.getKindSet() & i19) != 0 ? 1 : 0) != 0) {
                            count$iv$iv2++;
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                            if (count$iv$iv2 == 1) {
                                nodePop4 = next$iv$iv2;
                                i4 = i19;
                                i5 = i20;
                            } else {
                                if (mutableVector8 == null) {
                                    i4 = i19;
                                    i5 = i20;
                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                } else {
                                    i4 = i19;
                                    i5 = i20;
                                    mutableVector = mutableVector8;
                                }
                                mutableVector8 = mutableVector;
                                Modifier.Node theNode$iv$iv2 = nodePop4;
                                if (theNode$iv$iv2 != null) {
                                    if (mutableVector8 != null) {
                                        mutableVector8.add(theNode$iv$iv2);
                                    }
                                    nodePop4 = null;
                                }
                                if (mutableVector8 != null) {
                                    mutableVector8.add(next$iv$iv2);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                            i4 = i19;
                            i5 = i20;
                        }
                        node$iv$iv$iv3 = node$iv$iv$iv3.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
                        i19 = i4;
                        i20 = i5;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                    i2 = i19;
                    i3 = i20;
                    if (count$iv$iv2 == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
                        i19 = i2;
                        i20 = i3;
                    }
                }
            }
            nodePop4 = DelegatableNodeKt.pop(mutableVector8);
            $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
            i19 = i2;
            i20 = i3;
        }
        if (ancestors$iv == null) {
            return false;
        }
        List $this$fastForEach$iv$iv = ancestors$iv;
        int size2 = $this$fastForEach$iv$iv.size();
        for (int index$iv$iv2 = 0; index$iv$iv2 < size2; index$iv$iv2++) {
            Object item$iv$iv2 = $this$fastForEach$iv$iv.get(index$iv$iv2);
            SoftKeyboardInterceptionModifierNode it4 = (SoftKeyboardInterceptionModifierNode) item$iv$iv2;
            if (it4.mo5540onInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchRotaryEvent(RotaryScrollEvent event, Function0<Boolean> onFocusedItem) {
        int i;
        RotaryInputModifierNode focusedRotaryInputNode;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv;
        int i2;
        int i3;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
        int i4;
        int i5;
        MutableVector mutableVector;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
        int i6;
        int i7;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv4;
        int i8;
        int i9;
        MutableVector mutableVector2;
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
        int i10;
        NodeChain nodes;
        int i11;
        int i12;
        Modifier.Node node;
        int count$iv$iv$iv$iv;
        Modifier.Node node2;
        MutableVector mutableVector3;
        Modifier.Node node3;
        Modifier.Node node4;
        DelegatableNode delegatableNode;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
        int i13;
        NodeChain nodes2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
        MutableVector mutableVector4;
        if (this.focusInvalidationManager.getIsInvalidationScheduled()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated.");
            return false;
        }
        DelegatableNode delegatableNodeFindFocusTargetNode = findFocusTargetNode();
        int i14 = 16384;
        int i15 = 1;
        if (delegatableNodeFindFocusTargetNode != null) {
            DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = delegatableNodeFindFocusTargetNode;
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(16384);
            boolean value$iv$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode().getIsAttached();
            if (!value$iv$iv$iv$iv) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode();
            LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestorIncludingSelf_u2d64DMado$iv5);
            loop0: while (true) {
                if (layout$iv$iv$iv == null) {
                    i = i14;
                    delegatableNode = null;
                    break;
                }
                Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
                if ((head$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                    while (node$iv$iv$iv != null) {
                        if ((node$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                            Modifier.Node it$iv$iv = node$iv$iv$iv;
                            MutableVector mutableVector5 = null;
                            i = i14;
                            Modifier.Node nodePop = it$iv$iv;
                            while (nodePop != null) {
                                if (nodePop instanceof RotaryInputModifierNode) {
                                    delegatableNode = nodePop;
                                    break loop0;
                                }
                                Modifier.Node this_$iv$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i15 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    nodePop = DelegatableNodeKt.pop(mutableVector5);
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                    i15 = 1;
                                } else {
                                    int count$iv$iv$iv = 0;
                                    DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                        if (((next$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i15 : 0) != 0) {
                                            count$iv$iv$iv++;
                                            if (count$iv$iv$iv == i15) {
                                                nodePop = next$iv$iv$iv;
                                                $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                            } else {
                                                if (mutableVector5 == null) {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    mutableVector4 = mutableVector5;
                                                }
                                                Modifier.Node theNode$iv$iv$iv = nodePop;
                                                if (theNode$iv$iv$iv != null) {
                                                    if (mutableVector4 != null) {
                                                        mutableVector4.add(theNode$iv$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector4 != null) {
                                                    mutableVector4.add(next$iv$iv$iv);
                                                }
                                                mutableVector5 = mutableVector4;
                                            }
                                        } else {
                                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                        }
                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
                                        i15 = 1;
                                    }
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    if (count$iv$iv$iv == 1) {
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        i15 = 1;
                                    } else {
                                        nodePop = DelegatableNodeKt.pop(mutableVector5);
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        i15 = 1;
                                    }
                                }
                            }
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                        } else {
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                            i = i14;
                        }
                        node$iv$iv$iv = node$iv$iv$iv.getParent();
                        i15 = 1;
                        i14 = i;
                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
                    }
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    i13 = i14;
                } else {
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    i13 = i14;
                }
                layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
                node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes2 = layout$iv$iv$iv.getNodes()) == null) ? null : nodes2.getTail();
                i15 = 1;
                i14 = i13;
                $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
            }
            focusedRotaryInputNode = (RotaryInputModifierNode) delegatableNode;
        } else {
            i = 16384;
            focusedRotaryInputNode = null;
        }
        if (focusedRotaryInputNode == null) {
            return false;
        }
        RotaryInputModifierNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = focusedRotaryInputNode;
        int iM6460constructorimpl2 = NodeKind.m6460constructorimpl(i);
        List ancestors$iv = null;
        boolean value$iv$iv$iv$iv$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2.getNode().getIsAttached();
        if (!value$iv$iv$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv$iv$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2.getNode().getParent();
        LayoutNode layout$iv$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2);
        while (layout$iv$iv$iv$iv != null) {
            Modifier.Node head$iv$iv$iv$iv = layout$iv$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl2) != 0) {
                while (node$iv$iv$iv$iv2 != null) {
                    if ((node$iv$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0) {
                        Modifier.Node it$iv$iv$iv = node$iv$iv$iv$iv2;
                        MutableVector mutableVector6 = null;
                        Modifier.Node nodePop2 = it$iv$iv$iv;
                        while (nodePop2 != null) {
                            DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                            if (nodePop2 instanceof RotaryInputModifierNode) {
                                Modifier.Node node5 = nodePop2;
                                if (ancestors$iv == null) {
                                    Object result$iv$iv = new ArrayList();
                                    ancestors$iv = (List) result$iv$iv;
                                }
                                ancestors$iv.add(node5);
                                i11 = iM6460constructorimpl2;
                            } else {
                                Modifier.Node this_$iv$iv$iv$iv$iv = nodePop2;
                                if (((this_$iv$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) == 0 || !(nodePop2 instanceof DelegatingNode)) {
                                    i11 = iM6460constructorimpl2;
                                } else {
                                    int count$iv$iv$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv$iv2 = (DelegatingNode) nodePop2;
                                    Modifier.Node node$iv$iv$iv$iv$iv = this_$iv$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv$iv = node$iv$iv$iv$iv$iv;
                                        if (((next$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv$iv$iv2++;
                                            i12 = iM6460constructorimpl2;
                                            if (count$iv$iv$iv$iv2 == 1) {
                                                node = next$iv$iv$iv$iv;
                                            } else {
                                                if (mutableVector6 == null) {
                                                    count$iv$iv$iv$iv = count$iv$iv$iv$iv2;
                                                    node2 = nodePop2;
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv$iv$iv = count$iv$iv$iv$iv2;
                                                    node2 = nodePop2;
                                                    mutableVector3 = mutableVector6;
                                                }
                                                Modifier.Node theNode$iv$iv$iv$iv = node2;
                                                if (theNode$iv$iv$iv$iv != null) {
                                                    if (mutableVector3 != null) {
                                                        mutableVector3.add(theNode$iv$iv$iv$iv);
                                                    }
                                                    node3 = null;
                                                } else {
                                                    node3 = node2;
                                                }
                                                if (mutableVector3 != null) {
                                                    node4 = node3;
                                                    mutableVector3.add(next$iv$iv$iv$iv);
                                                } else {
                                                    node4 = node3;
                                                }
                                                node = node4;
                                                count$iv$iv$iv$iv2 = count$iv$iv$iv$iv;
                                                mutableVector6 = mutableVector3;
                                            }
                                        } else {
                                            i12 = iM6460constructorimpl2;
                                            node = nodePop2;
                                        }
                                        node$iv$iv$iv$iv$iv = node$iv$iv$iv$iv$iv.getChild();
                                        iM6460constructorimpl2 = i12;
                                        nodePop2 = node;
                                    }
                                    i11 = iM6460constructorimpl2;
                                    Modifier.Node node6 = nodePop2;
                                    if (count$iv$iv$iv$iv2 == 1) {
                                        $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                                        iM6460constructorimpl2 = i11;
                                        nodePop2 = node6;
                                    }
                                }
                            }
                            nodePop2 = DelegatableNodeKt.pop(mutableVector6);
                            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv3;
                            iM6460constructorimpl2 = i11;
                        }
                    }
                    node$iv$iv$iv$iv2 = node$iv$iv$iv$iv2.getParent();
                    $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                    iM6460constructorimpl2 = iM6460constructorimpl2;
                }
                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                i10 = iM6460constructorimpl2;
            } else {
                $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
                i10 = iM6460constructorimpl2;
            }
            layout$iv$iv$iv$iv = layout$iv$iv$iv$iv.getParent$ui();
            node$iv$iv$iv$iv2 = (layout$iv$iv$iv$iv == null || (nodes = layout$iv$iv$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv;
            iM6460constructorimpl2 = i10;
        }
        DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv2;
        int i16 = iM6460constructorimpl2;
        if (ancestors$iv != null) {
            List $this$fastForEachReversed$iv$iv = ancestors$iv;
            int size = $this$fastForEachReversed$iv$iv.size() - 1;
            if (size >= 0) {
                do {
                    int index$iv$iv = size;
                    size--;
                    Object item$iv$iv = $this$fastForEachReversed$iv$iv.get(index$iv$iv);
                    RotaryInputModifierNode it = (RotaryInputModifierNode) item$iv$iv;
                    if (it.onPreRotaryScrollEvent(event)) {
                        return true;
                    }
                } while (size >= 0);
            }
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4.getNode();
        int i17 = i16;
        int i18 = 0;
        MutableVector mutableVector7 = null;
        Modifier.Node nodePop3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
        while (nodePop3 != null) {
            if (nodePop3 instanceof RotaryInputModifierNode) {
                RotaryInputModifierNode it2 = (RotaryInputModifierNode) nodePop3;
                if (it2.onPreRotaryScrollEvent(event)) {
                    return true;
                }
                $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                i6 = i17;
                i7 = i18;
            } else {
                Modifier.Node this_$iv$iv$iv = nodePop3;
                if (((this_$iv$iv$iv.getKindSet() & i17) != 0 ? 1 : 0) == 0 || !(nodePop3 instanceof DelegatingNode)) {
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                    i6 = i17;
                    i7 = i18;
                } else {
                    int count$iv$iv = 0;
                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop3;
                    Modifier.Node node$iv$iv$iv2 = this_$iv$iv$iv2.getDelegate();
                    while (node$iv$iv$iv2 != null) {
                        Modifier.Node next$iv$iv = node$iv$iv$iv2;
                        if (((next$iv$iv.getKindSet() & i17) != 0 ? 1 : 0) != 0) {
                            count$iv$iv++;
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                            if (count$iv$iv == 1) {
                                nodePop3 = next$iv$iv;
                                i8 = i17;
                                i9 = i18;
                            } else {
                                if (mutableVector7 == null) {
                                    i8 = i17;
                                    i9 = i18;
                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                } else {
                                    i8 = i17;
                                    i9 = i18;
                                    mutableVector2 = mutableVector7;
                                }
                                mutableVector7 = mutableVector2;
                                Modifier.Node theNode$iv$iv = nodePop3;
                                if (theNode$iv$iv != null) {
                                    if (mutableVector7 != null) {
                                        mutableVector7.add(theNode$iv$iv);
                                    }
                                    nodePop3 = null;
                                }
                                if (mutableVector7 != null) {
                                    mutableVector7.add(next$iv$iv);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                            i8 = i17;
                            i9 = i18;
                        }
                        node$iv$iv$iv2 = node$iv$iv$iv2.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv4;
                        i17 = i8;
                        i18 = i9;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv$iv5;
                    i6 = i17;
                    i7 = i18;
                    if (count$iv$iv == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
                        i17 = i6;
                        i18 = i7;
                    }
                }
            }
            nodePop3 = DelegatableNodeKt.pop(mutableVector7);
            $this$dispatchForKind_u2d6rFNWt0$iv$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv$iv3;
            i17 = i6;
            i18 = i7;
        }
        if (onFocusedItem.invoke().booleanValue()) {
            return true;
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv4.getNode();
        int i19 = i16;
        int i20 = 0;
        MutableVector mutableVector8 = null;
        Modifier.Node nodePop4 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
        while (nodePop4 != null) {
            if (nodePop4 instanceof RotaryInputModifierNode) {
                RotaryInputModifierNode it3 = (RotaryInputModifierNode) nodePop4;
                if (it3.onRotaryScrollEvent(event)) {
                    return true;
                }
                $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                i2 = i19;
                i3 = i20;
            } else {
                Modifier.Node this_$iv$iv$iv3 = nodePop4;
                if (((this_$iv$iv$iv3.getKindSet() & i19) != 0 ? 1 : 0) == 0 || !(nodePop4 instanceof DelegatingNode)) {
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                    i2 = i19;
                    i3 = i20;
                } else {
                    int count$iv$iv2 = 0;
                    DelegatingNode this_$iv$iv$iv4 = (DelegatingNode) nodePop4;
                    Modifier.Node node$iv$iv$iv3 = this_$iv$iv$iv4.getDelegate();
                    while (node$iv$iv$iv3 != null) {
                        Modifier.Node next$iv$iv2 = node$iv$iv$iv3;
                        if (((next$iv$iv2.getKindSet() & i19) != 0 ? 1 : 0) != 0) {
                            count$iv$iv2++;
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                            if (count$iv$iv2 == 1) {
                                nodePop4 = next$iv$iv2;
                                i4 = i19;
                                i5 = i20;
                            } else {
                                if (mutableVector8 == null) {
                                    i4 = i19;
                                    i5 = i20;
                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                } else {
                                    i4 = i19;
                                    i5 = i20;
                                    mutableVector = mutableVector8;
                                }
                                mutableVector8 = mutableVector;
                                Modifier.Node theNode$iv$iv2 = nodePop4;
                                if (theNode$iv$iv2 != null) {
                                    if (mutableVector8 != null) {
                                        mutableVector8.add(theNode$iv$iv2);
                                    }
                                    nodePop4 = null;
                                }
                                if (mutableVector8 != null) {
                                    mutableVector8.add(next$iv$iv2);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                            i4 = i19;
                            i5 = i20;
                        }
                        node$iv$iv$iv3 = node$iv$iv$iv3.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv2;
                        i19 = i4;
                        i20 = i5;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$dispatchForKind_u2d6rFNWt0$iv$iv6;
                    i2 = i19;
                    i3 = i20;
                    if (count$iv$iv2 == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
                        i19 = i2;
                        i20 = i3;
                    }
                }
            }
            nodePop4 = DelegatableNodeKt.pop(mutableVector8);
            $this$dispatchForKind_u2d6rFNWt0$iv$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
            i19 = i2;
            i20 = i3;
        }
        if (ancestors$iv == null) {
            return false;
        }
        List $this$fastForEach$iv$iv = ancestors$iv;
        int size2 = $this$fastForEach$iv$iv.size();
        for (int index$iv$iv2 = 0; index$iv$iv2 < size2; index$iv$iv2++) {
            Object item$iv$iv2 = $this$fastForEach$iv$iv.get(index$iv$iv2);
            RotaryInputModifierNode it4 = (RotaryInputModifierNode) item$iv$iv2;
            if (it4.onRotaryScrollEvent(event)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchIndirectPointerEvent(IndirectPointerEvent event) {
        int i;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode;
        boolean z;
        boolean z2;
        int i2;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv;
        boolean z3;
        NodeChain nodes;
        int i3;
        Modifier.Node node$iv$iv$iv;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv2;
        boolean z4;
        Modifier.Node node$iv$iv$iv2;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv3;
        Modifier.Node node$iv$iv$iv3;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv4;
        int count$iv$iv$iv;
        MutableVector mutableVector;
        Object obj;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
        int i4;
        NodeChain nodes2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
        MutableVector mutableVector2;
        boolean z5 = false;
        if (this.focusInvalidationManager.getIsInvalidationScheduled()) {
            System.out.println((Object) "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated.");
            return false;
        }
        DelegatableNode activeFocusTargetNode = getActiveFocusTargetNode();
        int i5 = 2097152;
        int i6 = 1;
        if (activeFocusTargetNode != null) {
            DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = activeFocusTargetNode;
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(2097152);
            boolean value$iv$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode().getIsAttached();
            if (!value$iv$iv$iv$iv) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node$iv$iv$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode();
            LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestorIncludingSelf_u2d64DMado$iv5);
            loop0: while (true) {
                if (layout$iv$iv$iv == null) {
                    i = i5;
                    obj = null;
                    break;
                }
                Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
                if ((head$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                    while (node$iv$iv$iv4 != null) {
                        if ((node$iv$iv$iv4.getKindSet() & iM6460constructorimpl) != 0) {
                            Modifier.Node it$iv$iv = node$iv$iv$iv4;
                            MutableVector mutableVector3 = null;
                            i = i5;
                            Modifier.Node nodePop = it$iv$iv;
                            while (nodePop != null) {
                                if (nodePop instanceof IndirectPointerInputModifierNode) {
                                    obj = nodePop;
                                    break loop0;
                                }
                                Modifier.Node this_$iv$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i6 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    nodePop = DelegatableNodeKt.pop(mutableVector3);
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                    i6 = 1;
                                } else {
                                    int count$iv$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                        if (((next$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i6 : 0) != 0) {
                                            count$iv$iv$iv2++;
                                            if (count$iv$iv$iv2 == i6) {
                                                nodePop = next$iv$iv$iv;
                                                $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                            } else {
                                                if (mutableVector3 == null) {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    mutableVector2 = mutableVector3;
                                                }
                                                Modifier.Node theNode$iv$iv$iv = nodePop;
                                                if (theNode$iv$iv$iv != null) {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(theNode$iv$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(next$iv$iv$iv);
                                                }
                                                mutableVector3 = mutableVector2;
                                            }
                                        } else {
                                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                        }
                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
                                        i6 = 1;
                                    }
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    if (count$iv$iv$iv2 == 1) {
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        i6 = 1;
                                    } else {
                                        nodePop = DelegatableNodeKt.pop(mutableVector3);
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        i6 = 1;
                                    }
                                }
                            }
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                        } else {
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                            i = i5;
                        }
                        node$iv$iv$iv4 = node$iv$iv$iv4.getParent();
                        i6 = 1;
                        i5 = i;
                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
                    }
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    i4 = i5;
                } else {
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    i4 = i5;
                }
                layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
                node$iv$iv$iv4 = (layout$iv$iv$iv == null || (nodes2 = layout$iv$iv$iv.getNodes()) == null) ? null : nodes2.getTail();
                i6 = 1;
                i5 = i4;
                $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
            }
            focusedIndirectPointerInputNode = (IndirectPointerInputModifierNode) obj;
        } else {
            i = 2097152;
            focusedIndirectPointerInputNode = null;
        }
        if (focusedIndirectPointerInputNode != null) {
            IndirectPointerInputModifierNode node = focusedIndirectPointerInputNode;
            int count$iv$iv$iv3 = 0;
            IndirectPointerInputModifierNode $this$ancestors_u2d6rFNWt0_u24default$iv5 = node;
            int iM6460constructorimpl2 = NodeKind.m6460constructorimpl(i);
            List ancestors = null;
            boolean value$iv$iv$iv$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5.getNode().getIsAttached();
            if (!value$iv$iv$iv$iv2) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node$iv$iv$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv5.getNode().getParent();
            LayoutNode layout$iv$iv$iv2 = DelegatableNodeKt.requireLayoutNode($this$ancestors_u2d6rFNWt0_u24default$iv5);
            while (layout$iv$iv$iv2 != null) {
                Modifier.Node head$iv$iv$iv2 = layout$iv$iv$iv2.getNodes().getHead();
                if ((head$iv$iv$iv2.getAggregateChildKindSet() & iM6460constructorimpl2) != 0) {
                    while (node$iv$iv$iv5 != null) {
                        if ((node$iv$iv$iv5.getKindSet() & iM6460constructorimpl2) != 0) {
                            Modifier.Node it$iv$iv2 = node$iv$iv$iv5;
                            MutableVector mutableVector4 = null;
                            Modifier.Node nodePop2 = it$iv$iv2;
                            while (nodePop2 != null) {
                                int i7 = count$iv$iv$iv3;
                                if (nodePop2 instanceof IndirectPointerInputModifierNode) {
                                    Modifier.Node node2 = nodePop2;
                                    if (ancestors == null) {
                                        Object result$iv = new ArrayList();
                                        ancestors = (List) result$iv;
                                    }
                                    ancestors.add(node2);
                                    node$iv$iv$iv2 = node$iv$iv$iv5;
                                    $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                } else {
                                    Modifier.Node this_$iv$iv$iv$iv3 = nodePop2;
                                    if (((this_$iv$iv$iv$iv3.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) == 0 || !(nodePop2 instanceof DelegatingNode)) {
                                        node$iv$iv$iv2 = node$iv$iv$iv5;
                                        $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                    } else {
                                        int count$iv$iv$iv4 = 0;
                                        DelegatingNode this_$iv$iv$iv$iv4 = (DelegatingNode) nodePop2;
                                        Modifier.Node node$iv$iv$iv$iv2 = this_$iv$iv$iv$iv4.getDelegate();
                                        while (node$iv$iv$iv$iv2 != null) {
                                            Modifier.Node next$iv$iv$iv2 = node$iv$iv$iv$iv2;
                                            if (((next$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) != 0) {
                                                count$iv$iv$iv4++;
                                                Modifier.Node node3 = nodePop2;
                                                if (count$iv$iv$iv4 == 1) {
                                                    nodePop2 = next$iv$iv$iv2;
                                                    node$iv$iv$iv3 = node$iv$iv$iv5;
                                                    $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                } else {
                                                    if (mutableVector4 == null) {
                                                        count$iv$iv$iv = count$iv$iv$iv4;
                                                        node$iv$iv$iv3 = node$iv$iv$iv5;
                                                        $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                    } else {
                                                        count$iv$iv$iv = count$iv$iv$iv4;
                                                        node$iv$iv$iv3 = node$iv$iv$iv5;
                                                        $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                        mutableVector = mutableVector4;
                                                    }
                                                    if (node3 != null) {
                                                        if (mutableVector != null) {
                                                            mutableVector.add(node3);
                                                        }
                                                        node3 = null;
                                                    }
                                                    if (mutableVector != null) {
                                                        mutableVector.add(next$iv$iv$iv2);
                                                    }
                                                    mutableVector4 = mutableVector;
                                                    nodePop2 = node3;
                                                    count$iv$iv$iv4 = count$iv$iv$iv;
                                                }
                                            } else {
                                                node$iv$iv$iv3 = node$iv$iv$iv5;
                                                $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                            }
                                            node$iv$iv$iv$iv2 = node$iv$iv$iv$iv2.getChild();
                                            node$iv$iv$iv5 = node$iv$iv$iv3;
                                            $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv4;
                                        }
                                        Modifier.Node node4 = nodePop2;
                                        node$iv$iv$iv2 = node$iv$iv$iv5;
                                        $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                        if (count$iv$iv$iv4 == 1) {
                                            count$iv$iv$iv3 = i7;
                                            nodePop2 = node4;
                                            node$iv$iv$iv5 = node$iv$iv$iv2;
                                            $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv3;
                                        }
                                    }
                                }
                                nodePop2 = DelegatableNodeKt.pop(mutableVector4);
                                count$iv$iv$iv3 = i7;
                                node$iv$iv$iv5 = node$iv$iv$iv2;
                                $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv3;
                            }
                            i3 = count$iv$iv$iv3;
                            node$iv$iv$iv = node$iv$iv$iv5;
                            $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                            z4 = false;
                        } else {
                            i3 = count$iv$iv$iv3;
                            node$iv$iv$iv = node$iv$iv$iv5;
                            $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                            z4 = z5;
                        }
                        node$iv$iv$iv5 = node$iv$iv$iv.getParent();
                        z5 = z4;
                        count$iv$iv$iv3 = i3;
                        $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv2;
                    }
                    i2 = count$iv$iv$iv3;
                    $this$ancestors_u2d6rFNWt0_u24default$iv = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                    z3 = z5;
                } else {
                    i2 = count$iv$iv$iv3;
                    $this$ancestors_u2d6rFNWt0_u24default$iv = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                    z3 = z5;
                }
                layout$iv$iv$iv2 = layout$iv$iv$iv2.getParent$ui();
                node$iv$iv$iv5 = (layout$iv$iv$iv2 == null || (nodes = layout$iv$iv$iv2.getNodes()) == null) ? null : nodes.getTail();
                z5 = z3;
                count$iv$iv$iv3 = i2;
                $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv;
            }
            z2 = true;
            z = z5;
            if (ancestors != null) {
                List $this$fastForEachReversed$iv = ancestors;
                int size = $this$fastForEachReversed$iv.size() - 1;
                if (size >= 0) {
                    do {
                        int index$iv = size;
                        size--;
                        Object item$iv = $this$fastForEachReversed$iv.get(index$iv);
                        IndirectPointerInputModifierNode it = (IndirectPointerInputModifierNode) item$iv;
                        it.onIndirectPointerEvent(event, PointerEventPass.Initial);
                    } while (size >= 0);
                }
            }
            node.onIndirectPointerEvent(event, PointerEventPass.Initial);
            node.onIndirectPointerEvent(event, PointerEventPass.Main);
            if (ancestors != null) {
                List $this$fastForEach$iv = ancestors;
                int size2 = $this$fastForEach$iv.size();
                for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
                    Object item$iv2 = $this$fastForEach$iv.get(index$iv2);
                    IndirectPointerInputModifierNode it2 = (IndirectPointerInputModifierNode) item$iv2;
                    it2.onIndirectPointerEvent(event, PointerEventPass.Main);
                }
            }
            if (ancestors != null) {
                List $this$fastForEachReversed$iv2 = ancestors;
                int size3 = $this$fastForEachReversed$iv2.size() - 1;
                if (size3 >= 0) {
                    do {
                        int index$iv3 = size3;
                        size3--;
                        Object item$iv3 = $this$fastForEachReversed$iv2.get(index$iv3);
                        IndirectPointerInputModifierNode it3 = (IndirectPointerInputModifierNode) item$iv3;
                        it3.onIndirectPointerEvent(event, PointerEventPass.Final);
                    } while (size3 >= 0);
                }
            }
            node.onIndirectPointerEvent(event, PointerEventPass.Final);
        } else {
            z = false;
            z2 = true;
        }
        List<IndirectPointerInputChange> changes = event.getChanges();
        int size4 = changes.size();
        for (int index$iv$iv = 0; index$iv$iv < size4; index$iv$iv++) {
            Object item$iv$iv = changes.get(index$iv$iv);
            IndirectPointerInputChange it4 = (IndirectPointerInputChange) item$iv$iv;
            if (it4.getIsConsumed()) {
                boolean isConsumed = z2;
                return isConsumed;
            }
        }
        boolean isConsumed2 = z;
        return isConsumed2;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void dispatchIndirectPointerCancel() {
        String str;
        int i;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode;
        IndirectPointerInputModifierNode node;
        int i2;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode2;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode3;
        NodeChain nodes;
        IndirectPointerInputModifierNode node2;
        int i3;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv2;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode4;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode5;
        int i4;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv3;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode6;
        int i5;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv4;
        IndirectPointerInputModifierNode focusedIndirectPointerInputNode7;
        int count$iv$iv$iv;
        MutableVector mutableVector;
        Object obj;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
        String str2;
        int i6;
        NodeChain nodes2;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
        String str3;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
        String str4;
        DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
        String str5;
        MutableVector mutableVector2;
        DelegatableNode activeFocusTargetNode = getActiveFocusTargetNode();
        String str6 = "visitAncestors called on an unattached node";
        int i7 = 2097152;
        IndirectPointerInputModifierNode indirectPointerInputModifierNode = null;
        int i8 = 1;
        if (activeFocusTargetNode != null) {
            DelegatableNode $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = activeFocusTargetNode;
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(2097152);
            boolean value$iv$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode().getIsAttached();
            if (!value$iv$iv$iv$iv) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node$iv$iv$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5.getNode();
            LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestorIncludingSelf_u2d64DMado$iv5);
            loop0: while (true) {
                if (layout$iv$iv$iv == null) {
                    str = str6;
                    i = i7;
                    obj = null;
                    break;
                }
                Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
                if ((head$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                    while (node$iv$iv$iv != null) {
                        if ((node$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                            Modifier.Node it$iv$iv = node$iv$iv$iv;
                            MutableVector mutableVector3 = null;
                            i = i7;
                            Modifier.Node nodePop = it$iv$iv;
                            while (nodePop != null) {
                                if (nodePop instanceof IndirectPointerInputModifierNode) {
                                    obj = nodePop;
                                    str = str6;
                                    break loop0;
                                }
                                Modifier.Node this_$iv$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i8 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    str4 = str6;
                                    nodePop = DelegatableNodeKt.pop(mutableVector3);
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                    str6 = str4;
                                    i8 = 1;
                                } else {
                                    int count$iv$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                        if (((next$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i8 : 0) != 0) {
                                            count$iv$iv$iv2++;
                                            if (count$iv$iv$iv2 == i8) {
                                                nodePop = next$iv$iv$iv;
                                                $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                str5 = str6;
                                            } else {
                                                if (mutableVector3 == null) {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    str5 = str6;
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                                    str5 = str6;
                                                    mutableVector2 = mutableVector3;
                                                }
                                                Modifier.Node theNode$iv$iv$iv = nodePop;
                                                if (theNode$iv$iv$iv != null) {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(theNode$iv$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(next$iv$iv$iv);
                                                }
                                                mutableVector3 = mutableVector2;
                                            }
                                        } else {
                                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv4 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                            str5 = str6;
                                        }
                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv4;
                                        str6 = str5;
                                        i8 = 1;
                                    }
                                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv3 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                                    str4 = str6;
                                    if (count$iv$iv$iv2 == 1) {
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        str6 = str4;
                                        i8 = 1;
                                    } else {
                                        nodePop = DelegatableNodeKt.pop(mutableVector3);
                                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv3;
                                        str6 = str4;
                                        i8 = 1;
                                    }
                                }
                            }
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                            str3 = str6;
                        } else {
                            $this$nearestAncestorIncludingSelf_u2d64DMado$iv2 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                            str3 = str6;
                            i = i7;
                        }
                        node$iv$iv$iv = node$iv$iv$iv.getParent();
                        i7 = i;
                        $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv2;
                        str6 = str3;
                        i8 = 1;
                    }
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    str2 = str6;
                    i6 = i7;
                } else {
                    $this$nearestAncestorIncludingSelf_u2d64DMado$iv = $this$nearestAncestorIncludingSelf_u2d64DMado$iv5;
                    str2 = str6;
                    i6 = i7;
                }
                layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
                node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes2 = layout$iv$iv$iv.getNodes()) == null) ? null : nodes2.getTail();
                i7 = i6;
                $this$nearestAncestorIncludingSelf_u2d64DMado$iv5 = $this$nearestAncestorIncludingSelf_u2d64DMado$iv;
                str6 = str2;
                i8 = 1;
            }
            focusedIndirectPointerInputNode = (IndirectPointerInputModifierNode) obj;
        } else {
            str = "visitAncestors called on an unattached node";
            i = 2097152;
            focusedIndirectPointerInputNode = null;
        }
        if (focusedIndirectPointerInputNode != null) {
            IndirectPointerInputModifierNode node3 = focusedIndirectPointerInputNode;
            int i9 = 0;
            IndirectPointerInputModifierNode $this$ancestors_u2d6rFNWt0_u24default$iv5 = node3;
            int iM6460constructorimpl2 = NodeKind.m6460constructorimpl(i);
            List ancestors = null;
            boolean value$iv$iv$iv$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5.getNode().getIsAttached();
            if (!value$iv$iv$iv$iv2) {
                InlineClassHelperKt.throwIllegalStateException(str);
            }
            Modifier.Node node$iv$iv$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5.getNode().getParent();
            LayoutNode layout$iv$iv$iv2 = DelegatableNodeKt.requireLayoutNode($this$ancestors_u2d6rFNWt0_u24default$iv5);
            while (layout$iv$iv$iv2 != null) {
                Modifier.Node head$iv$iv$iv2 = layout$iv$iv$iv2.getNodes().getHead();
                if ((head$iv$iv$iv2.getAggregateChildKindSet() & iM6460constructorimpl2) != 0) {
                    while (node$iv$iv$iv2 != null) {
                        if ((node$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0) {
                            Modifier.Node it$iv$iv2 = node$iv$iv$iv2;
                            MutableVector mutableVector4 = null;
                            Modifier.Node nodePop2 = it$iv$iv2;
                            while (nodePop2 != null) {
                                IndirectPointerInputModifierNode node4 = node3;
                                if (nodePop2 instanceof IndirectPointerInputModifierNode) {
                                    Modifier.Node node5 = nodePop2;
                                    if (ancestors == null) {
                                        Object result$iv = new ArrayList();
                                        ancestors = (List) result$iv;
                                    }
                                    ancestors.add(node5);
                                    i4 = i9;
                                    $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                    focusedIndirectPointerInputNode6 = focusedIndirectPointerInputNode;
                                } else {
                                    Modifier.Node this_$iv$iv$iv$iv3 = nodePop2;
                                    if (((this_$iv$iv$iv$iv3.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) == 0 || !(nodePop2 instanceof DelegatingNode)) {
                                        i4 = i9;
                                        $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                        focusedIndirectPointerInputNode6 = focusedIndirectPointerInputNode;
                                    } else {
                                        int count$iv$iv$iv3 = 0;
                                        DelegatingNode this_$iv$iv$iv$iv4 = (DelegatingNode) nodePop2;
                                        Modifier.Node node$iv$iv$iv$iv2 = this_$iv$iv$iv$iv4.getDelegate();
                                        while (node$iv$iv$iv$iv2 != null) {
                                            Modifier.Node next$iv$iv$iv2 = node$iv$iv$iv$iv2;
                                            if (((next$iv$iv$iv2.getKindSet() & iM6460constructorimpl2) != 0 ? 1 : 0) != 0) {
                                                count$iv$iv$iv3++;
                                                i5 = i9;
                                                if (count$iv$iv$iv3 == 1) {
                                                    nodePop2 = next$iv$iv$iv2;
                                                    $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                    focusedIndirectPointerInputNode7 = focusedIndirectPointerInputNode;
                                                } else {
                                                    if (mutableVector4 == null) {
                                                        count$iv$iv$iv = count$iv$iv$iv3;
                                                        $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                        focusedIndirectPointerInputNode7 = focusedIndirectPointerInputNode;
                                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                    } else {
                                                        count$iv$iv$iv = count$iv$iv$iv3;
                                                        $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                        focusedIndirectPointerInputNode7 = focusedIndirectPointerInputNode;
                                                        mutableVector = mutableVector4;
                                                    }
                                                    Modifier.Node theNode$iv$iv$iv2 = nodePop2;
                                                    if (theNode$iv$iv$iv2 != null) {
                                                        if (mutableVector != null) {
                                                            mutableVector.add(theNode$iv$iv$iv2);
                                                        }
                                                        nodePop2 = null;
                                                    }
                                                    if (mutableVector != null) {
                                                        mutableVector.add(next$iv$iv$iv2);
                                                    }
                                                    mutableVector4 = mutableVector;
                                                    count$iv$iv$iv3 = count$iv$iv$iv;
                                                }
                                            } else {
                                                i5 = i9;
                                                $this$ancestors_u2d6rFNWt0_u24default$iv4 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                                focusedIndirectPointerInputNode7 = focusedIndirectPointerInputNode;
                                            }
                                            node$iv$iv$iv$iv2 = node$iv$iv$iv$iv2.getChild();
                                            i9 = i5;
                                            $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv4;
                                            focusedIndirectPointerInputNode = focusedIndirectPointerInputNode7;
                                        }
                                        i4 = i9;
                                        $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                                        focusedIndirectPointerInputNode6 = focusedIndirectPointerInputNode;
                                        if (count$iv$iv$iv3 == 1) {
                                            node3 = node4;
                                            i9 = i4;
                                            $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv3;
                                            focusedIndirectPointerInputNode = focusedIndirectPointerInputNode6;
                                        }
                                    }
                                }
                                nodePop2 = DelegatableNodeKt.pop(mutableVector4);
                                node3 = node4;
                                i9 = i4;
                                $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv3;
                                focusedIndirectPointerInputNode = focusedIndirectPointerInputNode6;
                            }
                            node2 = node3;
                            i3 = i9;
                            $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                            focusedIndirectPointerInputNode4 = focusedIndirectPointerInputNode;
                            focusedIndirectPointerInputNode5 = null;
                        } else {
                            node2 = node3;
                            i3 = i9;
                            $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                            focusedIndirectPointerInputNode4 = focusedIndirectPointerInputNode;
                            focusedIndirectPointerInputNode5 = indirectPointerInputModifierNode;
                        }
                        node$iv$iv$iv2 = node$iv$iv$iv2.getParent();
                        indirectPointerInputModifierNode = focusedIndirectPointerInputNode5;
                        node3 = node2;
                        i9 = i3;
                        $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv2;
                        focusedIndirectPointerInputNode = focusedIndirectPointerInputNode4;
                    }
                    node = node3;
                    i2 = i9;
                    $this$ancestors_u2d6rFNWt0_u24default$iv = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                    focusedIndirectPointerInputNode2 = focusedIndirectPointerInputNode;
                    focusedIndirectPointerInputNode3 = indirectPointerInputModifierNode;
                } else {
                    node = node3;
                    i2 = i9;
                    $this$ancestors_u2d6rFNWt0_u24default$iv = $this$ancestors_u2d6rFNWt0_u24default$iv5;
                    focusedIndirectPointerInputNode2 = focusedIndirectPointerInputNode;
                    focusedIndirectPointerInputNode3 = indirectPointerInputModifierNode;
                }
                layout$iv$iv$iv2 = layout$iv$iv$iv2.getParent$ui();
                node$iv$iv$iv2 = (layout$iv$iv$iv2 == null || (nodes = layout$iv$iv$iv2.getNodes()) == null) ? null : nodes.getTail();
                indirectPointerInputModifierNode = focusedIndirectPointerInputNode3;
                node3 = node;
                i9 = i2;
                $this$ancestors_u2d6rFNWt0_u24default$iv5 = $this$ancestors_u2d6rFNWt0_u24default$iv;
                focusedIndirectPointerInputNode = focusedIndirectPointerInputNode2;
            }
            node3.onCancelIndirectPointerInput();
            if (ancestors != null) {
                List $this$fastForEach$iv = ancestors;
                int size = $this$fastForEach$iv.size();
                for (int index$iv = 0; index$iv < size; index$iv++) {
                    Object item$iv = $this$fastForEach$iv.get(index$iv);
                    IndirectPointerInputModifierNode it = (IndirectPointerInputModifierNode) item$iv;
                    it.onCancelIndirectPointerInput();
                }
            }
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void focusTargetAvailable() {
        this.platformFocusOwner.focusTargetAvailable();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusTargetNode node) {
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusEventModifierNode node) {
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidationForOwner() {
        this.focusInvalidationManager.scheduleInvalidation();
    }

    /* JADX INFO: renamed from: traverseAncestorsIncludingSelf-QFhIj7k, reason: not valid java name */
    private final /* synthetic */ <T extends DelegatableNode> void m4352traverseAncestorsIncludingSelfQFhIj7k(DelegatableNode $this$traverseAncestorsIncludingSelf_u2dQFhIj7k, int i, Function1<? super T, Unit> function1, Function0<Unit> function0, Function1<? super T, Unit> function12) {
        String str;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv;
        String str2;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv2;
        String str3;
        List ancestors;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv3;
        List ancestors2;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv4;
        int size;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv;
        boolean includeSelf$iv;
        int i2;
        NodeChain nodes;
        boolean includeSelf$iv2;
        int i3;
        DelegatingNode this_$iv$iv$iv$iv;
        int i4;
        int count$iv$iv$iv;
        Function1<? super T, Unit> function13 = function1;
        int i5 = 0;
        int i6 = i;
        DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k;
        boolean includeSelf$iv3 = false;
        int i7 = 0;
        Object result$iv = null;
        boolean value$iv$iv$iv$iv = $this$ancestors_u2d6rFNWt0_u24default$iv2.getNode().getIsAttached();
        if (!value$iv$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv$iv = $this$ancestors_u2d6rFNWt0_u24default$iv2.getNode().getParent();
        LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$ancestors_u2d6rFNWt0_u24default$iv2);
        while (true) {
            int i8 = i5;
            str = ExifInterface.GPS_DIRECTION_TRUE;
            int i9 = i6;
            if (layout$iv$iv$iv == null) {
                break;
            }
            Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv.getAggregateChildKindSet() & i6) != 0) {
                while (node$iv$iv$iv != null) {
                    if ((node$iv$iv$iv.getKindSet() & i6) != 0) {
                        Modifier.Node it$iv$iv = node$iv$iv$iv;
                        Object stack$iv$iv$iv = null;
                        Modifier.Node this_$iv$iv$iv$iv2 = it$iv$iv;
                        while (this_$iv$iv$iv$iv2 != null) {
                            DelegatableNode $this$ancestors_u2d6rFNWt0_u24default$iv3 = $this$ancestors_u2d6rFNWt0_u24default$iv2;
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (this_$iv$iv$iv$iv2 instanceof Object) {
                                Modifier.Node node = this_$iv$iv$iv$iv2;
                                if (result$iv == null) {
                                    Object result$iv2 = new ArrayList();
                                    result$iv = (List) result$iv2;
                                }
                                includeSelf$iv2 = includeSelf$iv3;
                                ((List) result$iv).add(node);
                                i3 = i7;
                            } else {
                                includeSelf$iv2 = includeSelf$iv3;
                                if (((this_$iv$iv$iv$iv2.getKindSet() & i6) != 0) && (this_$iv$iv$iv$iv2 instanceof DelegatingNode)) {
                                    int count$iv$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv$iv3 = (DelegatingNode) this_$iv$iv$iv$iv2;
                                    Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv3.getDelegate();
                                    while (node$iv$iv$iv$iv != null) {
                                        Modifier.Node node2 = this_$iv$iv$iv$iv2;
                                        Object node$iv$iv$iv2 = node$iv$iv$iv$iv;
                                        Modifier.Node next$iv$iv$iv = (Modifier.Node) node$iv$iv$iv2;
                                        if (((next$iv$iv$iv.getKindSet() & i6) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv$iv2++;
                                            this_$iv$iv$iv$iv = this_$iv$iv$iv$iv3;
                                            if (count$iv$iv$iv2 == 1) {
                                                node2 = next$iv$iv$iv;
                                                i4 = i7;
                                            } else {
                                                Object node$iv$iv$iv3 = stack$iv$iv$iv;
                                                Object mutableVector = (MutableVector) node$iv$iv$iv3;
                                                if (mutableVector == null) {
                                                    count$iv$iv$iv = count$iv$iv$iv2;
                                                    i4 = i7;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv$iv = count$iv$iv$iv2;
                                                    i4 = i7;
                                                }
                                                stack$iv$iv$iv = mutableVector;
                                                Modifier.Node theNode$iv$iv$iv = node2;
                                                if (theNode$iv$iv$iv != null) {
                                                    MutableVector mutableVector2 = (MutableVector) stack$iv$iv$iv;
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(theNode$iv$iv$iv);
                                                    }
                                                    node2 = null;
                                                }
                                                MutableVector mutableVector3 = (MutableVector) stack$iv$iv$iv;
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(next$iv$iv$iv);
                                                }
                                                count$iv$iv$iv2 = count$iv$iv$iv;
                                            }
                                        } else {
                                            this_$iv$iv$iv$iv = this_$iv$iv$iv$iv3;
                                            i4 = i7;
                                        }
                                        node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                        this_$iv$iv$iv$iv2 = node2;
                                        this_$iv$iv$iv$iv3 = this_$iv$iv$iv$iv;
                                        i7 = i4;
                                    }
                                    Modifier.Node node3 = this_$iv$iv$iv$iv2;
                                    i3 = i7;
                                    if (count$iv$iv$iv2 == 1) {
                                        $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv3;
                                        includeSelf$iv3 = includeSelf$iv2;
                                        this_$iv$iv$iv$iv2 = node3;
                                        i7 = i3;
                                    }
                                } else {
                                    i3 = i7;
                                }
                            }
                            this_$iv$iv$iv$iv2 = DelegatableNodeKt.pop((MutableVector) stack$iv$iv$iv);
                            $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv3;
                            includeSelf$iv3 = includeSelf$iv2;
                            i7 = i3;
                        }
                    }
                    node$iv$iv$iv = node$iv$iv$iv.getParent();
                    $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv2;
                    includeSelf$iv3 = includeSelf$iv3;
                    i7 = i7;
                }
                $this$ancestors_u2d6rFNWt0_u24default$iv = $this$ancestors_u2d6rFNWt0_u24default$iv2;
                includeSelf$iv = includeSelf$iv3;
                i2 = i7;
            } else {
                $this$ancestors_u2d6rFNWt0_u24default$iv = $this$ancestors_u2d6rFNWt0_u24default$iv2;
                includeSelf$iv = includeSelf$iv3;
                i2 = i7;
            }
            layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
            node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes = layout$iv$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            i5 = i8;
            i6 = i9;
            $this$ancestors_u2d6rFNWt0_u24default$iv2 = $this$ancestors_u2d6rFNWt0_u24default$iv;
            includeSelf$iv3 = includeSelf$iv;
            i7 = i2;
        }
        List ancestors3 = (List) result$iv;
        if (ancestors3 != null && ancestors3.size() - 1 >= 0) {
            do {
                int index$iv = size;
                size--;
                Object item$iv = ancestors3.get(index$iv);
                function13.invoke(item$iv);
            } while (size >= 0);
        }
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k.getNode();
        Object stack$iv = null;
        Modifier.Node node$iv = $this$dispatchForKind_u2d6rFNWt0$iv5;
        while (node$iv != null) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (node$iv instanceof Object) {
                function13.invoke(node$iv);
                ancestors = ancestors3;
                $this$dispatchForKind_u2d6rFNWt0$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv5;
            } else {
                Modifier.Node this_$iv$iv = node$iv;
                if (((this_$iv$iv.getKindSet() & i) != 0) && (node$iv instanceof DelegatingNode)) {
                    int count$iv = 0;
                    DelegatingNode this_$iv$iv2 = (DelegatingNode) node$iv;
                    Modifier.Node node$iv$iv = this_$iv$iv2.getDelegate();
                    while (node$iv$iv != null) {
                        Modifier.Node next$iv = node$iv$iv;
                        if (((next$iv.getKindSet() & i) != 0 ? 1 : 0) != 0) {
                            count$iv++;
                            if (count$iv == 1) {
                                node$iv = next$iv;
                                ancestors2 = ancestors3;
                                $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                            } else {
                                Object obj = (MutableVector) stack$iv;
                                if (obj == null) {
                                    ancestors2 = ancestors3;
                                    $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                                    Object mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                    obj = mutableVector4;
                                } else {
                                    ancestors2 = ancestors3;
                                    $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                                }
                                stack$iv = obj;
                                Modifier.Node theNode$iv = node$iv;
                                if (theNode$iv != null) {
                                    MutableVector mutableVector5 = (MutableVector) stack$iv;
                                    if (mutableVector5 != null) {
                                        mutableVector5.add(theNode$iv);
                                    }
                                    node$iv = null;
                                }
                                MutableVector mutableVector6 = (MutableVector) stack$iv;
                                if (mutableVector6 != null) {
                                    mutableVector6.add(next$iv);
                                }
                            }
                        } else {
                            ancestors2 = ancestors3;
                            $this$dispatchForKind_u2d6rFNWt0$iv4 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                        }
                        node$iv$iv = node$iv$iv.getChild();
                        ancestors3 = ancestors2;
                        $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv4;
                    }
                    ancestors = ancestors3;
                    $this$dispatchForKind_u2d6rFNWt0$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                    if (count$iv == 1) {
                        function13 = function1;
                        ancestors3 = ancestors;
                        $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv3;
                    }
                } else {
                    ancestors = ancestors3;
                    $this$dispatchForKind_u2d6rFNWt0$iv3 = $this$dispatchForKind_u2d6rFNWt0$iv5;
                }
            }
            node$iv = DelegatableNodeKt.pop((MutableVector) stack$iv);
            function13 = function1;
            ancestors3 = ancestors;
            $this$dispatchForKind_u2d6rFNWt0$iv5 = $this$dispatchForKind_u2d6rFNWt0$iv3;
        }
        List ancestors4 = ancestors3;
        function0.invoke();
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$traverseAncestorsIncludingSelf_u2dQFhIj7k.getNode();
        Object stack$iv2 = null;
        Modifier.Node node$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
        while (node$iv2 != null) {
            Intrinsics.reifiedOperationMarker(3, str);
            if (node$iv2 instanceof Object) {
                function12.invoke(node$iv2);
                $this$dispatchForKind_u2d6rFNWt0$iv = $this$dispatchForKind_u2d6rFNWt0$iv6;
                str2 = str;
            } else {
                Modifier.Node this_$iv$iv3 = node$iv2;
                if (((this_$iv$iv3.getKindSet() & i) != 0) && (node$iv2 instanceof DelegatingNode)) {
                    int count$iv2 = 0;
                    DelegatingNode this_$iv$iv4 = (DelegatingNode) node$iv2;
                    Modifier.Node node$iv$iv2 = this_$iv$iv4.getDelegate();
                    while (node$iv$iv2 != null) {
                        Modifier.Node next$iv2 = node$iv$iv2;
                        if (((next$iv2.getKindSet() & i) != 0 ? 1 : 0) != 0) {
                            count$iv2++;
                            if (count$iv2 == 1) {
                                node$iv2 = next$iv2;
                                $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                                str3 = str;
                            } else {
                                Object obj2 = (MutableVector) stack$iv2;
                                if (obj2 == null) {
                                    $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                                    str3 = str;
                                    Object mutableVector7 = new MutableVector(new Modifier.Node[16], 0);
                                    obj2 = mutableVector7;
                                } else {
                                    $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                                    str3 = str;
                                }
                                stack$iv2 = obj2;
                                Modifier.Node theNode$iv2 = node$iv2;
                                if (theNode$iv2 != null) {
                                    MutableVector mutableVector8 = (MutableVector) stack$iv2;
                                    if (mutableVector8 != null) {
                                        mutableVector8.add(theNode$iv2);
                                    }
                                    node$iv2 = null;
                                }
                                MutableVector mutableVector9 = (MutableVector) stack$iv2;
                                if (mutableVector9 != null) {
                                    mutableVector9.add(next$iv2);
                                }
                            }
                        } else {
                            $this$dispatchForKind_u2d6rFNWt0$iv2 = $this$dispatchForKind_u2d6rFNWt0$iv6;
                            str3 = str;
                        }
                        node$iv$iv2 = node$iv$iv2.getChild();
                        $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv2;
                        str = str3;
                    }
                    $this$dispatchForKind_u2d6rFNWt0$iv = $this$dispatchForKind_u2d6rFNWt0$iv6;
                    str2 = str;
                    if (count$iv2 == 1) {
                        $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv;
                        str = str2;
                    }
                } else {
                    $this$dispatchForKind_u2d6rFNWt0$iv = $this$dispatchForKind_u2d6rFNWt0$iv6;
                    str2 = str;
                }
            }
            node$iv2 = DelegatableNodeKt.pop((MutableVector) stack$iv2);
            $this$dispatchForKind_u2d6rFNWt0$iv6 = $this$dispatchForKind_u2d6rFNWt0$iv;
            str = str2;
        }
        if (ancestors4 != null) {
            int size2 = ancestors4.size();
            for (int index$iv2 = 0; index$iv2 < size2; index$iv2++) {
                Object item$iv2 = ancestors4.get(index$iv2);
                function12.invoke(item$iv2);
            }
        }
    }

    /* JADX INFO: renamed from: nearestAncestorIncludingSelf-64DMado, reason: not valid java name */
    private final /* synthetic */ <T> T m4351nearestAncestorIncludingSelf64DMado(DelegatableNode delegatableNode, int i) {
        int i2;
        boolean z;
        DelegatableNode delegatableNode2;
        int i3;
        int i4;
        Modifier.Node node;
        NodeChain nodes;
        int i5;
        boolean z2;
        DelegatableNode delegatableNode3;
        int i6;
        int i7;
        DelegatableNode delegatableNode4;
        int i8;
        int i9;
        DelegatableNode delegatableNode5;
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        boolean z3 = true;
        DelegatableNode delegatableNode6 = delegatableNode;
        int i14 = i;
        int i15 = 0;
        if (!delegatableNode6.getNode().getIsAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = delegatableNode6.getNode();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode6);
        while (layoutNodeRequireLayoutNode != null) {
            if ((layoutNodeRequireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i14) != 0) {
                while (node2 != null) {
                    if ((node2.getKindSet() & i14) != 0) {
                        int i16 = i14;
                        Object obj = null;
                        Modifier.Node nodePop = node2;
                        while (nodePop != null) {
                            int i17 = i13;
                            boolean z4 = z3;
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (nodePop instanceof Object) {
                                return (T) nodePop;
                            }
                            if (((nodePop.getKindSet() & i16) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                delegatableNode4 = delegatableNode6;
                                i8 = i14;
                                i9 = i15;
                                nodePop = DelegatableNodeKt.pop((MutableVector) obj);
                                i13 = i17;
                                z3 = z4;
                                delegatableNode6 = delegatableNode4;
                                i14 = i8;
                                i15 = i9;
                            } else {
                                int i18 = 0;
                                Modifier.Node delegate = ((DelegatingNode) nodePop).getDelegate();
                                while (delegate != null) {
                                    Modifier.Node node3 = delegate;
                                    if (((node3.getKindSet() & i16) != 0 ? 1 : 0) != 0) {
                                        i18++;
                                        delegatableNode5 = delegatableNode6;
                                        if (i18 == 1) {
                                            nodePop = node3;
                                            i10 = i14;
                                            i11 = i15;
                                        } else {
                                            MutableVector mutableVector = (MutableVector) obj;
                                            if (mutableVector == null) {
                                                i12 = i18;
                                                i10 = i14;
                                                i11 = i15;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                i12 = i18;
                                                i10 = i14;
                                                i11 = i15;
                                            }
                                            obj = mutableVector;
                                            Modifier.Node node4 = nodePop;
                                            if (node4 != null) {
                                                MutableVector mutableVector2 = (MutableVector) obj;
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(node4);
                                                }
                                                nodePop = null;
                                            }
                                            MutableVector mutableVector3 = (MutableVector) obj;
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(node3);
                                            }
                                            i18 = i12;
                                        }
                                    } else {
                                        delegatableNode5 = delegatableNode6;
                                        i10 = i14;
                                        i11 = i15;
                                    }
                                    delegate = delegate.getChild();
                                    delegatableNode6 = delegatableNode5;
                                    i14 = i10;
                                    i15 = i11;
                                }
                                delegatableNode4 = delegatableNode6;
                                i8 = i14;
                                i9 = i15;
                                if (i18 == 1) {
                                    i13 = i17;
                                    z3 = z4;
                                    delegatableNode6 = delegatableNode4;
                                    i14 = i8;
                                    i15 = i9;
                                } else {
                                    nodePop = DelegatableNodeKt.pop((MutableVector) obj);
                                    i13 = i17;
                                    z3 = z4;
                                    delegatableNode6 = delegatableNode4;
                                    i14 = i8;
                                    i15 = i9;
                                }
                            }
                        }
                        i5 = i13;
                        z2 = z3;
                        delegatableNode3 = delegatableNode6;
                        i6 = i14;
                        i7 = i15;
                    } else {
                        i5 = i13;
                        z2 = z3;
                        delegatableNode3 = delegatableNode6;
                        i6 = i14;
                        i7 = i15;
                    }
                    node2 = node2.getParent();
                    i13 = i5;
                    z3 = z2;
                    delegatableNode6 = delegatableNode3;
                    i14 = i6;
                    i15 = i7;
                }
                i2 = i13;
                z = z3;
                delegatableNode2 = delegatableNode6;
                i3 = i14;
                i4 = i15;
                node = null;
            } else {
                i2 = i13;
                z = z3;
                delegatableNode2 = delegatableNode6;
                i3 = i14;
                i4 = i15;
                node = null;
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            node2 = (layoutNodeRequireLayoutNode == null || (nodes = layoutNodeRequireLayoutNode.getNodes()) == null) ? node : nodes.getTail();
            i13 = i2;
            z3 = z;
            delegatableNode6 = delegatableNode2;
            i14 = i3;
            i15 = i4;
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Rect getFocusRect() {
        FocusTargetNode focusTargetNodeFindFocusTargetNode = findFocusTargetNode();
        if (focusTargetNodeFindFocusTargetNode != null) {
            return FocusTraversalKt.focusRect(focusTargetNodeFindFocusTargetNode);
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean hasFocusableContent() {
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv;
        boolean z;
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2;
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3;
        Modifier.Node node;
        MutableVector mutableVector;
        boolean z2 = false;
        if (!this.rootFocusNode.getIsAttached()) {
            return false;
        }
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = this.rootFocusNode;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            boolean z3 = true;
            if (!(branches$iv$iv.getSize() != 0 ? true : z2)) {
                return false;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (node$iv$iv != null && node$iv$iv.getIsAttached()) {
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        MutableVector mutableVector2 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            boolean z4 = z3;
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) nodePop;
                                if (it.getIsAttached() && it.fetchFocusProperties$ui().getCanFocus()) {
                                    return z4;
                                }
                                $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                            } else {
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? z4 : false) && (nodePop instanceof DelegatingNode)) {
                                    int count$iv$iv = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if ((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? z4 : false) {
                                            count$iv$iv++;
                                            if (count$iv$iv == z4) {
                                                nodePop = next$iv$iv;
                                                $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                                    node = nodePop;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                                    node = nodePop;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = node;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    nodePop = null;
                                                } else {
                                                    nodePop = node;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                            }
                                        } else {
                                            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3;
                                        z4 = true;
                                    }
                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                    Modifier.Node node2 = nodePop;
                                    if (count$iv$iv == 1) {
                                        z3 = true;
                                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2;
                                        nodePop = node2;
                                    }
                                } else {
                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            z3 = true;
                            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2;
                        }
                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                        z = true;
                        if (1 == 0) {
                            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv;
                            z2 = false;
                            break;
                        }
                    } else {
                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                        z = z3;
                    }
                    node$iv$iv = node$iv$iv.getChild();
                    z3 = z;
                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv;
                }
            }
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
            z2 = false;
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean hasNonInteropFocusableContent() {
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv;
        boolean z;
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2;
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3;
        Modifier.Node node;
        MutableVector mutableVector;
        boolean z2 = false;
        if (!this.rootFocusNode.getIsAttached()) {
            return false;
        }
        DelegatableNode $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = this.rootFocusNode;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            boolean z3 = true;
            if (!(branches$iv$iv.getSize() != 0 ? true : z2)) {
                return false;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (node$iv$iv != null && node$iv$iv.getIsAttached()) {
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        MutableVector mutableVector2 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            boolean z4 = z3;
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) nodePop;
                                if (it.getIsAttached()) {
                                    FocusProperties focusProperties = it.fetchFocusProperties$ui();
                                    if (it.getIsAttached() && !it.getIsInteropViewHost() && focusProperties.getCanFocus()) {
                                        return z4;
                                    }
                                }
                                $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                            } else {
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? z4 : false) && (nodePop instanceof DelegatingNode)) {
                                    int count$iv$iv = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if ((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? z4 : false) {
                                            count$iv$iv++;
                                            if (count$iv$iv == z4) {
                                                nodePop = next$iv$iv;
                                                $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                                    node = nodePop;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                                    node = nodePop;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = node;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    nodePop = null;
                                                } else {
                                                    nodePop = node;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                            }
                                        } else {
                                            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv3;
                                        z4 = true;
                                    }
                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                    Modifier.Node node2 = nodePop;
                                    if (count$iv$iv == 1) {
                                        z3 = true;
                                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2;
                                        nodePop = node2;
                                    }
                                } else {
                                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            z3 = true;
                            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv2;
                        }
                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                        z = true;
                        if (1 == 0) {
                            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv;
                            z2 = false;
                            break;
                        }
                    } else {
                        $this$visitSubtree_u2dY_u2dYKmho_u24default$iv = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
                        z = z3;
                    }
                    node$iv$iv = node$iv$iv.getChild();
                    z3 = z;
                    $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv;
                }
            }
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4 = $this$visitSubtree_u2dY_u2dYKmho_u24default$iv4;
            z2 = false;
        }
    }

    private final FocusTargetNode findFocusTargetNode() {
        return FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusState getRootState() {
        return this.rootFocusNode.getFocusState();
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public MutableObjectList<FocusListener> getListeners() {
        return this.listeners;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public FocusTargetNode getActiveFocusTargetNode() {
        FocusTargetNode focusTargetNode = this.activeFocusTargetNode;
        boolean z = false;
        if (focusTargetNode != null && focusTargetNode.getIsAttached()) {
            z = true;
        }
        if (z) {
            return this.activeFocusTargetNode;
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void setActiveFocusTargetNode(FocusTargetNode value) {
        FocusTargetNode previousValue = this.activeFocusTargetNode;
        this.activeFocusTargetNode = value;
        if (value == null || previousValue != value) {
            setFocusCaptured(false);
        }
        if (ComposeUiFlags.isSemanticAutofillEnabled) {
            ObjectList this_$iv = getListeners();
            Object[] content$iv = this_$iv.content;
            int i = this_$iv._size;
            for (int i$iv = 0; i$iv < i; i$iv++) {
                FocusListener it = (FocusListener) content$iv[i$iv];
                it.onFocusChanged(previousValue, value);
            }
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    /* JADX INFO: renamed from: isFocusCaptured, reason: from getter */
    public boolean getIsFocusCaptured() {
        return this.isFocusCaptured;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void setFocusCaptured(boolean value) {
        boolean value$iv = (value && getActiveFocusTargetNode() == null) ? false : true;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot capture focus when the active focus target node is unset");
        }
        this.isFocusCaptured = value;
    }

    private final Modifier.Node lastLocalKeyInputNode(DelegatableNode $this$lastLocalKeyInputNode) {
        Modifier.Node node = null;
        int mask$iv = NodeKind.m6460constructorimpl(1024) | NodeKind.m6460constructorimpl(8192);
        boolean value$iv$iv$iv = $this$lastLocalKeyInputNode.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node self$iv$iv = $this$lastLocalKeyInputNode.getNode();
        if ((self$iv$iv.getAggregateChildKindSet() & mask$iv) != 0) {
            for (Modifier.Node next$iv$iv = self$iv$iv.getChild(); next$iv$iv != null; next$iv$iv = next$iv$iv.getChild()) {
                if ((next$iv$iv.getKindSet() & mask$iv) != 0) {
                    Modifier.Node modifierNode = next$iv$iv;
                    if ((modifierNode.getKindSet() & NodeKind.m6460constructorimpl(1024)) != 0) {
                        return node;
                    }
                    node = modifierNode;
                }
            }
        }
        return node;
    }

    /* JADX INFO: renamed from: validateKeyEvent-ZmokQxo, reason: not valid java name */
    private final boolean m4353validateKeyEventZmokQxo(KeyEvent keyEvent) {
        long keyCode = KeyEvent_androidKt.m5853getKeyZmokQxo(keyEvent);
        int iM5854getTypeZmokQxo = KeyEvent_androidKt.m5854getTypeZmokQxo(keyEvent);
        if (KeyEventType.m5846equalsimpl0(iM5854getTypeZmokQxo, KeyEventType.INSTANCE.m5850getKeyDownCS__XNY())) {
            MutableLongSet it = this.keysCurrentlyDown;
            if (it == null) {
                it = new MutableLongSet(3);
                this.keysCurrentlyDown = it;
            }
            it.plusAssign(keyCode);
        } else if (KeyEventType.m5846equalsimpl0(iM5854getTypeZmokQxo, KeyEventType.INSTANCE.m5851getKeyUpCS__XNY())) {
            MutableLongSet mutableLongSet = this.keysCurrentlyDown;
            if (!(mutableLongSet != null && mutableLongSet.contains(keyCode))) {
                return false;
            }
            MutableLongSet mutableLongSet2 = this.keysCurrentlyDown;
            if (mutableLongSet2 != null) {
                mutableLongSet2.remove(keyCode);
            }
        }
        return true;
    }
}
