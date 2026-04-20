package androidx.compose.ui.platform.accessibility;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: CollectionInfo.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\u0003H\u0000\u001a\u0016\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bH\u0002\u001a\u0014\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010*\u00020\rH\u0002\u001a\u001c\u0010\u0012\u001a\n \u0011*\u0004\u0018\u00010\u00130\u0013*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0003H\u0002\"\u0018\u0010\f\u001a\u00020\b*\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000e¨\u0006\u0016"}, d2 = {"setCollectionInfo", "", "node", "Landroidx/compose/ui/semantics/SemanticsNode;", "info", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "setCollectionItemInfo", "hasCollectionInfo", "", "calculateIfHorizontallyStacked", "items", "", "isLazyCollection", "Landroidx/compose/ui/semantics/CollectionInfo;", "(Landroidx/compose/ui/semantics/CollectionInfo;)Z", "toAccessibilityCollectionInfo", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;", "kotlin.jvm.PlatformType", "toAccessibilityCollectionItemInfo", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;", "Landroidx/compose/ui/semantics/CollectionItemInfo;", "itemNode", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class CollectionInfo_androidKt {
    public static final void setCollectionInfo(SemanticsNode node, AccessibilityNodeInfoCompat info) {
        CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.getOrNull(node.getConfig(), SemanticsProperties.INSTANCE.getCollectionInfo());
        if (collectionInfo != null) {
            info.setCollectionInfo(toAccessibilityCollectionInfo(collectionInfo));
            return;
        }
        List groupedChildren = new ArrayList();
        if (SemanticsConfigurationKt.getOrNull(node.getConfig(), SemanticsProperties.INSTANCE.getSelectableGroup()) != null) {
            List<SemanticsNode> replacedChildren$ui = node.getReplacedChildren$ui();
            int size = replacedChildren$ui.size();
            for (int index$iv = 0; index$iv < size; index$iv++) {
                Object item$iv = replacedChildren$ui.get(index$iv);
                SemanticsNode childNode = (SemanticsNode) item$iv;
                if (childNode.getConfig().contains(SemanticsProperties.INSTANCE.getSelected())) {
                    groupedChildren.add(childNode);
                }
            }
        }
        if (!groupedChildren.isEmpty()) {
            boolean isHorizontal = calculateIfHorizontallyStacked(groupedChildren);
            info.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(isHorizontal ? 1 : groupedChildren.size(), isHorizontal ? groupedChildren.size() : 1, false, 0));
        }
    }

    public static final void setCollectionItemInfo(SemanticsNode node, AccessibilityNodeInfoCompat info) {
        CollectionItemInfo collectionItemInfo = (CollectionItemInfo) SemanticsConfigurationKt.getOrNull(node.getConfig(), SemanticsProperties.INSTANCE.getCollectionItemInfo());
        if (collectionItemInfo != null) {
            info.setCollectionItemInfo(toAccessibilityCollectionItemInfo(collectionItemInfo, node));
        }
        SemanticsNode parentNode = node.getParent();
        if (parentNode != null && SemanticsConfigurationKt.getOrNull(parentNode.getConfig(), SemanticsProperties.INSTANCE.getSelectableGroup()) != null) {
            CollectionInfo collectionInfo = (CollectionInfo) SemanticsConfigurationKt.getOrNull(parentNode.getConfig(), SemanticsProperties.INSTANCE.getCollectionInfo());
            if ((collectionInfo == null || !isLazyCollection(collectionInfo)) && node.getConfig().contains(SemanticsProperties.INSTANCE.getSelected())) {
                List groupedChildren = new ArrayList();
                int index = 0;
                List<SemanticsNode> replacedChildren$ui = parentNode.getReplacedChildren$ui();
                int size = replacedChildren$ui.size();
                for (int index$iv = 0; index$iv < size; index$iv++) {
                    Object item$iv = replacedChildren$ui.get(index$iv);
                    SemanticsNode childNode = (SemanticsNode) item$iv;
                    if (childNode.getConfig().contains(SemanticsProperties.INSTANCE.getSelected())) {
                        groupedChildren.add(childNode);
                        if (childNode.getLayoutNode().getPlaceOrder$ui() < node.getLayoutNode().getPlaceOrder$ui()) {
                            index++;
                        }
                    }
                }
                if (!groupedChildren.isEmpty()) {
                    boolean isHorizontal = calculateIfHorizontallyStacked(groupedChildren);
                    AccessibilityNodeInfoCompat.CollectionItemInfoCompat itemInfo = AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(isHorizontal ? 0 : index, 1, isHorizontal ? index : 0, 1, false, ((Boolean) node.getConfig().getOrElse(SemanticsProperties.INSTANCE.getSelected(), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt$setCollectionItemInfo$itemInfo$1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Boolean invoke() {
                            return false;
                        }
                    })).booleanValue());
                    if (itemInfo != null) {
                        info.setCollectionItemInfo(itemInfo);
                    }
                }
            }
        }
    }

    public static final boolean hasCollectionInfo(SemanticsNode $this$hasCollectionInfo) {
        return (SemanticsConfigurationKt.getOrNull($this$hasCollectionInfo.getConfig(), SemanticsProperties.INSTANCE.getCollectionInfo()) == null && SemanticsConfigurationKt.getOrNull($this$hasCollectionInfo.getConfig(), SemanticsProperties.INSTANCE.getSelectableGroup()) == null) ? false : true;
    }

    private static final boolean calculateIfHorizontallyStacked(List<SemanticsNode> list) {
        ArrayList deltas;
        char c;
        long j;
        long jM4462unboximpl;
        if (list.size() < 2) {
            return true;
        }
        List<SemanticsNode> list2 = list;
        int $i$f$fastZipWithNext = 0;
        char c2 = ' ';
        if (list2.size() <= 1) {
            deltas = CollectionsKt.emptyList();
            c = ' ';
            j = 4294967295L;
        } else {
            deltas = new ArrayList();
            Object current$iv = list2.get(0);
            int i$iv = 0;
            int lastIndex = CollectionsKt.getLastIndex(list2);
            while (i$iv < lastIndex) {
                Object next$iv = list2.get(i$iv + 1);
                SemanticsNode el2 = (SemanticsNode) next$iv;
                SemanticsNode el1 = (SemanticsNode) current$iv;
                int bits$iv$iv$iv = (int) (el1.getBoundsInRoot().m4482getCenterF1C5BW0() >> c2);
                float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
                char c3 = c2;
                int bits$iv$iv$iv2 = (int) (el2.getBoundsInRoot().m4482getCenterF1C5BW0() >> c3);
                float x$iv = Math.abs(fIntBitsToFloat - Float.intBitsToFloat(bits$iv$iv$iv2));
                List result$iv = deltas;
                int bits$iv$iv$iv3 = (int) (el1.getBoundsInRoot().m4482getCenterF1C5BW0() & 4294967295L);
                float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv3);
                List<SemanticsNode> list3 = list2;
                int bits$iv$iv$iv4 = (int) (el2.getBoundsInRoot().m4482getCenterF1C5BW0() & 4294967295L);
                float y$iv = Math.abs(fIntBitsToFloat2 - Float.intBitsToFloat(bits$iv$iv$iv4));
                long v1$iv$iv = Float.floatToRawIntBits(x$iv);
                long v2$iv$iv = Float.floatToRawIntBits(y$iv);
                result$iv.add(Offset.m4441boximpl(Offset.m4444constructorimpl((v1$iv$iv << c3) | (v2$iv$iv & 4294967295L))));
                current$iv = next$iv;
                i$iv++;
                deltas = result$iv;
                list2 = list3;
                c2 = c3;
                $i$f$fastZipWithNext = $i$f$fastZipWithNext;
            }
            c = c2;
            j = 4294967295L;
        }
        if (deltas.size() == 1) {
            jM4462unboximpl = ((Offset) CollectionsKt.first(deltas)).m4462unboximpl();
        } else {
            List $this$fastReduce$iv = deltas;
            if ($this$fastReduce$iv.isEmpty()) {
                ListUtilsKt.throwUnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object accumulator$iv = CollectionsKt.first((List<? extends Object>) $this$fastReduce$iv);
            int i$iv2 = 1;
            int lastIndex2 = CollectionsKt.getLastIndex($this$fastReduce$iv);
            if (1 <= lastIndex2) {
                while (true) {
                    long element = ((Offset) $this$fastReduce$iv.get(i$iv2)).m4462unboximpl();
                    long result = ((Offset) accumulator$iv).m4462unboximpl();
                    accumulator$iv = Offset.m4441boximpl(Offset.m4457plusMKHz9U(result, element));
                    if (i$iv2 == lastIndex2) {
                        break;
                    }
                    i$iv2++;
                }
            }
            jM4462unboximpl = ((Offset) accumulator$iv).m4462unboximpl();
        }
        long j2 = jM4462unboximpl;
        int bits$iv$iv$iv$iv = (int) (j2 >> c);
        float deltaX = Float.intBitsToFloat(bits$iv$iv$iv$iv);
        int bits$iv$iv$iv$iv2 = (int) (j2 & j);
        float deltaY = Float.intBitsToFloat(bits$iv$iv$iv$iv2);
        return deltaY < deltaX;
    }

    private static final boolean isLazyCollection(CollectionInfo $this$isLazyCollection) {
        return $this$isLazyCollection.getRowCount() < 0 || $this$isLazyCollection.getColumnCount() < 0;
    }

    private static final AccessibilityNodeInfoCompat.CollectionInfoCompat toAccessibilityCollectionInfo(CollectionInfo $this$toAccessibilityCollectionInfo) {
        return AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain($this$toAccessibilityCollectionInfo.getRowCount(), $this$toAccessibilityCollectionInfo.getColumnCount(), false, 0);
    }

    private static final AccessibilityNodeInfoCompat.CollectionItemInfoCompat toAccessibilityCollectionItemInfo(CollectionItemInfo $this$toAccessibilityCollectionItemInfo, SemanticsNode itemNode) {
        return AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain($this$toAccessibilityCollectionItemInfo.getRowIndex(), $this$toAccessibilityCollectionItemInfo.getRowSpan(), $this$toAccessibilityCollectionItemInfo.getColumnIndex(), $this$toAccessibilityCollectionItemInfo.getColumnSpan(), false, ((Boolean) itemNode.getConfig().getOrElse(SemanticsProperties.INSTANCE.getSelected(), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt.toAccessibilityCollectionItemInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return false;
            }
        })).booleanValue());
    }
}
