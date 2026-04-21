package androidx.compose.ui.modifier;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.Owner;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: ModifierLocalManager.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J*\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\u001a\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\n2\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\fJ\u001a\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\n2\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\fJ\u001a\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\n2\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/compose/ui/modifier/ModifierLocalManager;", "", "owner", "Landroidx/compose/ui/node/Owner;", "<init>", "(Landroidx/compose/ui/node/Owner;)V", "getOwner", "()Landroidx/compose/ui/node/Owner;", "inserted", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/node/BackwardsCompatNode;", "insertedLocal", "Landroidx/compose/ui/modifier/ModifierLocal;", "removed", "Landroidx/compose/ui/node/LayoutNode;", "removedLocal", "invalidated", "", "invalidate", "", "triggerUpdates", "invalidateConsumersOfNodeForKey", "node", "Landroidx/compose/ui/Modifier$Node;", "key", "set", "", "updatedProvider", "insertedProvider", "removedProvider", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ModifierLocalManager {
    public static final int $stable = 8;
    private boolean invalidated;
    private final Owner owner;
    private final MutableVector<BackwardsCompatNode> inserted = new MutableVector<>(new BackwardsCompatNode[16], 0);
    private final MutableVector<ModifierLocal<?>> insertedLocal = new MutableVector<>(new ModifierLocal[16], 0);
    private final MutableVector<LayoutNode> removed = new MutableVector<>(new LayoutNode[16], 0);
    private final MutableVector<ModifierLocal<?>> removedLocal = new MutableVector<>(new ModifierLocal[16], 0);

    public ModifierLocalManager(Owner owner) {
        this.owner = owner;
    }

    public final Owner getOwner() {
        return this.owner;
    }

    public final void invalidate() {
        if (!this.invalidated) {
            this.invalidated = true;
            this.owner.registerOnEndApplyChangesListener(new Function0<Unit>() { // from class: androidx.compose.ui.modifier.ModifierLocalManager.invalidate.1
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
                    ModifierLocalManager.this.triggerUpdates();
                }
            });
        }
    }

    public final void triggerUpdates() {
        this.invalidated = false;
        Iterable toUpdate = new HashSet();
        MutableVector<LayoutNode> mutableVector = this.removed;
        Object[] content$iv = mutableVector.content;
        int size$iv = mutableVector.getSize();
        for (int i$iv = 0; i$iv < size$iv; i$iv++) {
            LayoutNode layout = (LayoutNode) content$iv[i$iv];
            int i = i$iv;
            ModifierLocal<?> modifierLocal = this.removedLocal.content[i];
            if (layout.getNodes().getHead().getIsAttached()) {
                invalidateConsumersOfNodeForKey(layout.getNodes().getHead(), modifierLocal, (Set) toUpdate);
            }
        }
        this.removed.clear();
        this.removedLocal.clear();
        MutableVector<BackwardsCompatNode> mutableVector2 = this.inserted;
        Object[] content$iv2 = mutableVector2.content;
        int size$iv2 = mutableVector2.getSize();
        for (int i$iv2 = 0; i$iv2 < size$iv2; i$iv2++) {
            BackwardsCompatNode node = (BackwardsCompatNode) content$iv2[i$iv2];
            int i2 = i$iv2;
            ModifierLocal<?> modifierLocal2 = this.insertedLocal.content[i2];
            if (node.getIsAttached()) {
                invalidateConsumersOfNodeForKey(node, modifierLocal2, (Set) toUpdate);
            }
        }
        this.inserted.clear();
        this.insertedLocal.clear();
        Iterable $this$forEach$iv = toUpdate;
        for (Object element$iv : $this$forEach$iv) {
            BackwardsCompatNode it = (BackwardsCompatNode) element$iv;
            it.updateModifierLocalConsumer();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void invalidateConsumersOfNodeForKey(Modifier.Node node, ModifierLocal<?> key, Set<BackwardsCompatNode> set) {
        DelegatableNode $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv;
        int i;
        boolean z;
        boolean diveDeeper$iv$iv;
        boolean z2;
        int count$iv$iv;
        MutableVector mutableVector;
        ModifierLocal<?> modifierLocal = key;
        Modifier.Node $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2 = node;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(32);
        boolean value$iv$iv$iv = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitSubtreeIf called on an unattached node");
        }
        boolean z3 = false;
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            boolean z4 = true;
            if (!(branches$iv$iv.getSize() != 0 ? true : z3)) {
                return;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (node$iv$iv != null && node$iv$iv.getIsAttached()) {
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node node$iv = node$iv$iv;
                        int i2 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        Modifier.Node nodePop = node$iv;
                        while (true) {
                            if (nodePop == null) {
                                $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2;
                                i = iM6460constructorimpl;
                                z = z4;
                                diveDeeper$iv$iv = z;
                                break;
                            }
                            if (nodePop instanceof ModifierLocalModifierNode) {
                                Object it$iv = nodePop;
                                $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2;
                                ModifierLocalModifierNode it = (ModifierLocalModifierNode) it$iv;
                                i = iM6460constructorimpl;
                                if ((it instanceof BackwardsCompatNode) && (((BackwardsCompatNode) it).getElement() instanceof ModifierLocalConsumer) && ((BackwardsCompatNode) it).getReadValues().contains(modifierLocal)) {
                                    set.add(it);
                                }
                                if (it.getProvidedValues().contains$ui(modifierLocal)) {
                                    z = true;
                                    diveDeeper$iv$iv = false;
                                    break;
                                }
                                z2 = true;
                            } else {
                                $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2;
                                i = iM6460constructorimpl;
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) == 0 || !(nodePop instanceof DelegatingNode)) {
                                    z2 = true;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    for (Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate(); node$iv$iv$iv != null; node$iv$iv$iv = node$iv$iv$iv.getChild()) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            if (count$iv$iv2 == 1) {
                                                nodePop = next$iv$iv;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
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
                                        }
                                    }
                                    z2 = true;
                                    if (count$iv$iv2 == 1) {
                                        z4 = true;
                                        $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv;
                                        iM6460constructorimpl = i;
                                        modifierLocal = key;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            z4 = z2;
                            $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv;
                            iM6460constructorimpl = i;
                            modifierLocal = key;
                        }
                        if (!diveDeeper$iv$iv) {
                            modifierLocal = key;
                            $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv;
                            iM6460constructorimpl = i;
                            z3 = false;
                            break;
                        }
                    } else {
                        $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2;
                        i = iM6460constructorimpl;
                        z = z4;
                    }
                    node$iv$iv = node$iv$iv.getChild();
                    z4 = z;
                    $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv;
                    iM6460constructorimpl = i;
                    modifierLocal = key;
                }
            }
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            modifierLocal = key;
            $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2 = $this$visitSubtreeIf_u2dY_u2dYKmho_u24default$iv2;
            iM6460constructorimpl = iM6460constructorimpl;
            z3 = false;
        }
    }

    public final void updatedProvider(BackwardsCompatNode node, ModifierLocal<?> key) {
        this.inserted.add(node);
        this.insertedLocal.add(key);
        invalidate();
    }

    public final void insertedProvider(BackwardsCompatNode node, ModifierLocal<?> key) {
        this.inserted.add(node);
        this.insertedLocal.add(key);
        invalidate();
    }

    public final void removedProvider(BackwardsCompatNode node, ModifierLocal<?> key) {
        this.removed.add(DelegatableNodeKt.requireLayoutNode(node));
        this.removedLocal.add(key);
        invalidate();
    }
}
