package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: OneDimensionalFocusSearch.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a/\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a \u0010\u000f\u001a\u00020\u0007*\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0002\u001a \u0010\u0010\u001a\u00020\u0007*\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0002\u001a7\u0010\u0011\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a7\u0010\u0015\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0002¢\u0006\u0004\b\u0016\u0010\u0014\u001a \u0010\u0017\u001a\u00020\u0007*\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0002\u001a \u0010\u0018\u001a\u00020\u0007*\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\fH\u0002\u001a\f\u0010\u0019\u001a\u00020\u0007*\u00020\bH\u0002\u001aE\u0010\u001a\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u001c*\b\u0012\u0004\u0012\u0002H\u001c0\u001d2\u0006\u0010\u001e\u001a\u0002H\u001c2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u00020\u001b0\fH\u0082\b\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0002\u0010 \u001aE\u0010!\u001a\u00020\u001b\"\u0004\b\u0000\u0010\u001c*\b\u0012\u0004\u0012\u0002H\u001c0\u001d2\u0006\u0010\u001e\u001a\u0002H\u001c2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u00020\u001b0\fH\u0082\b\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0002\u0010 \"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003¨\u0006\""}, d2 = {"InvalidFocusDirection", "", "getInvalidFocusDirection$annotations", "()V", "NoActiveChild", "getNoActiveChild$annotations", "oneDimensionalFocusSearch", "", "Landroidx/compose/ui/focus/FocusTargetNode;", "direction", "Landroidx/compose/ui/focus/FocusDirection;", "onFound", "Lkotlin/Function1;", "oneDimensionalFocusSearch--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "forwardFocusSearch", "backwardFocusSearch", "generateAndSearchChildren", "focusedItem", "generateAndSearchChildren-4C6V_qg", "(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "searchChildren", "searchChildren-4C6V_qg", "pickChildForForwardSearch", "pickChildForBackwardSearch", "isRoot", "forEachItemAfter", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/collection/MutableVector;", "item", "action", "(Landroidx/compose/runtime/collection/MutableVector;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "forEachItemBefore", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class OneDimensionalFocusSearchKt {
    private static final String InvalidFocusDirection = "This function should only be used for 1-D focus search";
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    /* JADX INFO: compiled from: OneDimensionalFocusSearch.kt */
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

    private static /* synthetic */ void getInvalidFocusDirection$annotations() {
    }

    private static /* synthetic */ void getNoActiveChild$annotations() {
    }

    /* JADX INFO: renamed from: oneDimensionalFocusSearch--OM-vw8, reason: not valid java name */
    public static final boolean m4391oneDimensionalFocusSearchOMvw8(FocusTargetNode $this$oneDimensionalFocusSearch_u2d_u2dOM_u2dvw8, int i, Function1<? super FocusTargetNode, Boolean> function1) {
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4335getNextdhqQ8s())) {
            return forwardFocusSearch($this$oneDimensionalFocusSearch_u2d_u2dOM_u2dvw8, function1);
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4336getPreviousdhqQ8s())) {
            return backwardFocusSearch($this$oneDimensionalFocusSearch_u2d_u2dOM_u2dvw8, function1);
        }
        throw new IllegalStateException(InvalidFocusDirection.toString());
    }

    private static final boolean forwardFocusSearch(FocusTargetNode $this$forwardFocusSearch, Function1<? super FocusTargetNode, Boolean> function1) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$forwardFocusSearch.getFocusState().ordinal()]) {
            case 1:
                FocusTargetNode focusedChild = FocusTraversalKt.getActiveChild($this$forwardFocusSearch);
                if (focusedChild != null) {
                    return forwardFocusSearch(focusedChild, function1) || m4390generateAndSearchChildren4C6V_qg($this$forwardFocusSearch, focusedChild, FocusDirection.INSTANCE.m4335getNextdhqQ8s(), function1);
                }
                throw new IllegalStateException(NoActiveChild.toString());
            case 2:
            case 3:
                return pickChildForForwardSearch($this$forwardFocusSearch, function1);
            case 4:
                if ($this$forwardFocusSearch.fetchFocusProperties$ui().getCanFocus()) {
                    return function1.invoke($this$forwardFocusSearch).booleanValue();
                }
                return pickChildForForwardSearch($this$forwardFocusSearch, function1);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private static final boolean backwardFocusSearch(FocusTargetNode $this$backwardFocusSearch, Function1<? super FocusTargetNode, Boolean> function1) {
        switch (WhenMappings.$EnumSwitchMapping$0[$this$backwardFocusSearch.getFocusState().ordinal()]) {
            case 1:
                FocusTargetNode focusedChild = FocusTraversalKt.getActiveChild($this$backwardFocusSearch);
                if (focusedChild == null) {
                    throw new IllegalStateException(NoActiveChild.toString());
                }
                switch (WhenMappings.$EnumSwitchMapping$0[focusedChild.getFocusState().ordinal()]) {
                    case 1:
                        if (backwardFocusSearch(focusedChild, function1) || m4390generateAndSearchChildren4C6V_qg($this$backwardFocusSearch, focusedChild, FocusDirection.INSTANCE.m4336getPreviousdhqQ8s(), function1)) {
                            return true;
                        }
                        return focusedChild.fetchFocusProperties$ui().getCanFocus() && function1.invoke(focusedChild).booleanValue();
                    case 2:
                    case 3:
                        return m4390generateAndSearchChildren4C6V_qg($this$backwardFocusSearch, focusedChild, FocusDirection.INSTANCE.m4336getPreviousdhqQ8s(), function1);
                    case 4:
                        throw new IllegalStateException(NoActiveChild.toString());
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            case 2:
            case 3:
                return pickChildForBackwardSearch($this$backwardFocusSearch, function1);
            case 4:
                if (pickChildForBackwardSearch($this$backwardFocusSearch, function1)) {
                    return true;
                }
                return $this$backwardFocusSearch.fetchFocusProperties$ui().getCanFocus() ? function1.invoke($this$backwardFocusSearch).booleanValue() : false;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    private static final boolean m4390generateAndSearchChildren4C6V_qg(final FocusTargetNode $this$generateAndSearchChildren_u2d4C6V_qg, final FocusTargetNode focusedItem, final int i, final Function1<? super FocusTargetNode, Boolean> function1) {
        if (m4392searchChildren4C6V_qg($this$generateAndSearchChildren_u2d4C6V_qg, focusedItem, i, function1)) {
            return true;
        }
        final FocusTargetNode activeNodeBeforeSearch = DelegatableNodeKt.requireOwner($this$generateAndSearchChildren_u2d4C6V_qg).getFocusOwner().getActiveFocusTargetNode();
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m4322searchBeyondBoundsOMvw8($this$generateAndSearchChildren_u2d4C6V_qg, i, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(BeyondBoundsLayout.BeyondBoundsScope $this$searchBeyondBounds) {
                boolean z = true;
                if (activeNodeBeforeSearch == DelegatableNodeKt.requireOwner($this$generateAndSearchChildren_u2d4C6V_qg).getFocusOwner().getActiveFocusTargetNode()) {
                    Boolean boolValueOf = Boolean.valueOf(OneDimensionalFocusSearchKt.m4392searchChildren4C6V_qg($this$generateAndSearchChildren_u2d4C6V_qg, focusedItem, i, function1));
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
    public static final boolean m4392searchChildren4C6V_qg(FocusTargetNode $this$searchChildren_u2d4C6V_qg, FocusTargetNode focusedItem, int i, Function1<? super FocusTargetNode, Boolean> function1) {
        MutableVector $this$searchChildren_4C6V_qg_u24lambda_u241;
        MutableVector $this$searchChildren_4C6V_qg_u24lambda_u2412;
        int count$iv$iv;
        Modifier.Node node;
        MutableVector mutableVector;
        int i2 = 0;
        if (!($this$searchChildren_u2d4C6V_qg.getFocusState() == FocusStateImpl.ActiveParent)) {
            throw new IllegalStateException("This function should only be used within a parent that has focus.".toString());
        }
        MutableVector children = new MutableVector(new FocusTargetNode[16], 0);
        MutableVector $this$searchChildren_4C6V_qg_u24lambda_u2413 = children;
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$searchChildren_u2d4C6V_qg;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        int i3 = 1;
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitChildren_u2dY_u2dYKmho_u24default$iv.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            MutableVector this_$iv$iv$iv = branches$iv$iv;
            if ((this_$iv$iv$iv.getSize() != 0 ? i3 : i2) == 0) {
                break;
            }
            MutableVector this_$iv$iv$iv2 = branches$iv$iv;
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(this_$iv$iv$iv2.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        i2 = 0;
                        i3 = 1;
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
                                $this$searchChildren_4C6V_qg_u24lambda_u2413.add(it);
                                $this$searchChildren_4C6V_qg_u24lambda_u241 = $this$searchChildren_4C6V_qg_u24lambda_u2413;
                            } else {
                                Modifier.Node this_$iv$iv$iv3 = nodePop;
                                if (((this_$iv$iv$iv3.getKindSet() & iM6460constructorimpl) != 0 ? i3 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$searchChildren_4C6V_qg_u24lambda_u241 = $this$searchChildren_4C6V_qg_u24lambda_u2413;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv4 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv4.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? i3 : 0) != 0) {
                                            count$iv$iv2++;
                                            $this$searchChildren_4C6V_qg_u24lambda_u2412 = $this$searchChildren_4C6V_qg_u24lambda_u2413;
                                            if (count$iv$iv2 == i3) {
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
                                            $this$searchChildren_4C6V_qg_u24lambda_u2412 = $this$searchChildren_4C6V_qg_u24lambda_u2413;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$searchChildren_4C6V_qg_u24lambda_u2413 = $this$searchChildren_4C6V_qg_u24lambda_u2412;
                                        i3 = 1;
                                    }
                                    $this$searchChildren_4C6V_qg_u24lambda_u241 = $this$searchChildren_4C6V_qg_u24lambda_u2413;
                                    Modifier.Node node2 = nodePop;
                                    if (count$iv$iv2 == 1) {
                                        branches$iv$iv = branches$iv$iv2;
                                        $this$searchChildren_4C6V_qg_u24lambda_u2413 = $this$searchChildren_4C6V_qg_u24lambda_u241;
                                        nodePop = node2;
                                        i3 = 1;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            branches$iv$iv = branches$iv$iv2;
                            $this$searchChildren_4C6V_qg_u24lambda_u2413 = $this$searchChildren_4C6V_qg_u24lambda_u241;
                            i3 = 1;
                        }
                        i2 = 0;
                        i3 = 1;
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                        i3 = 1;
                    }
                }
            } else {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            }
        }
        children.sortWith(FocusableChildrenComparator.INSTANCE);
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4335getNextdhqQ8s())) {
            boolean itemFound$iv = false;
            IntRange intRangeUntil = RangesKt.until(0, children.getSize());
            int index$iv = intRangeUntil.getFirst();
            int last = intRangeUntil.getLast();
            if (index$iv <= last) {
                while (true) {
                    if (itemFound$iv) {
                        int index$iv$iv = index$iv;
                        FocusTargetNode child = (FocusTargetNode) children.content[index$iv$iv];
                        if (FocusTraversalKt.isEligibleForFocusSearch(child) && forwardFocusSearch(child, function1)) {
                            return true;
                        }
                    }
                    int index$iv$iv2 = index$iv;
                    if (Intrinsics.areEqual(children.content[index$iv$iv2], focusedItem)) {
                        itemFound$iv = true;
                    }
                    if (index$iv == last) {
                        break;
                    }
                    index$iv++;
                }
            }
        } else {
            if (!FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4336getPreviousdhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            boolean itemFound$iv2 = false;
            IntRange intRangeUntil2 = RangesKt.until(0, children.getSize());
            int $i$f$getIndices = intRangeUntil2.getFirst();
            int index$iv2 = intRangeUntil2.getLast();
            if ($i$f$getIndices <= index$iv2) {
                while (true) {
                    if (itemFound$iv2) {
                        int index$iv$iv3 = index$iv2;
                        FocusTargetNode child2 = (FocusTargetNode) children.content[index$iv$iv3];
                        if (FocusTraversalKt.isEligibleForFocusSearch(child2) && backwardFocusSearch(child2, function1)) {
                            return true;
                        }
                    }
                    int index$iv$iv4 = index$iv2;
                    if (Intrinsics.areEqual(children.content[index$iv$iv4], focusedItem)) {
                        itemFound$iv2 = true;
                    }
                    if (index$iv2 == $i$f$getIndices) {
                        break;
                    }
                    index$iv2--;
                }
            }
        }
        if (FocusDirection.m4327equalsimpl0(i, FocusDirection.INSTANCE.m4335getNextdhqQ8s()) || !$this$searchChildren_u2d4C6V_qg.fetchFocusProperties$ui().getCanFocus() || isRoot($this$searchChildren_u2d4C6V_qg)) {
            return false;
        }
        return function1.invoke($this$searchChildren_u2d4C6V_qg).booleanValue();
    }

    private static final boolean pickChildForForwardSearch(FocusTargetNode $this$pickChildForForwardSearch, Function1<? super FocusTargetNode, Boolean> function1) {
        MutableVector $this$pickChildForForwardSearch_u24lambda_u240;
        MutableVector mutableVector;
        MutableVector $this$pickChildForForwardSearch_u24lambda_u2402;
        MutableVector mutableVector2;
        int count$iv$iv;
        MutableVector mutableVector3;
        MutableVector mutableVector4 = new MutableVector(new FocusTargetNode[16], 0);
        MutableVector $this$pickChildForForwardSearch_u24lambda_u2403 = mutableVector4;
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$pickChildForForwardSearch;
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
            if (!(branches$iv$iv.getSize() != 0)) {
                break;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            } else {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        MutableVector mutableVector5 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            Modifier.Node child$iv$iv2 = child$iv$iv;
                            if (nodePop instanceof FocusTargetNode) {
                                $this$pickChildForForwardSearch_u24lambda_u2403.add((FocusTargetNode) nodePop);
                                $this$pickChildForForwardSearch_u24lambda_u240 = $this$pickChildForForwardSearch_u24lambda_u2403;
                                mutableVector = mutableVector4;
                            } else {
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$pickChildForForwardSearch_u24lambda_u240 = $this$pickChildForForwardSearch_u24lambda_u2403;
                                    mutableVector = mutableVector4;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            $this$pickChildForForwardSearch_u24lambda_u2402 = $this$pickChildForForwardSearch_u24lambda_u2403;
                                            if (count$iv$iv2 == 1) {
                                                nodePop = next$iv$iv;
                                                mutableVector2 = mutableVector4;
                                            } else {
                                                if (mutableVector5 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector2 = mutableVector4;
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector2 = mutableVector4;
                                                    mutableVector3 = mutableVector5;
                                                }
                                                Modifier.Node theNode$iv$iv = nodePop;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector3 != null) {
                                                        mutableVector3.add(theNode$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(next$iv$iv);
                                                }
                                                mutableVector5 = mutableVector3;
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        } else {
                                            $this$pickChildForForwardSearch_u24lambda_u2402 = $this$pickChildForForwardSearch_u24lambda_u2403;
                                            mutableVector2 = mutableVector4;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$pickChildForForwardSearch_u24lambda_u2403 = $this$pickChildForForwardSearch_u24lambda_u2402;
                                        mutableVector4 = mutableVector2;
                                    }
                                    $this$pickChildForForwardSearch_u24lambda_u240 = $this$pickChildForForwardSearch_u24lambda_u2403;
                                    mutableVector = mutableVector4;
                                    if (count$iv$iv2 == 1) {
                                        child$iv$iv = child$iv$iv2;
                                        $this$pickChildForForwardSearch_u24lambda_u2403 = $this$pickChildForForwardSearch_u24lambda_u240;
                                        mutableVector4 = mutableVector;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector5);
                            child$iv$iv = child$iv$iv2;
                            $this$pickChildForForwardSearch_u24lambda_u2403 = $this$pickChildForForwardSearch_u24lambda_u240;
                            mutableVector4 = mutableVector;
                        }
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                        $this$pickChildForForwardSearch_u24lambda_u2403 = $this$pickChildForForwardSearch_u24lambda_u2403;
                    }
                }
            }
        }
        MutableVector children = mutableVector4;
        children.sortWith(FocusableChildrenComparator.INSTANCE);
        Object[] content$iv = children.content;
        int size$iv = children.getSize();
        for (int i$iv = 0; i$iv < size$iv; i$iv++) {
            FocusTargetNode it = (FocusTargetNode) content$iv[i$iv];
            if (FocusTraversalKt.isEligibleForFocusSearch(it) && forwardFocusSearch(it, function1)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean pickChildForBackwardSearch(FocusTargetNode $this$pickChildForBackwardSearch, Function1<? super FocusTargetNode, Boolean> function1) {
        MutableVector $this$pickChildForBackwardSearch_u24lambda_u240;
        MutableVector mutableVector;
        MutableVector $this$pickChildForBackwardSearch_u24lambda_u2402;
        MutableVector mutableVector2;
        int count$iv$iv;
        MutableVector mutableVector3;
        MutableVector mutableVector4 = new MutableVector(new FocusTargetNode[16], 0);
        MutableVector $this$pickChildForBackwardSearch_u24lambda_u2403 = mutableVector4;
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$pickChildForBackwardSearch;
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
            if (!(branches$iv$iv.getSize() != 0)) {
                break;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            } else {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        MutableVector mutableVector5 = null;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            Modifier.Node child$iv$iv2 = child$iv$iv;
                            if (nodePop instanceof FocusTargetNode) {
                                $this$pickChildForBackwardSearch_u24lambda_u2403.add((FocusTargetNode) nodePop);
                                $this$pickChildForBackwardSearch_u24lambda_u240 = $this$pickChildForBackwardSearch_u24lambda_u2403;
                                mutableVector = mutableVector4;
                            } else {
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    $this$pickChildForBackwardSearch_u24lambda_u240 = $this$pickChildForBackwardSearch_u24lambda_u2403;
                                    mutableVector = mutableVector4;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            $this$pickChildForBackwardSearch_u24lambda_u2402 = $this$pickChildForBackwardSearch_u24lambda_u2403;
                                            if (count$iv$iv2 == 1) {
                                                nodePop = next$iv$iv;
                                                mutableVector2 = mutableVector4;
                                            } else {
                                                if (mutableVector5 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector2 = mutableVector4;
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector2 = mutableVector4;
                                                    mutableVector3 = mutableVector5;
                                                }
                                                Modifier.Node theNode$iv$iv = nodePop;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector3 != null) {
                                                        mutableVector3.add(theNode$iv$iv);
                                                    }
                                                    nodePop = null;
                                                }
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(next$iv$iv);
                                                }
                                                mutableVector5 = mutableVector3;
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        } else {
                                            $this$pickChildForBackwardSearch_u24lambda_u2402 = $this$pickChildForBackwardSearch_u24lambda_u2403;
                                            mutableVector2 = mutableVector4;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        $this$pickChildForBackwardSearch_u24lambda_u2403 = $this$pickChildForBackwardSearch_u24lambda_u2402;
                                        mutableVector4 = mutableVector2;
                                    }
                                    $this$pickChildForBackwardSearch_u24lambda_u240 = $this$pickChildForBackwardSearch_u24lambda_u2403;
                                    mutableVector = mutableVector4;
                                    if (count$iv$iv2 == 1) {
                                        child$iv$iv = child$iv$iv2;
                                        $this$pickChildForBackwardSearch_u24lambda_u2403 = $this$pickChildForBackwardSearch_u24lambda_u240;
                                        mutableVector4 = mutableVector;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector5);
                            child$iv$iv = child$iv$iv2;
                            $this$pickChildForBackwardSearch_u24lambda_u2403 = $this$pickChildForBackwardSearch_u24lambda_u240;
                            mutableVector4 = mutableVector;
                        }
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                    }
                }
            }
        }
        MutableVector children = mutableVector4;
        children.sortWith(FocusableChildrenComparator.INSTANCE);
        int i$iv = children.getSize() - 1;
        Object[] content$iv = children.content;
        if (i$iv >= content$iv.length) {
            return false;
        }
        while (i$iv >= 0) {
            FocusTargetNode it = (FocusTargetNode) content$iv[i$iv];
            if (FocusTraversalKt.isEligibleForFocusSearch(it) && backwardFocusSearch(it, function1)) {
                return true;
            }
            i$iv--;
        }
        return false;
    }

    private static final boolean isRoot(FocusTargetNode $this$isRoot) {
        boolean z;
        boolean z2;
        Modifier.Node nodePop;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv;
        int i;
        int i2;
        NodeChain nodes;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv2;
        int i3;
        int i4;
        boolean z3;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv3;
        int i5;
        int i6;
        MutableVector mutableVector;
        FocusTargetNode $this$nearestAncestor_u2d64DMado$iv4 = $this$isRoot;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        int i7 = 0;
        boolean value$iv$iv$iv$iv = $this$nearestAncestor_u2d64DMado$iv4.getNode().getIsAttached();
        if (!value$iv$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv$iv = $this$nearestAncestor_u2d64DMado$iv4.getNode().getParent();
        LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestor_u2d64DMado$iv4);
        loop0: while (true) {
            boolean z4 = true;
            if (layout$iv$iv$iv == null) {
                z = true;
                z2 = false;
                nodePop = null;
                break;
            }
            Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                while (node$iv$iv$iv != null) {
                    if ((node$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv$iv = node$iv$iv$iv;
                        MutableVector mutableVector2 = null;
                        nodePop = it$iv$iv;
                        while (nodePop != null) {
                            if (nodePop instanceof FocusTargetNode) {
                                z = z4;
                                z2 = false;
                                break loop0;
                            }
                            Modifier.Node this_$iv$iv$iv$iv = nodePop;
                            if (((this_$iv$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? z4 : false) && (nodePop instanceof DelegatingNode)) {
                                int count$iv$iv$iv = 0;
                                DelegatingNode this_$iv$iv$iv$iv2 = (DelegatingNode) nodePop;
                                Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv2.getDelegate();
                                while (node$iv$iv$iv$iv != null) {
                                    Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                    if ((next$iv$iv$iv.getKindSet() & iM6460constructorimpl) != 0 ? z4 : false) {
                                        count$iv$iv$iv++;
                                        if (count$iv$iv$iv == z4) {
                                            nodePop = next$iv$iv$iv;
                                            $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                            i5 = iM6460constructorimpl;
                                            i6 = i7;
                                        } else {
                                            if (mutableVector2 == null) {
                                                $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                                i5 = iM6460constructorimpl;
                                                i6 = i7;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                                i5 = iM6460constructorimpl;
                                                i6 = i7;
                                                mutableVector = mutableVector2;
                                            }
                                            Modifier.Node theNode$iv$iv$iv = nodePop;
                                            if (theNode$iv$iv$iv != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(theNode$iv$iv$iv);
                                                }
                                                nodePop = null;
                                            }
                                            if (mutableVector != null) {
                                                mutableVector.add(next$iv$iv$iv);
                                            }
                                            mutableVector2 = mutableVector;
                                        }
                                    } else {
                                        $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                        i5 = iM6460constructorimpl;
                                        i6 = i7;
                                    }
                                    node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv3;
                                    iM6460constructorimpl = i5;
                                    i7 = i6;
                                    z4 = true;
                                }
                                $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv4;
                                i3 = iM6460constructorimpl;
                                i4 = i7;
                                z3 = true;
                                if (count$iv$iv$iv == 1) {
                                    z4 = true;
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                    iM6460constructorimpl = i3;
                                    i7 = i4;
                                } else {
                                    nodePop = DelegatableNodeKt.pop(mutableVector2);
                                    z4 = z3;
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                    iM6460constructorimpl = i3;
                                    i7 = i4;
                                }
                            } else {
                                $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv4;
                                i3 = iM6460constructorimpl;
                                i4 = i7;
                                z3 = z4;
                                nodePop = DelegatableNodeKt.pop(mutableVector2);
                                z4 = z3;
                                $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                iM6460constructorimpl = i3;
                                i7 = i4;
                            }
                        }
                    }
                    node$iv$iv$iv = node$iv$iv$iv.getParent();
                    z4 = z4;
                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv4;
                    iM6460constructorimpl = iM6460constructorimpl;
                    i7 = i7;
                }
                $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv4;
                i = iM6460constructorimpl;
                i2 = i7;
            } else {
                $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv4;
                i = iM6460constructorimpl;
                i2 = i7;
            }
            layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
            node$iv$iv$iv = (layout$iv$iv$iv == null || (nodes = layout$iv$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv;
            iM6460constructorimpl = i;
            i7 = i2;
        }
        return nodePop == null ? z : z2;
    }

    private static final <T> void forEachItemAfter(MutableVector<T> mutableVector, T t, Function1<? super T, Unit> function1) {
        boolean z = false;
        IntRange intRangeUntil = RangesKt.until(0, mutableVector.getSize());
        int first = intRangeUntil.getFirst();
        int last = intRangeUntil.getLast();
        if (first > last) {
            return;
        }
        while (true) {
            if (z) {
                function1.invoke(mutableVector.content[first]);
            }
            if (Intrinsics.areEqual(mutableVector.content[first], t)) {
                z = true;
            }
            if (first == last) {
                return;
            } else {
                first++;
            }
        }
    }

    private static final <T> void forEachItemBefore(MutableVector<T> mutableVector, T t, Function1<? super T, Unit> function1) {
        boolean z = false;
        IntRange intRangeUntil = RangesKt.until(0, mutableVector.getSize());
        int first = intRangeUntil.getFirst();
        int last = intRangeUntil.getLast();
        if (first > last) {
            return;
        }
        while (true) {
            if (z) {
                function1.invoke(mutableVector.content[last]);
            }
            if (Intrinsics.areEqual(mutableVector.content[last], t)) {
                z = true;
            }
            if (last == first) {
                return;
            } else {
                last--;
            }
        }
    }
}
