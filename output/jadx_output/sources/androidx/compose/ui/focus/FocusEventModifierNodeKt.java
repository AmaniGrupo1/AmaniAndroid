package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: compiled from: FocusEventModifierNode.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000¨\u0006\u0005"}, d2 = {"invalidateFocusEvent", "", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "getFocusState", "Landroidx/compose/ui/focus/FocusState;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FocusEventModifierNodeKt {

    /* JADX INFO: compiled from: FocusEventModifierNode.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 2;
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

    public static final void invalidateFocusEvent(FocusEventModifierNode $this$invalidateFocusEvent) {
        DelegatableNodeKt.requireOwner($this$invalidateFocusEvent).getFocusOwner().scheduleInvalidation($this$invalidateFocusEvent);
    }

    public static final FocusState getFocusState(FocusEventModifierNode $this$getFocusState) {
        int mask$iv$iv;
        boolean zOrder$iv;
        int i;
        int mask$iv$iv2;
        boolean zOrder$iv2;
        int i2;
        int count$iv$iv;
        MutableVector mutableVector;
        DelegatableNode $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv;
        int i3;
        DelegatableNode $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv2;
        int i4;
        MutableVector mutableVector2;
        FocusEventModifierNode $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3 = $this$getFocusState;
        int mask$iv$iv3 = NodeKind.m6460constructorimpl(1024);
        boolean zOrder$iv3 = false;
        int i5 = 0;
        Modifier.Node $this$dispatchForKind_u2d6rFNWt0$iv$iv = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3.getNode();
        MutableVector mutableVector3 = null;
        Modifier.Node nodePop = $this$dispatchForKind_u2d6rFNWt0$iv$iv;
        while (true) {
            int i6 = 0;
            int i7 = 1;
            if (nodePop != null) {
                if (nodePop instanceof FocusTargetNode) {
                    FocusTargetNode it = (FocusTargetNode) nodePop;
                    FocusStateImpl focusState = it.getFocusState();
                    switch (WhenMappings.$EnumSwitchMapping$0[focusState.ordinal()]) {
                        case 1:
                        case 2:
                        case 3:
                            return focusState;
                        case 4:
                            $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                            i3 = mask$iv$iv3;
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                } else {
                    Modifier.Node this_$iv$iv$iv = nodePop;
                    if (((this_$iv$iv$iv.getKindSet() & mask$iv$iv3) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                        $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                        i3 = mask$iv$iv3;
                    } else {
                        int count$iv$iv2 = 0;
                        DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                        Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                        while (node$iv$iv$iv != null) {
                            Modifier.Node next$iv$iv = node$iv$iv$iv;
                            if (((next$iv$iv.getKindSet() & mask$iv$iv3) != 0 ? i7 : 0) != 0) {
                                count$iv$iv2++;
                                if (count$iv$iv2 == i7) {
                                    nodePop = next$iv$iv;
                                    $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                                    i4 = mask$iv$iv3;
                                } else {
                                    if (mutableVector3 == null) {
                                        $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                                        i4 = mask$iv$iv3;
                                        mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                    } else {
                                        $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                                        i4 = mask$iv$iv3;
                                        mutableVector2 = mutableVector3;
                                    }
                                    mutableVector3 = mutableVector2;
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
                                }
                            } else {
                                $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                                i4 = mask$iv$iv3;
                            }
                            node$iv$iv$iv = node$iv$iv$iv.getChild();
                            $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv2;
                            mask$iv$iv3 = i4;
                            i7 = 1;
                        }
                        $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                        i3 = mask$iv$iv3;
                        if (count$iv$iv2 == 1) {
                            $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv;
                            mask$iv$iv3 = i3;
                        }
                    }
                }
                nodePop = DelegatableNodeKt.pop(mutableVector3);
                $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv;
                mask$iv$iv3 = i3;
            } else {
                DelegatableNode $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv4 = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv3;
                int i8 = mask$iv$iv3;
                boolean zOrder$iv$iv = false;
                boolean value$iv$iv$iv = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv4.getNode().getIsAttached();
                if (!value$iv$iv$iv) {
                    InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
                }
                MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
                Modifier.Node child$iv$iv = $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv4.getNode().getChild();
                if (child$iv$iv == null) {
                    DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv4.getNode(), false);
                } else {
                    branches$iv$iv.add(child$iv$iv);
                }
                while (true) {
                    if ((branches$iv$iv.getSize() != 0 ? 1 : i6) == 0) {
                        return FocusStateImpl.Inactive;
                    }
                    Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
                    if ((branch$iv$iv.getAggregateChildKindSet() & mask$iv$iv3) == 0) {
                        DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, zOrder$iv$iv);
                    } else {
                        Modifier.Node node$iv$iv = branch$iv$iv;
                        while (true) {
                            if (node$iv$iv == null) {
                                mask$iv$iv3 = mask$iv$iv3;
                                i5 = i5;
                            } else if ((node$iv$iv.getKindSet() & mask$iv$iv3) != 0) {
                                Modifier.Node it$iv = node$iv$iv;
                                MutableVector mutableVector4 = null;
                                Modifier.Node nodePop2 = it$iv;
                                while (nodePop2 != null) {
                                    boolean zOrder$iv$iv2 = zOrder$iv$iv;
                                    boolean zOrder$iv$iv3 = nodePop2 instanceof FocusTargetNode;
                                    if (zOrder$iv$iv3) {
                                        FocusTargetNode it2 = (FocusTargetNode) nodePop2;
                                        FocusStateImpl focusState2 = it2.getFocusState();
                                        switch (WhenMappings.$EnumSwitchMapping$0[focusState2.ordinal()]) {
                                            case 1:
                                            case 2:
                                            case 3:
                                                return focusState2;
                                            case 4:
                                                mask$iv$iv = mask$iv$iv3;
                                                zOrder$iv = zOrder$iv3;
                                                i = i5;
                                                break;
                                            default:
                                                throw new NoWhenBranchMatchedException();
                                        }
                                    } else {
                                        Modifier.Node this_$iv$iv$iv3 = nodePop2;
                                        if (((this_$iv$iv$iv3.getKindSet() & i8) != 0 ? 1 : 0) == 0 || !(nodePop2 instanceof DelegatingNode)) {
                                            mask$iv$iv = mask$iv$iv3;
                                            zOrder$iv = zOrder$iv3;
                                            i = i5;
                                        } else {
                                            int count$iv$iv3 = 0;
                                            DelegatingNode this_$iv$iv$iv4 = (DelegatingNode) nodePop2;
                                            Modifier.Node node$iv$iv$iv2 = this_$iv$iv$iv4.getDelegate();
                                            while (node$iv$iv$iv2 != null) {
                                                Modifier.Node next$iv$iv2 = node$iv$iv$iv2;
                                                if (((next$iv$iv2.getKindSet() & i8) != 0 ? 1 : 0) != 0) {
                                                    count$iv$iv3++;
                                                    mask$iv$iv2 = mask$iv$iv3;
                                                    if (count$iv$iv3 == 1) {
                                                        nodePop2 = next$iv$iv2;
                                                        zOrder$iv2 = zOrder$iv3;
                                                        i2 = i5;
                                                    } else {
                                                        if (mutableVector4 == null) {
                                                            count$iv$iv = count$iv$iv3;
                                                            zOrder$iv2 = zOrder$iv3;
                                                            i2 = i5;
                                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                        } else {
                                                            count$iv$iv = count$iv$iv3;
                                                            zOrder$iv2 = zOrder$iv3;
                                                            i2 = i5;
                                                            mutableVector = mutableVector4;
                                                        }
                                                        Modifier.Node theNode$iv$iv2 = nodePop2;
                                                        if (theNode$iv$iv2 != null) {
                                                            if (mutableVector != null) {
                                                                mutableVector.add(theNode$iv$iv2);
                                                            }
                                                            nodePop2 = null;
                                                        }
                                                        if (mutableVector != null) {
                                                            mutableVector.add(next$iv$iv2);
                                                        }
                                                        mutableVector4 = mutableVector;
                                                        count$iv$iv3 = count$iv$iv;
                                                    }
                                                } else {
                                                    mask$iv$iv2 = mask$iv$iv3;
                                                    zOrder$iv2 = zOrder$iv3;
                                                    i2 = i5;
                                                }
                                                node$iv$iv$iv2 = node$iv$iv$iv2.getChild();
                                                mask$iv$iv3 = mask$iv$iv2;
                                                zOrder$iv3 = zOrder$iv2;
                                                i5 = i2;
                                            }
                                            mask$iv$iv = mask$iv$iv3;
                                            zOrder$iv = zOrder$iv3;
                                            i = i5;
                                            if (count$iv$iv3 == 1) {
                                                zOrder$iv$iv = zOrder$iv$iv2;
                                                mask$iv$iv3 = mask$iv$iv;
                                                zOrder$iv3 = zOrder$iv;
                                                i5 = i;
                                            }
                                        }
                                    }
                                    nodePop2 = DelegatableNodeKt.pop(mutableVector4);
                                    zOrder$iv$iv = zOrder$iv$iv2;
                                    mask$iv$iv3 = mask$iv$iv;
                                    zOrder$iv3 = zOrder$iv;
                                    i5 = i;
                                }
                                i6 = 0;
                                mask$iv$iv3 = mask$iv$iv3;
                                i5 = i5;
                            } else {
                                node$iv$iv = node$iv$iv.getChild();
                                mask$iv$iv3 = mask$iv$iv3;
                                i5 = i5;
                            }
                        }
                    }
                }
            }
        }
    }
}
