package androidx.compose.ui.relocation;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: BringIntoViewModifierNode.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\b\u0002\u0010\u0003\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H\u0086@¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"bringIntoView", "", "Landroidx/compose/ui/node/DelegatableNode;", "bounds", "Lkotlin/Function0;", "Landroidx/compose/ui/geometry/Rect;", "(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BringIntoViewModifierNodeKt {
    public static /* synthetic */ Object bringIntoView$default(DelegatableNode delegatableNode, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        return bringIntoView(delegatableNode, function0, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v0, types: [androidx.compose.ui.Modifier$Node] */
    public static final Object bringIntoView(DelegatableNode $this$bringIntoView, final Function0<Rect> function0, Continuation<? super Unit> continuation) {
        Object node$iv$iv$iv;
        final LayoutCoordinates layoutCoordinates;
        Object objBringIntoView;
        int i;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv;
        int i2;
        int i3;
        NodeChain nodes;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv2;
        int i4;
        int i5;
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv3;
        int i6;
        int i7;
        int count$iv$iv$iv;
        MutableVector mutableVector;
        if (!$this$bringIntoView.getNode().getIsAttached()) {
            return Unit.INSTANCE;
        }
        int count$iv$iv$iv2 = NodeKind.m6460constructorimpl(524288);
        DelegatableNode $this$nearestAncestor_u2d64DMado$iv4 = $this$bringIntoView;
        int i8 = 0;
        int i9 = count$iv$iv$iv2;
        boolean value$iv$iv$iv$iv = $this$nearestAncestor_u2d64DMado$iv4.getNode().getIsAttached();
        if (!value$iv$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node node$iv$iv$iv2 = $this$nearestAncestor_u2d64DMado$iv4.getNode().getParent();
        LayoutNode layout$iv$iv$iv = DelegatableNodeKt.requireLayoutNode($this$nearestAncestor_u2d64DMado$iv4);
        loop0: while (true) {
            if (layout$iv$iv$iv == null) {
                node$iv$iv$iv = null;
                break;
            }
            Modifier.Node head$iv$iv$iv = layout$iv$iv$iv.getNodes().getHead();
            if ((head$iv$iv$iv.getAggregateChildKindSet() & i9) != 0) {
                while (node$iv$iv$iv2 != null) {
                    if ((node$iv$iv$iv2.getKindSet() & i9) != 0) {
                        Object it$iv$iv = node$iv$iv$iv2;
                        int i10 = i9;
                        MutableVector mutableVector2 = null;
                        node$iv$iv$iv = it$iv$iv;
                        while (node$iv$iv$iv != null) {
                            int i11 = count$iv$iv$iv2;
                            if (node$iv$iv$iv instanceof BringIntoViewModifierNode) {
                                break loop0;
                            }
                            if (((node$iv$iv$iv.getKindSet() & i10) != 0) && (node$iv$iv$iv instanceof DelegatingNode)) {
                                int count$iv$iv$iv3 = 0;
                                DelegatingNode this_$iv$iv$iv$iv = (DelegatingNode) node$iv$iv$iv;
                                Modifier.Node node$iv$iv$iv$iv = this_$iv$iv$iv$iv.getDelegate();
                                while (node$iv$iv$iv$iv != null) {
                                    Modifier.Node next$iv$iv$iv = node$iv$iv$iv$iv;
                                    if (((next$iv$iv$iv.getKindSet() & i10) != 0 ? 1 : 0) != 0) {
                                        count$iv$iv$iv3++;
                                        $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                        if (count$iv$iv$iv3 == 1) {
                                            node$iv$iv$iv = next$iv$iv$iv;
                                            i6 = i8;
                                            i7 = i9;
                                        } else {
                                            if (mutableVector2 == null) {
                                                count$iv$iv$iv = count$iv$iv$iv3;
                                                i6 = i8;
                                                i7 = i9;
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            } else {
                                                count$iv$iv$iv = count$iv$iv$iv3;
                                                i6 = i8;
                                                i7 = i9;
                                                mutableVector = mutableVector2;
                                            }
                                            Object obj = node$iv$iv$iv;
                                            if (obj != null) {
                                                if (mutableVector != null) {
                                                    Boxing.boxBoolean(mutableVector.add(obj));
                                                }
                                                node$iv$iv$iv = null;
                                            }
                                            if (mutableVector != null) {
                                                Boxing.boxBoolean(mutableVector.add(next$iv$iv$iv));
                                            }
                                            mutableVector2 = mutableVector;
                                            count$iv$iv$iv3 = count$iv$iv$iv;
                                        }
                                    } else {
                                        $this$nearestAncestor_u2d64DMado$iv3 = $this$nearestAncestor_u2d64DMado$iv4;
                                        i6 = i8;
                                        i7 = i9;
                                    }
                                    node$iv$iv$iv$iv = node$iv$iv$iv$iv.getChild();
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv3;
                                    i8 = i6;
                                    i9 = i7;
                                }
                                $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv4;
                                i4 = i8;
                                i5 = i9;
                                if (count$iv$iv$iv3 == 1) {
                                    count$iv$iv$iv2 = i11;
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                    i8 = i4;
                                    i9 = i5;
                                } else {
                                    node$iv$iv$iv = DelegatableNodeKt.pop(mutableVector2);
                                    count$iv$iv$iv2 = i11;
                                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                    i8 = i4;
                                    i9 = i5;
                                }
                            } else {
                                $this$nearestAncestor_u2d64DMado$iv2 = $this$nearestAncestor_u2d64DMado$iv4;
                                i4 = i8;
                                i5 = i9;
                                node$iv$iv$iv = DelegatableNodeKt.pop(mutableVector2);
                                count$iv$iv$iv2 = i11;
                                $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv2;
                                i8 = i4;
                                i9 = i5;
                            }
                        }
                    }
                    node$iv$iv$iv2 = node$iv$iv$iv2.getParent();
                    count$iv$iv$iv2 = count$iv$iv$iv2;
                    $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv4;
                    i8 = i8;
                    i9 = i9;
                }
                i = count$iv$iv$iv2;
                $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv4;
                i2 = i8;
                i3 = i9;
            } else {
                i = count$iv$iv$iv2;
                $this$nearestAncestor_u2d64DMado$iv = $this$nearestAncestor_u2d64DMado$iv4;
                i2 = i8;
                i3 = i9;
            }
            layout$iv$iv$iv = layout$iv$iv$iv.getParent$ui();
            node$iv$iv$iv2 = (layout$iv$iv$iv == null || (nodes = layout$iv$iv$iv.getNodes()) == null) ? null : nodes.getTail();
            count$iv$iv$iv2 = i;
            $this$nearestAncestor_u2d64DMado$iv4 = $this$nearestAncestor_u2d64DMado$iv;
            i8 = i2;
            i9 = i3;
        }
        BringIntoViewModifierNode parent = (BringIntoViewModifierNode) node$iv$iv$iv;
        return (parent != null && (objBringIntoView = parent.bringIntoView((layoutCoordinates = DelegatableNodeKt.requireLayoutCoordinates($this$bringIntoView)), new Function0<Rect>() { // from class: androidx.compose.ui.relocation.BringIntoViewModifierNodeKt.bringIntoView.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Rect invoke() {
                Rect rectInvoke;
                Function0<Rect> function02 = function0;
                if (function02 != null && (rectInvoke = function02.invoke()) != null) {
                    return rectInvoke;
                }
                LayoutCoordinates it = layoutCoordinates;
                if (!it.isAttached()) {
                    it = null;
                }
                if (it != null) {
                    return SizeKt.m4542toRectuvyYCjk(IntSizeKt.m7688toSizeozmzZPI(it.mo6149getSizeYbymL2g()));
                }
                return null;
            }
        }, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objBringIntoView : Unit.INSTANCE;
    }
}
