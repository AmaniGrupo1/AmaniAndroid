package androidx.compose.ui.layout;

import android.graphics.Rect;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.ScatterMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.NodeKindKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: WindowInsetsRulers.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0000\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0000\u001a3\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018\"\u000e\u0010\u000e\u001a\u00020\u000fX\u0080T¢\u0006\u0002\n\u0000\"\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\r0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\u001cX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001d¨\u0006\u001e"}, d2 = {"provideWindowInsetsRulers", "", "Landroidx/compose/ui/layout/RulerScope;", "rulerProvider", "Landroidx/compose/ui/layout/WindowInsetsRulerProvider;", "findDisplayCutouts", "", "Landroidx/compose/ui/layout/RectRulers;", "placementScope", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "findInsetsAnimationProperties", "Landroidx/compose/ui/layout/WindowInsetsAnimation;", "windowInsetsRulers", "Landroidx/compose/ui/layout/WindowInsetsRulers;", "RulerKey", "", "provideInsetsValues", "rulers", "insets", "Landroidx/compose/ui/layout/ValueInsets;", "width", "", "height", "provideInsetsValues-cytEWk0", "(Landroidx/compose/ui/layout/RulerScope;Landroidx/compose/ui/layout/RectRulers;JII)V", "WindowInsetsTypeMap", "Landroidx/collection/IntObjectMap;", "AnimatableInsetsRulers", "", "[Landroidx/compose/ui/layout/WindowInsetsRulers;", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class WindowInsetsRulers_androidKt {
    private static final WindowInsetsRulers[] AnimatableInsetsRulers;
    public static final String RulerKey = "androidx.compose.ui.layout.WindowInsetsRulers";
    private static final IntObjectMap<WindowInsetsRulers> WindowInsetsTypeMap;

    public static final void provideWindowInsetsRulers(RulerScope $this$provideWindowInsetsRulers, WindowInsetsRulerProvider rulerProvider) {
        long size = $this$provideWindowInsetsRulers.getCoordinates().mo6149getSizeYbymL2g();
        ScatterMap insetsValues = rulerProvider.getInsetsListener().getInsetsValues();
        int width = (int) (size >> 32);
        int $i$f$unpackInt2 = (int) (4294967295L & size);
        for (WindowInsetsRulers windowInsetsRulers : AnimatableInsetsRulers) {
            Object obj = insetsValues.get(windowInsetsRulers);
            Intrinsics.checkNotNull(obj);
            WindowWindowInsetsAnimationValues values = (WindowWindowInsetsAnimationValues) obj;
            m6285provideInsetsValuescytEWk0($this$provideWindowInsetsRulers, windowInsetsRulers.getCurrent(), values.getCurrent(), width, $i$f$unpackInt2);
            if (values.isAnimating()) {
                m6285provideInsetsValuescytEWk0($this$provideWindowInsetsRulers, values.getSource(), values.getSourceValueInsets(), width, $i$f$unpackInt2);
                m6285provideInsetsValuescytEWk0($this$provideWindowInsetsRulers, values.getTarget(), values.getTargetValueInsets(), width, $i$f$unpackInt2);
            }
            m6285provideInsetsValuescytEWk0($this$provideWindowInsetsRulers, windowInsetsRulers.getMaximum(), values.getMaximum(), width, $i$f$unpackInt2);
        }
        MutableObjectList cutoutRects = rulerProvider.getCutoutRects();
        if (cutoutRects.isNotEmpty()) {
            List<RectRulers> cutoutRulers = rulerProvider.getCutoutRulers();
            MutableObjectList this_$iv = cutoutRects;
            Object[] content$iv = this_$iv.content;
            int i$iv = 0;
            int i = this_$iv._size;
            while (i$iv < i) {
                MutableState rectState = (MutableState) content$iv[i$iv];
                int index = i$iv;
                RectRulers rulers = cutoutRulers.get(index);
                MutableObjectList cutoutRects2 = cutoutRects;
                Rect rect = (Rect) rectState.getValue();
                $this$provideWindowInsetsRulers.provides(rulers.getLeft(), rect.left);
                $this$provideWindowInsetsRulers.provides(rulers.getTop(), rect.top);
                $this$provideWindowInsetsRulers.provides(rulers.getRight(), rect.right);
                $this$provideWindowInsetsRulers.provides(rulers.getBottom(), rect.bottom);
                i$iv++;
                this_$iv = this_$iv;
                cutoutRects = cutoutRects2;
                cutoutRulers = cutoutRulers;
            }
        }
    }

    public static final List<RectRulers> findDisplayCutouts(Placeable.PlacementScope placementScope) {
        NodeCoordinator node;
        int i;
        NodeCoordinator this_$iv;
        NodeCoordinator this_$iv2;
        Modifier.Node node2;
        int count$iv$iv;
        MutableVector mutableVector;
        Modifier.Node node3;
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        LayoutCoordinates layoutCoordinatesFindRootCoordinates = coordinates != null ? LayoutCoordinatesKt.findRootCoordinates(coordinates) : null;
        NodeCoordinator node4 = layoutCoordinatesFindRootCoordinates instanceof NodeCoordinator ? (NodeCoordinator) layoutCoordinatesFindRootCoordinates : null;
        while (node4 != null) {
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(262144);
            NodeCoordinator this_$iv3 = node4;
            boolean includeTail$iv$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(iM6460constructorimpl);
            Modifier.Node stopNode$iv$iv = this_$iv3.getTail();
            if (includeTail$iv$iv || (stopNode$iv$iv = stopNode$iv$iv.getParent()) != null) {
                Modifier.Node node$iv$iv = this_$iv3.headNode(includeTail$iv$iv);
                while (true) {
                    if (node$iv$iv == null) {
                        node = node4;
                        break;
                    }
                    if ((node$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) == 0) {
                        node = node4;
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i2 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        i = iM6460constructorimpl;
                        Modifier.Node theNode$iv$iv = it$iv;
                        while (theNode$iv$iv != null) {
                            NodeCoordinator node5 = node4;
                            if (theNode$iv$iv instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) theNode$iv$iv;
                                this_$iv2 = this_$iv3;
                                if (traversableNode.getTraverseKey() == RulerKey) {
                                    return ((WindowInsetsRulerProvider) traversableNode).getCutoutRulers();
                                }
                            } else {
                                this_$iv2 = this_$iv3;
                                Modifier.Node this_$iv$iv$iv = theNode$iv$iv;
                                int i3 = 1;
                                if (((this_$iv$iv$iv.getKindSet() & i2) != 0) && (theNode$iv$iv instanceof DelegatingNode)) {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) theNode$iv$iv;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i2) != 0 ? i3 : 0) != 0) {
                                            count$iv$iv2++;
                                            if (count$iv$iv2 == i3) {
                                                theNode$iv$iv = next$iv$iv;
                                            } else {
                                                if (mutableVector2 != null) {
                                                    node2 = theNode$iv$iv;
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector = mutableVector2;
                                                } else {
                                                    node2 = theNode$iv$iv;
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                mutableVector2 = mutableVector;
                                                Modifier.Node theNode$iv$iv2 = node2;
                                                if (theNode$iv$iv2 == null) {
                                                    node3 = node2;
                                                } else {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(theNode$iv$iv2);
                                                    }
                                                    node3 = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(next$iv$iv);
                                                }
                                                theNode$iv$iv = node3;
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        i3 = 1;
                                    }
                                    Modifier.Node node6 = theNode$iv$iv;
                                    if (count$iv$iv2 == 1) {
                                        node4 = node5;
                                        this_$iv3 = this_$iv2;
                                        theNode$iv$iv = node6;
                                    }
                                }
                            }
                            theNode$iv$iv = DelegatableNodeKt.pop(mutableVector2);
                            node4 = node5;
                            this_$iv3 = this_$iv2;
                        }
                        node = node4;
                        this_$iv = this_$iv3;
                    } else {
                        i = iM6460constructorimpl;
                        node = node4;
                        this_$iv = this_$iv3;
                    }
                    if (node$iv$iv != stopNode$iv$iv) {
                        node$iv$iv = node$iv$iv.getChild();
                        iM6460constructorimpl = i;
                        node4 = node;
                        this_$iv3 = this_$iv;
                    }
                }
            } else {
                node = node4;
            }
            node4 = node.getWrapped();
        }
        return CollectionsKt.emptyList();
    }

    public static final WindowInsetsAnimation findInsetsAnimationProperties(Placeable.PlacementScope placementScope, WindowInsetsRulers windowInsetsRulers) {
        NodeCoordinator node;
        int i;
        NodeCoordinator this_$iv;
        NodeCoordinator this_$iv2;
        Modifier.Node node2;
        int count$iv$iv;
        MutableVector mutableVector;
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        LayoutCoordinates layoutCoordinatesFindRootCoordinates = coordinates != null ? LayoutCoordinatesKt.findRootCoordinates(coordinates) : null;
        NodeCoordinator node3 = layoutCoordinatesFindRootCoordinates instanceof NodeCoordinator ? (NodeCoordinator) layoutCoordinatesFindRootCoordinates : null;
        while (node3 != null) {
            int iM6460constructorimpl = NodeKind.m6460constructorimpl(262144);
            NodeCoordinator this_$iv3 = node3;
            boolean includeTail$iv$iv = NodeKindKt.m6469getIncludeSelfInTraversalH91voCI(iM6460constructorimpl);
            Modifier.Node stopNode$iv$iv = this_$iv3.getTail();
            if (includeTail$iv$iv || (stopNode$iv$iv = stopNode$iv$iv.getParent()) != null) {
                Modifier.Node node$iv$iv = this_$iv3.headNode(includeTail$iv$iv);
                while (true) {
                    if (node$iv$iv == null) {
                        node = node3;
                        break;
                    }
                    if ((node$iv$iv.getAggregateChildKindSet() & iM6460constructorimpl) == 0) {
                        node = node3;
                        break;
                    }
                    if ((node$iv$iv.getKindSet() & iM6460constructorimpl) != 0) {
                        Modifier.Node it$iv = node$iv$iv;
                        int i2 = iM6460constructorimpl;
                        MutableVector mutableVector2 = null;
                        i = iM6460constructorimpl;
                        Modifier.Node nodePop = it$iv;
                        while (nodePop != null) {
                            NodeCoordinator node4 = node3;
                            if (nodePop instanceof TraversableNode) {
                                TraversableNode traversableNode = (TraversableNode) nodePop;
                                this_$iv2 = this_$iv3;
                                if (traversableNode.getTraverseKey() == RulerKey) {
                                    WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = ((WindowInsetsRulerProvider) traversableNode).getInsetsValues().get(windowInsetsRulers);
                                    return windowWindowInsetsAnimationValues != null ? windowWindowInsetsAnimationValues : NoWindowInsetsAnimation.INSTANCE;
                                }
                            } else {
                                this_$iv2 = this_$iv3;
                                Modifier.Node this_$iv$iv$iv = nodePop;
                                if (((this_$iv$iv$iv.getKindSet() & i2) != 0) && (nodePop instanceof DelegatingNode)) {
                                    int count$iv$iv2 = 0;
                                    DelegatingNode this_$iv$iv$iv2 = (DelegatingNode) nodePop;
                                    Modifier.Node node$iv$iv$iv = this_$iv$iv$iv2.getDelegate();
                                    while (node$iv$iv$iv != null) {
                                        Modifier.Node next$iv$iv = node$iv$iv$iv;
                                        if (((next$iv$iv.getKindSet() & i2) != 0 ? 1 : 0) == 0) {
                                            node2 = nodePop;
                                        } else {
                                            count$iv$iv2++;
                                            Modifier.Node node5 = nodePop;
                                            if (count$iv$iv2 == 1) {
                                                node2 = next$iv$iv;
                                            } else {
                                                if (mutableVector2 != null) {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector = mutableVector2;
                                                } else {
                                                    count$iv$iv = count$iv$iv2;
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                mutableVector2 = mutableVector;
                                                if (node5 == null) {
                                                    node2 = node5;
                                                } else {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(node5);
                                                    }
                                                    node2 = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(next$iv$iv);
                                                }
                                                count$iv$iv2 = count$iv$iv;
                                            }
                                        }
                                        node$iv$iv$iv = node$iv$iv$iv.getChild();
                                        nodePop = node2;
                                    }
                                    Modifier.Node node6 = nodePop;
                                    if (count$iv$iv2 == 1) {
                                        node3 = node4;
                                        this_$iv3 = this_$iv2;
                                        nodePop = node6;
                                    }
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector2);
                            node3 = node4;
                            this_$iv3 = this_$iv2;
                        }
                        node = node3;
                        this_$iv = this_$iv3;
                    } else {
                        i = iM6460constructorimpl;
                        node = node3;
                        this_$iv = this_$iv3;
                    }
                    if (node$iv$iv != stopNode$iv$iv) {
                        node$iv$iv = node$iv$iv.getChild();
                        iM6460constructorimpl = i;
                        node3 = node;
                        this_$iv3 = this_$iv;
                    }
                }
            } else {
                node = node3;
            }
            node3 = node.getWrapped();
        }
        return NoWindowInsetsAnimation.INSTANCE;
    }

    /* JADX INFO: renamed from: provideInsetsValues-cytEWk0, reason: not valid java name */
    private static final void m6285provideInsetsValuescytEWk0(RulerScope $this$provideInsetsValues_u2dcytEWk0, RectRulers rulers, long j, int width, int height) {
        if (!ValueInsets.m6277equalsimpl0(j, ValueInsets_androidKt.getUnsetValueInsets())) {
            float left = (int) ((j >>> 48) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
            float top = (int) ((j >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
            float right = width - ((int) ((j >>> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
            float bottom = height - ((int) (WebSocketProtocol.PAYLOAD_SHORT_MAX & j));
            $this$provideInsetsValues_u2dcytEWk0.provides(rulers.getLeft(), left);
            $this$provideInsetsValues_u2dcytEWk0.provides(rulers.getTop(), top);
            $this$provideInsetsValues_u2dcytEWk0.provides(rulers.getRight(), right);
            $this$provideInsetsValues_u2dcytEWk0.provides(rulers.getBottom(), bottom);
        }
    }

    static {
        MutableIntObjectMap it = new MutableIntObjectMap(8);
        it.set(WindowInsetsCompat.Type.statusBars(), WindowInsetsRulers.INSTANCE.getStatusBars());
        it.set(WindowInsetsCompat.Type.navigationBars(), WindowInsetsRulers.INSTANCE.getNavigationBars());
        it.set(WindowInsetsCompat.Type.captionBar(), WindowInsetsRulers.INSTANCE.getCaptionBar());
        it.set(WindowInsetsCompat.Type.ime(), WindowInsetsRulers.INSTANCE.getIme());
        it.set(WindowInsetsCompat.Type.systemGestures(), WindowInsetsRulers.INSTANCE.getSystemGestures());
        it.set(WindowInsetsCompat.Type.mandatorySystemGestures(), WindowInsetsRulers.INSTANCE.getMandatorySystemGestures());
        it.set(WindowInsetsCompat.Type.tappableElement(), WindowInsetsRulers.INSTANCE.getTappableElement());
        it.set(WindowInsetsCompat.Type.displayCutout(), WindowInsetsRulers.INSTANCE.getDisplayCutout());
        WindowInsetsTypeMap = it;
        AnimatableInsetsRulers = new WindowInsetsRulers[]{WindowInsetsRulers.INSTANCE.getStatusBars(), WindowInsetsRulers.INSTANCE.getNavigationBars(), WindowInsetsRulers.INSTANCE.getCaptionBar(), WindowInsetsRulers.INSTANCE.getTappableElement(), WindowInsetsRulers.INSTANCE.getSystemGestures(), WindowInsetsRulers.INSTANCE.getMandatorySystemGestures(), WindowInsetsRulers.INSTANCE.getIme(), WindowInsetsRulers.INSTANCE.getWaterfall(), WindowInsetsRulers.INSTANCE.getDisplayCutout()};
    }
}
