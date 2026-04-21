package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: FocusRestorer.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0002\u001a\u00020\u0003*\u00020\u0004H\u0000\u001a\f\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0000\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0004H\u0000\u001a\u0014\u0010\b\u001a\u00020\t*\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b\u001a\u001c\u0010\b\u001a\u00020\t*\u00020\t2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"PrevFocusedChild", "", "saveFocusedChild", "", "Landroidx/compose/ui/focus/FocusTargetNode;", "restoreFocusedChild", "pinFocusedChild", "Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;", "focusRestorer", "Landroidx/compose/ui/Modifier;", "fallback", "Landroidx/compose/ui/focus/FocusRequester;", "onRestoreFailed", "Lkotlin/Function0;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class FocusRestorerKt {
    private static final String PrevFocusedChild = "previouslyFocusedChildHash";

    public static final boolean saveFocusedChild(FocusTargetNode $this$saveFocusedChild) {
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
        int i;
        boolean z;
        DelegatingNode this_$iv$iv$iv;
        Modifier.Node node;
        int count$iv$iv;
        Modifier.Node node2;
        MutableVector mutableVector;
        Modifier.Node node3;
        Modifier.Node node4;
        final FocusTargetNode focusTargetNode = $this$saveFocusedChild;
        boolean z2 = false;
        if (!focusTargetNode.getFocusState().getHasFocus()) {
            return false;
        }
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = focusTargetNode;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean value$iv$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitChildren_u2dY_u2dYKmho_u24default$iv2.getNode(), false);
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
                while (true) {
                    if (node$iv$iv == null) {
                        focusTargetNode = $this$saveFocusedChild;
                        z2 = false;
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i2 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        Modifier.Node this_$iv$iv$iv2 = it$iv;
                        while (this_$iv$iv$iv2 != null) {
                            boolean z4 = z3;
                            if (this_$iv$iv$iv2 instanceof FocusTargetNode) {
                                FocusTargetNode it = (FocusTargetNode) this_$iv$iv$iv2;
                                if (it.getFocusState().getHasFocus()) {
                                    focusTargetNode.setPreviouslyFocusedChildHash(DelegatableNodeKt.requireLayoutNode(it).getCompositeKeyHash());
                                    SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) CompositionLocalConsumerModifierNodeKt.currentValueOf(focusTargetNode, SaveableStateRegistryKt.getLocalSaveableStateRegistry());
                                    if (saveableStateRegistry != null) {
                                        saveableStateRegistry.registerProvider(PrevFocusedChild, new Function0<Object>() { // from class: androidx.compose.ui.focus.FocusRestorerKt$saveFocusedChild$1$1
                                            {
                                                super(0);
                                            }

                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                return Integer.valueOf(focusTargetNode.getPreviouslyFocusedChildHash());
                                            }
                                        });
                                    }
                                    return z4;
                                }
                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                i = iM6460constructorimpl;
                                z = z4;
                            } else {
                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                i = iM6460constructorimpl;
                                if (((this_$iv$iv$iv2.getKindSet() & i2) != 0 ? z4 : false) && (this_$iv$iv$iv2 instanceof DelegatingNode)) {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv3 = (DelegatingNode) this_$iv$iv$iv2;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv3.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if ((next$iv$iv.getKindSet() & i2) != 0 ? z4 : false) {
                                            count$iv$iv2++;
                                            this_$iv$iv$iv = this_$iv$iv$iv3;
                                            if (count$iv$iv2 == z4) {
                                                node = next$iv$iv;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    node2 = this_$iv$iv$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    node2 = this_$iv$iv$iv2;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = node2;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    node3 = null;
                                                } else {
                                                    node3 = node2;
                                                }
                                                if (mutableVector != null) {
                                                    node4 = node3;
                                                    mutableVector.add(next$iv$iv);
                                                } else {
                                                    node4 = node3;
                                                }
                                                node = node4;
                                                count$iv$iv2 = count$iv$iv;
                                                mutableVector2 = mutableVector;
                                            }
                                        } else {
                                            this_$iv$iv$iv = this_$iv$iv$iv3;
                                            node = this_$iv$iv$iv2;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        this_$iv$iv$iv3 = this_$iv$iv$iv;
                                        this_$iv$iv$iv2 = node;
                                        z4 = true;
                                    }
                                    Modifier.Node node5 = this_$iv$iv$iv2;
                                    z = true;
                                    if (count$iv$iv2 == 1) {
                                        focusTargetNode = $this$saveFocusedChild;
                                        z3 = true;
                                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                                        iM6460constructorimpl = i;
                                        this_$iv$iv$iv2 = node5;
                                    }
                                } else {
                                    z = z4;
                                }
                            }
                            this_$iv$iv$iv2 = DelegatableNodeKt.pop(mutableVector2);
                            focusTargetNode = $this$saveFocusedChild;
                            z3 = z;
                            $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                            iM6460constructorimpl = i;
                        }
                        focusTargetNode = $this$saveFocusedChild;
                        z2 = false;
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                        focusTargetNode = $this$saveFocusedChild;
                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                    }
                }
            } else {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            }
        }
    }

    public static final boolean restoreFocusedChild(FocusTargetNode $this$restoreFocusedChild) {
        DelegatableNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
        int i;
        boolean zOrder$iv;
        int $i$f$forEachImmediateDelegate$ui;
        DelegatingNode this_$iv$iv$iv;
        int count$iv$iv;
        Modifier.Node node;
        MutableVector mutableVector;
        SaveableStateRegistry savableStateRegistry;
        Object it;
        if ($this$restoreFocusedChild.getPreviouslyFocusedChildHash() == 0 && (savableStateRegistry = (SaveableStateRegistry) CompositionLocalConsumerModifierNodeKt.currentValueOf($this$restoreFocusedChild, SaveableStateRegistryKt.getLocalSaveableStateRegistry())) != null && (it = savableStateRegistry.consumeRestored(PrevFocusedChild)) != null) {
            $this$restoreFocusedChild.setPreviouslyFocusedChildHash(((Integer) it).intValue());
        }
        boolean z = false;
        if ($this$restoreFocusedChild.getPreviouslyFocusedChildHash() == 0) {
            return false;
        }
        FocusTargetNode $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$restoreFocusedChild;
        int iM6460constructorimpl = NodeKind.m6460constructorimpl(1024);
        boolean zOrder$iv2 = false;
        boolean value$iv$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2.getNode().getIsAttached();
        if (!value$iv$iv$iv) {
            InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
        }
        MutableVector branches$iv$iv = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child$iv$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2.getNode().getChild();
        if (child$iv$iv == null) {
            DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, $this$visitChildren_u2dY_u2dYKmho_u24default$iv2.getNode(), false);
        } else {
            branches$iv$iv.add(child$iv$iv);
        }
        while (true) {
            if (!(branches$iv$iv.getSize() != 0 ? true : z)) {
                return false;
            }
            Modifier.Node branch$iv$iv = (Modifier.Node) branches$iv$iv.removeAt(branches$iv$iv.getSize() - 1);
            if ((branch$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) != 0) {
                Modifier.Node node$iv$iv = branch$iv$iv;
                while (true) {
                    if (node$iv$iv == null) {
                        z = false;
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i2 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        Modifier.Node this_$iv$iv$iv2 = it$iv;
                        while (this_$iv$iv$iv2 != null) {
                            if (this_$iv$iv$iv2 instanceof FocusTargetNode) {
                                FocusTargetNode it2 = (FocusTargetNode) this_$iv$iv$iv2;
                                if (it2.getIsAttached()) {
                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                    if (DelegatableNodeKt.requireLayoutNode(it2).getCompositeKeyHash() == $this$restoreFocusedChild.getPreviouslyFocusedChildHash()) {
                                        return ComposeUiFlags.isRequestFocusOnNonFocusableFocusTargetEnabled ? restoreFocusedChild(it2) || (it2.fetchFocusProperties$ui().getCanFocus() && FocusTargetModifierNode.m4359requestFocus3ESFkO8$default(it2, 0, 1, null)) : restoreFocusedChild(it2) || FocusTargetModifierNode.m4359requestFocus3ESFkO8$default(it2, 0, 1, null);
                                    }
                                    i = iM6460constructorimpl;
                                    zOrder$iv = zOrder$iv2;
                                } else {
                                    $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                    i = iM6460constructorimpl;
                                    zOrder$iv = zOrder$iv2;
                                }
                                $i$f$forEachImmediateDelegate$ui = 1;
                            } else {
                                $this$visitChildren_u2dY_u2dYKmho_u24default$iv = $this$visitChildren_u2dY_u2dYKmho_u24default$iv2;
                                i = iM6460constructorimpl;
                                zOrder$iv = zOrder$iv2;
                                if (((this_$iv$iv$iv2.getKindSet() & i2) != 0 ? 1 : 0) == 0 || !(this_$iv$iv$iv2 instanceof DelegatingNode)) {
                                    $i$f$forEachImmediateDelegate$ui = 1;
                                } else {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv3 = (DelegatingNode) this_$iv$iv$iv2;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv3.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) != 0) {
                                            count$iv$iv2++;
                                            this_$iv$iv$iv = this_$iv$iv$iv3;
                                            if (count$iv$iv2 == 1) {
                                                this_$iv$iv$iv2 = next$iv$iv;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    node = this_$iv$iv$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    node = this_$iv$iv$iv2;
                                                    mutableVector = mutableVector2;
                                                }
                                                Modifier.Node theNode$iv$iv = node;
                                                if (theNode$iv$iv != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(theNode$iv$iv);
                                                    }
                                                    this_$iv$iv$iv2 = null;
                                                } else {
                                                    this_$iv$iv$iv2 = node;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(next$iv$iv);
                                                }
                                                mutableVector2 = mutableVector;
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        } else {
                                            this_$iv$iv$iv = this_$iv$iv$iv3;
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        this_$iv$iv$iv3 = this_$iv$iv$iv;
                                    }
                                    Modifier.Node node2 = this_$iv$iv$iv2;
                                    $i$f$forEachImmediateDelegate$ui = 1;
                                    if (count$iv$iv2 == 1) {
                                        $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                                        iM6460constructorimpl = i;
                                        zOrder$iv2 = zOrder$iv;
                                        this_$iv$iv$iv2 = node2;
                                    }
                                }
                            }
                            this_$iv$iv$iv2 = DelegatableNodeKt.pop(mutableVector2);
                            $this$visitChildren_u2dY_u2dYKmho_u24default$iv2 = $this$visitChildren_u2dY_u2dYKmho_u24default$iv;
                            iM6460constructorimpl = i;
                            zOrder$iv2 = zOrder$iv;
                        }
                        z = false;
                    } else {
                        node$iv$iv = node$iv$iv.getChild();
                        iM6460constructorimpl = iM6460constructorimpl;
                    }
                }
            } else {
                DelegatableNodeKt.addLayoutNodeChildren(branches$iv$iv, branch$iv$iv, false);
            }
        }
    }

    public static final PinnableContainer.PinnedHandle pinFocusedChild(FocusTargetNode $this$pinFocusedChild) {
        PinnableContainer pinnableContainer;
        FocusTargetNode focusTargetNodeFindActiveFocusNode = FocusTraversalKt.findActiveFocusNode($this$pinFocusedChild);
        if (focusTargetNodeFindActiveFocusNode == null || (pinnableContainer = (PinnableContainer) CompositionLocalConsumerModifierNodeKt.currentValueOf(focusTargetNodeFindActiveFocusNode, PinnableContainerKt.getLocalPinnableContainer())) == null) {
            return null;
        }
        return pinnableContainer.pin();
    }

    public static /* synthetic */ Modifier focusRestorer$default(Modifier modifier, FocusRequester focusRequester, int i, Object obj) {
        if ((i & 1) != 0) {
            focusRequester = FocusRequester.INSTANCE.getDefault();
        }
        return focusRestorer(modifier, focusRequester);
    }

    public static final Modifier focusRestorer(Modifier $this$focusRestorer, FocusRequester fallback) {
        return $this$focusRestorer.then(new FocusRestorerElement(fallback));
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use focusRestorer(FocusRequester) instead", replaceWith = @ReplaceWith(expression = "this.focusRestorer(onRestoreFailed())", imports = {}))
    public static final Modifier focusRestorer(Modifier $this$focusRestorer, Function0<FocusRequester> function0) {
        FocusRequester focusRequesterInvoke;
        if (function0 == null || (focusRequesterInvoke = function0.invoke()) == null) {
            focusRequesterInvoke = FocusRequester.INSTANCE.getDefault();
        }
        return focusRestorer($this$focusRestorer, focusRequesterInvoke);
    }
}
