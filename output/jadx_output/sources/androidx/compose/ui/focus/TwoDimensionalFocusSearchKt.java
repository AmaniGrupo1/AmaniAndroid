package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TwoDimensionalFocusSearch.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a;\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00040\u000bH\u0000¢\u0006\u0004\b\f\u0010\r\u001a/\u0010\u000e\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00040\u000bH\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a7\u0010\u0011\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00040\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a7\u0010\u0015\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00040\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0014\u001a\u001a\u0010\u0017\u001a\u00020\u0018*\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u001bH\u0002\u001a+\u0010\u001c\u001a\u0004\u0018\u00010\u0005*\b\u0012\u0004\u0012\u00020\u00050\u001b2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u001f\u001a/\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¢\u0006\u0004\b$\u0010%\u001a/\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¢\u0006\u0004\b*\u0010%\u001a\f\u0010+\u001a\u00020\t*\u00020\tH\u0002\u001a\f\u0010,\u001a\u00020\t*\u00020\tH\u0002\u001a\f\u0010-\u001a\u00020\u0005*\u00020\u0005H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"InvalidFocusDirection", "", "NoActiveChild", "twoDimensionalFocusSearch", "", "Landroidx/compose/ui/focus/FocusTargetNode;", "direction", "Landroidx/compose/ui/focus/FocusDirection;", "previouslyFocusedRect", "Landroidx/compose/ui/geometry/Rect;", "onFound", "Lkotlin/Function1;", "twoDimensionalFocusSearch-sMXa3k8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;", "findChildCorrespondingToFocusEnter", "findChildCorrespondingToFocusEnter--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "generateAndSearchChildren", "focusedItem", "generateAndSearchChildren-4C6V_qg", "(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;ILkotlin/jvm/functions/Function1;)Z", "searchChildren", "searchChildren-4C6V_qg", "collectAccessibleChildren", "", "Landroidx/compose/ui/node/DelegatableNode;", "accessibleChildren", "Landroidx/compose/runtime/collection/MutableVector;", "findBestCandidate", "focusRect", "findBestCandidate-4WY_MpI", "(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;", "isBetterCandidate", "proposedCandidate", "currentCandidate", "focusedRect", "isBetterCandidate-I7lrPNg", "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z", "beamBeats", "source", "rect1", "rect2", "beamBeats-I7lrPNg", "topLeft", "bottomRight", "activeNode", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TwoDimensionalFocusSearchKt {
    private static final String InvalidFocusDirection = "This function should only be used for 2-D focus search";
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    /* JADX INFO: compiled from: TwoDimensionalFocusSearch.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: twoDimensionalFocusSearch-sMXa3k8, reason: not valid java name */
    public static final Boolean m4402twoDimensionalFocusSearchsMXa3k8(FocusTargetNode $this$twoDimensionalFocusSearch_u2dsMXa3k8, int i, Rect previouslyFocusedRect, Function1<? super FocusTargetNode, Boolean> function1) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$twoDimensionalFocusSearch_u2dsMXa3k8.getFocusState().ordinal()]) {
            case 1:
                FocusTargetNode focusedChild = FocusTraversalKt.getActiveChild($this$twoDimensionalFocusSearch_u2dsMXa3k8);
                if (focusedChild == null) {
                    throw new IllegalStateException(NoActiveChild.toString());
                }
                switch (WhenMappings.$EnumSwitchMapping$0[focusedChild.getFocusState().ordinal()]) {
                    case 1:
                        Boolean found = m4402twoDimensionalFocusSearchsMXa3k8(focusedChild, i, previouslyFocusedRect, function1);
                        if (Intrinsics.areEqual((Object) found, (Object) false)) {
                            return Boolean.valueOf(m4399generateAndSearchChildren4C6V_qg($this$twoDimensionalFocusSearch_u2dsMXa3k8, previouslyFocusedRect == null ? FocusTraversalKt.focusRect(activeNode(focusedChild)) : previouslyFocusedRect, i, function1));
                        }
                        return found;
                    case 2:
                    case 3:
                        return Boolean.valueOf(m4399generateAndSearchChildren4C6V_qg($this$twoDimensionalFocusSearch_u2dsMXa3k8, previouslyFocusedRect == null ? FocusTraversalKt.focusRect(focusedChild) : previouslyFocusedRect, i, function1));
                    case 4:
                        throw new IllegalStateException(NoActiveChild.toString());
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            case 2:
            case 3:
                return Boolean.valueOf(m4398findChildCorrespondingToFocusEnterOMvw8($this$twoDimensionalFocusSearch_u2dsMXa3k8, i, function1));
            case 4:
                if ($this$twoDimensionalFocusSearch_u2dsMXa3k8.fetchFocusProperties$ui().getCanFocus()) {
                    return function1.invoke($this$twoDimensionalFocusSearch_u2dsMXa3k8);
                }
                if (previouslyFocusedRect == null) {
                    return Boolean.valueOf(m4398findChildCorrespondingToFocusEnterOMvw8($this$twoDimensionalFocusSearch_u2dsMXa3k8, i, function1));
                }
                return Boolean.valueOf(m4401searchChildren4C6V_qg($this$twoDimensionalFocusSearch_u2dsMXa3k8, previouslyFocusedRect, i, function1));
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: renamed from: findChildCorrespondingToFocusEnter--OM-vw8, reason: not valid java name */
    public static final boolean m4398findChildCorrespondingToFocusEnterOMvw8(FocusTargetNode $this$findChildCorrespondingToFocusEnter_u2d_u2dOM_u2dvw8, int i, Function1<? super FocusTargetNode, Boolean> function1) {
        Rect initialFocusRect;
        MutableVector focusableChildren = new MutableVector(new FocusTargetNode[16], 0);
        collectAccessibleChildren($this$findChildCorrespondingToFocusEnter_u2d_u2dOM_u2dvw8, focusableChildren);
        if (focusableChildren.getSize() <= 1) {
            FocusTargetNode it = (FocusTargetNode) (focusableChildren.getSize() == 0 ? null : focusableChildren.content[0]);
            if (it != null) {
                return function1.invoke(it).booleanValue();
            }
            return false;
        }
        int requestedDirection = FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4332getEnterdhqQ8s()) ? FocusDirection.INSTANCE.m4337getRightdhqQ8s() : i;
        if (FocusDirection.m4327equalsimpl0(requestedDirection, FocusDirection.INSTANCE.m4337getRightdhqQ8s()) || FocusDirection.m4327equalsimpl0(requestedDirection, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            initialFocusRect = topLeft(FocusTraversalKt.focusRect($this$findChildCorrespondingToFocusEnter_u2d_u2dOM_u2dvw8));
        } else if (FocusDirection.m4327equalsimpl0(requestedDirection, FocusDirection.INSTANCE.m4334getLeftdhqQ8s()) || FocusDirection.m4327equalsimpl0(requestedDirection, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            initialFocusRect = bottomRight(FocusTraversalKt.focusRect($this$findChildCorrespondingToFocusEnter_u2d_u2dOM_u2dvw8));
        } else {
            throw new IllegalStateException(InvalidFocusDirection.toString());
        }
        FocusTargetNode nextCandidate = m4397findBestCandidate4WY_MpI(focusableChildren, initialFocusRect, requestedDirection);
        if (nextCandidate != null) {
            return function1.invoke(nextCandidate).booleanValue();
        }
        return false;
    }

    /* JADX INFO: renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    private static final boolean m4399generateAndSearchChildren4C6V_qg(final FocusTargetNode $this$generateAndSearchChildren_u2d4C6V_qg, final Rect focusedItem, final int i, final Function1<? super FocusTargetNode, Boolean> function1) {
        if (m4401searchChildren4C6V_qg($this$generateAndSearchChildren_u2d4C6V_qg, focusedItem, i, function1)) {
            return true;
        }
        final FocusTargetNode activeNodeBeforeSearch = DelegatableNodeKt.requireOwner($this$generateAndSearchChildren_u2d4C6V_qg).getFocusOwner().getActiveFocusTargetNode();
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m4322searchBeyondBoundsOMvw8($this$generateAndSearchChildren_u2d4C6V_qg, i, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(BeyondBoundsLayout.BeyondBoundsScope $this$searchBeyondBounds) {
                boolean z = true;
                if (activeNodeBeforeSearch == DelegatableNodeKt.requireOwner($this$generateAndSearchChildren_u2d4C6V_qg).getFocusOwner().getActiveFocusTargetNode()) {
                    Boolean boolValueOf = Boolean.valueOf(TwoDimensionalFocusSearchKt.m4401searchChildren4C6V_qg($this$generateAndSearchChildren_u2d4C6V_qg, focusedItem, i, function1));
                    boolean found = boolValueOf.booleanValue();
                    if (!found && $this$searchBeyondBounds.getHasMoreContent()) {
                        z = false;
                    }
                    if (z) {
                        return boolValueOf;
                    }
                    return null;
                }
                return true;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m4401searchChildren4C6V_qg(FocusTargetNode $this$searchChildren_u2d4C6V_qg, Rect focusedItem, int i, Function1<? super FocusTargetNode, Boolean> function1) {
        FocusTargetNode nextItem;
        MutableVector $this$searchChildren_4C6V_qg_u24lambda_u240;
        MutableVector $this$searchChildren_4C6V_qg_u24lambda_u2402;
        int count$iv$iv;
        Modifier.Node node;
        MutableVector mutableVector;
        MutableVector children = new MutableVector(new FocusTargetNode[16], 0);
        MutableVector $this$searchChildren_4C6V_qg_u24lambda_u2403 = children;
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$searchChildren_u2d4C6V_qg;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitChildren_u2dY_u2dYKmho_u24default$iv.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            MutableVector this_$iv$iv$iv = branches$iv$iv;
            Modifier.Node child$iv$iv2 = child$iv$iv;
            if (!(this_$iv$iv$iv.getSize() != 0)) {
                break;
            }
            MutableVector this_$iv$iv$iv2 = branches$iv$iv;
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(this_$iv$iv$iv2.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        child$iv$iv = child$iv$iv2;
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        MutableVector mutableVector2 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            MutableVector branches$iv$iv2 = branches$iv$iv;
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) nodePop;
                                if (it.getIsAttached()) {
                                    $this$searchChildren_4C6V_qg_u24lambda_u2403.add(it);
                                }
                                $this$searchChildren_4C6V_qg_u24lambda_u240 = $this$searchChildren_4C6V_qg_u24lambda_u2403;
                            } else {
                                Modifier.Node this_$iv$iv$iv3 = nodePop;
                                if (((this_$iv$iv$iv3.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$searchChildren_4C6V_qg_u24lambda_u240 = $this$searchChildren_4C6V_qg_u24lambda_u2403;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv4 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv4.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            $this$searchChildren_4C6V_qg_u24lambda_u2402 = $this$searchChildren_4C6V_qg_u24lambda_u2403;
                                            if (count$iv$iv2 == 1) {
                                                nodePop = next$iv$iv;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    node = nodePop;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
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
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        } else {
                                            $this$searchChildren_4C6V_qg_u24lambda_u2402 = $this$searchChildren_4C6V_qg_u24lambda_u2403;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$searchChildren_4C6V_qg_u24lambda_u2403 = $this$searchChildren_4C6V_qg_u24lambda_u2402;
                                    }
                                    $this$searchChildren_4C6V_qg_u24lambda_u240 = $this$searchChildren_4C6V_qg_u24lambda_u2403;
                                    Modifier.Node node2 = nodePop;
                                    if (count$iv$iv2 == 1) {
                                        branches$iv$iv = branches$iv$iv2;
                                        $this$searchChildren_4C6V_qg_u24lambda_u2403 = $this$searchChildren_4C6V_qg_u24lambda_u240;
                                        nodePop = node2;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            branches$iv$iv = branches$iv$iv2;
                            $this$searchChildren_4C6V_qg_u24lambda_u2403 = $this$searchChildren_4C6V_qg_u24lambda_u240;
                        }
                        child$iv$iv = child$iv$iv2;
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                    }
                }
            } else {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
                child$iv$iv = child$iv$iv2;
            }
        }
        while (true) {
            if (!(children.getSize() != 0) || (nextItem = m4397findBestCandidate4WY_MpI(children, focusedItem, i)) == null) {
                return false;
            }
            if (nextItem.fetchFocusProperties$ui().getCanFocus()) {
                return function1.invoke(nextItem).booleanValue();
            }
            if (m4399generateAndSearchChildren4C6V_qg(nextItem, focusedItem, i, function1)) {
                return true;
            }
            children.remove(nextItem);
        }
    }

    private static final void collectAccessibleChildren(DelegatableNode $this$collectAccessibleChildren, MutableVector<FocusTargetNode> mutableVector) {
        int i;
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
        boolean z;
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
        int count$iv$iv;
        MutableVector mutableVector2;
        MutableVector<FocusTargetNode> mutableVector3 = mutableVector;
        int count$iv$iv2 = NodeKind.m6460constructorimpl(1024);
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$collectAccessibleChildren;
        boolean value$iv$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        boolean z2 = false;
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitChildren_u2dY_u2dYKmho_u24default$iv3.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            if (!(branches$iv$iv.getSize() != 0 ? true : z2)) {
                return;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & count$iv$iv2) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        mutableVector3 = mutableVector;
                        z2 = false;
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & count$iv$iv2) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i2 = count$iv$iv2;
                        MutableVector mutableVector4 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) nodePop;
                                if (!it.getIsAttached() || DelegatableNodeKt.requireLayoutNode(it).getIsDeactivated()) {
                                    i = count$iv$iv2;
                                } else if (it.fetchFocusProperties$ui().getCanFocus()) {
                                    mutableVector3.add(it);
                                    i = count$iv$iv2;
                                } else {
                                    i = count$iv$iv2;
                                    collectAccessibleChildren(it, mutableVector3);
                                }
                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                z = true;
                            } else {
                                i = count$iv$iv2;
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                    z = true;
                                } else {
                                    int count$iv$iv3 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv3++;
                                            if (count$iv$iv3 == 1) {
                                                nodePop = next$iv$iv;
                                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                            } else {
                                                if (mutableVector4 == null) {
                                                    count$iv$iv = count$iv$iv3;
                                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv3;
                                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                                    mutableVector2 = mutableVector4;
                                                }
                                                Modifier.Node theNode$iv$iv = nodePop;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(theNode$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(next$iv$iv);
                                                }
                                                mutableVector4 = mutableVector2;
                                                count$iv$iv3 = count$iv$iv;
                                            }
                                        } else {
                                            $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                    }
                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv3;
                                    z = true;
                                    if (count$iv$iv3 == 1) {
                                        count$iv$iv2 = i;
                                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                                        mutableVector3 = mutableVector;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector4);
                            count$iv$iv2 = i;
                            $this$visitChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                            mutableVector3 = mutableVector;
                        }
                        mutableVector3 = mutableVector;
                        z2 = false;
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                        mutableVector3 = mutableVector;
                    }
                }
            } else {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            }
        }
    }

    /* JADX INFO: renamed from: findBestCandidate-4WY_MpI, reason: not valid java name */
    private static final FocusTargetNode m4397findBestCandidate4WY_MpI(MutableVector<FocusTargetNode> mutableVector, Rect focusRect, int i) {
        Rect rectTranslate;
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            rectTranslate = focusRect.translate((focusRect.getRight() - focusRect.getLeft()) + 1, 0.0f);
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            rectTranslate = focusRect.translate(-((focusRect.getRight() - focusRect.getLeft()) + 1), 0.0f);
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            rectTranslate = focusRect.translate(0.0f, (focusRect.getBottom() - focusRect.getTop()) + 1);
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            rectTranslate = focusRect.translate(0.0f, -((focusRect.getBottom() - focusRect.getTop()) + 1));
        } else {
            throw new IllegalStateException(InvalidFocusDirection.toString());
        }
        FocusTargetNode focusTargetNode = null;
        Object[] content$iv = mutableVector.content;
        int size$iv = mutableVector.getSize();
        for (int i$iv = 0; i$iv < size$iv; i$iv++) {
            FocusTargetNode candidateNode = (FocusTargetNode) content$iv[i$iv];
            if (FocusTraversalKt.isEligibleForFocusSearch(candidateNode)) {
                Rect candidateRect = FocusTraversalKt.focusRect(candidateNode);
                if (m4400isBetterCandidateI7lrPNg(candidateRect, rectTranslate, focusRect, i)) {
                    rectTranslate = candidateRect;
                    focusTargetNode = candidateNode;
                }
            }
        }
        return focusTargetNode;
    }

    private static final boolean isBetterCandidate_I7lrPNg$isCandidate(Rect $this$isBetterCandidate_I7lrPNg_u24isCandidate, int i, Rect $focusedRect) {
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            return ($focusedRect.getRight() > $this$isBetterCandidate_I7lrPNg_u24isCandidate.getRight() || $focusedRect.getLeft() >= $this$isBetterCandidate_I7lrPNg_u24isCandidate.getRight()) && $focusedRect.getLeft() > $this$isBetterCandidate_I7lrPNg_u24isCandidate.getLeft();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            return ($focusedRect.getLeft() < $this$isBetterCandidate_I7lrPNg_u24isCandidate.getLeft() || $focusedRect.getRight() <= $this$isBetterCandidate_I7lrPNg_u24isCandidate.getLeft()) && $focusedRect.getRight() < $this$isBetterCandidate_I7lrPNg_u24isCandidate.getRight();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            return ($focusedRect.getBottom() > $this$isBetterCandidate_I7lrPNg_u24isCandidate.getBottom() || $focusedRect.getTop() >= $this$isBetterCandidate_I7lrPNg_u24isCandidate.getBottom()) && $focusedRect.getTop() > $this$isBetterCandidate_I7lrPNg_u24isCandidate.getTop();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            return ($focusedRect.getTop() < $this$isBetterCandidate_I7lrPNg_u24isCandidate.getTop() || $focusedRect.getBottom() <= $this$isBetterCandidate_I7lrPNg_u24isCandidate.getTop()) && $focusedRect.getBottom() < $this$isBetterCandidate_I7lrPNg_u24isCandidate.getBottom();
        }
        throw new IllegalStateException(InvalidFocusDirection.toString());
    }

    private static final float isBetterCandidate_I7lrPNg$majorAxisDistance(Rect $this$isBetterCandidate_I7lrPNg_u24majorAxisDistance, int i, Rect $focusedRect) {
        float majorAxisDistance;
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            majorAxisDistance = $focusedRect.getLeft() - $this$isBetterCandidate_I7lrPNg_u24majorAxisDistance.getRight();
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            majorAxisDistance = $this$isBetterCandidate_I7lrPNg_u24majorAxisDistance.getLeft() - $focusedRect.getRight();
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            majorAxisDistance = $focusedRect.getTop() - $this$isBetterCandidate_I7lrPNg_u24majorAxisDistance.getBottom();
        } else {
            if (!FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            majorAxisDistance = $this$isBetterCandidate_I7lrPNg_u24majorAxisDistance.getTop() - $focusedRect.getBottom();
        }
        float $this$fastCoerceAtLeast$iv = majorAxisDistance;
        if ($this$fastCoerceAtLeast$iv < 0.0f) {
            return 0.0f;
        }
        return $this$fastCoerceAtLeast$iv;
    }

    private static final float isBetterCandidate_I7lrPNg$minorAxisDistance(Rect $this$isBetterCandidate_I7lrPNg_u24minorAxisDistance, int i, Rect $focusedRect) {
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            float f = 2;
            return ($focusedRect.getTop() + (($focusedRect.getBottom() - $focusedRect.getTop()) / f)) - ($this$isBetterCandidate_I7lrPNg_u24minorAxisDistance.getTop() + (($this$isBetterCandidate_I7lrPNg_u24minorAxisDistance.getBottom() - $this$isBetterCandidate_I7lrPNg_u24minorAxisDistance.getTop()) / f));
        }
        if (!FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s()) && !FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            throw new IllegalStateException(InvalidFocusDirection.toString());
        }
        float f2 = 2;
        return ($focusedRect.getLeft() + (($focusedRect.getRight() - $focusedRect.getLeft()) / f2)) - ($this$isBetterCandidate_I7lrPNg_u24minorAxisDistance.getLeft() + (($this$isBetterCandidate_I7lrPNg_u24minorAxisDistance.getRight() - $this$isBetterCandidate_I7lrPNg_u24minorAxisDistance.getLeft()) / f2));
    }

    private static final long isBetterCandidate_I7lrPNg$weightedDistance(int i, Rect $focusedRect, Rect candidate) {
        long majorAxisDistance = (long) isBetterCandidate_I7lrPNg$majorAxisDistance(candidate, i, $focusedRect);
        long minorAxisDistance = (long) isBetterCandidate_I7lrPNg$minorAxisDistance(candidate, i, $focusedRect);
        return (((long) 13) * majorAxisDistance * majorAxisDistance) + (minorAxisDistance * minorAxisDistance);
    }

    /* JADX INFO: renamed from: isBetterCandidate-I7lrPNg, reason: not valid java name */
    public static final boolean m4400isBetterCandidateI7lrPNg(Rect proposedCandidate, Rect currentCandidate, Rect focusedRect, int i) {
        if (!isBetterCandidate_I7lrPNg$isCandidate(proposedCandidate, i, focusedRect)) {
            return false;
        }
        if (isBetterCandidate_I7lrPNg$isCandidate(currentCandidate, i, focusedRect) && !m4396beamBeatsI7lrPNg(focusedRect, proposedCandidate, currentCandidate, i)) {
            return !m4396beamBeatsI7lrPNg(focusedRect, currentCandidate, proposedCandidate, i) && isBetterCandidate_I7lrPNg$weightedDistance(i, focusedRect, proposedCandidate) < isBetterCandidate_I7lrPNg$weightedDistance(i, focusedRect, currentCandidate);
        }
        return true;
    }

    private static final boolean beamBeats_I7lrPNg$inSourceBeam(Rect $this$beamBeats_I7lrPNg_u24inSourceBeam, int i, Rect $source) {
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            return $this$beamBeats_I7lrPNg_u24inSourceBeam.getBottom() > $source.getTop() && $this$beamBeats_I7lrPNg_u24inSourceBeam.getTop() < $source.getBottom();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            return $this$beamBeats_I7lrPNg_u24inSourceBeam.getRight() > $source.getLeft() && $this$beamBeats_I7lrPNg_u24inSourceBeam.getLeft() < $source.getRight();
        }
        throw new IllegalStateException(InvalidFocusDirection.toString());
    }

    private static final boolean beamBeats_I7lrPNg$isInDirectionOfSearch(Rect $this$beamBeats_I7lrPNg_u24isInDirectionOfSearch, int i, Rect $source) {
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            return $source.getLeft() >= $this$beamBeats_I7lrPNg_u24isInDirectionOfSearch.getRight();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            return $source.getRight() <= $this$beamBeats_I7lrPNg_u24isInDirectionOfSearch.getLeft();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            return $source.getTop() >= $this$beamBeats_I7lrPNg_u24isInDirectionOfSearch.getBottom();
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
            return $source.getBottom() <= $this$beamBeats_I7lrPNg_u24isInDirectionOfSearch.getTop();
        }
        throw new IllegalStateException(InvalidFocusDirection.toString());
    }

    private static final float beamBeats_I7lrPNg$majorAxisDistance(Rect $this$beamBeats_I7lrPNg_u24majorAxisDistance, int i, Rect $source) {
        float majorAxisDistance;
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            majorAxisDistance = $source.getLeft() - $this$beamBeats_I7lrPNg_u24majorAxisDistance.getRight();
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            majorAxisDistance = $this$beamBeats_I7lrPNg_u24majorAxisDistance.getLeft() - $source.getRight();
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            majorAxisDistance = $source.getTop() - $this$beamBeats_I7lrPNg_u24majorAxisDistance.getBottom();
        } else {
            if (!FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            majorAxisDistance = $this$beamBeats_I7lrPNg_u24majorAxisDistance.getTop() - $source.getBottom();
        }
        float $this$fastCoerceAtLeast$iv = majorAxisDistance;
        if ($this$fastCoerceAtLeast$iv < 0.0f) {
            return 0.0f;
        }
        return $this$fastCoerceAtLeast$iv;
    }

    private static final float beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Rect $this$beamBeats_I7lrPNg_u24majorAxisDistanceToFarEdge, int i, Rect $source) {
        float majorAxisDistance;
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s())) {
            majorAxisDistance = $source.getLeft() - $this$beamBeats_I7lrPNg_u24majorAxisDistanceToFarEdge.getLeft();
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            majorAxisDistance = $this$beamBeats_I7lrPNg_u24majorAxisDistanceToFarEdge.getRight() - $source.getRight();
        } else if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4338getUpdhqQ8s())) {
            majorAxisDistance = $source.getTop() - $this$beamBeats_I7lrPNg_u24majorAxisDistanceToFarEdge.getTop();
        } else {
            if (!FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4331getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            majorAxisDistance = $this$beamBeats_I7lrPNg_u24majorAxisDistanceToFarEdge.getBottom() - $source.getBottom();
        }
        float $this$fastCoerceAtLeast$iv = majorAxisDistance;
        if ($this$fastCoerceAtLeast$iv < 1.0f) {
            return 1.0f;
        }
        return $this$fastCoerceAtLeast$iv;
    }

    /* JADX INFO: renamed from: beamBeats-I7lrPNg, reason: not valid java name */
    private static final boolean m4396beamBeatsI7lrPNg(Rect source, Rect rect1, Rect rect2, int i) {
        if (beamBeats_I7lrPNg$inSourceBeam(rect2, i, source) || !beamBeats_I7lrPNg$inSourceBeam(rect1, i, source)) {
            return false;
        }
        if (!beamBeats_I7lrPNg$isInDirectionOfSearch(rect2, i, source)) {
            return true;
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4334getLeftdhqQ8s()) || FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4337getRightdhqQ8s())) {
            return true;
        }
        return beamBeats_I7lrPNg$majorAxisDistance(rect1, i, source) < beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(rect2, i, source);
    }

    private static final Rect topLeft(Rect $this$topLeft) {
        return new Rect($this$topLeft.getLeft(), $this$topLeft.getTop(), $this$topLeft.getLeft(), $this$topLeft.getTop());
    }

    private static final Rect bottomRight(Rect $this$bottomRight) {
        return new Rect($this$bottomRight.getRight(), $this$bottomRight.getBottom(), $this$bottomRight.getRight(), $this$bottomRight.getBottom());
    }

    private static final FocusTargetNode activeNode(FocusTargetNode $this$activeNode) {
        if (!($this$activeNode.getFocusState() == FocusStateImpl.ActiveParent)) {
            throw new IllegalStateException("Searching for active node in inactive hierarchy".toString());
        }
        FocusTargetNode focusTargetNodeFindActiveFocusNode = FocusTraversalKt.findActiveFocusNode($this$activeNode);
        if (focusTargetNodeFindActiveFocusNode != null) {
            return focusTargetNodeFindActiveFocusNode;
        }
        throw new IllegalStateException(NoActiveChild.toString());
    }
}
