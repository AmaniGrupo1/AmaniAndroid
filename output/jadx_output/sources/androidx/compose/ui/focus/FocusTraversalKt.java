package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FocusTraversal.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aC\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u000eH\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\f\u0010\u0011\u001a\u00020\f*\u00020\u0002H\u0000\u001a\u000e\u0010\u0017\u001a\u0004\u0018\u00010\u0002*\u00020\u0002H\u0000\u001a\u000e\u0010\u0018\u001a\u0004\u0018\u00010\u0002*\u00020\u0002H\u0002\"\u0018\u0010\u0012\u001a\u00020\n*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\"\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u0002*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"customFocusSearch", "Landroidx/compose/ui/focus/FocusRequester;", "Landroidx/compose/ui/focus/FocusTargetNode;", "focusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "customFocusSearch--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;", "focusSearch", "", "previouslyFocusedRect", "Landroidx/compose/ui/geometry/Rect;", "onFound", "Lkotlin/Function1;", "focusSearch-0X8WOeE", "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;", "focusRect", "isEligibleForFocusSearch", "(Landroidx/compose/ui/focus/FocusTargetNode;)Z", "activeChild", "getActiveChild", "(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;", "findActiveFocusNode", "findNonDeactivatedParent", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FocusTraversalKt {

    /* JADX INFO: compiled from: FocusTraversal.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: customFocusSearch--OM-vw8, reason: not valid java name */
    public static final FocusRequester m4376customFocusSearchOMvw8(FocusTargetNode $this$customFocusSearch_u2d_u2dOM_u2dvw8, int i, LayoutDirection layoutDirection) {
        FocusRequester redirect$ui;
        FocusRequester end;
        FocusRequester start;
        FocusProperties focusProperties = $this$customFocusSearch_u2d_u2dOM_u2dvw8.fetchFocusProperties$ui();
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4335getNextdhqQ8s())) {
            return focusProperties.getNext();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4336getPreviousdhqQ8s())) {
            return focusProperties.getPrevious();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            return focusProperties.getUp();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            return focusProperties.getDown();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            switch (WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()]) {
                case 1:
                    start = focusProperties.getStart();
                    break;
                case 2:
                    start = focusProperties.getEnd();
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            FocusRequester it = start;
            if (it == FocusRequester.INSTANCE.getDefault()) {
                start = null;
            }
            if (start != null) {
                return start;
            }
            return focusProperties.getLeft();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            switch (WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()]) {
                case 1:
                    end = focusProperties.getEnd();
                    break;
                case 2:
                    end = focusProperties.getStart();
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            FocusRequester it2 = end;
            if (it2 == FocusRequester.INSTANCE.getDefault()) {
                end = null;
            }
            if (end != null) {
                return end;
            }
            return focusProperties.getRight();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4332getEnterdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4333getExitdhqQ8s())) {
            CancelIndicatingFocusBoundaryScope scope = new CancelIndicatingFocusBoundaryScope(i, null);
            FocusOwner focusOwner = DelegatableNodeKt.requireOwner($this$customFocusSearch_u2d_u2dOM_u2dvw8).getFocusOwner();
            FocusTargetNode activeNodeBefore = focusOwner.getActiveFocusTargetNode();
            if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4332getEnterdhqQ8s())) {
                focusProperties.getOnEnter().invoke(scope);
            } else {
                focusProperties.getOnExit().invoke(scope);
            }
            if (scope.getIsCanceled()) {
                redirect$ui = FocusRequester.INSTANCE.getCancel();
            } else if (activeNodeBefore != focusOwner.getActiveFocusTargetNode()) {
                redirect$ui = FocusRequester.INSTANCE.getRedirect$ui();
            } else {
                redirect$ui = FocusRequester.INSTANCE.getDefault();
            }
            return redirect$ui;
        }
        throw new IllegalStateException("invalid FocusDirection".toString());
    }

    /* JADX INFO: renamed from: focusSearch-0X8WOeE, reason: not valid java name */
    public static final Boolean m4377focusSearch0X8WOeE(FocusTargetNode $this$focusSearch_u2d0X8WOeE, int i, LayoutDirection layoutDirection, Rect previouslyFocusedRect, Function1<? super FocusTargetNode, Boolean> function1) {
        int direction;
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4335getNextdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4336getPreviousdhqQ8s())) {
            return Boolean.valueOf(OneDimensionalFocusSearchKt.m4391oneDimensionalFocusSearchOMvw8($this$focusSearch_u2d0X8WOeE, i, function1));
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            return TwoDimensionalFocusSearchKt.m4402twoDimensionalFocusSearchsMXa3k8($this$focusSearch_u2d0X8WOeE, i, previouslyFocusedRect, function1);
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4332getEnterdhqQ8s())) {
            switch (WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()]) {
                case 1:
                    direction = FocusDirection.INSTANCE.m4337getRightdhqQ8s();
                    break;
                case 2:
                    direction = FocusDirection.INSTANCE.m4334getLeftdhqQ8s();
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            FocusTargetNode focusTargetNodeFindActiveFocusNode = findActiveFocusNode($this$focusSearch_u2d0X8WOeE);
            if (focusTargetNodeFindActiveFocusNode != null) {
                return TwoDimensionalFocusSearchKt.m4402twoDimensionalFocusSearchsMXa3k8(focusTargetNodeFindActiveFocusNode, direction, previouslyFocusedRect, function1);
            }
            return null;
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4333getExitdhqQ8s())) {
            FocusTargetNode focusTargetNodeFindActiveFocusNode2 = findActiveFocusNode($this$focusSearch_u2d0X8WOeE);
            FocusTargetNode it = focusTargetNodeFindActiveFocusNode2 != null ? findNonDeactivatedParent(focusTargetNodeFindActiveFocusNode2) : null;
            return Boolean.valueOf((it == null || Intrinsics.areEqual(it, $this$focusSearch_u2d0X8WOeE)) ? false : function1.invoke(it).booleanValue());
        }
        throw new IllegalStateException(("Focus search invoked with invalid FocusDirection " + ((Object) FocusDirection.m4329toStringimpl(i))).toString());
    }

    public static final Rect focusRect(FocusTargetNode $this$focusRect) {
        LayoutCoordinates rootCoordinates;
        if (!$this$focusRect.getIsAttached()) {
            return Rect.INSTANCE.getZero();
        }
        NodeCoordinator coordinator$ui = $this$focusRect.getCoordinator();
        if (coordinator$ui != null && (rootCoordinates = LayoutCoordinatesKt.findRootCoordinates(coordinator$ui)) != null) {
            if (!rootCoordinates.isAttached()) {
                rootCoordinates = null;
            }
            if (rootCoordinates != null) {
                return $this$focusRect.fetchFocusRect$ui(rootCoordinates);
            }
        }
        return Rect.INSTANCE.getZero();
    }

    public static final boolean isEligibleForFocusSearch(FocusTargetNode $this$isEligibleForFocusSearch) {
        LayoutNode layoutNode;
        LayoutNode layoutNode2;
        NodeCoordinator coordinator$ui = $this$isEligibleForFocusSearch.getCoordinator();
        if ((coordinator$ui == null || (layoutNode2 = coordinator$ui.getLayoutNode()) == null || !layoutNode2.isPlaced()) ? false : true) {
            NodeCoordinator coordinator$ui2 = $this$isEligibleForFocusSearch.getCoordinator();
            if ((coordinator$ui2 == null || (layoutNode = coordinator$ui2.getLayoutNode()) == null || !layoutNode.isAttached()) ? false : true) {
                return true;
            }
        }
        return false;
    }

    public static final FocusTargetNode getActiveChild(FocusTargetNode $this$activeChild) {
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
        int i;
        int i2;
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
        int i3;
        Modifier.Node node;
        MutableVector mutableVector;
        Modifier.Node node2;
        FocusTargetNode focusTargetNode = null;
        if (!$this$activeChild.getNode().getIsAttached()) {
            return null;
        }
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$activeChild;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        boolean z = false;
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitChildren_u2dY_u2dYKmho_u24default$iv3.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            int i4 = 1;
            if (!(branches$iv$iv.getSize() != 0 ? true : z)) {
                return focusTargetNode;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            } else {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        z = false;
                    } else if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i5 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        FocusTargetNode focusTargetNode2 = focusTargetNode;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) nodePop;
                                if (it.getNode().getIsAttached()) {
                                    switch (WhenMappings.$EnumSwitchMapping$1[it.getFocusState().ordinal()]) {
                                        case 1:
                                        case 2:
                                        case 3:
                                            return it;
                                        case 4:
                                            break;
                                        default:
                                            throw new NoWhenBranchMatchedException();
                                    }
                                }
                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                i = iM6460constructorimpl;
                                i2 = i4;
                            } else {
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & i5) != 0 ? i4 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                    i = iM6460constructorimpl;
                                    i2 = i4;
                                } else {
                                    int count$iv$iv = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i5) != 0 ? i4 : 0) != 0) {
                                            count$iv$iv++;
                                            if (count$iv$iv == i4) {
                                                nodePop = next$iv$iv;
                                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                                i3 = iM6460constructorimpl;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                                    node = nodePop;
                                                    i3 = iM6460constructorimpl;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                                    node = nodePop;
                                                    i3 = iM6460constructorimpl;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = node;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    node2 = null;
                                                } else {
                                                    node2 = node;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                                nodePop = node2;
                                            }
                                        } else {
                                            $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                            i3 = iM6460constructorimpl;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                        iM6460constructorimpl = i3;
                                        i4 = 1;
                                    }
                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                    Modifier.Node node3 = nodePop;
                                    i = iM6460constructorimpl;
                                    i2 = 1;
                                    if (count$iv$iv == 1) {
                                        i4 = 1;
                                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                                        nodePop = node3;
                                        iM6460constructorimpl = i;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            i4 = i2;
                            $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                            iM6460constructorimpl = i;
                        }
                        focusTargetNode = focusTargetNode2;
                        z = false;
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                    }
                }
            }
        }
    }

    public static final FocusTargetNode findActiveFocusNode(FocusTargetNode $this$findActiveFocusNode) {
        FocusTargetNode activeNode = DelegatableNodeKt.requireOwner($this$findActiveFocusNode).getFocusOwner().getActiveFocusTargetNode();
        if (activeNode == null || !activeNode.getIsAttached()) {
            return null;
        }
        return activeNode;
    }

    private static final FocusTargetNode findNonDeactivatedParent(FocusTargetNode $this$findNonDeactivatedParent) {
        DelegatableNode $this$visitAncestors_u2dY_u2dYKmho_u24default$iv;
        int i;
        boolean includeSelf$iv;
        int i2;
        Modifier.Node node;
        NodeChain nodes;
        DelegatableNode $this$visitAncestors_u2dY_u2dYKmho_u24default$iv2;
        int i3;
        boolean includeSelf$iv2;
        int i4;
        int i5;
        boolean includeSelf$iv3;
        int i6;
        int i7;
        boolean includeSelf$iv4;
        int i8;
        int count$iv$iv;
        MutableVector mutableVector;
        FocusTargetNode $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3 = $this$findNonDeactivatedParent;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean includeSelf$iv5 = false;
        int i9 = 0;
        boolean value$iv$iv$iv = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3.getNode().getParent();
        LayoutNode layout$iv$iv = DelegatableNodeKt.requireLayoutNode($this$visitAncestors_u2dY_u2dYKmho_u24default$iv3);
        while (layout$iv$iv != null) {
            Modifier.Node head$iv$iv = layout$iv$iv.getNodes().getHead();
            if ((head$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                while (node$iv$iv != null) {
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i10 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            DelegatableNode $this$visitAncestors_u2dY_u2dYKmho_u24default$iv4 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3;
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) nodePop;
                                if (it.fetchFocusProperties$ui().getCanFocus()) {
                                    return it;
                                }
                                i5 = iM6460constructorimpl;
                                includeSelf$iv3 = includeSelf$iv5;
                                i6 = i9;
                            } else {
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & i10) != 0) && (nodePop instanceof DelegatingNode)) {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i10) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            i7 = iM6460constructorimpl;
                                            if (count$iv$iv2 == 1) {
                                                nodePop = next$iv$iv;
                                                includeSelf$iv4 = includeSelf$iv5;
                                                i8 = i9;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    includeSelf$iv4 = includeSelf$iv5;
                                                    i8 = i9;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    includeSelf$iv4 = includeSelf$iv5;
                                                    i8 = i9;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = nodePop;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        } else {
                                            i7 = iM6460constructorimpl;
                                            includeSelf$iv4 = includeSelf$iv5;
                                            i8 = i9;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        iM6460constructorimpl = i7;
                                        includeSelf$iv5 = includeSelf$iv4;
                                        i9 = i8;
                                    }
                                    i5 = iM6460constructorimpl;
                                    includeSelf$iv3 = includeSelf$iv5;
                                    i6 = i9;
                                    if (count$iv$iv2 == 1) {
                                        $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv4;
                                        iM6460constructorimpl = i5;
                                        includeSelf$iv5 = includeSelf$iv3;
                                        i9 = i6;
                                    }
                                } else {
                                    i5 = iM6460constructorimpl;
                                    includeSelf$iv3 = includeSelf$iv5;
                                    i6 = i9;
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv4;
                            iM6460constructorimpl = i5;
                            includeSelf$iv5 = includeSelf$iv3;
                            i9 = i6;
                        }
                        $this$visitAncestors_u2dY_u2dYKmho_u24default$iv2 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3;
                        i3 = iM6460constructorimpl;
                        includeSelf$iv2 = includeSelf$iv5;
                        i4 = i9;
                    } else {
                        $this$visitAncestors_u2dY_u2dYKmho_u24default$iv2 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3;
                        i3 = iM6460constructorimpl;
                        includeSelf$iv2 = includeSelf$iv5;
                        i4 = i9;
                    }
                    node$iv$iv = node$iv$iv.getParent();
                    $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv2;
                    iM6460constructorimpl = i3;
                    includeSelf$iv5 = includeSelf$iv2;
                    i9 = i4;
                }
                $this$visitAncestors_u2dY_u2dYKmho_u24default$iv = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3;
                i = iM6460constructorimpl;
                includeSelf$iv = includeSelf$iv5;
                i2 = i9;
                node = null;
            } else {
                $this$visitAncestors_u2dY_u2dYKmho_u24default$iv = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3;
                i = iM6460constructorimpl;
                includeSelf$iv = includeSelf$iv5;
                i2 = i9;
                node = null;
            }
            layout$iv$iv = layout$iv$iv.getParent$ui();
            node$iv$iv = (layout$iv$iv == null || (nodes = layout$iv$iv.getNodes()) == null) ? node : nodes.getTail();
            $this$visitAncestors_u2dY_u2dYKmho_u24default$iv3 = $this$visitAncestors_u2dY_u2dYKmho_u24default$iv;
            iM6460constructorimpl = i;
            includeSelf$iv5 = includeSelf$iv;
            i9 = i2;
        }
        return null;
    }
}
