package androidx.compose.ui.modifier;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;

/* JADX INFO: compiled from: ModifierLocalModifierNode.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u00012\u00020\u0002J)\u0010\u0007\u001a\u00020\b\"\u0004\b\u0000\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\t0\u000b2\u0006\u0010\f\u001a\u0002H\tH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u000e\u001a\u0002H\t\"\u0004\b\u0000\u0010\t*\b\u0012\u0004\u0012\u0002H\t0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalReadScope;", "Landroidx/compose/ui/node/DelegatableNode;", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", "provide", "", ExifInterface.GPS_DIRECTION_TRUE, "key", "Landroidx/compose/ui/modifier/ModifierLocal;", Values.VECTOR_MAP_VECTORS_KEY, "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V", "current", "getCurrent", "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface ModifierLocalModifierNode extends ModifierLocalReadScope, DelegatableNode {
    default ModifierLocalMap getProvidedValues() {
        return EmptyMap.INSTANCE;
    }

    default <T> void provide(ModifierLocal<T> key, T value) {
        boolean value$iv = getProvidedValues() != EmptyMap.INSTANCE;
        if (!value$iv) {
            InlineClassHelperKt.throwIllegalArgumentException("In order to provide locals you must override providedValues: ModifierLocalMap");
        }
        boolean value$iv2 = getProvidedValues().contains$ui(key);
        if (!value$iv2) {
            InlineClassHelperKt.throwIllegalArgumentException("Any provided key must be initially provided in the overridden providedValues: ModifierLocalMap property. Key " + key + " was not found.");
        }
        getProvidedValues().mo6294set$ui(key, value);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
    default <T> T getCurrent(ModifierLocal<T> modifierLocal) {
        ModifierLocal<T> modifierLocal2;
        ModifierLocalModifierNode modifierLocalModifierNode;
        int i;
        NodeChain nodes;
        ModifierLocal<T> modifierLocal3;
        ModifierLocalModifierNode modifierLocalModifierNode2;
        ModifierLocal<T> modifierLocal4;
        Modifier.Node node;
        int i2;
        MutableVector mutableVector;
        if (!getNode().getIsAttached()) {
            InlineClassHelperKt.throwIllegalArgumentException("ModifierLocal accessed from an unattached node");
        }
        ModifierLocal<T> modifierLocal5 = modifierLocal;
        ModifierLocalModifierNode modifierLocalModifierNode3 = this;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(32);
        if (!modifierLocalModifierNode3.getNode().getIsAttached()) {
            InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
        }
        Modifier.Node parent = modifierLocalModifierNode3.getNode().getParent();
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(modifierLocalModifierNode3);
        while (layoutNodeRequireLayoutNode != null) {
            if ((layoutNodeRequireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & iM6460constructorimpl) != 0) {
                        int i3 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        modifierLocalModifierNode2 = modifierLocalModifierNode3;
                        Modifier.Node nodePop = parent;
                        while (nodePop != null) {
                            int i4 = iM6460constructorimpl;
                            if (nodePop instanceof ModifierLocalModifierNode) {
                                ModifierLocalModifierNode modifierLocalModifierNode4 = (ModifierLocalModifierNode) nodePop;
                                if (modifierLocalModifierNode4.getProvidedValues().contains$ui(modifierLocal5)) {
                                    return (T) modifierLocalModifierNode4.getProvidedValues().get$ui(modifierLocal5);
                                }
                                modifierLocal4 = modifierLocal5;
                            } else {
                                modifierLocal4 = modifierLocal5;
                                int i5 = 1;
                                if (((nodePop.getKindSet() & i3) != 0 ? 1 : 0) != 0 && (nodePop instanceof DelegatingNode)) {
                                    int i6 = 0;
                                    Modifier.Node delegate = ((DelegatingNode) nodePop).getDelegate();
                                    while (delegate != null) {
                                        Modifier.Node node2 = delegate;
                                        if (((node2.getKindSet() & i3) != 0 ? i5 : 0) != 0) {
                                            i6++;
                                            if (i6 == i5) {
                                                nodePop = node2;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    node = nodePop;
                                                    i2 = i6;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    node = nodePop;
                                                    i2 = i6;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node node3 = node;
                                                if (node3 != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(node3);
                                                    }
                                                    node = null;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(node2);
                                                }
                                                mutableVector2 = mutableVector;
                                                nodePop = node;
                                                i6 = i2;
                                            }
                                        }
                                        delegate = delegate.getChild();
                                        i5 = 1;
                                    }
                                    Modifier.Node node4 = nodePop;
                                    if (i6 == 1) {
                                        iM6460constructorimpl = i4;
                                        modifierLocal5 = modifierLocal4;
                                        nodePop = node4;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            iM6460constructorimpl = i4;
                            modifierLocal5 = modifierLocal4;
                        }
                        modifierLocal3 = modifierLocal5;
                    } else {
                        modifierLocal3 = modifierLocal5;
                        modifierLocalModifierNode2 = modifierLocalModifierNode3;
                    }
                    parent = parent.getParent();
                    modifierLocalModifierNode3 = modifierLocalModifierNode2;
                    iM6460constructorimpl = iM6460constructorimpl;
                    modifierLocal5 = modifierLocal3;
                }
                modifierLocal2 = modifierLocal5;
                modifierLocalModifierNode = modifierLocalModifierNode3;
                i = iM6460constructorimpl;
            } else {
                modifierLocal2 = modifierLocal5;
                modifierLocalModifierNode = modifierLocalModifierNode3;
                i = iM6460constructorimpl;
            }
            layoutNodeRequireLayoutNode = layoutNodeRequireLayoutNode.getParent$ui();
            parent = (layoutNodeRequireLayoutNode == null || (nodes = layoutNodeRequireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
            modifierLocalModifierNode3 = modifierLocalModifierNode;
            iM6460constructorimpl = i;
            modifierLocal5 = modifierLocal2;
        }
        return modifierLocal5.getDefaultFactory$ui().invoke();
    }
}
