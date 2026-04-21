.class public final Landroidx/compose/foundation/layout/FlowLayoutKt;
.super Ljava/lang/Object;
.source "FlowLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n+ 9 IntList.kt\nandroidx/collection/IntListKt\n+ 10 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 11 IntList.kt\nandroidx/collection/IntList\n+ 12 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1585:1\n1085#1,111:1714\n1128#2,6:1586\n1128#2,6:1592\n1128#2,6:1603\n1128#2,6:1635\n1128#2,6:1641\n1128#2,6:1652\n1128#2,6:1684\n1128#2,6:1690\n1128#2,6:1696\n1128#2,6:1702\n169#3,5:1598\n81#3,6:1609\n88#3,6:1624\n96#3:1633\n175#3:1634\n169#3,5:1647\n81#3,6:1658\n88#3,6:1673\n96#3:1682\n175#3:1683\n391#4,9:1615\n400#4,3:1630\n391#4,9:1664\n400#4,3:1679\n71#5,5:1708\n1#6:1713\n1107#7:1825\n1085#7,2:1826\n169#8:1828\n166#8:1829\n175#8:1830\n175#8:1843\n175#8:1844\n172#8:1845\n169#8:1846\n172#8,4:1849\n172#8,4:1863\n166#8,4:1877\n905#9:1831\n905#9:1832\n105#10:1833\n105#10:1834\n101#10,10:1853\n101#10,10:1867\n101#10,10:1881\n70#11:1835\n65#11:1836\n65#11:1837\n65#11:1838\n251#11,4:1839\n256#11:1847\n516#12:1848\n424#12,8:1891\n*S KotlinDebug\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n*L\n1057#1:1714,111\n101#1:1586,6\n112#1:1592,6\n119#1:1603,6\n215#1:1635,6\n226#1:1641,6\n232#1:1652,6\n441#1:1684,6\n472#1:1690,6\n502#1:1696,6\n530#1:1702,6\n119#1:1598,5\n119#1:1609,6\n119#1:1624,6\n119#1:1633\n119#1:1634\n232#1:1647,5\n232#1:1658,6\n232#1:1673,6\n232#1:1682\n232#1:1683\n119#1:1615,9\n119#1:1630,3\n232#1:1664,9\n232#1:1679,3\n936#1:1708,5\n1213#1:1825\n1213#1:1826,2\n1214#1:1828\n1215#1:1829\n1216#1:1830\n1429#1:1843\n1430#1:1844\n1435#1:1845\n1436#1:1846\n1555#1:1849,4\n1563#1:1863,4\n1569#1:1877,4\n1261#1:1831\n1262#1:1832\n1333#1:1833\n1343#1:1834\n1555#1:1853,10\n1563#1:1867,10\n1569#1:1881,10\n1406#1:1835\n1408#1:1836\n1419#1:1837\n1420#1:1838\n1424#1:1839,4\n1424#1:1847\n1462#1:1848\n1582#1:1891,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e2\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aq\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a2\u0006\u0002\u0010\u0014\u001ag\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a2\u0006\u0002\u0010\u0015\u001aq\u0010\u0016\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u001a2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a2\u0006\u0002\u0010\u001c\u001ag\u0010\u0016\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0010\u00a2\u0006\u0002\u0008\u0012\u00a2\u0006\u0002\u0008\u0013H\u0007\u00a2\u0006\u0002\u0010\u001d\u001a%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0010!\u001a=\u0010\"\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%H\u0001\u00a2\u0006\u0002\u0010&\u001a%\u0010\'\u001a\u00020\u001f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000bH\u0001\u00a2\u0006\u0002\u0010(\u001a=\u0010)\u001a\u00020#2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%H\u0001\u00a2\u0006\u0002\u0010*\u001aT\u0010+\u001a\u00020\u000b2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00\u00a2\u0006\u0002\u0008\u00132\u0006\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0082\u0008\u001a\u0091\u0001\u00103\u001a\u00020\u000b2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00\u00a2\u0006\u0002\u0008\u00132#\u00104\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00\u00a2\u0006\u0002\u0008\u00132\u0006\u00101\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0083\u0008\u001a[\u00106\u001a\u0002072\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0002\u00a2\u0006\u0002\u0010<\u001a\u0096\u0001\u00106\u001a\u0002072\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00\u00a2\u0006\u0002\u0008\u00132#\u00104\u001a\u001f\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b00\u00a2\u0006\u0002\u0008\u00132\u0006\u0010;\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u000b2\u0006\u00105\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0082\u0008\u00a2\u0006\u0002\u0010=\u001aY\u0010>\u001a\u00020?*\u00020@2\u0006\u0010A\u001a\u00020B2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020E0D2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020J2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020%H\u0000\u00a2\u0006\u0004\u0008K\u0010L\u001a\u001e\u0010M\u001a\u0004\u0018\u00010E*\u0008\u0012\u0004\u0012\u00020E0D2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0002\u001a\u001c\u0010P\u001a\u00020\u000b*\u00020.2\u0006\u0010Q\u001a\u00020R2\u0006\u00104\u001a\u00020\u000bH\u0000\u001a\u001c\u0010S\u001a\u00020\u000b*\u00020.2\u0006\u0010Q\u001a\u00020R2\u0006\u0010/\u001a\u00020\u000bH\u0000\u001a9\u0010Z\u001a\u000207*\u00020E2\u0006\u0010A\u001a\u00020B2\u0006\u0010I\u001a\u00020[2\u0014\u0010\\\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010]\u0012\u0004\u0012\u00020\u00010\u0010H\u0000\u00a2\u0006\u0004\u0008^\u0010_\u001aQ\u0010`\u001a\u00020?*\u00020@2\u0006\u0010I\u001a\u00020J2\u0006\u0010a\u001a\u00020\u000b2\u0006\u0010b\u001a\u00020\u000b2\u0006\u0010:\u001a\u0002092\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020?0d2\u0006\u0010e\u001a\u00020B2\u0006\u0010f\u001a\u000209H\u0000\u00a2\u0006\u0004\u0008g\u0010h\"\u0014\u0010T\u001a\u00020UX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010W\"\u0014\u0010X\u001a\u00020UX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010W\u00a8\u0006i"
    }
    d2 = {
        "FlowRow",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "itemVerticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "maxItemsInEachRow",
        "",
        "maxLines",
        "overflow",
        "Landroidx/compose/foundation/layout/FlowRowOverflow;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/FlowRowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "FlowColumn",
        "itemHorizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "maxItemsInEachColumn",
        "Landroidx/compose/foundation/layout/FlowColumnOverflow;",
        "Landroidx/compose/foundation/layout/FlowColumnScope;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "rowMeasurementHelper",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "maxItemsInMainAxis",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "rowMeasurementMultiContentHelper",
        "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "overflowState",
        "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "columnMeasurementHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "columnMeasurementMultiContentHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;",
        "maxIntrinsicMainAxisSize",
        "children",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "mainAxisSize",
        "Lkotlin/Function3;",
        "crossAxisAvailable",
        "mainAxisSpacing",
        "minIntrinsicMainAxisSize",
        "crossAxisSize",
        "crossAxisSpacing",
        "intrinsicCrossAxisSize",
        "Landroidx/collection/IntIntPair;",
        "mainAxisSizes",
        "",
        "crossAxisSizes",
        "mainAxisAvailable",
        "(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J",
        "breakDownItems",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurePolicy",
        "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
        "measurablesIterator",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "mainAxisSpacingDp",
        "Landroidx/compose/ui/unit/Dp;",
        "crossAxisSpacingDp",
        "constraints",
        "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;",
        "breakDownItems-di9J0FM",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Ljava/util/Iterator;FFJIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)Landroidx/compose/ui/layout/MeasureResult;",
        "safeNext",
        "info",
        "Landroidx/compose/foundation/layout/FlowLineInfo;",
        "mainAxisMin",
        "isHorizontal",
        "",
        "crossAxisMin",
        "CROSS_AXIS_ALIGNMENT_TOP",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "getCROSS_AXIS_ALIGNMENT_TOP",
        "()Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "CROSS_AXIS_ALIGNMENT_START",
        "getCROSS_AXIS_ALIGNMENT_START",
        "measureAndCache",
        "Landroidx/compose/ui/unit/Constraints;",
        "storePlaceable",
        "Landroidx/compose/ui/layout/Placeable;",
        "measureAndCache-rqJ1uqs",
        "(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J",
        "placeHelper",
        "mainAxisTotalSize",
        "crossAxisTotalSize",
        "items",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "measureHelper",
        "outPosition",
        "placeHelper-BmaY500",
        "(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation-layout"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private static final CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;


# direct methods
.method public static synthetic $r8$lambda$8JbKy0dDyVuM_f3DJOzcbYgtsJA(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowRow$lambda$1$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CgcNSR0il339LbPf3mdQTkycL3Q(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowColumn$lambda$1$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kc7bJd5tREFKFppce-e7ySj_q9Y(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->breakDownItems_di9J0FM$lambda$0$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LXm4t8g0OSYK1Cs41NRTzBPHLBg(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->breakDownItems_di9J0FM$lambda$2$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1504
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->vertical$foundation_layout(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 1505
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-void
.end method

.method public static final FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p3, "itemHorizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p4, "maxItemsInEachColumn"    # I
    .param p5, "maxLines"    # I
    .param p6, "overflow"    # Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "II",
            "Landroidx/compose/foundation/layout/FlowColumnOverflow;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "The overflow parameter has been deprecated"
    .end annotation

    .line 214
    move-object/from16 v8, p7

    move/from16 v9, p9

    const v0, -0x73e54481

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(FlowColumn)N(modifier,verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInEachColumn,maxLines,overflow,content)214@9466L53,216@9552L234,225@9840L294,231@10139L75:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p9

    .local v2, "$dirty":I
    and-int/lit8 v3, p10, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v7, p10, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v11, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v11, v9, 0x180

    if-nez v11, :cond_8

    move-object/from16 v11, p2

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_7
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v2, v12

    goto :goto_5

    :cond_8
    move-object/from16 v11, p2

    :goto_5
    and-int/lit8 v12, p10, 0x8

    if-eqz v12, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v13, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_b

    move-object/from16 v13, p3

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v2, v14

    goto :goto_7

    :cond_b
    move-object/from16 v13, p3

    :goto_7
    and-int/lit8 v14, p10, 0x10

    if-eqz v14, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move/from16 v15, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v15, v9, 0x6000

    if-nez v15, :cond_e

    move/from16 v15, p4

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v2, v2, v16

    goto :goto_9

    :cond_e
    move/from16 v15, p4

    :goto_9
    and-int/lit8 v16, p10, 0x20

    const/high16 v18, 0x30000

    if-eqz v16, :cond_f

    or-int v2, v2, v18

    move/from16 v10, p5

    goto :goto_b

    :cond_f
    and-int v18, v9, v18

    if-nez v18, :cond_11

    move/from16 v10, p5

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v2, v2, v18

    goto :goto_b

    :cond_11
    move/from16 v10, p5

    :goto_b
    and-int/lit8 v18, p10, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_12

    or-int v2, v2, v19

    move-object/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v19, v9, v19

    if-nez v19, :cond_14

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v21, 0x80000

    :goto_c
    or-int v2, v2, v21

    goto :goto_d

    :cond_14
    move-object/from16 v0, p6

    :goto_d
    const/high16 v21, 0xc00000

    and-int v21, v9, v21

    if-nez v21, :cond_16

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v21, 0x400000

    :goto_e
    or-int v2, v2, v21

    :cond_16
    const v21, 0x492493

    and-int v0, v2, v21

    move/from16 v21, v3

    const v3, 0x492492

    if-eq v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    :goto_f
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz v21, :cond_18

    .line 206
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 214
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object/from16 v0, p0

    .line 206
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v5, :cond_19

    .line 207
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v3

    move-object v10, v3

    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v3, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_11

    .line 206
    .end local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_19
    move-object v10, v6

    .line 207
    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v10, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_11
    if-eqz v7, :cond_1a

    .line 208
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    move-object v11, v3

    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v11, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_1a
    if-eqz v12, :cond_1b

    .line 209
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v3

    move-object v12, v3

    .end local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v3, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    goto :goto_12

    .line 208
    .end local v3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_1b
    move-object v12, v13

    .line 209
    .end local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v12, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_12
    if-eqz v14, :cond_1c

    .line 210
    const v3, 0x7fffffff

    move v13, v3

    .end local p4    # "maxItemsInEachColumn":I
    .local v3, "maxItemsInEachColumn":I
    goto :goto_13

    .line 209
    .end local v3    # "maxItemsInEachColumn":I
    .restart local p4    # "maxItemsInEachColumn":I
    :cond_1c
    move v13, v15

    .line 210
    .end local p4    # "maxItemsInEachColumn":I
    .local v13, "maxItemsInEachColumn":I
    :goto_13
    if-eqz v16, :cond_1d

    .line 211
    const v3, 0x7fffffff

    move v14, v3

    .end local p5    # "maxLines":I
    .local v3, "maxLines":I
    goto :goto_14

    .line 210
    .end local v3    # "maxLines":I
    .restart local p5    # "maxLines":I
    :cond_1d
    move/from16 v14, p5

    .line 211
    .end local p5    # "maxLines":I
    .local v14, "maxLines":I
    :goto_14
    if-eqz v18, :cond_1e

    .line 212
    sget-object v3, Landroidx/compose/foundation/layout/FlowColumnOverflow;->Companion:Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/FlowColumnOverflow;

    move-result-object v3

    .end local p6    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .local v3, "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    goto :goto_15

    .line 211
    .end local v3    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .restart local p6    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    :cond_1e
    move-object/from16 v3, p6

    .line 212
    .end local p6    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .restart local v3    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)"

    const v7, -0x73e54481

    invoke-static {v7, v2, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 215
    :cond_1f
    const v5, -0xfa5ec2c

    const-string v6, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v5, 0x380000

    and-int/2addr v5, v2

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_20

    const/4 v5, 0x1

    goto :goto_16

    :cond_20
    const/4 v5, 0x0

    .local v5, "invalid$iv":Z
    :goto_16
    move-object v7, v1

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 1635
    .local v15, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1636
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_22

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p0, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_21

    goto :goto_17

    .line 1640
    :cond_21
    goto :goto_18

    .line 1636
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object/from16 p0, v0

    .line 1637
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_17
    const/4 v0, 0x0

    .line 215
    .local v0, "$i$a$-cache-FlowLayoutKt$FlowColumn$overflowState$1":I
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/FlowColumnOverflow;->createOverflowState$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v0

    .line 1637
    .end local v0    # "$i$a$-cache-FlowLayoutKt$FlowColumn$overflowState$1":I
    nop

    .line 1638
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1639
    move-object v4, v0

    .line 1635
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_18
    nop

    .line 215
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    move-object v15, v4

    check-cast v15, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .local v15, "overflowState":Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v0, v4

    shr-int/lit8 v4, v2, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v0, v4

    shr-int/lit8 v4, v2, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v0, v4

    shr-int/lit8 v4, v2, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int v17, v0, v4

    .line 217
    move-object/from16 v16, v1

    const/16 v0, 0x100

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v10 .. v17}, Landroidx/compose/foundation/layout/FlowLayoutKt;->columnMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    move-result-object v1

    .line 216
    move v4, v13

    move-object v13, v12

    move-object/from16 v12, v16

    .line 226
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local v4, "maxItemsInEachColumn":I
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    const v5, -0xfa5bc7b

    invoke-static {v12, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v5, 0x380000

    and-int/2addr v5, v2

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_19

    :cond_23
    const/4 v5, 0x0

    :goto_19
    const/high16 v6, 0x1c00000

    and-int/2addr v6, v2

    const/high16 v7, 0x800000

    if-ne v6, v7, :cond_24

    const/4 v6, 0x1

    goto :goto_1a

    :cond_24
    const/4 v6, 0x0

    :goto_1a
    or-int/2addr v5, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v2

    const/high16 v7, 0x20000

    if-ne v6, v7, :cond_25

    const/4 v6, 0x1

    goto :goto_1b

    :cond_25
    const/4 v6, 0x0

    :goto_1b
    or-int/2addr v5, v6

    .restart local v5    # "invalid$iv":Z
    move-object v6, v12

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 1641
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1642
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_27

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v1

    .end local v1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local p1, "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_26

    goto :goto_1c

    .line 1646
    :cond_26
    move/from16 v17, v2

    move/from16 p4, v4

    const/4 v4, 0x1

    goto :goto_1d

    .line 1642
    .end local p1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .restart local v1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    :cond_27
    move-object/from16 p1, v1

    .line 1643
    .end local v1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .restart local p1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    :goto_1c
    const/4 v1, 0x0

    .line 227
    .local v1, "$i$a$-cache-FlowLayoutKt$FlowColumn$list$1":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p2, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local p2, "it$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    .line 228
    .local v0, "mutableList":Ljava/util/List;
    move/from16 p3, v1

    .end local v1    # "$i$a$-cache-FlowLayoutKt$FlowColumn$list$1":I
    .local p3, "$i$a$-cache-FlowLayoutKt$FlowColumn$list$1":I
    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function3;)V

    move/from16 v17, v2

    .end local v2    # "$dirty":I
    .local v17, "$dirty":I
    const v2, -0x668b5731

    move/from16 p4, v4

    const/4 v4, 0x1

    .end local v4    # "maxItemsInEachColumn":I
    .restart local p4    # "maxItemsInEachColumn":I
    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v3, v15, v0}, Landroidx/compose/foundation/layout/FlowColumnOverflow;->addOverflowComposables$foundation_layout(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;)V

    .line 230
    nop

    .line 1643
    .end local v0    # "mutableList":Ljava/util/List;
    .end local p3    # "$i$a$-cache-FlowLayoutKt$FlowColumn$list$1":I
    nop

    .line 1644
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1645
    nop

    .line 1641
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p2    # "it$iv":Ljava/lang/Object;
    :goto_1d
    nop

    .line 226
    .end local v5    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v0, Ljava/util/List;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 225
    nop

    .line 232
    .local v0, "list":Ljava/util/List;
    shl-int/lit8 v1, v17, 0x3

    and-int/lit8 v1, v1, 0x70

    .local v1, "$changed$iv":I
    move-object v2, v0

    .local v2, "contents$iv":Ljava/util/List;
    move-object/from16 v5, p0

    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    move-object/from16 v6, p1

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    move-object v7, v12

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1647
    .local v16, "$i$f$Layout":I
    const v4, 0x5365e06c

    move-object/from16 p2, v0

    .end local v0    # "list":Ljava/util/List;
    .local p2, "list":Ljava/util/List;
    const-string v0, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh"

    invoke-static {v7, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1649
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 1650
    nop

    .line 1651
    const v4, 0x116f97ca

    move-object/from16 p3, v0

    const-string v0, "CC(remember):Layout.kt#9igjgp"

    invoke-static {v7, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v0, v1, 0x380

    xor-int/lit16 v0, v0, 0x180

    const/16 v4, 0x100

    if-le v0, v4, :cond_28

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_28
    and-int/lit16 v0, v1, 0x180

    const/16 v4, 0x100

    if-ne v0, v4, :cond_2a

    :cond_29
    const/4 v4, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    :goto_1e
    move-object v0, v7

    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 1652
    .local v18, "$i$f$cache":I
    move/from16 p5, v1

    .end local v1    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1653
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_2c

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p6, v2

    .end local v2    # "contents$iv":Ljava/util/List;
    .local p6, "contents$iv":Ljava/util/List;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    goto :goto_1f

    .line 1657
    :cond_2b
    goto :goto_20

    .line 1653
    .end local p6    # "contents$iv":Ljava/util/List;
    .restart local v2    # "contents$iv":Ljava/util/List;
    :cond_2c
    move-object/from16 p6, v2

    .line 1654
    .end local v2    # "contents$iv":Ljava/util/List;
    .restart local p6    # "contents$iv":Ljava/util/List;
    :goto_1f
    const/4 v2, 0x0

    .line 1651
    .local v2, "$i$a$-cache-LayoutKt$Layout$3$iv":I
    invoke-static {v6}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .line 1654
    .end local v2    # "$i$a$-cache-LayoutKt$Layout$3$iv":I
    nop

    .line 1655
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1656
    move-object v1, v2

    .line 1652
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_20
    nop

    .line 1651
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "invalid$iv$iv":Z
    .end local v18    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, p5, 0x70

    .line 1648
    nop

    .local v0, "$changed$iv$iv":I
    .local v1, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v2, v7

    .local v2, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v4, p3

    .local v4, "content$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 p3, v5

    .local p3, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    const/16 v18, 0x0

    .line 1658
    .local v18, "$i$f$Layout":I
    move/from16 p8, v0

    .end local v0    # "$changed$iv$iv":I
    .local p8, "$changed$iv$iv":I
    const v0, -0x451e1427

    move-object/from16 v19, v3

    .end local v3    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .local v19, "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    const-string v3, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1659
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 1660
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 1661
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v20, v0

    move-object/from16 v0, p3

    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v0, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .local v20, "compositeKeyHash$iv$iv":I
    .local p3, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 1663
    .local v5, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .local v22, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, p8, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 1662
    move-object/from16 v23, v21

    .local v23, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v21, v2

    .local v0, "$changed$iv$iv$iv":I
    .local v21, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 1664
    .local v24, "$i$f$ReusableComposeNode":I
    move/from16 v25, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v25, "$changed$iv$iv$iv":I
    const v0, -0x20f7d59c

    move-object/from16 v26, v2

    .end local v2    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v26, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v27, v6

    move-object/from16 v6, v21

    .end local v21    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v27, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    invoke-static {v6, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1665
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1666
    :cond_2d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1667
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1668
    move-object/from16 v0, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    .line 1670
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2e
    move-object/from16 v0, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1672
    :goto_21
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 1673
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v28, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1674
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1675
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v1

    .end local v1    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v29, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1676
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1677
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1678
    nop

    .line 1672
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1679
    shr-int/lit8 v0, v25, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1664
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1681
    nop

    .line 1658
    .end local v6    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$f$ReusableComposeNode":I
    .end local v25    # "$changed$iv$iv$iv":I
    .end local v28    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1682
    nop

    .line 1647
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v4    # "content$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v18    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v22    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v26    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p8    # "$changed$iv$iv":I
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1683
    nop

    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$Layout":I
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local p3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "$changed$iv":I
    .end local p6    # "contents$iv":Ljava/util/List;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 233
    .end local v15    # "overflowState":Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .end local p1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local p2    # "list":Ljava/util/List;
    :cond_2f
    move/from16 v5, p4

    move-object v2, v10

    move v6, v14

    move-object/from16 v7, v19

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v13

    goto :goto_22

    .line 205
    .end local v10    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v11    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v14    # "maxLines":I
    .end local v17    # "$dirty":I
    .end local v19    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$dirty":I
    .local p1, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local p2, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local p3, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local p5, "maxLines":I
    .local p6, "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    :cond_30
    move-object v12, v1

    move/from16 v17, v2

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v2    # "$dirty":I
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$dirty":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object v2, v6

    move v5, v15

    move/from16 v6, p5

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v13

    .line 233
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .end local p4    # "maxItemsInEachColumn":I
    .end local p5    # "maxLines":I
    .end local p6    # "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v3, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v5, "maxItemsInEachColumn":I
    .local v6, "maxLines":I
    .local v7, "overflow":Landroidx/compose/foundation/layout/FlowColumnOverflow;
    :goto_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_31

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda1;

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_31
    return-void
.end method

.method public static final FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p3, "itemHorizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p4, "maxItemsInEachColumn"    # I
    .param p5, "maxLines"    # I
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 272
    move/from16 v8, p8

    const v0, 0x51c4b3fb

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(FlowColumn)N(modifier,verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInEachColumn,maxLines,content)271@11939L226:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v8, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v7, p9, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v8, 0x180

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v2, v10

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v10, p9, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v11, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_b

    move-object/from16 v11, p3

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v2, v12

    goto :goto_7

    :cond_b
    move-object/from16 v11, p3

    :goto_7
    and-int/lit8 v12, p9, 0x10

    if-eqz v12, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_e

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_e
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p9, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int/2addr v15, v8

    if-nez v15, :cond_11

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_11
    move/from16 v15, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v17, v8, v16

    if-nez v17, :cond_13

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move-object/from16 v0, p6

    :goto_d
    const v18, 0x92493

    and-int v0, v2, v18

    move/from16 p7, v3

    const v3, 0x92492

    if-eq v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p7, :cond_15

    .line 264
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v9, v0

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 272
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move-object v9, v4

    .line 264
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v9, "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v5, :cond_16

    .line 265
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    move/from16 v20, v10

    move-object v10, v0

    move/from16 v0, v20

    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v0, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_10

    .line 264
    .end local v0    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_16
    move v0, v10

    move-object v10, v6

    .line 265
    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v10, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_10
    if-eqz v7, :cond_17

    .line 266
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    move-object v11, v3

    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v3, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_11

    .line 265
    .end local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_17
    move-object/from16 v11, p2

    .line 266
    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v11, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_11
    if-eqz v0, :cond_18

    .line 267
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    move/from16 v20, v12

    move-object v12, v0

    move/from16 v0, v20

    .end local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v0, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    goto :goto_12

    .line 266
    .end local v0    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :cond_18
    move v0, v12

    move-object/from16 v12, p3

    .line 267
    .end local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v12, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    :goto_12
    if-eqz v0, :cond_19

    .line 268
    const v0, 0x7fffffff

    move v13, v0

    .end local p4    # "maxItemsInEachColumn":I
    .local v13, "maxItemsInEachColumn":I
    :cond_19
    if-eqz v14, :cond_1a

    .line 269
    const v0, 0x7fffffff

    move v14, v0

    .end local p5    # "maxLines":I
    .local v0, "maxLines":I
    goto :goto_13

    .line 268
    .end local v0    # "maxLines":I
    .restart local p5    # "maxLines":I
    :cond_1a
    move v14, v15

    .line 269
    .end local p5    # "maxLines":I
    .local v14, "maxLines":I
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)"

    const v4, 0x51c4b3fb

    invoke-static {v4, v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 273
    :cond_1b
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    sget-object v0, Landroidx/compose/foundation/layout/FlowColumnOverflow;->Companion:Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowColumnOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/FlowColumnOverflow;

    move-result-object v15

    .line 280
    and-int/lit8 v0, v2, 0xe

    or-int v0, v0, v16

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int v18, v0, v3

    .line 272
    const/16 v19, 0x0

    move-object/from16 v16, p6

    move-object/from16 v17, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 281
    :cond_1c
    move v0, v2

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v6, v14

    move v5, v13

    goto :goto_14

    .line 263
    .end local v9    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v10    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v11    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v12    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v13    # "maxItemsInEachColumn":I
    .end local v14    # "maxLines":I
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .restart local p4    # "maxItemsInEachColumn":I
    .restart local p5    # "maxLines":I
    :cond_1d
    move-object/from16 v17, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v0, v2

    move-object v1, v4

    move-object v2, v6

    move v6, v15

    move-object/from16 v4, p3

    move v5, v13

    .line 281
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local p3    # "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .end local p4    # "maxItemsInEachColumn":I
    .end local p5    # "maxLines":I
    .local v0, "$dirty":I
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "itemHorizontalAlignment":Landroidx/compose/ui/Alignment$Horizontal;
    .local v5, "maxItemsInEachColumn":I
    .local v6, "maxLines":I
    :goto_14
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_1e

    move v7, v0

    .end local v0    # "$dirty":I
    .local v7, "$dirty":I
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda2;

    move/from16 v9, p9

    move v11, v7

    move-object/from16 v7, p6

    .end local v7    # "$dirty":I
    .local v11, "$dirty":I
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILkotlin/jvm/functions/Function3;II)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v11    # "$dirty":I
    .restart local v0    # "$dirty":I
    :cond_1e
    move v11, v0

    .end local v0    # "$dirty":I
    .restart local v11    # "$dirty":I
    :goto_15
    return-void
.end method

.method private static final FlowColumn$lambda$1$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$content"    # Lkotlin/jvm/functions/Function3;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C227@10017L9:FlowLayout.kt#2w3rfo"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.layout.FlowColumn.<anonymous>.<anonymous> (FlowLayout.kt:227)"

    const v2, -0x668b5731

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 228
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/FlowColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowColumnScopeInstance;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final FlowColumn$lambda$2(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p9

    move-object/from16 v9, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowColumnOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final FlowColumn$lambda$3(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p3, "itemVerticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p4, "maxItemsInEachRow"    # I
    .param p5, "maxLines"    # I
    .param p6, "overflow"    # Landroidx/compose/foundation/layout/FlowRowOverflow;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "II",
            "Landroidx/compose/foundation/layout/FlowRowOverflow;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowRowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "The overflow parameter has been deprecated"
    .end annotation

    .line 100
    move-object/from16 v8, p7

    move/from16 v9, p9

    const v0, -0x749f38e1

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(FlowRow)N(modifier,horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInEachRow,maxLines,overflow,content)100@4511L53,102@4597L226,111@4877L291,118@5174L75:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p9

    .local v2, "$dirty":I
    and-int/lit8 v3, p10, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v7, p10, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v11, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v11, v9, 0x180

    if-nez v11, :cond_8

    move-object/from16 v11, p2

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_7
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v2, v12

    goto :goto_5

    :cond_8
    move-object/from16 v11, p2

    :goto_5
    and-int/lit8 v12, p10, 0x8

    if-eqz v12, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v13, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_b

    move-object/from16 v13, p3

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v2, v14

    goto :goto_7

    :cond_b
    move-object/from16 v13, p3

    :goto_7
    and-int/lit8 v14, p10, 0x10

    if-eqz v14, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move/from16 v15, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v15, v9, 0x6000

    if-nez v15, :cond_e

    move/from16 v15, p4

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v2, v2, v16

    goto :goto_9

    :cond_e
    move/from16 v15, p4

    :goto_9
    and-int/lit8 v16, p10, 0x20

    const/high16 v18, 0x30000

    if-eqz v16, :cond_f

    or-int v2, v2, v18

    move/from16 v10, p5

    goto :goto_b

    :cond_f
    and-int v18, v9, v18

    if-nez v18, :cond_11

    move/from16 v10, p5

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v2, v2, v18

    goto :goto_b

    :cond_11
    move/from16 v10, p5

    :goto_b
    and-int/lit8 v18, p10, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_12

    or-int v2, v2, v19

    move-object/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v19, v9, v19

    if-nez v19, :cond_14

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v21, 0x80000

    :goto_c
    or-int v2, v2, v21

    goto :goto_d

    :cond_14
    move-object/from16 v0, p6

    :goto_d
    const/high16 v21, 0xc00000

    and-int v21, v9, v21

    if-nez v21, :cond_16

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v21, 0x400000

    :goto_e
    or-int v2, v2, v21

    :cond_16
    const v21, 0x492493

    and-int v0, v2, v21

    move/from16 v21, v3

    const v3, 0x492492

    if-eq v0, v3, :cond_17

    const/4 v0, 0x1

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    :goto_f
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz v21, :cond_18

    .line 92
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 100
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object/from16 v0, p0

    .line 92
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v5, :cond_19

    .line 93
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    move-object v10, v3

    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v3, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_11

    .line 92
    .end local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_19
    move-object v10, v6

    .line 93
    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v10, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_11
    if-eqz v7, :cond_1a

    .line 94
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v3

    move-object v11, v3

    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v11, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_1a
    if-eqz v12, :cond_1b

    .line 95
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    move-object v12, v3

    .end local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v3, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    goto :goto_12

    .line 94
    .end local v3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .restart local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :cond_1b
    move-object v12, v13

    .line 95
    .end local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v12, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :goto_12
    if-eqz v14, :cond_1c

    .line 96
    const v3, 0x7fffffff

    move v13, v3

    .end local p4    # "maxItemsInEachRow":I
    .local v3, "maxItemsInEachRow":I
    goto :goto_13

    .line 95
    .end local v3    # "maxItemsInEachRow":I
    .restart local p4    # "maxItemsInEachRow":I
    :cond_1c
    move v13, v15

    .line 96
    .end local p4    # "maxItemsInEachRow":I
    .local v13, "maxItemsInEachRow":I
    :goto_13
    if-eqz v16, :cond_1d

    .line 97
    const v3, 0x7fffffff

    move v14, v3

    .end local p5    # "maxLines":I
    .local v3, "maxLines":I
    goto :goto_14

    .line 96
    .end local v3    # "maxLines":I
    .restart local p5    # "maxLines":I
    :cond_1d
    move/from16 v14, p5

    .line 97
    .end local p5    # "maxLines":I
    .local v14, "maxLines":I
    :goto_14
    if-eqz v18, :cond_1e

    .line 98
    sget-object v3, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v3

    .end local p6    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    .local v3, "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    goto :goto_15

    .line 97
    .end local v3    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    .restart local p6    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    :cond_1e
    move-object/from16 v3, p6

    .line 98
    .end local p6    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    .restart local v3    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, -0x1

    const-string/jumbo v6, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)"

    const v7, -0x749f38e1

    invoke-static {v7, v2, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 101
    :cond_1f
    const v5, 0x364bb4d4

    const-string v6, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v5, 0x380000

    and-int/2addr v5, v2

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_20

    const/4 v5, 0x1

    goto :goto_16

    :cond_20
    const/4 v5, 0x0

    .local v5, "invalid$iv":Z
    :goto_16
    move-object v7, v1

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 1586
    .local v15, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1587
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_22

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p0, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_21

    goto :goto_17

    .line 1591
    :cond_21
    goto :goto_18

    .line 1587
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_22
    move-object/from16 p0, v0

    .line 1588
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_17
    const/4 v0, 0x0

    .line 101
    .local v0, "$i$a$-cache-FlowLayoutKt$FlowRow$overflowState$1":I
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/FlowRowOverflow;->createOverflowState$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v0

    .line 1588
    .end local v0    # "$i$a$-cache-FlowLayoutKt$FlowRow$overflowState$1":I
    nop

    .line 1589
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1590
    move-object v4, v0

    .line 1586
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_18
    nop

    .line 101
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    move-object v15, v4

    check-cast v15, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .local v15, "overflowState":Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v0, v4

    shr-int/lit8 v4, v2, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v0, v4

    shr-int/lit8 v4, v2, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v0, v4

    shr-int/lit8 v4, v2, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int v17, v0, v4

    .line 103
    move-object/from16 v16, v1

    const/16 v0, 0x100

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v16, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v10 .. v17}, Landroidx/compose/foundation/layout/FlowLayoutKt;->rowMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    move-result-object v1

    .line 102
    move v4, v13

    move-object v13, v12

    move-object/from16 v12, v16

    .line 112
    .end local v16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local v4, "maxItemsInEachRow":I
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    const v5, 0x364be382

    invoke-static {v12, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/high16 v5, 0x380000

    and-int/2addr v5, v2

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_19

    :cond_23
    const/4 v5, 0x0

    :goto_19
    const/high16 v6, 0x1c00000

    and-int/2addr v6, v2

    const/high16 v7, 0x800000

    if-ne v6, v7, :cond_24

    const/4 v6, 0x1

    goto :goto_1a

    :cond_24
    const/4 v6, 0x0

    :goto_1a
    or-int/2addr v5, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v2

    const/high16 v7, 0x20000

    if-ne v6, v7, :cond_25

    const/4 v6, 0x1

    goto :goto_1b

    :cond_25
    const/4 v6, 0x0

    :goto_1b
    or-int/2addr v5, v6

    .restart local v5    # "invalid$iv":Z
    move-object v6, v12

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 1592
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1593
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_27

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p1, v1

    .end local v1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .local p1, "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_26

    goto :goto_1c

    .line 1597
    :cond_26
    move/from16 v17, v2

    move/from16 p4, v4

    const/4 v4, 0x1

    goto :goto_1d

    .line 1593
    .end local p1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .restart local v1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    :cond_27
    move-object/from16 p1, v1

    .line 1594
    .end local v1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .restart local p1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    :goto_1c
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$a$-cache-FlowLayoutKt$FlowRow$list$1":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p2, v0

    .end local v0    # "it$iv":Ljava/lang/Object;
    .local p2, "it$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, "mutableList":Ljava/util/List;
    move/from16 p3, v1

    .end local v1    # "$i$a$-cache-FlowLayoutKt$FlowRow$list$1":I
    .local p3, "$i$a$-cache-FlowLayoutKt$FlowRow$list$1":I
    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function3;)V

    move/from16 v17, v2

    .end local v2    # "$dirty":I
    .local v17, "$dirty":I
    const v2, -0x471afb91

    move/from16 p4, v4

    const/4 v4, 0x1

    .end local v4    # "maxItemsInEachRow":I
    .restart local p4    # "maxItemsInEachRow":I
    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v3, v15, v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->addOverflowComposables$foundation_layout(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Ljava/util/List;)V

    .line 116
    nop

    .line 1594
    .end local v0    # "mutableList":Ljava/util/List;
    .end local p3    # "$i$a$-cache-FlowLayoutKt$FlowRow$list$1":I
    nop

    .line 1595
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1596
    nop

    .line 1592
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p2    # "it$iv":Ljava/lang/Object;
    :goto_1d
    nop

    .line 112
    .end local v5    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v0, Ljava/util/List;

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 111
    nop

    .line 119
    .local v0, "list":Ljava/util/List;
    shl-int/lit8 v1, v17, 0x3

    and-int/lit8 v1, v1, 0x70

    .local v1, "$changed$iv":I
    move-object v2, v0

    .local v2, "contents$iv":Ljava/util/List;
    move-object/from16 v5, p0

    .local v5, "modifier$iv":Landroidx/compose/ui/Modifier;
    move-object/from16 v6, p1

    .local v6, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    move-object v7, v12

    .local v7, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1598
    .local v16, "$i$f$Layout":I
    const v4, 0x5365e06c

    move-object/from16 p2, v0

    .end local v0    # "list":Ljava/util/List;
    .local p2, "list":Ljava/util/List;
    const-string v0, "CC(Layout)P(!1,2)172@7176L62,169@7062L183:Layout.kt#80mrfh"

    invoke-static {v7, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1600
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->combineAsVirtualLayouts(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 1601
    nop

    .line 1602
    const v4, 0x116f97ca

    move-object/from16 p3, v0

    const-string v0, "CC(remember):Layout.kt#9igjgp"

    invoke-static {v7, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit16 v0, v1, 0x380

    xor-int/lit16 v0, v0, 0x180

    const/16 v4, 0x100

    if-le v0, v4, :cond_28

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_28
    and-int/lit16 v0, v1, 0x180

    const/16 v4, 0x100

    if-ne v0, v4, :cond_2a

    :cond_29
    const/4 v4, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v4, 0x0

    .local v4, "invalid$iv$iv":Z
    :goto_1e
    move-object v0, v7

    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 1603
    .local v18, "$i$f$cache":I
    move/from16 p5, v1

    .end local v1    # "$changed$iv":I
    .local p5, "$changed$iv":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1604
    .local v19, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_2c

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p6, v2

    .end local v2    # "contents$iv":Ljava/util/List;
    .local p6, "contents$iv":Ljava/util/List;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    goto :goto_1f

    .line 1608
    :cond_2b
    goto :goto_20

    .line 1604
    .end local p6    # "contents$iv":Ljava/util/List;
    .restart local v2    # "contents$iv":Ljava/util/List;
    :cond_2c
    move-object/from16 p6, v2

    .line 1605
    .end local v2    # "contents$iv":Ljava/util/List;
    .restart local p6    # "contents$iv":Ljava/util/List;
    :goto_1f
    const/4 v2, 0x0

    .line 1602
    .local v2, "$i$a$-cache-LayoutKt$Layout$3$iv":I
    invoke-static {v6}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyKt;->createMeasurePolicy(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .line 1605
    .end local v2    # "$i$a$-cache-LayoutKt$Layout$3$iv":I
    nop

    .line 1606
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1607
    move-object v1, v2

    .line 1603
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    :goto_20
    nop

    .line 1602
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "invalid$iv$iv":Z
    .end local v18    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, p5, 0x70

    .line 1599
    nop

    .local v0, "$changed$iv$iv":I
    .local v1, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object v2, v7

    .local v2, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v4, p3

    .local v4, "content$iv$iv":Lkotlin/jvm/functions/Function2;
    move-object/from16 p3, v5

    .local p3, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    const/16 v18, 0x0

    .line 1609
    .local v18, "$i$f$Layout":I
    move/from16 p8, v0

    .end local v0    # "$changed$iv$iv":I
    .local p8, "$changed$iv$iv":I
    const v0, -0x451e1427

    move-object/from16 v19, v3

    .end local v3    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    .local v19, "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    const-string v3, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1610
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 1611
    .local v0, "compositeKeyHash$iv$iv":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 1612
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move/from16 v20, v0

    move-object/from16 v0, p3

    .end local v5    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v0, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .local v20, "compositeKeyHash$iv$iv":I
    .local p3, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 1614
    .local v5, "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .local v22, "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, p8, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    .line 1613
    move-object/from16 v23, v21

    .local v23, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v21, v2

    .local v0, "$changed$iv$iv$iv":I
    .local v21, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v24, 0x0

    .line 1615
    .local v24, "$i$f$ReusableComposeNode":I
    move/from16 v25, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v25, "$changed$iv$iv$iv":I
    const v0, -0x20f7d59c

    move-object/from16 v26, v2

    .end local v2    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .local v26, "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    const-string v2, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp"

    move-object/from16 v27, v6

    move-object/from16 v6, v21

    .end local v21    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v27, "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    invoke-static {v6, v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1616
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1617
    :cond_2d
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1618
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1619
    move-object/from16 v0, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v0, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    .line 1621
    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2e
    move-object/from16 v0, v23

    .end local v23    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1623
    :goto_21
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .local v2, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 1624
    .local v21, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v0

    .end local v0    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v28, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1625
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1626
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v1

    .end local v1    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v29, "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1627
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getApplyOnDeactivatedNodeAssertion()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1628
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1629
    nop

    .line 1623
    .end local v2    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1630
    shr-int/lit8 v0, v25, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1615
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1632
    nop

    .line 1609
    .end local v6    # "$composer$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v24    # "$i$f$ReusableComposeNode":I
    .end local v25    # "$changed$iv$iv$iv":I
    .end local v28    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1633
    nop

    .line 1598
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v4    # "content$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "materialized$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v18    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v22    # "modifier$iv$iv":Landroidx/compose/ui/Modifier;
    .end local v26    # "$composer$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "measurePolicy$iv$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p8    # "$changed$iv$iv":I
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1634
    nop

    .end local v7    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$Layout":I
    .end local v27    # "measurePolicy$iv":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local p3    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local p5    # "$changed$iv":I
    .end local p6    # "contents$iv":Ljava/util/List;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 120
    .end local v15    # "overflowState":Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .end local p1    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local p2    # "list":Ljava/util/List;
    :cond_2f
    move/from16 v5, p4

    move-object v2, v10

    move v6, v14

    move-object/from16 v7, v19

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v13

    goto :goto_22

    .line 91
    .end local v10    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v11    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v13    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .end local v14    # "maxLines":I
    .end local v17    # "$dirty":I
    .end local v19    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$dirty":I
    .local p1, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local p2, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local p3, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local p5, "maxLines":I
    .local p6, "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    :cond_30
    move-object v12, v1

    move/from16 v17, v2

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v2    # "$dirty":I
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$dirty":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object v2, v6

    move v5, v15

    move/from16 v6, p5

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v13

    .line 120
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .end local p4    # "maxItemsInEachRow":I
    .end local p5    # "maxLines":I
    .end local p6    # "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v3, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v4, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v5, "maxItemsInEachRow":I
    .local v6, "maxLines":I
    .local v7, "overflow":Landroidx/compose/foundation/layout/FlowRowOverflow;
    :goto_22
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_31

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda7;

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_31
    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p3, "itemVerticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p4, "maxItemsInEachRow"    # I
    .param p5, "maxLines"    # I
    .param p6, "content"    # Lkotlin/jvm/functions/Function3;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowRowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 163
    move/from16 v8, p8

    const v0, -0x4dacdb7f

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(FlowRow)N(modifier,horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInEachRow,maxLines,content)162@7315L215:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x6

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v8, 0x30

    if-nez v6, :cond_5

    move-object/from16 v6, p1

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v7, p9, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v2, v2, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v8, 0x180

    if-nez v9, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v2, v10

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v10, p9, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v2, v2, 0xc00

    move-object/from16 v11, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_b

    move-object/from16 v11, p3

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v2, v12

    goto :goto_7

    :cond_b
    move-object/from16 v11, p3

    :goto_7
    and-int/lit8 v12, p9, 0x10

    if-eqz v12, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_e

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_e
    move/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p9, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v2, v15

    move/from16 v15, p5

    goto :goto_b

    :cond_f
    and-int/2addr v15, v8

    if-nez v15, :cond_11

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_11
    move/from16 v15, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v17, v8, v16

    if-nez v17, :cond_13

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    goto :goto_d

    :cond_13
    move-object/from16 v0, p6

    :goto_d
    const v18, 0x92493

    and-int v0, v2, v18

    move/from16 p7, v3

    const v3, 0x92492

    if-eq v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    and-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p7, :cond_15

    .line 155
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v9, v0

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_f

    .line 163
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_15
    move-object v9, v4

    .line 155
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v9, "modifier":Landroidx/compose/ui/Modifier;
    :goto_f
    if-eqz v5, :cond_16

    .line 156
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v0

    move/from16 v20, v10

    move-object v10, v0

    move/from16 v0, v20

    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v0, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_10

    .line 155
    .end local v0    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_16
    move v0, v10

    move-object v10, v6

    .line 156
    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v10, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_10
    if-eqz v7, :cond_17

    .line 157
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v3

    move-object v11, v3

    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v3, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_11

    .line 156
    .end local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_17
    move-object/from16 v11, p2

    .line 157
    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v11, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_11
    if-eqz v0, :cond_18

    .line 158
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    move/from16 v20, v12

    move-object v12, v0

    move/from16 v0, v20

    .end local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v0, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    goto :goto_12

    .line 157
    .end local v0    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .restart local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :cond_18
    move v0, v12

    move-object/from16 v12, p3

    .line 158
    .end local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v12, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    :goto_12
    if-eqz v0, :cond_19

    .line 159
    const v0, 0x7fffffff

    move v13, v0

    .end local p4    # "maxItemsInEachRow":I
    .local v13, "maxItemsInEachRow":I
    :cond_19
    if-eqz v14, :cond_1a

    .line 160
    const v0, 0x7fffffff

    move v14, v0

    .end local p5    # "maxLines":I
    .local v0, "maxLines":I
    goto :goto_13

    .line 159
    .end local v0    # "maxLines":I
    .restart local p5    # "maxLines":I
    :cond_1a
    move v14, v15

    .line 160
    .end local p5    # "maxLines":I
    .local v14, "maxLines":I
    :goto_13
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)"

    const v4, -0x4dacdb7f

    invoke-static {v4, v2, v0, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 164
    :cond_1b
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    sget-object v0, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getClip()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v15

    .line 171
    and-int/lit8 v0, v2, 0xe

    or-int v0, v0, v16

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v0, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0x3

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int v18, v0, v3

    .line 163
    const/16 v19, 0x0

    move-object/from16 v16, p6

    move-object/from16 v17, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 172
    :cond_1c
    move v0, v2

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v6, v14

    move v5, v13

    goto :goto_14

    .line 154
    .end local v9    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v10    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v11    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v12    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .end local v13    # "maxItemsInEachRow":I
    .end local v14    # "maxLines":I
    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .restart local p4    # "maxItemsInEachRow":I
    .restart local p5    # "maxLines":I
    :cond_1d
    move-object/from16 v17, v1

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move v0, v2

    move-object v1, v4

    move-object v2, v6

    move v6, v15

    move-object/from16 v4, p3

    move v5, v13

    .line 172
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local p3    # "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .end local p4    # "maxItemsInEachRow":I
    .end local p5    # "maxLines":I
    .local v0, "$dirty":I
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v4, "itemVerticalAlignment":Landroidx/compose/ui/Alignment$Vertical;
    .local v5, "maxItemsInEachRow":I
    .local v6, "maxLines":I
    :goto_14
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_1e

    move v7, v0

    .end local v0    # "$dirty":I
    .local v7, "$dirty":I
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda8;

    move/from16 v9, p9

    move v11, v7

    move-object/from16 v7, p6

    .end local v7    # "$dirty":I
    .local v11, "$dirty":I
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILkotlin/jvm/functions/Function3;II)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v11    # "$dirty":I
    .restart local v0    # "$dirty":I
    :cond_1e
    move v11, v0

    .end local v0    # "$dirty":I
    .restart local v11    # "$dirty":I
    :goto_15
    return-void
.end method

.method private static final FlowRow$lambda$1$0(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 3
    .param p0, "$content"    # Lkotlin/jvm/functions/Function3;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C113@5051L9:FlowLayout.kt#2w3rfo"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "androidx.compose.foundation.layout.FlowRow.<anonymous>.<anonymous> (FlowLayout.kt:113)"

    const v2, -0x471afb91

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 114
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final FlowRow$lambda$2(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p9

    move-object/from16 v9, p10

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final FlowRow$lambda$3(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILkotlin/jvm/functions/Function3;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$intrinsicCrossAxisSize(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 2
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSizes"    # [I
    .param p2, "crossAxisSizes"    # [I
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .param p7, "maxLines"    # I
    .param p8, "overflow"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final breakDownItems-di9J0FM(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;Ljava/util/Iterator;FFJIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 68
    .param p0, "$this$breakDownItems_u2ddi9J0FM"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "measurePolicy"    # Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
    .param p2, "measurablesIterator"    # Ljava/util/Iterator;
    .param p3, "$v$c$androidx-compose-ui-unit-Dp$-mainAxisSpacingDp$0"    # F
    .param p4, "$v$c$androidx-compose-ui-unit-Dp$-crossAxisSpacingDp$0"    # F
    .param p5, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-constraints$0"    # J
    .param p7, "maxItemsInMainAxis"    # I
    .param p8, "maxLines"    # I
    .param p9, "overflow"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
            "Ljava/util/Iterator<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;FFJII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 1213
    move-object/from16 v6, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const/4 v0, 0x0

    .line 1825
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1826
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 1827
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/ui/layout/MeasureResult;

    const/4 v15, 0x0

    invoke-direct {v3, v4, v15}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1825
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 1213
    .end local v0    # "$i$f$mutableVectorOf":I
    nop

    .line 1214
    .local v3, "items":Landroidx/compose/runtime/collection/MutableVector;
    move-wide/from16 v0, p5

    .local v0, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v2, 0x0

    .line 1828
    .local v2, "$i$f$getMainAxisMax-impl":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .line 1214
    .end local v0    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v2    # "$i$f$getMainAxisMax-impl":I
    nop

    .line 1215
    .local v0, "mainAxisMax":I
    move-wide/from16 v1, p5

    .local v1, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v4, 0x0

    .line 1829
    .local v4, "$i$f$getMainAxisMin-impl":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 1215
    .end local v1    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v4    # "$i$f$getMainAxisMin-impl":I
    move/from16 v16, v1

    .line 1216
    .local v16, "mainAxisMin":I
    move-wide/from16 v1, p5

    .restart local v1    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v4, 0x0

    .line 1830
    .local v4, "$i$f$getCrossAxisMax-impl":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    .line 1216
    .end local v1    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v4    # "$i$f$getCrossAxisMax-impl":I
    nop

    .line 1217
    .local v1, "crossAxisMax":I
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v2

    .line 1218
    .local v2, "placeables":Landroidx/collection/MutableIntObjectMap;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v4

    check-cast v7, Ljava/util/List;

    .line 1220
    .local v7, "measurables":Ljava/util/List;
    move/from16 v4, p3

    invoke-interface {v6, v4}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v5, v8

    float-to-int v5, v5

    .line 1221
    .local v5, "spacing":I
    move/from16 v8, p4

    invoke-interface {v6, v8}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-int v9, v9

    .line 1222
    .local v9, "crossAxisSpacing":I
    invoke-static {v15, v0, v15, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v17

    .line 1224
    .local v17, "subsetConstraints":J
    nop

    .line 1225
    const/16 v23, 0xe

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v24}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 1227
    move-wide/from16 v26, v17

    .end local v17    # "subsetConstraints":J
    .local v26, "subsetConstraints":J
    invoke-interface {v13}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_0

    .line 1228
    :cond_0
    sget-object v12, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 1226
    :goto_0
    invoke-static {v10, v11, v12}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v10

    .line 1223
    nop

    .line 1231
    .local v10, "measureConstraints":J
    const/4 v12, 0x0

    .line 1232
    .local v12, "index":I
    const/16 v17, 0x0

    .line 1233
    .local v17, "measurable":Ljava/lang/Object;
    new-instance v18, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct/range {v18 .. v18}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v28, v18

    .line 1235
    .local v28, "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/16 v19, 0x0

    .line 1236
    .local v19, "lineIndex":I
    const/16 v18, 0x0

    .local v18, "leftOver":I
    move/from16 v34, v0

    .line 1237
    .end local v18    # "leftOver":I
    .local v34, "leftOver":I
    move/from16 v36, v1

    .line 1239
    .local v36, "leftOverCrossAxis":I
    instance-of v15, v14, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    move/from16 v38, v1

    .end local v1    # "crossAxisMax":I
    .local v38, "crossAxisMax":I
    if-eqz v15, :cond_1

    .line 1240
    new-instance v18, Landroidx/compose/foundation/layout/FlowLineInfo;

    .line 1241
    nop

    .line 1242
    nop

    .line 1243
    move/from16 v15, v34

    .end local v34    # "leftOver":I
    .local v15, "leftOver":I
    invoke-interface {v6, v15}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v21

    .line 1244
    move/from16 v1, v36

    .end local v36    # "leftOverCrossAxis":I
    .local v1, "leftOverCrossAxis":I
    invoke-interface {v6, v1}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v22

    .line 1240
    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v18 .. v23}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v36, v19

    .end local v19    # "lineIndex":I
    .local v36, "lineIndex":I
    goto :goto_1

    .line 1247
    .end local v1    # "leftOverCrossAxis":I
    .end local v15    # "leftOver":I
    .restart local v19    # "lineIndex":I
    .restart local v34    # "leftOver":I
    .local v36, "leftOverCrossAxis":I
    :cond_1
    move/from16 v15, v34

    move/from16 v1, v36

    move/from16 v36, v19

    .end local v19    # "lineIndex":I
    .end local v34    # "leftOver":I
    .restart local v1    # "leftOverCrossAxis":I
    .restart local v15    # "leftOver":I
    .local v36, "lineIndex":I
    const/16 v18, 0x0

    .line 1239
    :goto_1
    nop

    .line 1238
    move-object/from16 v40, v18

    .line 1250
    .local v40, "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    const/16 v18, 0x0

    .line 1251
    .local v18, "nextSize":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    .local v19, "$this$breakDownItems_di9J0FM_u24lambda_u240":Z
    const/16 v20, 0x0

    .line 1252
    .local v20, "$i$a$-run-FlowLayoutKt$breakDownItems$nextSize$1":I
    move-object/from16 v41, v3

    move-object/from16 v3, v40

    if-nez v19, :cond_2

    const/16 v21, 0x0

    goto :goto_2

    .end local v40    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .local v3, "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .local v41, "items":Landroidx/compose/runtime/collection/MutableVector;
    :cond_2
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/FlowLayoutKt;->safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v21

    :goto_2
    move-object/from16 v40, v21

    .line 1253
    .end local v17    # "measurable":Ljava/lang/Object;
    .local v40, "measurable":Ljava/lang/Object;
    if-eqz v40, :cond_3

    new-instance v4, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda4;

    move/from16 v23, v5

    move-object/from16 v5, v28

    .end local v28    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v23, "spacing":I
    invoke-direct {v4, v5}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v8, v40

    .end local v40    # "measurable":Ljava/lang/Object;
    .local v8, "measurable":Ljava/lang/Object;
    invoke-static {v8, v13, v10, v11, v4}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v4

    goto :goto_3

    .end local v8    # "measurable":Ljava/lang/Object;
    .end local v23    # "spacing":I
    .local v5, "spacing":I
    .restart local v28    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v40    # "measurable":Ljava/lang/Object;
    :cond_3
    move/from16 v23, v5

    move-object/from16 v5, v28

    move-object/from16 v8, v40

    .end local v28    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v40    # "measurable":Ljava/lang/Object;
    .local v5, "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v8    # "measurable":Ljava/lang/Object;
    .restart local v23    # "spacing":I
    const/4 v4, 0x0

    .line 1255
    :goto_3
    nop

    .line 1251
    .end local v19    # "$this$breakDownItems_di9J0FM_u24lambda_u240":Z
    .end local v20    # "$i$a$-run-FlowLayoutKt$breakDownItems$nextSize$1":I
    nop

    .line 1250
    move-object/from16 v47, v4

    .line 1257
    .end local v18    # "nextSize":Ljava/lang/Object;
    .local v47, "nextSize":Ljava/lang/Object;
    if-eqz v47, :cond_4

    invoke-virtual/range {v47 .. v47}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 1258
    .local v4, "nextMainAxisSize":Ljava/lang/Integer;
    :goto_4
    if-eqz v47, :cond_5

    invoke-virtual/range {v47 .. v47}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v28, v17

    .line 1260
    .local v28, "nextCrossAxisSize":Ljava/lang/Integer;
    const/16 v40, 0x0

    .line 1261
    .local v40, "startBreakLineIndex":I
    const/16 v17, 0x0

    .line 1831
    .local v17, "$i$f$mutableIntListOf":I
    move-object/from16 v53, v4

    .end local v4    # "nextMainAxisSize":Ljava/lang/Integer;
    .local v53, "nextMainAxisSize":Ljava/lang/Integer;
    new-instance v4, Landroidx/collection/MutableIntList;

    move-object/from16 v54, v8

    .end local v8    # "measurable":Ljava/lang/Object;
    .local v54, "measurable":Ljava/lang/Object;
    const/4 v8, 0x1

    move/from16 v24, v9

    move/from16 v37, v12

    const/4 v9, 0x0

    const/4 v12, 0x0

    .end local v9    # "crossAxisSpacing":I
    .end local v12    # "index":I
    .local v24, "crossAxisSpacing":I
    .local v37, "index":I
    invoke-direct {v4, v12, v8, v9}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1261
    .end local v17    # "$i$f$mutableIntListOf":I
    nop

    .line 1262
    .local v4, "endBreakLineList":Landroidx/collection/MutableIntList;
    const/16 v17, 0x0

    .line 1832
    .restart local v17    # "$i$f$mutableIntListOf":I
    move-object/from16 v55, v4

    .end local v4    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v55, "endBreakLineList":Landroidx/collection/MutableIntList;
    new-instance v4, Landroidx/collection/MutableIntList;

    invoke-direct {v4, v12, v8, v9}, Landroidx/collection/MutableIntList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1262
    .end local v17    # "$i$f$mutableIntListOf":I
    nop

    .line 1263
    .local v4, "crossAxisSizes":Landroidx/collection/MutableIntList;
    invoke-static {}, Landroidx/collection/IntSetKt;->mutableIntSetOf()Landroidx/collection/MutableIntSet;

    move-result-object v9

    .line 1266
    .local v9, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    new-instance v42, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 1267
    nop

    .line 1272
    nop

    .line 1270
    nop

    .line 1271
    nop

    .line 1268
    nop

    .line 1269
    nop

    .line 1266
    const/16 v25, 0x0

    move-wide/from16 v20, p5

    move/from16 v18, p7

    move/from16 v22, p8

    move-object/from16 v19, p9

    move-object/from16 v17, v42

    invoke-direct/range {v17 .. v25}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1265
    move-object/from16 v29, v42

    .line 1274
    .local v29, "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    const/16 v17, 0x0

    .line 1278
    .local v17, "ellipsisWrapInfo":Ljava/lang/Object;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    .line 1279
    invoke-static {v15, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v45

    .line 1281
    nop

    .line 1276
    nop

    .line 1278
    nop

    .line 1283
    nop

    .line 1279
    nop

    .line 1281
    nop

    .line 1286
    nop

    .line 1280
    nop

    .line 1282
    nop

    .line 1284
    nop

    .line 1285
    nop

    .line 1277
    const/16 v44, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    .end local v29    # "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    .local v42, "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    invoke-virtual/range {v42 .. v52}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v18

    .line 1288
    .end local v42    # "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    .restart local v29    # "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    move-object/from16 v30, v18

    .local v30, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    const/16 v19, 0x0

    .line 1289
    .local v19, "$i$a$-also-FlowLayoutKt$breakDownItems$wrapInfo$1":I
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1290
    nop

    .line 1291
    nop

    .line 1292
    nop

    .line 1293
    if-eqz v47, :cond_6

    move/from16 v31, v8

    goto :goto_6

    :cond_6
    move/from16 v31, v12

    .line 1294
    :goto_6
    nop

    .line 1295
    nop

    .line 1296
    nop

    .line 1297
    nop

    .line 1291
    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v35, 0x0

    move/from16 v34, v15

    .end local v15    # "leftOver":I
    .restart local v34    # "leftOver":I
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v15

    .line 1290
    move-object/from16 v17, v15

    goto :goto_7

    .line 1289
    .end local v34    # "leftOver":I
    .restart local v15    # "leftOver":I
    :cond_7
    move/from16 v34, v15

    .line 1300
    .end local v15    # "leftOver":I
    .restart local v34    # "leftOver":I
    :goto_7
    nop

    .line 1288
    .end local v19    # "$i$a$-also-FlowLayoutKt$breakDownItems$wrapInfo$1":I
    .end local v30    # "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    nop

    .line 1275
    nop

    .line 1303
    .local v18, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    const/4 v15, 0x0

    .local v15, "mainAxisTotalSize":I
    move/from16 v15, v16

    .line 1304
    const/16 v19, 0x0

    .line 1305
    .local v19, "crossAxisTotalSize":I
    const/16 v20, 0x0

    .line 1306
    .local v20, "currentLineMainAxisSize":I
    const/16 v21, 0x0

    .line 1307
    .local v21, "currentLineCrossAxisSize":I
    const/16 v22, 0x0

    move v12, v1

    move v1, v15

    move/from16 v63, v19

    move/from16 v62, v36

    move/from16 v15, v37

    move/from16 v19, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v54

    .line 1308
    .end local v19    # "crossAxisTotalSize":I
    .end local v36    # "lineIndex":I
    .end local v37    # "index":I
    .end local v54    # "measurable":Ljava/lang/Object;
    .local v1, "mainAxisTotalSize":I
    .local v8, "currentLineCrossAxisSize":I
    .local v9, "measurable":Ljava/lang/Object;
    .local v12, "leftOverCrossAxis":I
    .local v15, "index":I
    .local v21, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v22, "currentLineCrossAxisFillEnabled":Z
    .local v62, "lineIndex":I
    .local v63, "crossAxisTotalSize":I
    :goto_8
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v25

    if-nez v25, :cond_1c

    if-eqz v9, :cond_1c

    .line 1309
    invoke-static/range {v53 .. v53}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 1310
    .local v25, "itemMainAxisSize":I
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v36, v4

    .end local v4    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v36, "crossAxisSizes":Landroidx/collection/MutableIntList;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1311
    .local v4, "itemCrossAxisSize":I
    move/from16 v42, v0

    .end local v0    # "mainAxisMax":I
    .local v42, "mainAxisMax":I
    add-int v0, v20, v25

    .line 1312
    .end local v20    # "currentLineMainAxisSize":I
    .local v0, "currentLineMainAxisSize":I
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v64

    .line 1313
    .end local v8    # "currentLineCrossAxisSize":I
    .local v64, "currentLineCrossAxisSize":I
    sub-int v8, v34, v25

    .line 1314
    .end local v34    # "leftOver":I
    .local v8, "leftOver":I
    move/from16 v43, v4

    .end local v4    # "itemCrossAxisSize":I
    .local v43, "itemCrossAxisSize":I
    add-int/lit8 v4, v15, 0x1

    move/from16 v20, v0

    move-object/from16 v0, p9

    .end local v0    # "currentLineMainAxisSize":I
    .restart local v20    # "currentLineMainAxisSize":I
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->setItemShown$foundation_layout(I)V

    .line 1315
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v15, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 1317
    nop

    .line 1318
    nop

    .line 1319
    nop

    .line 1320
    nop

    .line 1318
    invoke-interface {v9}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v4

    instance-of v0, v4, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v0, :cond_8

    move-object v0, v4

    check-cast v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1319
    :goto_9
    if-eqz v0, :cond_9

    .line 1318
    nop

    .line 1319
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFlowLayoutData()Landroidx/compose/foundation/layout/FlowLayoutData;

    move-result-object v0

    .line 1320
    if-eqz v0, :cond_9

    .line 1318
    nop

    .line 1320
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowLayoutData;->getFillCrossAxisFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_a

    .line 1319
    :cond_9
    const/4 v0, 0x0

    .line 1318
    :goto_a
    if-eqz v0, :cond_a

    .line 1322
    const/16 v22, 0x1

    .line 1325
    :cond_a
    add-int/lit8 v0, v15, 0x1

    sub-int v0, v0, v40

    .line 1326
    .local v0, "nextIndexInLine":I
    move/from16 v4, p7

    if-ge v0, v4, :cond_b

    move/from16 v30, v19

    goto :goto_b

    :cond_b
    const/16 v30, 0x0

    :goto_b
    move/from16 v44, v30

    .line 1328
    .local v44, "willFitLine":Z
    if-eqz v3, :cond_12

    .line 1329
    if-eqz v44, :cond_c

    move/from16 v58, v0

    move/from16 v0, v62

    goto :goto_c

    :cond_c
    add-int/lit8 v30, v62, 0x1

    move/from16 v58, v0

    move/from16 v0, v30

    .line 1330
    .end local v0    # "nextIndexInLine":I
    .local v58, "nextIndexInLine":I
    :goto_c
    if-eqz v44, :cond_d

    move/from16 v4, v58

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    .line 1332
    :goto_d
    if-eqz v44, :cond_f

    .line 1333
    sub-int v30, v8, v23

    .local v30, "$this$fastCoerceAtLeast$iv":I
    const/16 v31, 0x0

    .local v31, "minimumValue$iv":I
    const/16 v32, 0x0

    .line 1833
    .local v32, "$i$f$fastCoerceAtLeast":I
    if-gez v30, :cond_e

    move-object/from16 v30, v9

    move/from16 v9, v31

    goto :goto_e

    :cond_e
    move/from16 v67, v30

    move-object/from16 v30, v9

    move/from16 v9, v67

    .end local v30    # "$this$fastCoerceAtLeast$iv":I
    .end local v31    # "minimumValue$iv":I
    .end local v32    # "$i$f$fastCoerceAtLeast":I
    goto :goto_e

    .line 1335
    :cond_f
    move-object/from16 v30, v9

    move/from16 v9, v42

    .line 1337
    .end local v9    # "measurable":Ljava/lang/Object;
    .local v30, "measurable":Ljava/lang/Object;
    :goto_e
    invoke-interface {v6, v9}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v9

    .line 1339
    if-eqz v44, :cond_10

    .line 1340
    move/from16 v45, v15

    move v15, v12

    goto :goto_f

    .line 1342
    :cond_10
    sub-int v31, v12, v64

    sub-int v31, v31, v24

    .line 1343
    const/16 v32, 0x0

    .local v31, "$this$fastCoerceAtLeast$iv":I
    .local v32, "minimumValue$iv":I
    const/16 v33, 0x0

    .line 1834
    .local v33, "$i$f$fastCoerceAtLeast":I
    move/from16 v45, v15

    if-gez v31, :cond_11

    move/from16 v15, v32

    goto :goto_f

    :cond_11
    move/from16 v15, v31

    .line 1345
    .end local v15    # "index":I
    .end local v31    # "$this$fastCoerceAtLeast$iv":I
    .end local v32    # "minimumValue$iv":I
    .end local v33    # "$i$f$fastCoerceAtLeast":I
    .local v45, "index":I
    :goto_f
    invoke-interface {v6, v15}, Landroidx/compose/ui/layout/MeasureScope;->toDp-u2uoSUM(I)F

    move-result v15

    .line 1328
    invoke-virtual {v3, v0, v4, v9, v15}, Landroidx/compose/foundation/layout/FlowLineInfo;->update-4j6BHR0$foundation_layout(IIFF)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_10

    .end local v30    # "measurable":Ljava/lang/Object;
    .end local v45    # "index":I
    .end local v58    # "nextIndexInLine":I
    .restart local v0    # "nextIndexInLine":I
    .restart local v9    # "measurable":Ljava/lang/Object;
    .restart local v15    # "index":I
    :cond_12
    move/from16 v58, v0

    move-object/from16 v30, v9

    move/from16 v45, v15

    .line 1348
    .end local v0    # "nextIndexInLine":I
    .end local v9    # "measurable":Ljava/lang/Object;
    .end local v15    # "index":I
    .restart local v30    # "measurable":Ljava/lang/Object;
    .restart local v45    # "index":I
    .restart local v58    # "nextIndexInLine":I
    :goto_10
    nop

    .line 1349
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .local v0, "$this$breakDownItems_di9J0FM_u24lambda_u242":Z
    const/4 v4, 0x0

    .line 1350
    .local v4, "$i$a$-run-FlowLayoutKt$breakDownItems$1":I
    if-nez v0, :cond_13

    const/4 v9, 0x0

    goto :goto_11

    :cond_13
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/FlowLayoutKt;->safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v9

    .line 1351
    .end local v30    # "measurable":Ljava/lang/Object;
    .restart local v9    # "measurable":Ljava/lang/Object;
    :goto_11
    const/4 v15, 0x0

    iput-object v15, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1352
    if-eqz v9, :cond_14

    new-instance v15, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda5;

    invoke-direct {v15, v5}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v9, v13, v10, v11, v15}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v15

    goto :goto_12

    :cond_14
    const/4 v15, 0x0

    .line 1354
    :goto_12
    nop

    .line 1349
    .end local v0    # "$this$breakDownItems_di9J0FM_u24lambda_u242":Z
    .end local v4    # "$i$a$-run-FlowLayoutKt$breakDownItems$1":I
    nop

    .line 1348
    move-object/from16 v47, v15

    .line 1356
    if-eqz v47, :cond_15

    invoke-virtual/range {v47 .. v47}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v0

    add-int v0, v0, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    :cond_15
    const/4 v0, 0x0

    .line 1357
    .end local v53    # "nextMainAxisSize":Ljava/lang/Integer;
    .local v0, "nextMainAxisSize":Ljava/lang/Integer;
    :goto_13
    if-eqz v47, :cond_16

    invoke-virtual/range {v47 .. v47}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_14

    :cond_16
    const/4 v4, 0x0

    :goto_14
    move-object/from16 v28, v4

    .line 1360
    nop

    .line 1361
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    .line 1362
    invoke-static {v8, v12}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v59

    .line 1363
    nop

    .line 1365
    if-nez v47, :cond_17

    const/16 v61, 0x0

    goto :goto_15

    .line 1366
    :cond_17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v4, v15}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v4

    move-object/from16 v61, v4

    .line 1365
    :goto_15
    nop

    .line 1367
    nop

    .line 1371
    nop

    .line 1360
    nop

    .line 1361
    nop

    .line 1368
    nop

    .line 1362
    nop

    .line 1365
    nop

    .line 1371
    nop

    .line 1363
    nop

    .line 1367
    nop

    .line 1369
    nop

    .line 1370
    nop

    .line 1360
    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v56, v29

    .end local v29    # "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    .local v56, "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    invoke-virtual/range {v56 .. v66}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v30

    .line 1359
    move/from16 v4, v64

    .line 1373
    .end local v18    # "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .end local v56    # "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    .end local v64    # "currentLineCrossAxisSize":I
    .local v4, "currentLineCrossAxisSize":I
    .restart local v29    # "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    .local v30, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 1374
    move/from16 v15, v20

    .end local v20    # "currentLineMainAxisSize":I
    .local v15, "currentLineMainAxisSize":I
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1375
    move-object/from16 v20, v0

    move/from16 v0, v42

    .end local v42    # "mainAxisMax":I
    .local v0, "mainAxisMax":I
    .local v20, "nextMainAxisSize":Ljava/lang/Integer;
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1376
    add-int v33, v63, v4

    .line 1377
    .end local v63    # "crossAxisTotalSize":I
    .local v33, "crossAxisTotalSize":I
    nop

    .line 1378
    nop

    .line 1379
    nop

    .line 1380
    if-eqz v47, :cond_18

    move/from16 v31, v19

    goto :goto_16

    :cond_18
    const/16 v31, 0x0

    .line 1381
    :goto_16
    nop

    .line 1382
    nop

    .line 1383
    nop

    .line 1384
    add-int/lit8 v18, v45, 0x1

    sub-int v35, v18, v40

    .line 1378
    move/from16 v34, v8

    move/from16 v32, v62

    .end local v8    # "leftOver":I
    .end local v62    # "lineIndex":I
    .local v32, "lineIndex":I
    .restart local v34    # "leftOver":I
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v8

    .line 1377
    move/from16 v42, v0

    move/from16 v0, v32

    .line 1386
    .end local v17    # "ellipsisWrapInfo":Ljava/lang/Object;
    .end local v32    # "lineIndex":I
    .local v0, "lineIndex":I
    .local v8, "ellipsisWrapInfo":Ljava/lang/Object;
    .restart local v42    # "mainAxisMax":I
    move/from16 v18, v1

    move-object/from16 v1, v36

    .end local v36    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v1, "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v18, "mainAxisTotalSize":I
    invoke-virtual {v1, v4}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 1387
    if-eqz v22, :cond_19

    move-object/from16 v31, v3

    move-object/from16 v3, v21

    .end local v21    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v3, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v31, "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    invoke-virtual {v3, v0}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    goto :goto_17

    .end local v31    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .local v3, "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .restart local v21    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    :cond_19
    move-object/from16 v31, v3

    move-object/from16 v3, v21

    .line 1388
    .end local v21    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v3, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .restart local v31    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    :goto_17
    const/16 v17, 0x0

    .line 1389
    .end local v22    # "currentLineCrossAxisFillEnabled":Z
    .local v17, "currentLineCrossAxisFillEnabled":Z
    move/from16 v21, v42

    .line 1390
    .end local v34    # "leftOver":I
    .local v21, "leftOver":I
    sub-int v22, v38, v33

    sub-int v22, v22, v24

    .line 1391
    .end local v12    # "leftOverCrossAxis":I
    .local v22, "leftOverCrossAxis":I
    add-int/lit8 v12, v45, 0x1

    .line 1392
    .end local v40    # "startBreakLineIndex":I
    .local v12, "startBreakLineIndex":I
    move/from16 v62, v0

    .end local v0    # "lineIndex":I
    .restart local v62    # "lineIndex":I
    add-int/lit8 v0, v45, 0x1

    move/from16 v64, v4

    move-object/from16 v4, v55

    .end local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v4, "endBreakLineList":Landroidx/collection/MutableIntList;
    .restart local v64    # "currentLineCrossAxisSize":I
    invoke-virtual {v4, v0}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 1393
    const/4 v0, 0x0

    .line 1394
    .end local v15    # "currentLineMainAxisSize":I
    .local v0, "currentLineMainAxisSize":I
    const/4 v15, 0x0

    .line 1396
    .end local v64    # "currentLineCrossAxisSize":I
    .local v15, "currentLineCrossAxisSize":I
    if-eqz v20, :cond_1a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v32

    sub-int v32, v32, v23

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    goto :goto_18

    :cond_1a
    const/16 v32, 0x0

    .line 1397
    .end local v20    # "nextMainAxisSize":Ljava/lang/Integer;
    .local v32, "nextMainAxisSize":Ljava/lang/Integer;
    :goto_18
    add-int/lit8 v62, v62, 0x1

    .line 1398
    add-int v33, v33, v24

    move/from16 v20, v0

    move/from16 v40, v12

    move/from16 v0, v18

    move/from16 v34, v21

    move/from16 v12, v22

    move-object/from16 v53, v32

    move/from16 v63, v33

    move/from16 v22, v17

    move-object/from16 v17, v8

    move v8, v15

    goto :goto_19

    .line 1373
    .end local v15    # "currentLineCrossAxisSize":I
    .end local v18    # "mainAxisTotalSize":I
    .end local v31    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .end local v32    # "nextMainAxisSize":Ljava/lang/Integer;
    .end local v33    # "crossAxisTotalSize":I
    .local v0, "nextMainAxisSize":Ljava/lang/Integer;
    .local v1, "mainAxisTotalSize":I
    .local v3, "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .local v4, "currentLineCrossAxisSize":I
    .local v8, "leftOver":I
    .local v12, "leftOverCrossAxis":I
    .local v17, "ellipsisWrapInfo":Ljava/lang/Object;
    .local v20, "currentLineMainAxisSize":I
    .local v21, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v22, "currentLineCrossAxisFillEnabled":Z
    .restart local v36    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .restart local v40    # "startBreakLineIndex":I
    .restart local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .restart local v63    # "crossAxisTotalSize":I
    :cond_1b
    move-object/from16 v31, v3

    move/from16 v64, v4

    move/from16 v34, v8

    move/from16 v15, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v55

    move-object/from16 v20, v0

    move v0, v1

    move-object/from16 v1, v36

    .end local v8    # "leftOver":I
    .end local v21    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .end local v36    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .end local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v0, "mainAxisTotalSize":I
    .local v1, "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v3, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v4, "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v15, "currentLineMainAxisSize":I
    .local v20, "nextMainAxisSize":Ljava/lang/Integer;
    .restart local v31    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .restart local v34    # "leftOver":I
    .restart local v64    # "currentLineCrossAxisSize":I
    move-object/from16 v53, v20

    move/from16 v8, v64

    move/from16 v20, v15

    .line 1400
    .end local v15    # "currentLineMainAxisSize":I
    .end local v64    # "currentLineCrossAxisSize":I
    .local v8, "currentLineCrossAxisSize":I
    .local v20, "currentLineMainAxisSize":I
    .restart local v53    # "nextMainAxisSize":Ljava/lang/Integer;
    :goto_19
    add-int/lit8 v15, v45, 0x1

    move-object/from16 v21, v3

    move-object/from16 v55, v4

    move-object/from16 v18, v30

    move-object/from16 v3, v31

    move-object v4, v1

    move v1, v0

    move/from16 v0, v42

    .end local v45    # "index":I
    .local v15, "index":I
    goto/16 :goto_8

    .line 1308
    .end local v25    # "itemMainAxisSize":I
    .end local v30    # "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .end local v31    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .end local v42    # "mainAxisMax":I
    .end local v43    # "itemCrossAxisSize":I
    .end local v44    # "willFitLine":Z
    .end local v58    # "nextIndexInLine":I
    .local v0, "mainAxisMax":I
    .local v1, "mainAxisTotalSize":I
    .local v3, "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .local v4, "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v18, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .restart local v21    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .restart local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    :cond_1c
    move/from16 v42, v0

    move v0, v1

    move-object/from16 v31, v3

    move-object v1, v4

    move-object/from16 v30, v9

    move/from16 v45, v15

    move-object/from16 v3, v21

    move-object/from16 v4, v55

    .line 1403
    .end local v9    # "measurable":Ljava/lang/Object;
    .end local v15    # "index":I
    .end local v21    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .end local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v0, "mainAxisTotalSize":I
    .local v1, "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v3, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v4, "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v30, "measurable":Ljava/lang/Object;
    .restart local v31    # "lineInfo":Landroidx/compose/foundation/layout/FlowLineInfo;
    .restart local v42    # "mainAxisMax":I
    .restart local v45    # "index":I
    if-eqz v17, :cond_1e

    move-object/from16 v9, v17

    .local v9, "it":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;
    const/4 v15, 0x0

    .line 1404
    .local v15, "$i$a$-let-FlowLayoutKt$breakDownItems$2":I
    move/from16 v21, v0

    .end local v0    # "mainAxisTotalSize":I
    .local v21, "mainAxisTotalSize":I
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsis()Landroidx/compose/ui/layout/Measurable;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v25, v5

    .end local v5    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v25, "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 1406
    move-object v0, v4

    check-cast v0, Landroidx/collection/IntList;

    .local v0, "this_$iv":Landroidx/collection/IntList;
    const/4 v5, 0x0

    .line 1835
    .local v5, "$i$f$getLastIndex":I
    move/from16 v32, v5

    .end local v5    # "$i$f$getLastIndex":I
    .local v32, "$i$f$getLastIndex":I
    iget v5, v0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v5, v5, -0x1

    .line 1406
    .end local v0    # "this_$iv":Landroidx/collection/IntList;
    .end local v32    # "$i$f$getLastIndex":I
    nop

    .line 1407
    .end local v62    # "lineIndex":I
    .local v5, "lineIndex":I
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceEllipsisOnLastContentLine()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1408
    move-object v0, v4

    check-cast v0, Landroidx/collection/IntList;

    .restart local v0    # "this_$iv":Landroidx/collection/IntList;
    const/16 v32, 0x0

    .line 1836
    .local v32, "$i$f$getSize":I
    iget v0, v0, Landroidx/collection/IntList;->_size:I

    .line 1408
    .end local v0    # "this_$iv":Landroidx/collection/IntList;
    .end local v32    # "$i$f$getSize":I
    add-int/lit8 v0, v0, -0x1

    .line 1409
    .local v0, "lastIndex":I
    invoke-virtual {v1, v5}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v6

    .line 1410
    .local v6, "lastLineCrossAxis":I
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v32

    move-object/from16 v35, v7

    .end local v7    # "measurables":Ljava/util/List;
    .local v35, "measurables":Ljava/util/List;
    invoke-static/range {v32 .. v33}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v5, v7}, Landroidx/collection/MutableIntList;->set(II)I

    .line 1411
    invoke-virtual {v4}, Landroidx/collection/MutableIntList;->last()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v0, v7}, Landroidx/collection/MutableIntList;->set(II)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v0    # "lastIndex":I
    .end local v6    # "lastLineCrossAxis":I
    goto :goto_1a

    .line 1413
    .end local v35    # "measurables":Ljava/util/List;
    .restart local v7    # "measurables":Ljava/util/List;
    :cond_1d
    move-object/from16 v35, v7

    .end local v7    # "measurables":Ljava/util/List;
    .restart local v35    # "measurables":Ljava/util/List;
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntList;->add(I)Z

    .line 1414
    invoke-virtual {v4}, Landroidx/collection/MutableIntList;->last()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Landroidx/collection/MutableIntList;->add(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1415
    :goto_1a
    nop

    .line 1403
    .end local v9    # "it":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;
    .end local v15    # "$i$a$-let-FlowLayoutKt$breakDownItems$2":I
    move/from16 v62, v5

    goto :goto_1b

    .end local v21    # "mainAxisTotalSize":I
    .end local v25    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v35    # "measurables":Ljava/util/List;
    .local v0, "mainAxisTotalSize":I
    .local v5, "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "measurables":Ljava/util/List;
    .restart local v62    # "lineIndex":I
    :cond_1e
    move/from16 v21, v0

    move-object/from16 v25, v5

    move-object/from16 v35, v7

    .line 1418
    .end local v0    # "mainAxisTotalSize":I
    .end local v5    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "measurables":Ljava/util/List;
    .restart local v21    # "mainAxisTotalSize":I
    .restart local v25    # "placeableItem":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v35    # "measurables":Ljava/util/List;
    :goto_1b
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v0, :cond_1f

    invoke-virtual {v2, v6}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1419
    .local v5, "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    :cond_1f
    move-object v0, v4

    check-cast v0, Landroidx/collection/IntList;

    .local v0, "this_$iv":Landroidx/collection/IntList;
    const/4 v6, 0x0

    .line 1837
    .local v6, "$i$f$getSize":I
    iget v0, v0, Landroidx/collection/IntList;->_size:I

    .end local v0    # "this_$iv":Landroidx/collection/IntList;
    .end local v6    # "$i$f$getSize":I
    new-array v0, v0, [I

    .line 1419
    nop

    .line 1420
    .local v0, "crossAxisOffsets":[I
    move-object v6, v4

    check-cast v6, Landroidx/collection/IntList;

    .local v6, "this_$iv":Landroidx/collection/IntList;
    const/4 v7, 0x0

    .line 1838
    .local v7, "$i$f$getSize":I
    iget v6, v6, Landroidx/collection/IntList;->_size:I

    .end local v6    # "this_$iv":Landroidx/collection/IntList;
    .end local v7    # "$i$f$getSize":I
    new-array v6, v6, [I

    .line 1420
    move-object v15, v6

    .line 1421
    .local v15, "crossAxisSizesArray":[I
    const/4 v6, 0x0

    .line 1423
    .end local v63    # "crossAxisTotalSize":I
    .local v6, "crossAxisTotalSize":I
    const/4 v7, 0x0

    .line 1424
    .local v7, "startIndex":I
    move-object v9, v4

    check-cast v9, Landroidx/collection/IntList;

    .local v9, "this_$iv":Landroidx/collection/IntList;
    const/16 v32, 0x0

    .line 1839
    .local v32, "$i$f$forEachIndexed":I
    nop

    .line 1840
    iget-object v13, v9, Landroidx/collection/IntList;->content:[I

    .line 1841
    .local v13, "content$iv":[I
    const/16 v33, 0x0

    move-object/from16 v36, v13

    .end local v13    # "content$iv":[I
    .local v33, "i$iv":I
    .local v36, "content$iv":[I
    iget v13, v9, Landroidx/collection/IntList;->_size:I

    move/from16 v67, v33

    move/from16 v33, v6

    move/from16 v6, v67

    .local v6, "i$iv":I
    .local v33, "crossAxisTotalSize":I
    :goto_1d
    if-ge v6, v13, :cond_23

    .line 1842
    move-wide/from16 v43, v10

    .end local v10    # "measureConstraints":J
    .local v43, "measureConstraints":J
    aget v10, v36, v6

    move v11, v12

    .end local v12    # "leftOverCrossAxis":I
    .local v10, "endIndex":I
    .local v11, "leftOverCrossAxis":I
    move v12, v6

    .local v12, "currentLineIndex":I
    const/16 v39, 0x0

    .line 1425
    .local v39, "$i$a$-forEachIndexed-FlowLayoutKt$breakDownItems$3":I
    invoke-virtual {v1, v12}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v46

    .line 1427
    .local v46, "crossAxisSize":I
    nop

    .line 1428
    invoke-virtual {v3, v12}, Landroidx/collection/MutableIntSet;->contains(I)Z

    move-result v48

    if-eqz v48, :cond_20

    move-object/from16 v51, v0

    move-object/from16 v48, v1

    move/from16 v1, v46

    goto :goto_1e

    .line 1429
    :cond_20
    move-wide/from16 v48, v26

    .local v48, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/16 v50, 0x0

    .line 1843
    .local v50, "$i$f$getCrossAxisMax-impl":I
    move-object/from16 v51, v0

    .end local v0    # "crossAxisOffsets":[I
    .local v51, "crossAxisOffsets":[I
    invoke-static/range {v48 .. v49}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    .line 1429
    .end local v48    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v50    # "$i$f$getCrossAxisMax-impl":I
    move-object/from16 v48, v1

    .end local v1    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v48, "crossAxisSizes":Landroidx/collection/MutableIntList;
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_21

    goto :goto_1e

    .line 1430
    :cond_21
    move-wide/from16 v0, v26

    .local v0, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/16 v49, 0x0

    .line 1844
    .local v49, "$i$f$getCrossAxisMax-impl":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    .line 1430
    .end local v0    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v49    # "$i$f$getCrossAxisMax-impl":I
    sub-int v1, v0, v33

    .line 1427
    :goto_1e
    nop

    .line 1426
    nop

    .line 1433
    .local v1, "crossAxisMaxSize":I
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;

    .line 1434
    nop

    .line 1435
    move-wide/from16 v49, v26

    .local v49, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/16 v52, 0x0

    .line 1845
    .local v52, "$i$f$getCrossAxisMin-impl":I
    invoke-static/range {v49 .. v50}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v49

    .line 1436
    .end local v49    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v52    # "$i$f$getCrossAxisMin-impl":I
    move-wide/from16 v54, v26

    .local v54, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/16 v50, 0x0

    .line 1846
    .local v50, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v54 .. v55}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v50

    .line 1437
    .end local v50    # "$i$f$getMainAxisMax-impl":I
    .end local v54    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    nop

    .line 1438
    nop

    .line 1439
    nop

    .line 1440
    nop

    .line 1441
    nop

    .line 1442
    nop

    .line 1443
    nop

    .line 1444
    nop

    .line 1445
    nop

    .line 1433
    move-object/from16 v55, v4

    move-object/from16 v37, v9

    move v4, v1

    move v9, v7

    move/from16 v1, v21

    move-object/from16 v7, v35

    move-object/from16 v21, v2

    move/from16 v35, v8

    move/from16 v2, v49

    move-object v8, v5

    move/from16 v49, v11

    move/from16 v5, v23

    move-object/from16 v11, v51

    const/16 v51, 0x0

    move-object/from16 v23, v3

    move/from16 v3, v50

    move/from16 v50, v19

    move/from16 v19, v13

    move-object/from16 v13, v41

    move/from16 v41, v6

    move-object/from16 v6, p0

    .end local v2    # "placeables":Landroidx/collection/MutableIntObjectMap;
    .end local v3    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .end local v6    # "i$iv":I
    .end local v51    # "crossAxisOffsets":[I
    .local v1, "mainAxisTotalSize":I
    .local v4, "crossAxisMaxSize":I
    .local v5, "spacing":I
    .local v7, "measurables":Ljava/util/List;
    .local v8, "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    .local v9, "startIndex":I
    .local v11, "crossAxisOffsets":[I
    .local v13, "items":Landroidx/compose/runtime/collection/MutableVector;
    .local v21, "placeables":Landroidx/collection/MutableIntObjectMap;
    .local v23, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v35, "currentLineCrossAxisSize":I
    .local v37, "this_$iv":Landroidx/collection/IntList;
    .local v41, "i$iv":I
    .local v49, "leftOverCrossAxis":I
    .restart local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;->measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 1432
    move-object v2, v11

    move-object v11, v8

    move-object v8, v2

    move/from16 v52, v9

    move v2, v10

    move v10, v5

    move-object v9, v7

    .line 1447
    .end local v5    # "spacing":I
    .end local v7    # "measurables":Ljava/util/List;
    .local v0, "result":Landroidx/compose/ui/layout/MeasureResult;
    .local v2, "endIndex":I
    .local v8, "crossAxisOffsets":[I
    .local v9, "measurables":Ljava/util/List;
    .local v10, "spacing":I
    .local v11, "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    .local v52, "startIndex":I
    const/4 v3, 0x0

    .line 1448
    .local v3, "mainAxisSize":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1449
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v3

    .line 1450
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v5

    .end local v46    # "crossAxisSize":I
    .local v5, "crossAxisSize":I
    goto :goto_1f

    .line 1452
    .end local v5    # "crossAxisSize":I
    .restart local v46    # "crossAxisSize":I
    :cond_22
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v3

    .line 1453
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v5

    .line 1455
    .end local v46    # "crossAxisSize":I
    .restart local v5    # "crossAxisSize":I
    :goto_1f
    aput v5, v15, v12

    .line 1456
    add-int v33, v33, v5

    .line 1457
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1458
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1459
    move v7, v2

    .line 1460
    .end local v52    # "startIndex":I
    .local v7, "startIndex":I
    nop

    .line 1842
    .end local v0    # "result":Landroidx/compose/ui/layout/MeasureResult;
    .end local v2    # "endIndex":I
    .end local v3    # "mainAxisSize":I
    .end local v4    # "crossAxisMaxSize":I
    .end local v5    # "crossAxisSize":I
    .end local v12    # "currentLineIndex":I
    .end local v39    # "$i$a$-forEachIndexed-FlowLayoutKt$breakDownItems$3":I
    nop

    .line 1841
    add-int/lit8 v6, v41, 0x1

    move-object v0, v8

    move-object v5, v11

    move-object/from16 v41, v13

    move/from16 v13, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move/from16 v8, v35

    move/from16 v12, v49

    move/from16 v19, v50

    move-object/from16 v4, v55

    move/from16 v21, v1

    move-object/from16 v35, v9

    move/from16 v23, v10

    move-object/from16 v9, v37

    move-wide/from16 v10, v43

    move-object/from16 v1, v48

    .end local v41    # "i$iv":I
    .restart local v6    # "i$iv":I
    goto/16 :goto_1d

    .end local v11    # "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    .end local v13    # "items":Landroidx/compose/runtime/collection/MutableVector;
    .end local v37    # "this_$iv":Landroidx/collection/IntList;
    .end local v43    # "measureConstraints":J
    .end local v48    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .end local v49    # "leftOverCrossAxis":I
    .end local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v0, "crossAxisOffsets":[I
    .local v1, "crossAxisSizes":Landroidx/collection/MutableIntList;
    .local v2, "placeables":Landroidx/collection/MutableIntObjectMap;
    .local v3, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v4, "endBreakLineList":Landroidx/collection/MutableIntList;
    .local v5, "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    .local v8, "currentLineCrossAxisSize":I
    .local v9, "this_$iv":Landroidx/collection/IntList;
    .local v10, "measureConstraints":J
    .local v12, "leftOverCrossAxis":I
    .local v21, "mainAxisTotalSize":I
    .local v23, "spacing":I
    .local v35, "measurables":Ljava/util/List;
    .local v41, "items":Landroidx/compose/runtime/collection/MutableVector;
    :cond_23
    move-object/from16 v48, v1

    move-object/from16 v55, v4

    move/from16 v52, v7

    move-object/from16 v37, v9

    move-wide/from16 v43, v10

    move/from16 v49, v12

    move/from16 v50, v19

    move/from16 v1, v21

    move/from16 v10, v23

    move-object/from16 v9, v35

    move-object/from16 v13, v41

    const/16 v51, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move-object v11, v5

    move/from16 v41, v6

    move/from16 v35, v8

    move-object v8, v0

    .line 1847
    .end local v0    # "crossAxisOffsets":[I
    .end local v2    # "placeables":Landroidx/collection/MutableIntObjectMap;
    .end local v3    # "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .end local v4    # "endBreakLineList":Landroidx/collection/MutableIntList;
    .end local v5    # "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    .end local v6    # "i$iv":I
    .end local v7    # "startIndex":I
    .end local v12    # "leftOverCrossAxis":I
    .end local v41    # "items":Landroidx/compose/runtime/collection/MutableVector;
    .local v1, "mainAxisTotalSize":I
    .local v8, "crossAxisOffsets":[I
    .local v9, "measurables":Ljava/util/List;
    .local v10, "spacing":I
    .restart local v11    # "arrayOfPlaceables":[Landroidx/compose/ui/layout/Placeable;
    .restart local v13    # "items":Landroidx/compose/runtime/collection/MutableVector;
    .local v21, "placeables":Landroidx/collection/MutableIntObjectMap;
    .local v23, "crossAxisFillEnabledLines":Landroidx/collection/MutableIntSet;
    .local v35, "currentLineCrossAxisSize":I
    .restart local v37    # "this_$iv":Landroidx/collection/IntList;
    .restart local v43    # "measureConstraints":J
    .restart local v48    # "crossAxisSizes":Landroidx/collection/MutableIntList;
    .restart local v49    # "leftOverCrossAxis":I
    .restart local v52    # "startIndex":I
    .restart local v55    # "endBreakLineList":Landroidx/collection/MutableIntList;
    nop

    .line 1462
    .end local v32    # "$i$f$forEachIndexed":I
    .end local v36    # "content$iv":[I
    .end local v37    # "this_$iv":Landroidx/collection/IntList;
    move-object v0, v13

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 1848
    .local v2, "$i$f$isEmpty":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_20

    :cond_24
    move/from16 v50, v51

    .line 1462
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$isEmpty":I
    :goto_20
    if-eqz v50, :cond_25

    .line 1463
    const/4 v0, 0x0

    .line 1464
    .end local v1    # "mainAxisTotalSize":I
    .local v0, "mainAxisTotalSize":I
    const/16 v33, 0x0

    move v3, v0

    move/from16 v4, v33

    goto :goto_21

    .line 1462
    .end local v0    # "mainAxisTotalSize":I
    .restart local v1    # "mainAxisTotalSize":I
    :cond_25
    move v3, v1

    move/from16 v4, v33

    .line 1467
    .end local v1    # "mainAxisTotalSize":I
    .end local v33    # "crossAxisTotalSize":I
    .local v3, "mainAxisTotalSize":I
    .local v4, "crossAxisTotalSize":I
    :goto_21
    nop

    .line 1468
    nop

    .line 1469
    nop

    .line 1470
    nop

    .line 1471
    nop

    .line 1472
    nop

    .line 1473
    nop

    .line 1474
    nop

    .line 1467
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v1, p5

    move-object v6, v13

    move-object v5, v15

    .end local v13    # "items":Landroidx/compose/runtime/collection/MutableVector;
    .end local v15    # "crossAxisSizesArray":[I
    .local v5, "crossAxisSizesArray":[I
    .local v6, "items":Landroidx/compose/runtime/collection/MutableVector;
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->placeHelper-BmaY500(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v12

    return-object v12
.end method

.method private static final breakDownItems_di9J0FM$lambda$0$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;
    .locals 1
    .param p0, "$placeableItem"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "placeable"    # Landroidx/compose/ui/layout/Placeable;

    .line 1254
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1255
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final breakDownItems_di9J0FM$lambda$2$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/layout/Placeable;)Lkotlin/Unit;
    .locals 1
    .param p0, "$placeableItem"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "placeable"    # Landroidx/compose/ui/layout/Placeable;

    .line 1353
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1354
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final columnMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 19
    .param p0, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "maxItemsInMainAxis"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 501
    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, -0x77fd7175

    const-string v3, "C(columnMeasurementHelper)N(verticalArrangement,horizontalArrangement,maxItemsInMainAxis)501@19939L850:FlowLayout.kt#2w3rfo"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:500)"

    invoke-static {v2, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 502
    :cond_0
    const v2, -0x6e66cda3

    const-string v3, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v9, p0

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v9, p0

    :goto_0
    and-int/lit8 v2, v1, 0x6

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    and-int/lit8 v3, v1, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v6, 0x20

    if-le v3, v6, :cond_4

    move-object/from16 v8, p1

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    move-object/from16 v8, p1

    :goto_2
    and-int/lit8 v3, v1, 0x30

    if-ne v3, v6, :cond_6

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v6, 0x100

    if-le v3, v6, :cond_7

    move/from16 v13, p2

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_7
    move/from16 v13, p2

    :goto_4
    and-int/lit16 v3, v1, 0x180

    if-ne v3, v6, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    or-int/2addr v2, v4

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p3

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1696
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1697
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_b

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_a

    goto :goto_5

    .line 1701
    :cond_a
    goto :goto_6

    .line 1698
    :cond_b
    :goto_5
    const/16 v18, 0x0

    .line 507
    .local v18, "$i$a$-cache-FlowLayoutKt$columnMeasurementHelper$1":I
    invoke-interface {v9}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 508
    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 510
    invoke-interface {v8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v12

    .line 513
    sget-object v6, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getVisible()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlowRowOverflow;->createOverflowState$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v15

    .line 504
    new-instance v6, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 505
    nop

    .line 509
    nop

    .line 506
    nop

    .line 507
    nop

    .line 508
    nop

    .line 510
    nop

    .line 511
    nop

    .line 512
    nop

    .line 513
    nop

    .line 504
    const/4 v7, 0x0

    const v14, 0x7fffffff

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v16}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 503
    nop

    .line 515
    .local v6, "measurePolicy":Landroidx/compose/foundation/layout/FlowMeasurePolicy;
    new-instance v7, Landroidx/compose/foundation/layout/FlowLayoutKt$columnMeasurementHelper$1$1;

    invoke-direct {v7, v6}, Landroidx/compose/foundation/layout/FlowLayoutKt$columnMeasurementHelper$1$1;-><init>(Landroidx/compose/foundation/layout/FlowMeasurePolicy;)V

    check-cast v7, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 517
    nop

    .line 1698
    .end local v6    # "measurePolicy":Landroidx/compose/foundation/layout/FlowMeasurePolicy;
    .end local v18    # "$i$a$-cache-FlowLayoutKt$columnMeasurementHelper$1":I
    nop

    .line 1699
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1700
    move-object v5, v7

    .line 1696
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_6
    nop

    .line 502
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 501
    :cond_c
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 502
    return-object v5
.end method

.method public static final columnMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .locals 21
    .param p0, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "itemHorizontalAlignment"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p3, "maxItemsInMainAxis"    # I
    .param p4, "maxLines"    # I
    .param p5, "overflowState"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 529
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p7

    const v3, -0x126568c7

    const-string v4, "C(columnMeasurementMultiContentHelper)N(verticalArrangement,horizontalArrangement,itemHorizontalAlignment,maxItemsInMainAxis,maxLines,overflowState)529@21138L715:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.foundation.layout.columnMeasurementMultiContentHelper (FlowLayout.kt:528)"

    invoke-static {v3, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 530
    :cond_0
    const v3, -0xeae27bc

    const-string v4, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, v2, 0xe

    xor-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_1

    .line 531
    move-object/from16 v10, p0

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 530
    :cond_1
    move-object/from16 v10, p0

    .line 531
    :goto_0
    and-int/lit8 v3, v2, 0x6

    if-ne v3, v4, :cond_3

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    and-int/lit8 v4, v2, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v7, 0x20

    if-le v4, v7, :cond_4

    .line 532
    move-object/from16 v9, p1

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 531
    :cond_4
    move-object/from16 v9, p1

    .line 532
    :goto_2
    and-int/lit8 v4, v2, 0x30

    if-ne v4, v7, :cond_6

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0x380

    xor-int/lit16 v4, v4, 0x180

    const/16 v7, 0x100

    if-le v4, v7, :cond_7

    .line 533
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    and-int/lit16 v4, v2, 0x180

    if-ne v4, v7, :cond_9

    :cond_8
    move v4, v6

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0x1c00

    xor-int/lit16 v4, v4, 0xc00

    const/16 v7, 0x800

    if-le v4, v7, :cond_a

    .line 534
    move/from16 v14, p3

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 533
    :cond_a
    move/from16 v14, p3

    .line 534
    :goto_5
    and-int/lit16 v4, v2, 0xc00

    if-ne v4, v7, :cond_c

    :cond_b
    move v4, v6

    goto :goto_6

    :cond_c
    move v4, v5

    :goto_6
    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v2

    xor-int/lit16 v4, v4, 0x6000

    const/16 v7, 0x4000

    if-le v4, v7, :cond_d

    .line 535
    move/from16 v15, p4

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_7

    .line 534
    :cond_d
    move/from16 v15, p4

    .line 535
    :goto_7
    and-int/lit16 v4, v2, 0x6000

    if-ne v4, v7, :cond_f

    :cond_e
    move v5, v6

    :cond_f
    or-int/2addr v3, v5

    .line 536
    move-object/from16 v4, p5

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 530
    nop

    .local v3, "invalid$iv":Z
    move-object/from16 v5, p6

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1702
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1703
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_11

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_10

    goto :goto_8

    .line 1707
    :cond_10
    goto :goto_9

    .line 1704
    :cond_11
    :goto_8
    const/16 v19, 0x0

    .line 541
    .local v19, "$i$a$-cache-FlowLayoutKt$columnMeasurementMultiContentHelper$1":I
    invoke-interface {v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v11

    .line 542
    sget-object v8, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    invoke-virtual {v8, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v12

    .line 544
    invoke-interface {v9}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v13

    .line 538
    move-object v8, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local v8, "it$iv":Ljava/lang/Object;
    new-instance v7, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 539
    nop

    .line 543
    nop

    .line 540
    nop

    .line 541
    nop

    .line 542
    nop

    .line 544
    nop

    .line 545
    nop

    .line 546
    nop

    .line 547
    nop

    .line 538
    move-object/from16 v16, v8

    .end local v8    # "it$iv":Ljava/lang/Object;
    .local v16, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object/from16 v20, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v20

    .end local v16    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    invoke-direct/range {v7 .. v17}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 548
    nop

    .line 1704
    .end local v19    # "$i$a$-cache-FlowLayoutKt$columnMeasurementMultiContentHelper$1":I
    nop

    .line 1705
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1706
    nop

    .line 1702
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_9
    nop

    .line 530
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v7, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 529
    :cond_12
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v7, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 530
    return-object v7
.end method

.method public static final crossAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I
    .locals 1
    .param p0, "$this$crossAxisMin"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p1, "isHorizontal"    # Z
    .param p2, "mainAxisSize"    # I

    .line 1498
    if-eqz p1, :cond_0

    .line 1499
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v0

    goto :goto_0

    .line 1501
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v0

    .line 1502
    :goto_0
    return v0
.end method

.method public static final getCROSS_AXIS_ALIGNMENT_START()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 1505
    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public static final getCROSS_AXIS_ALIGNMENT_TOP()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 1504
    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 30
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .param p7, "maxLines"    # I
    .param p8, "overflow"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIIII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1085
    .local v3, "$i$f$intrinsicCrossAxisSize":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    .line 1104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1085
    if-eqz v4, :cond_0

    .line 1086
    invoke-static {v5, v5}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v4

    return-wide v4

    .line 1095
    :cond_0
    nop

    .line 1096
    nop

    .line 1097
    nop

    .line 1098
    nop

    .line 1094
    const v4, 0x7fffffff

    move/from16 v7, p3

    invoke-static {v5, v7, v5, v4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v11

    .line 1089
    new-instance v8, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 1090
    nop

    .line 1091
    nop

    .line 1094
    nop

    .line 1092
    nop

    .line 1100
    nop

    .line 1101
    nop

    .line 1089
    const/16 v16, 0x0

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v9, p6

    move/from16 v13, p7

    move-object/from16 v10, p8

    invoke-direct/range {v8 .. v16}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1088
    move-object v9, v8

    .line 1103
    .local v9, "buildingBlocks":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1104
    .local v8, "nextChild":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    if-eqz v8, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v8, v6, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v5

    .line 1105
    .local v10, "nextCrossAxisSize":I
    :goto_0
    if-eqz v8, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v8, v6, v11}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v5

    .line 1107
    .local v6, "nextMainAxisSize":I
    :goto_1
    move/from16 v11, p3

    .line 1108
    .local v11, "remaining":I
    const/16 v17, 0x0

    .line 1109
    .local v17, "currentCrossAxisSize":I
    const/16 v16, 0x0

    .line 1110
    .local v16, "totalCrossAxisSize":I
    const/16 v20, 0x0

    .line 1111
    .local v20, "lastBreak":I
    const/4 v15, 0x0

    .line 1114
    .local v15, "lineIndex":I
    nop

    .line 1115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    move v12, v13

    goto :goto_2

    :cond_3
    move v12, v5

    .line 1116
    :goto_2
    nop

    .line 1117
    move v14, v12

    move/from16 v18, v13

    invoke-static {v11, v4}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v12

    .line 1119
    const/16 v21, 0x0

    if-nez v8, :cond_4

    move-object/from16 v19, v21

    goto :goto_3

    :cond_4
    invoke-static {v6, v10}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v19

    .line 1120
    :goto_3
    nop

    .line 1121
    nop

    .line 1122
    nop

    .line 1123
    nop

    .line 1124
    nop

    .line 1114
    move/from16 v22, v11

    .end local v11    # "remaining":I
    .local v22, "remaining":I
    const/4 v11, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move/from16 v24, v10

    move v10, v14

    move-object/from16 v14, v19

    .end local v10    # "nextCrossAxisSize":I
    .local v24, "nextCrossAxisSize":I
    const/16 v19, 0x0

    invoke-virtual/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v10

    .line 1113
    nop

    .line 1127
    .local v10, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1129
    nop

    .line 1130
    if-eqz v8, :cond_5

    move/from16 v13, v23

    goto :goto_4

    :cond_5
    move v13, v5

    :goto_4
    move-object/from16 v11, p8

    invoke-virtual {v11, v13, v5, v5}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout(ZII)Landroidx/collection/IntIntPair;

    move-result-object v4

    .line 1131
    if-eqz v4, :cond_6

    .line 1129
    invoke-virtual {v4}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v4

    .line 1131
    invoke-static {v4, v5}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v5

    .line 1129
    nop

    :cond_6
    nop

    .line 1128
    nop

    .line 1132
    .local v5, "size":I
    const/4 v4, 0x0

    .line 1133
    .local v4, "noOfItemsShown":I
    invoke-static {v5, v4}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v12

    return-wide v12

    .line 1136
    .end local v4    # "noOfItemsShown":I
    .end local v5    # "size":I
    :cond_7
    move-object/from16 v11, p8

    const/4 v12, 0x0

    .line 1137
    .local v12, "noOfItemsShown":I
    const/4 v13, 0x0

    .local v13, "index":I
    move-object v14, v0

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    move/from16 v5, v17

    move/from16 v25, v20

    move-object/from16 v20, v10

    move/from16 v10, v24

    .end local v17    # "currentCrossAxisSize":I
    .end local v24    # "nextCrossAxisSize":I
    .local v5, "currentCrossAxisSize":I
    .local v10, "nextCrossAxisSize":I
    .local v20, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .local v25, "lastBreak":I
    :goto_5
    if-ge v13, v14, :cond_11

    .line 1138
    move/from16 v26, v10

    .line 1139
    .local v26, "childCrossAxisSize":I
    move/from16 v27, v6

    .line 1140
    .local v27, "childMainAxisSize":I
    sub-int v4, v22, v27

    .line 1141
    .end local v22    # "remaining":I
    .local v4, "remaining":I
    add-int/lit8 v22, v13, 0x1

    .line 1142
    .end local v12    # "noOfItemsShown":I
    .local v22, "noOfItemsShown":I
    move/from16 v12, v26

    .end local v26    # "childCrossAxisSize":I
    .local v12, "childCrossAxisSize":I
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1145
    .end local v5    # "currentCrossAxisSize":I
    .restart local v17    # "currentCrossAxisSize":I
    add-int/lit8 v5, v13, 0x1

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1146
    if-eqz v8, :cond_8

    add-int/lit8 v5, v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v8, v5, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    .line 1148
    .end local v10    # "nextCrossAxisSize":I
    .local v0, "nextCrossAxisSize":I
    :goto_6
    if-eqz v8, :cond_9

    add-int/lit8 v5, v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v8, v5, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int v5, v5, p4

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    .line 1147
    :goto_7
    nop

    .line 1151
    .end local v6    # "nextMainAxisSize":I
    .local v5, "nextMainAxisSize":I
    nop

    .line 1152
    add-int/lit8 v6, v13, 0x2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_a

    move/from16 v10, v23

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    .line 1153
    :goto_8
    add-int/lit8 v6, v13, 0x1

    sub-int v6, v6, v25

    .line 1154
    move/from16 v19, v12

    move/from16 v18, v13

    const v1, 0x7fffffff

    .end local v12    # "childCrossAxisSize":I
    .end local v13    # "index":I
    .local v18, "index":I
    .local v19, "childCrossAxisSize":I
    invoke-static {v4, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v12

    .line 1156
    if-nez v8, :cond_b

    .line 1157
    move-object/from16 v26, v21

    goto :goto_9

    .line 1159
    :cond_b
    invoke-static {v5, v0}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v26

    .line 1161
    :goto_9
    nop

    .line 1162
    nop

    .line 1163
    nop

    .line 1164
    nop

    .line 1165
    nop

    .line 1151
    move/from16 v28, v18

    .end local v18    # "index":I
    .local v28, "index":I
    const/16 v18, 0x0

    move/from16 v29, v19

    .end local v19    # "childCrossAxisSize":I
    .local v29, "childCrossAxisSize":I
    const/16 v19, 0x0

    move-object/from16 v11, v26

    move/from16 v26, v14

    move-object v14, v11

    move v11, v6

    invoke-virtual/range {v9 .. v19}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v10

    .line 1150
    move v12, v15

    .line 1167
    .end local v15    # "lineIndex":I
    .end local v20    # "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .local v10, "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .local v12, "lineIndex":I
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1168
    add-int v6, v17, p5

    add-int v13, v16, v6

    .line 1171
    .end local v16    # "totalCrossAxisSize":I
    .local v13, "totalCrossAxisSize":I
    nop

    .line 1172
    if-eqz v8, :cond_c

    move/from16 v11, v23

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    .line 1173
    :goto_a
    nop

    .line 1174
    nop

    .line 1175
    nop

    .line 1176
    add-int/lit8 v6, v28, 0x1

    sub-int v15, v6, v25

    .line 1170
    nop

    .line 1171
    nop

    .line 1172
    nop

    .line 1174
    nop

    .line 1175
    nop

    .line 1173
    nop

    .line 1176
    nop

    .line 1170
    move v14, v4

    .end local v4    # "remaining":I
    .local v14, "remaining":I
    invoke-virtual/range {v9 .. v15}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v4

    .line 1169
    move v15, v12

    .line 1178
    .end local v12    # "lineIndex":I
    .local v4, "ellipsisWrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;
    .restart local v15    # "lineIndex":I
    const/4 v6, 0x0

    .line 1179
    .end local v17    # "currentCrossAxisSize":I
    .local v6, "currentCrossAxisSize":I
    move/from16 v11, p3

    .line 1180
    .end local v14    # "remaining":I
    .restart local v11    # "remaining":I
    add-int/lit8 v25, v28, 0x1

    .line 1181
    sub-int v5, v5, p4

    .line 1182
    add-int/lit8 v15, v15, 0x1

    .line 1183
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1184
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v16

    .local v16, "it":J
    const/4 v1, 0x0

    .line 1185
    .local v1, "$i$a$-let-FlowLayoutKt$intrinsicCrossAxisSize$3":I
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceEllipsisOnLastContentLine()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1186
    invoke-static/range {v16 .. v17}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v12

    add-int v12, v12, p5

    add-int/2addr v13, v12

    .line 1188
    :cond_d
    nop

    .line 1184
    .end local v1    # "$i$a$-let-FlowLayoutKt$intrinsicCrossAxisSize$3":I
    .end local v16    # "it":J
    nop

    :cond_e
    move/from16 v16, v13

    .line 1189
    .end local v13    # "totalCrossAxisSize":I
    .local v16, "totalCrossAxisSize":I
    move v12, v6

    move v6, v5

    move v5, v12

    move-object/from16 v20, v10

    move/from16 v12, v22

    move v10, v0

    move/from16 v22, v11

    goto :goto_c

    .line 1183
    .end local v16    # "totalCrossAxisSize":I
    .restart local v13    # "totalCrossAxisSize":I
    :cond_f
    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    move/from16 v16, v13

    goto :goto_b

    .line 1167
    .end local v6    # "currentCrossAxisSize":I
    .end local v11    # "remaining":I
    .end local v13    # "totalCrossAxisSize":I
    .end local v15    # "lineIndex":I
    .local v4, "remaining":I
    .restart local v12    # "lineIndex":I
    .restart local v16    # "totalCrossAxisSize":I
    .restart local v17    # "currentCrossAxisSize":I
    :cond_10
    move v14, v4

    move v15, v12

    .end local v4    # "remaining":I
    .end local v12    # "lineIndex":I
    .restart local v14    # "remaining":I
    .restart local v15    # "lineIndex":I
    move v6, v5

    move v11, v14

    move/from16 v5, v17

    .line 1137
    .end local v14    # "remaining":I
    .end local v17    # "currentCrossAxisSize":I
    .end local v27    # "childMainAxisSize":I
    .end local v29    # "childCrossAxisSize":I
    .local v5, "currentCrossAxisSize":I
    .local v6, "nextMainAxisSize":I
    .restart local v11    # "remaining":I
    :goto_b
    add-int/lit8 v13, v28, 0x1

    move v4, v1

    move-object/from16 v20, v10

    move/from16 v12, v22

    move/from16 v14, v26

    move-object/from16 v1, p1

    move v10, v0

    move/from16 v22, v11

    move-object/from16 v0, p0

    move-object/from16 v11, p8

    .end local v28    # "index":I
    .local v13, "index":I
    goto/16 :goto_5

    .end local v0    # "nextCrossAxisSize":I
    .end local v11    # "remaining":I
    .local v10, "nextCrossAxisSize":I
    .local v12, "noOfItemsShown":I
    .restart local v20    # "wrapInfo":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .local v22, "remaining":I
    :cond_11
    move/from16 v28, v13

    .line 1194
    .end local v13    # "index":I
    :goto_c
    sub-int v0, v16, p5

    .line 1195
    .end local v16    # "totalCrossAxisSize":I
    .local v0, "totalCrossAxisSize":I
    invoke-static {v0, v12}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v13

    return-wide v13
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J
    .locals 33
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSizes"    # [I
    .param p2, "crossAxisSizes"    # [I
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .param p7, "maxLines"    # I
    .param p8, "overflow"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;[I[IIIIII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")J"
        }
    .end annotation

    .line 1058
    nop

    .line 1061
    nop

    .line 1062
    nop

    .line 1063
    nop

    .line 1064
    nop

    .line 1065
    nop

    .line 1066
    nop

    .line 1057
    move-object/from16 v2, p8

    .local v2, "overflow$iv":Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    move/from16 v5, p7

    .local v5, "maxLines$iv":I
    move/from16 v7, p5

    .local v7, "crossAxisSpacing$iv":I
    move/from16 v1, p6

    .local v1, "maxItemsInMainAxis$iv":I
    move-object/from16 v9, p0

    .local v9, "children$iv":Ljava/util/List;
    move/from16 v6, p4

    .local v6, "mainAxisSpacing$iv":I
    move/from16 v10, p3

    .local v10, "mainAxisAvailable$iv":I
    const/4 v11, 0x0

    .line 1714
    .local v11, "$i$f$intrinsicCrossAxisSize":I
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 1715
    invoke-static {v12, v12}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v3

    goto/16 :goto_e

    .line 1724
    :cond_0
    nop

    .line 1725
    nop

    .line 1726
    nop

    .line 1727
    nop

    .line 1723
    const v13, 0x7fffffff

    invoke-static {v12, v10, v12, v13}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v3

    .line 1718
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    .line 1719
    nop

    .line 1720
    nop

    .line 1723
    nop

    .line 1721
    nop

    .line 1729
    nop

    .line 1730
    nop

    .line 1718
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1717
    move-object v14, v0

    .line 1732
    .local v14, "buildingBlocks$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    invoke-static {v9, v12}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1733
    .local v0, "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .local v3, "index":I
    move-object v4, v0

    .local v4, "$this$intrinsicCrossAxisSize_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v8, 0x0

    .line 1060
    .local v8, "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$2":I
    aget v3, p2, v3

    .line 1733
    .end local v3    # "index":I
    .end local v4    # "$this$intrinsicCrossAxisSize_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v8    # "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$2":I
    goto :goto_0

    :cond_1
    move v3, v12

    .line 1734
    .local v3, "nextCrossAxisSize$iv":I
    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    .local v4, "index":I
    move-object v8, v0

    .local v8, "$this$intrinsicCrossAxisSize_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/4 v15, 0x0

    .line 1059
    .local v15, "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$1":I
    aget v4, p1, v4

    .line 1734
    .end local v4    # "index":I
    .end local v8    # "$this$intrinsicCrossAxisSize_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v15    # "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$1":I
    goto :goto_1

    :cond_2
    move v4, v12

    .line 1736
    .local v4, "nextMainAxisSize$iv":I
    :goto_1
    move v8, v10

    .line 1737
    .local v8, "remaining$iv":I
    const/16 v22, 0x0

    .line 1738
    .local v22, "currentCrossAxisSize$iv":I
    const/16 v21, 0x0

    .line 1739
    .local v21, "totalCrossAxisSize$iv":I
    const/16 v25, 0x0

    .line 1740
    .local v25, "lastBreak$iv":I
    const/16 v20, 0x0

    .line 1743
    .local v20, "lineIndex$iv":I
    nop

    .line 1744
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    const/4 v12, 0x1

    if-le v15, v12, :cond_3

    move v15, v12

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 1745
    :goto_2
    nop

    .line 1746
    invoke-static {v8, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v17

    .line 1748
    const/16 v27, 0x0

    if-nez v0, :cond_4

    move-object/from16 v19, v27

    goto :goto_3

    :cond_4
    invoke-static {v4, v3}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v16

    move-object/from16 v19, v16

    .line 1749
    :goto_3
    nop

    .line 1750
    nop

    .line 1751
    nop

    .line 1752
    nop

    .line 1753
    nop

    .line 1743
    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v14 .. v24}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v15

    .line 1742
    nop

    .line 1756
    .local v15, "wrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    invoke-virtual {v15}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1758
    nop

    .line 1759
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v13}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout(ZII)Landroidx/collection/IntIntPair;

    move-result-object v12

    .line 1760
    if-eqz v12, :cond_6

    .line 1758
    invoke-virtual {v12}, Landroidx/collection/IntIntPair;->unbox-impl()J

    move-result-wide v12

    .line 1760
    invoke-static {v12, v13}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v12

    .line 1758
    goto :goto_5

    .line 1760
    :cond_6
    move v12, v13

    .line 1758
    :goto_5
    nop

    .line 1757
    nop

    .line 1761
    .local v12, "size$iv":I
    const/4 v13, 0x0

    .line 1762
    .local v13, "noOfItemsShown$iv":I
    invoke-static {v12, v13}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v16

    move-wide/from16 v3, v16

    goto/16 :goto_e

    .line 1765
    .end local v12    # "size$iv":I
    .end local v13    # "noOfItemsShown$iv":I
    :cond_7
    const/16 v26, 0x0

    const/16 v16, 0x0

    .line 1766
    .local v16, "noOfItemsShown$iv":I
    const/16 v17, 0x0

    .local v17, "index$iv":I
    move-object/from16 v18, v9

    check-cast v18, Ljava/util/Collection;

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v12

    move/from16 v13, v22

    move/from16 v28, v25

    move-object/from16 v25, v15

    move/from16 v15, v17

    move/from16 v17, v20

    .end local v20    # "lineIndex$iv":I
    .end local v22    # "currentCrossAxisSize$iv":I
    .local v13, "currentCrossAxisSize$iv":I
    .local v15, "index$iv":I
    .local v17, "lineIndex$iv":I
    .local v25, "wrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .local v28, "lastBreak$iv":I
    :goto_6
    if-ge v15, v12, :cond_11

    .line 1767
    move/from16 v29, v3

    .line 1768
    .local v29, "childCrossAxisSize$iv":I
    move/from16 v30, v4

    .line 1769
    .local v30, "childMainAxisSize$iv":I
    sub-int v8, v8, v30

    .line 1770
    add-int/lit8 v31, v15, 0x1

    .line 1771
    .end local v16    # "noOfItemsShown$iv":I
    .local v31, "noOfItemsShown$iv":I
    move-object/from16 v18, v0

    move/from16 v0, v29

    .end local v29    # "childCrossAxisSize$iv":I
    .local v0, "childCrossAxisSize$iv":I
    .local v18, "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1774
    .end local v13    # "currentCrossAxisSize$iv":I
    .restart local v22    # "currentCrossAxisSize$iv":I
    add-int/lit8 v13, v15, 0x1

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 1775
    .end local v18    # "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v13, "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    if-eqz v13, :cond_8

    add-int/lit8 v16, v15, 0x1

    .local v16, "index":I
    move-object/from16 v18, v13

    .local v18, "$this$intrinsicCrossAxisSize_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 1060
    .local v19, "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$2":I
    aget v16, p2, v16

    .line 1775
    .end local v16    # "index":I
    .end local v18    # "$this$intrinsicCrossAxisSize_u24lambda_u241":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$2":I
    goto :goto_7

    :cond_8
    move/from16 v16, v26

    :goto_7
    move/from16 v3, v16

    .line 1777
    if-eqz v13, :cond_9

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "index":I
    move-object/from16 v18, v13

    .local v18, "$this$intrinsicCrossAxisSize_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    const/16 v19, 0x0

    .line 1059
    .local v19, "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$1":I
    aget v16, p1, v16

    .line 1777
    .end local v16    # "index":I
    .end local v18    # "$this$intrinsicCrossAxisSize_u24lambda_u240":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v19    # "$i$a$-intrinsicCrossAxisSize-FlowLayoutKt$intrinsicCrossAxisSize$1":I
    add-int v16, v16, v6

    goto :goto_8

    :cond_9
    move/from16 v16, v26

    .line 1776
    :goto_8
    move/from16 v4, v16

    .line 1780
    nop

    .line 1781
    move/from16 v29, v0

    .end local v0    # "childCrossAxisSize$iv":I
    .restart local v29    # "childCrossAxisSize$iv":I
    add-int/lit8 v0, v15, 0x2

    move/from16 v32, v1

    .end local v1    # "maxItemsInMainAxis$iv":I
    .local v32, "maxItemsInMainAxis$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    move v0, v15

    const/4 v15, 0x1

    goto :goto_9

    :cond_a
    move v0, v15

    move/from16 v15, v26

    .line 1782
    .end local v15    # "index$iv":I
    .local v0, "index$iv":I
    :goto_9
    add-int/lit8 v1, v0, 0x1

    sub-int v16, v1, v28

    .line 1783
    move/from16 v20, v17

    const v1, 0x7fffffff

    .end local v17    # "lineIndex$iv":I
    .restart local v20    # "lineIndex$iv":I
    invoke-static {v8, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v17

    .line 1785
    if-nez v13, :cond_b

    .line 1786
    move-object/from16 v19, v27

    goto :goto_a

    .line 1788
    :cond_b
    invoke-static {v4, v3}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Landroidx/collection/IntIntPair;->box-impl(J)Landroidx/collection/IntIntPair;

    move-result-object v19

    .line 1790
    :goto_a
    nop

    .line 1791
    nop

    .line 1792
    nop

    .line 1793
    nop

    .line 1794
    nop

    .line 1780
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v14 .. v24}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v15

    .line 1779
    nop

    .line 1796
    .end local v25    # "wrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .local v15, "wrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    invoke-virtual {v15}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1797
    add-int v16, v22, v7

    add-int v18, v21, v16

    .line 1800
    .end local v21    # "totalCrossAxisSize$iv":I
    .local v18, "totalCrossAxisSize$iv":I
    nop

    .line 1801
    if-eqz v13, :cond_c

    const/16 v16, 0x1

    goto :goto_b

    :cond_c
    move/from16 v16, v26

    .line 1802
    :goto_b
    nop

    .line 1803
    nop

    .line 1804
    nop

    .line 1805
    add-int/lit8 v17, v0, 0x1

    sub-int v17, v17, v28

    .line 1799
    nop

    .line 1800
    nop

    .line 1801
    nop

    .line 1803
    nop

    .line 1804
    nop

    .line 1802
    nop

    .line 1805
    nop

    .line 1799
    move/from16 v19, v20

    move/from16 v20, v17

    move/from16 v17, v19

    move/from16 v19, v8

    .end local v8    # "remaining$iv":I
    .end local v20    # "lineIndex$iv":I
    .restart local v17    # "lineIndex$iv":I
    .local v19, "remaining$iv":I
    invoke-virtual/range {v14 .. v20}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v8

    .line 1798
    move/from16 v20, v17

    .line 1807
    .end local v17    # "lineIndex$iv":I
    .local v8, "ellipsisWrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;
    .restart local v20    # "lineIndex$iv":I
    const/16 v16, 0x0

    .line 1808
    .end local v22    # "currentCrossAxisSize$iv":I
    .local v16, "currentCrossAxisSize$iv":I
    move/from16 v17, v10

    .line 1809
    .end local v19    # "remaining$iv":I
    .local v17, "remaining$iv":I
    add-int/lit8 v28, v0, 0x1

    .line 1810
    sub-int/2addr v4, v6

    .line 1811
    add-int/lit8 v19, v20, 0x1

    .line 1812
    .end local v20    # "lineIndex$iv":I
    .local v19, "lineIndex$iv":I
    invoke-virtual {v15}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1813
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getEllipsisSize-OO21N7I()J

    move-result-wide v20

    .local v20, "it$iv":J
    const/4 v1, 0x0

    .line 1814
    .local v1, "$i$a$-let-FlowLayoutKt$intrinsicCrossAxisSize$3$iv":I
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->getPlaceEllipsisOnLastContentLine()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1815
    invoke-static/range {v20 .. v21}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v12

    add-int/2addr v12, v7

    add-int v18, v18, v12

    .line 1817
    :cond_d
    nop

    .line 1813
    .end local v1    # "$i$a$-let-FlowLayoutKt$intrinsicCrossAxisSize$3$iv":I
    .end local v20    # "it$iv":J
    nop

    :cond_e
    move/from16 v21, v18

    .line 1818
    .end local v18    # "totalCrossAxisSize$iv":I
    .restart local v21    # "totalCrossAxisSize$iv":I
    move-object v0, v13

    move-object/from16 v25, v15

    move/from16 v13, v16

    move/from16 v8, v17

    move/from16 v17, v19

    move/from16 v1, v31

    goto :goto_d

    .line 1812
    .end local v21    # "totalCrossAxisSize$iv":I
    .restart local v18    # "totalCrossAxisSize$iv":I
    :cond_f
    move/from16 v8, v17

    move/from16 v21, v18

    move/from16 v17, v19

    goto :goto_c

    .line 1796
    .end local v16    # "currentCrossAxisSize$iv":I
    .end local v17    # "remaining$iv":I
    .end local v18    # "totalCrossAxisSize$iv":I
    .end local v19    # "lineIndex$iv":I
    .local v8, "remaining$iv":I
    .local v20, "lineIndex$iv":I
    .restart local v21    # "totalCrossAxisSize$iv":I
    .restart local v22    # "currentCrossAxisSize$iv":I
    :cond_10
    move/from16 v19, v8

    .end local v8    # "remaining$iv":I
    .local v19, "remaining$iv":I
    move/from16 v17, v20

    move/from16 v16, v22

    .line 1766
    .end local v19    # "remaining$iv":I
    .end local v20    # "lineIndex$iv":I
    .end local v22    # "currentCrossAxisSize$iv":I
    .end local v29    # "childCrossAxisSize$iv":I
    .end local v30    # "childMainAxisSize$iv":I
    .restart local v8    # "remaining$iv":I
    .restart local v16    # "currentCrossAxisSize$iv":I
    .local v17, "lineIndex$iv":I
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v25, v15

    move/from16 v1, v32

    move v15, v0

    move-object v0, v13

    move/from16 v13, v16

    move/from16 v16, v31

    goto/16 :goto_6

    .end local v31    # "noOfItemsShown$iv":I
    .end local v32    # "maxItemsInMainAxis$iv":I
    .local v0, "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v1, "maxItemsInMainAxis$iv":I
    .local v13, "currentCrossAxisSize$iv":I
    .local v15, "index$iv":I
    .local v16, "noOfItemsShown$iv":I
    .restart local v25    # "wrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    :cond_11
    move-object/from16 v18, v0

    move/from16 v32, v1

    move v0, v15

    move/from16 v20, v17

    .end local v1    # "maxItemsInMainAxis$iv":I
    .end local v15    # "index$iv":I
    .end local v17    # "lineIndex$iv":I
    .local v0, "index$iv":I
    .local v18, "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .restart local v20    # "lineIndex$iv":I
    .restart local v32    # "maxItemsInMainAxis$iv":I
    move/from16 v1, v16

    move-object/from16 v0, v18

    .line 1823
    .end local v16    # "noOfItemsShown$iv":I
    .end local v18    # "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v20    # "lineIndex$iv":I
    .local v0, "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .local v1, "noOfItemsShown$iv":I
    .restart local v17    # "lineIndex$iv":I
    :goto_d
    sub-int v12, v21, v7

    .line 1824
    .end local v21    # "totalCrossAxisSize$iv":I
    .local v12, "totalCrossAxisSize$iv":I
    invoke-static {v12, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v15

    move-wide v3, v15

    .line 1057
    .end local v0    # "nextChild$iv":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v1    # "noOfItemsShown$iv":I
    .end local v2    # "overflow$iv":Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .end local v3    # "nextCrossAxisSize$iv":I
    .end local v4    # "nextMainAxisSize$iv":I
    .end local v5    # "maxLines$iv":I
    .end local v6    # "mainAxisSpacing$iv":I
    .end local v7    # "crossAxisSpacing$iv":I
    .end local v8    # "remaining$iv":I
    .end local v9    # "children$iv":Ljava/util/List;
    .end local v10    # "mainAxisAvailable$iv":I
    .end local v11    # "$i$f$intrinsicCrossAxisSize":I
    .end local v12    # "totalCrossAxisSize$iv":I
    .end local v13    # "currentCrossAxisSize$iv":I
    .end local v14    # "buildingBlocks$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
    .end local v17    # "lineIndex$iv":I
    .end local v25    # "wrapInfo$iv":Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .end local v28    # "lastBreak$iv":I
    .end local v32    # "maxItemsInMainAxis$iv":I
    :goto_e
    return-wide v3
.end method

.method public static final mainAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I
    .locals 1
    .param p0, "$this$mainAxisMin"    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .param p1, "isHorizontal"    # Z
    .param p2, "crossAxisSize"    # I

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v0

    goto :goto_0

    .line 1494
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v0

    .line 1495
    :goto_0
    return v0
.end method

.method private static final maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 17
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisAvailable"    # I
    .param p3, "mainAxisSpacing"    # I
    .param p4, "maxItemsInMainAxis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 933
    .local v0, "$i$f$maxIntrinsicMainAxisSize":I
    const/4 v1, 0x0

    .line 934
    .local v1, "fixedSpace":I
    const/4 v2, 0x0

    .line 935
    .local v2, "currentFixedSpace":I
    const/4 v3, 0x0

    .line 936
    .local v3, "lastBreak":I
    move-object/from16 v4, p0

    .local v4, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1708
    .local v5, "$i$f$fastForEachIndexed":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    .line 1709
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1710
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v9, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v10, v6

    .local v10, "index":I
    const/4 v11, 0x0

    .line 937
    .local v11, "$i$a$-fastForEachIndexed-FlowLayoutKt$maxIntrinsicMainAxisSize$1":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-interface {v14, v9, v12, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    add-int v12, v12, p3

    .line 938
    .local v12, "size":I
    add-int/lit8 v13, v10, 0x1

    sub-int/2addr v13, v3

    move/from16 v15, p4

    if-eq v13, v15, :cond_1

    add-int/lit8 v13, v10, 0x1

    move/from16 v16, v0

    .end local v0    # "$i$f$maxIntrinsicMainAxisSize":I
    .local v16, "$i$f$maxIntrinsicMainAxisSize":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v13, v0, :cond_0

    goto :goto_1

    .line 945
    :cond_0
    add-int/2addr v2, v12

    goto :goto_2

    .line 938
    .end local v16    # "$i$f$maxIntrinsicMainAxisSize":I
    .restart local v0    # "$i$f$maxIntrinsicMainAxisSize":I
    :cond_1
    move/from16 v16, v0

    .line 939
    .end local v0    # "$i$f$maxIntrinsicMainAxisSize":I
    .restart local v16    # "$i$f$maxIntrinsicMainAxisSize":I
    :goto_1
    move v0, v10

    .line 940
    .end local v3    # "lastBreak":I
    .local v0, "lastBreak":I
    add-int/2addr v2, v12

    .line 941
    sub-int v2, v2, p3

    .line 942
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 943
    const/4 v2, 0x0

    move v3, v0

    .line 947
    .end local v0    # "lastBreak":I
    .restart local v3    # "lastBreak":I
    :goto_2
    nop

    .line 1710
    .end local v9    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v10    # "index":I
    .end local v11    # "$i$a$-fastForEachIndexed-FlowLayoutKt$maxIntrinsicMainAxisSize$1":I
    .end local v12    # "size":I
    nop

    .line 1708
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto :goto_0

    .line 1712
    .end local v6    # "index$iv":I
    .end local v16    # "$i$f$maxIntrinsicMainAxisSize":I
    .local v0, "$i$f$maxIntrinsicMainAxisSize":I
    :cond_2
    nop

    .line 948
    .end local v4    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEachIndexed":I
    return v1
.end method

.method public static final measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J
    .locals 5
    .param p0, "$this$measureAndCache_u2drqJ1uqs"    # Landroidx/compose/ui/layout/Measurable;
    .param p1, "measurePolicy"    # Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
    .param p2, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J
    .param p4, "storePlaceable"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Measurable;",
            "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    .line 1517
    nop

    .line 1518
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1519
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/RowColumnParentData;->getFlowLayoutData()Landroidx/compose/foundation/layout/FlowLayoutData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlowLayoutData;->getFillCrossAxisFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 1522
    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    .local v0, "placeable":Landroidx/compose/ui/layout/Placeable;
    move-object v1, p1

    .local v1, "$this$measureAndCache_rqJ1uqs_u24lambda_u240":Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
    const/4 v2, 0x0

    .line 1524
    .local v2, "$i$a$-with-FlowLayoutKt$measureAndCache$1":I
    invoke-interface {v1, v0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    .line 1525
    .local v3, "mainAxis":I
    invoke-interface {v1, v0}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v4

    .line 1526
    .local v4, "crossAxis":I
    invoke-static {v3, v4}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v1

    .line 1523
    .end local v1    # "$this$measureAndCache_rqJ1uqs_u24lambda_u240":Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
    .end local v2    # "$i$a$-with-FlowLayoutKt$measureAndCache$1":I
    .end local v3    # "mainAxis":I
    .end local v4    # "crossAxis":I
    nop

    .end local v0    # "placeable":Landroidx/compose/ui/layout/Placeable;
    goto :goto_2

    .line 1529
    :cond_2
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v1

    const v2, 0x7fffffff

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/FlowLayoutKt;->mainAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I

    move-result v0

    .line 1530
    .local v0, "mainAxis":I
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v2

    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->crossAxisMin(Landroidx/compose/ui/layout/IntrinsicMeasurable;ZI)I

    move-result v1

    .line 1531
    .local v1, "crossAxis":I
    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v2

    move-wide v1, v2

    .line 1517
    .end local v0    # "mainAxis":I
    .end local v1    # "crossAxis":I
    :goto_2
    return-wide v1
.end method

.method private static final minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 23
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p3, "crossAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .param p7, "maxLines"    # I
    .param p8, "overflow"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIIII",
            "Landroidx/compose/foundation/layout/FlowLayoutOverflowState;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v9, p3

    move/from16 v6, p6

    move/from16 v7, p7

    const/4 v10, 0x0

    .line 967
    .local v10, "$i$f$minIntrinsicMainAxisSize":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 968
    return v2

    .line 970
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 971
    .local v1, "mainAxisSizes":[I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 973
    .local v3, "crossAxisSizes":[I
    const/4 v4, 0x0

    .local v4, "index":I
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 974
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 975
    .local v8, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-interface {v13, v8, v11, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 976
    .local v11, "mainAxisItemSize":I
    aput v11, v1, v4

    .line 977
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-interface {v15, v8, v12, v14}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    aput v12, v3, v4

    .line 973
    .end local v8    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v11    # "mainAxisItemSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    .line 981
    .end local v4    # "index":I
    const v4, 0x7fffffff

    if-eq v7, v4, :cond_2

    if-eq v6, v4, :cond_2

    .line 982
    mul-int v4, v6, v7

    goto :goto_1

    .line 984
    :cond_2
    nop

    .line 981
    :goto_1
    nop

    .line 980
    nop

    .line 987
    .local v4, "maxItemsThatCanBeShown":I
    nop

    .line 988
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-ge v4, v5, :cond_4

    .line 989
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getType$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v5

    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v5, v11, :cond_3

    .line 990
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getType$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v5

    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v5, v11, :cond_4

    .line 991
    :cond_3
    move v5, v8

    goto :goto_2

    .line 992
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 993
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getMinLinesToShowCollapse$foundation_layout()I

    move-result v5

    if-lt v7, v5, :cond_5

    .line 994
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getType$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    move-result-object v5

    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v5, v11, :cond_5

    move v5, v8

    goto :goto_2

    .line 995
    :cond_5
    move v5, v2

    .line 987
    :goto_2
    nop

    .line 986
    move v11, v5

    .line 997
    .local v11, "mustHaveEllipsis":Z
    if-eqz v11, :cond_6

    move v5, v8

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    sub-int/2addr v4, v5

    .line 998
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 999
    .end local v4    # "maxItemsThatCanBeShown":I
    .local v12, "maxItemsThatCanBeShown":I
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->sum([I)I

    move-result v4

    .line 1713
    .local v4, "$this$minIntrinsicMainAxisSize_u24lambda_u240":I
    const/4 v5, 0x0

    .line 999
    .local v5, "$i$a$-run-FlowLayoutKt$minIntrinsicMainAxisSize$maxMainAxisSize$1":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v8

    mul-int v14, v14, p4

    add-int/2addr v14, v4

    .line 1000
    .end local v4    # "$this$minIntrinsicMainAxisSize_u24lambda_u240":I
    .end local v5    # "$i$a$-run-FlowLayoutKt$minIntrinsicMainAxisSize$maxMainAxisSize$1":I
    .local v14, "maxMainAxisSize":I
    move v4, v14

    .line 1001
    .local v4, "mainAxisUsed":I
    array-length v5, v3

    if-nez v5, :cond_7

    move v5, v8

    goto :goto_4

    :cond_7
    move v5, v2

    :goto_4
    if-nez v5, :cond_15

    aget v5, v3, v2

    .line 1713
    .local v5, "it":I
    const/16 v16, 0x0

    .line 1001
    .local v16, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    move/from16 v16, v2

    .end local v5    # "it":I
    .end local v16    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v2

    if-gt v8, v2, :cond_9

    :goto_5
    aget v0, v3, v8

    .line 1713
    .local v0, "it":I
    const/16 v18, 0x0

    .line 1001
    .local v18, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    nop

    .end local v0    # "it":I
    .end local v18    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    if-ge v5, v0, :cond_8

    move v5, v0

    :cond_8
    if-eq v8, v2, :cond_9

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .line 1003
    .local v5, "crossAxisUsed":I
    :cond_9
    array-length v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    move/from16 v0, v16

    :goto_6
    if-nez v0, :cond_14

    aget v0, v1, v16

    .line 1713
    .restart local v0    # "it":I
    const/4 v2, 0x0

    .line 1003
    .local v2, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    nop

    .end local v0    # "it":I
    .end local v2    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v2

    const/4 v8, 0x1

    if-gt v8, v2, :cond_c

    :goto_7
    move-object/from16 v16, v1

    .end local v1    # "mainAxisSizes":[I
    .local v16, "mainAxisSizes":[I
    aget v1, v16, v8

    .line 1713
    .local v1, "it":I
    const/16 v17, 0x0

    .line 1003
    .local v17, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    nop

    .end local v1    # "it":I
    .end local v17    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    if-ge v0, v1, :cond_b

    move v0, v1

    :cond_b
    if-eq v8, v2, :cond_d

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    goto :goto_7

    .end local v16    # "mainAxisSizes":[I
    .local v1, "mainAxisSizes":[I
    :cond_c
    move-object/from16 v16, v1

    .end local v1    # "mainAxisSizes":[I
    .restart local v16    # "mainAxisSizes":[I
    :cond_d
    move/from16 v17, v0

    .line 1004
    .local v17, "minimumItemSize":I
    nop

    .line 1005
    .local v0, "low":I
    move v1, v14

    move v2, v5

    .line 1006
    .end local v5    # "crossAxisUsed":I
    .local v1, "high":I
    .local v2, "crossAxisUsed":I
    :goto_8
    if-gt v0, v1, :cond_13

    .line 1007
    if-ne v2, v9, :cond_e

    .line 1008
    return v4

    .line 1010
    :cond_e
    add-int v5, v0, v1

    div-int/lit8 v18, v5, 0x2

    .line 1011
    .local v18, "mid":I
    move v5, v2

    move-object v2, v3

    .end local v3    # "crossAxisSizes":[I
    .local v2, "crossAxisSizes":[I
    .restart local v5    # "crossAxisUsed":I
    move/from16 v3, v18

    .line 1014
    .end local v4    # "mainAxisUsed":I
    .local v3, "mainAxisUsed":I
    nop

    .line 1015
    nop

    .line 1016
    nop

    .line 1017
    nop

    .line 1018
    nop

    .line 1019
    nop

    .line 1020
    nop

    .line 1021
    nop

    .line 1022
    nop

    .line 1013
    move/from16 v4, p4

    move-object/from16 v8, p8

    move/from16 v20, v5

    move/from16 v19, v10

    move/from16 v5, p5

    move v10, v1

    move-object/from16 v1, v16

    move/from16 v16, v0

    move-object/from16 v0, p0

    .end local v0    # "low":I
    .end local v5    # "crossAxisUsed":I
    .local v1, "mainAxisSizes":[I
    .local v10, "high":I
    .local v16, "low":I
    .local v19, "$i$f$minIntrinsicMainAxisSize":I
    .local v20, "crossAxisUsed":I
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$intrinsicCrossAxisSize(Ljava/util/List;[I[IIIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J

    move-result-wide v21

    .line 1012
    nop

    .line 1024
    .local v21, "pair":J
    invoke-static/range {v21 .. v22}, Landroidx/collection/IntIntPair;->getFirst-impl(J)I

    move-result v0

    .line 1025
    .end local v20    # "crossAxisUsed":I
    .local v0, "crossAxisUsed":I
    invoke-static/range {v21 .. v22}, Landroidx/collection/IntIntPair;->getSecond-impl(J)I

    move-result v4

    .line 1027
    .local v4, "itemShown":I
    if-gt v0, v9, :cond_11

    if-ge v4, v12, :cond_f

    goto :goto_9

    .line 1032
    :cond_f
    if-ge v0, v9, :cond_10

    .line 1033
    add-int/lit8 v5, v18, -0x1

    move/from16 v6, p6

    move/from16 v7, p7

    move v4, v3

    move/from16 v10, v19

    move-object v3, v2

    move v2, v0

    move/from16 v0, v16

    move-object/from16 v16, v1

    move v1, v5

    .end local v10    # "high":I
    .local v5, "high":I
    goto :goto_8

    .line 1035
    .end local v5    # "high":I
    .restart local v10    # "high":I
    :cond_10
    return v3

    .line 1028
    :cond_11
    :goto_9
    add-int/lit8 v5, v18, 0x1

    .line 1029
    .end local v16    # "low":I
    .local v5, "low":I
    if-le v5, v10, :cond_12

    .line 1030
    return v5

    .line 1029
    :cond_12
    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v16, v1

    move v4, v3

    move v1, v10

    move/from16 v10, v19

    move-object v3, v2

    move v2, v0

    move v0, v5

    goto :goto_8

    .line 1039
    .end local v5    # "low":I
    .end local v18    # "mid":I
    .end local v19    # "$i$f$minIntrinsicMainAxisSize":I
    .end local v21    # "pair":J
    .local v0, "low":I
    .local v1, "high":I
    .local v2, "crossAxisUsed":I
    .local v3, "crossAxisSizes":[I
    .local v4, "mainAxisUsed":I
    .local v10, "$i$f$minIntrinsicMainAxisSize":I
    .local v16, "mainAxisSizes":[I
    :cond_13
    return v4

    .line 1003
    .end local v0    # "low":I
    .end local v2    # "crossAxisUsed":I
    .end local v16    # "mainAxisSizes":[I
    .end local v17    # "minimumItemSize":I
    .local v1, "mainAxisSizes":[I
    .local v5, "crossAxisUsed":I
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1001
    .end local v5    # "crossAxisUsed":I
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static final placeHelper-BmaY500(Landroidx/compose/ui/layout/MeasureScope;JII[ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;[I)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .param p0, "$this$placeHelper_u2dBmaY500"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-constraints$0"    # J
    .param p3, "mainAxisTotalSize"    # I
    .param p4, "crossAxisTotalSize"    # I
    .param p5, "crossAxisSizes"    # [I
    .param p6, "items"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p7, "measureHelper"    # Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;
    .param p8, "outPosition"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "JII[I",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;",
            "[I)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 1544
    move-object/from16 v0, p0

    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->isHorizontal()Z

    move-result v7

    .line 1545
    .local v7, "isHorizontal":Z
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getVerticalArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v8

    .line 1546
    .local v8, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-interface/range {p7 .. p7}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v9

    .line 1548
    .local v9, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v1, 0x0

    .local v1, "totalCrossAxisSize":I
    move/from16 v1, p4

    .line 1550
    if-eqz v7, :cond_2

    .line 1551
    move-object v2, v8

    .local v2, "$this$placeHelper_BmaY500_u24lambda_u240":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v3, 0x0

    .line 1552
    .local v3, "$i$a$-with-FlowLayoutKt$placeHelper$1":I
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v4

    invoke-interface {v0, v4}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    .line 1553
    .local v4, "totalCrossAxisSpacing":I
    add-int/2addr v1, v4

    .line 1554
    nop

    .line 1555
    move-wide/from16 v5, p1

    .local v5, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v10, 0x0

    .line 1849
    .local v10, "$i$f$getCrossAxisMin-impl":I
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    .line 1555
    .end local v5    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v10    # "$i$f$getCrossAxisMin-impl":I
    move-wide/from16 v10, p1

    .local v10, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v6, 0x0

    .line 1852
    .local v6, "$i$f$getCrossAxisMax-impl":I
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    .line 1555
    .end local v6    # "$i$f$getCrossAxisMax-impl":I
    .end local v10    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    nop

    .local v6, "maximumValue$iv":I
    move v10, v1

    .local v5, "minimumValue$iv":I
    .local v10, "$this$fastCoerceIn$iv":I
    const/4 v11, 0x0

    .line 1853
    .local v11, "$i$f$fastCoerceIn":I
    move v12, v5

    .local v12, "minimumValue$iv$iv":I
    move v13, v10

    .local v13, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v14, 0x0

    .line 1857
    .local v14, "$i$f$fastCoerceAtLeast":I
    if-ge v13, v12, :cond_0

    goto :goto_0

    :cond_0
    move v12, v13

    .line 1853
    .end local v12    # "minimumValue$iv$iv":I
    .end local v13    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v14    # "$i$f$fastCoerceAtLeast":I
    :goto_0
    move v13, v6

    .local v12, "$this$fastCoerceAtMost$iv$iv":I
    .local v13, "maximumValue$iv$iv":I
    const/4 v14, 0x0

    .line 1862
    .local v14, "$i$f$fastCoerceAtMost":I
    if-le v12, v13, :cond_1

    goto :goto_1

    :cond_1
    move v13, v12

    .line 1853
    .end local v12    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v13    # "maximumValue$iv$iv":I
    .end local v14    # "$i$f$fastCoerceAtMost":I
    :goto_1
    nop

    .line 1554
    .end local v5    # "minimumValue$iv":I
    .end local v6    # "maximumValue$iv":I
    .end local v10    # "$this$fastCoerceIn$iv":I
    .end local v11    # "$i$f$fastCoerceIn":I
    nop

    .line 1556
    .end local v1    # "totalCrossAxisSize":I
    .local v13, "totalCrossAxisSize":I
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/unit/Density;

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    invoke-interface {v2, v1, v13, v5, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 1557
    nop

    .line 1551
    .end local v2    # "$this$placeHelper_BmaY500_u24lambda_u240":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v3    # "$i$a$-with-FlowLayoutKt$placeHelper$1":I
    .end local v4    # "totalCrossAxisSpacing":I
    goto :goto_4

    .line 1559
    .end local v13    # "totalCrossAxisSize":I
    .restart local v1    # "totalCrossAxisSize":I
    :cond_2
    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object v14, v9

    .local v14, "$this$placeHelper_BmaY500_u24lambda_u241":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v2, 0x0

    .line 1560
    .local v2, "$i$a$-with-FlowLayoutKt$placeHelper$2":I
    invoke-interface {v14}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v3

    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    .line 1561
    .local v3, "totalCrossAxisSpacing":I
    add-int/2addr v1, v3

    .line 1562
    nop

    .line 1563
    move-wide/from16 v10, p1

    .local v10, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v4, 0x0

    .line 1863
    .local v4, "$i$f$getCrossAxisMin-impl":I
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    .line 1563
    .end local v4    # "$i$f$getCrossAxisMin-impl":I
    .end local v10    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    nop

    .restart local v10    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v12, 0x0

    .line 1866
    .local v12, "$i$f$getCrossAxisMax-impl":I
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v10

    .line 1563
    .end local v10    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v12    # "$i$f$getCrossAxisMax-impl":I
    nop

    .local v10, "maximumValue$iv":I
    move v11, v1

    .local v4, "minimumValue$iv":I
    .local v11, "$this$fastCoerceIn$iv":I
    const/4 v12, 0x0

    .line 1867
    .local v12, "$i$f$fastCoerceIn":I
    move v13, v4

    .local v13, "minimumValue$iv$iv":I
    move v15, v11

    .local v15, "$this$fastCoerceAtLeast$iv$iv":I
    const/16 v16, 0x0

    .line 1871
    .local v16, "$i$f$fastCoerceAtLeast":I
    if-ge v15, v13, :cond_3

    goto :goto_2

    :cond_3
    move v13, v15

    .line 1867
    .end local v13    # "minimumValue$iv$iv":I
    .end local v15    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v16    # "$i$f$fastCoerceAtLeast":I
    :goto_2
    move v15, v10

    .local v13, "$this$fastCoerceAtMost$iv$iv":I
    .local v15, "maximumValue$iv$iv":I
    const/16 v16, 0x0

    .line 1876
    .local v16, "$i$f$fastCoerceAtMost":I
    if-le v13, v15, :cond_4

    move/from16 v16, v15

    goto :goto_3

    :cond_4
    move/from16 v16, v13

    .line 1867
    .end local v13    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v15    # "maximumValue$iv$iv":I
    .end local v16    # "$i$f$fastCoerceAtMost":I
    :goto_3
    nop

    .line 1562
    .end local v4    # "minimumValue$iv":I
    .end local v10    # "maximumValue$iv":I
    .end local v11    # "$this$fastCoerceIn$iv":I
    .end local v12    # "$i$f$fastCoerceIn":I
    nop

    .line 1564
    .end local v1    # "totalCrossAxisSize":I
    .local v16, "totalCrossAxisSize":I
    move-object v15, v0

    check-cast v15, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v18

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-interface/range {v14 .. v19}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1565
    nop

    .line 1559
    .end local v2    # "$i$a$-with-FlowLayoutKt$placeHelper$2":I
    .end local v3    # "totalCrossAxisSpacing":I
    .end local v14    # "$this$placeHelper_BmaY500_u24lambda_u241":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    move/from16 v13, v16

    .line 1569
    .end local v16    # "totalCrossAxisSize":I
    .local v13, "totalCrossAxisSize":I
    :goto_4
    move-wide/from16 v1, p1

    .local v1, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v3, 0x0

    .line 1877
    .local v3, "$i$f$getMainAxisMin-impl":I
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    .line 1569
    .end local v1    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v3    # "$i$f$getMainAxisMin-impl":I
    move-wide/from16 v2, p1

    .local v2, "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    const/4 v4, 0x0

    .line 1880
    .local v4, "$i$f$getMainAxisMax-impl":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 1569
    .end local v2    # "$v$c$androidx-compose-foundation-layout-OrientationIndependentConstraints$-this$0$iv":J
    .end local v4    # "$i$f$getMainAxisMax-impl":I
    nop

    .local v1, "minimumValue$iv":I
    move/from16 v3, p3

    .local v2, "maximumValue$iv":I
    .local v3, "$this$fastCoerceIn$iv":I
    const/4 v4, 0x0

    .line 1881
    .local v4, "$i$f$fastCoerceIn":I
    move v5, v1

    .local v5, "minimumValue$iv$iv":I
    move v6, v3

    .local v6, "$this$fastCoerceAtLeast$iv$iv":I
    const/4 v10, 0x0

    .line 1885
    .local v10, "$i$f$fastCoerceAtLeast":I
    if-ge v6, v5, :cond_5

    goto :goto_5

    :cond_5
    move v5, v6

    .line 1881
    .end local v5    # "minimumValue$iv$iv":I
    .end local v6    # "$this$fastCoerceAtLeast$iv$iv":I
    .end local v10    # "$i$f$fastCoerceAtLeast":I
    :goto_5
    move v6, v2

    .local v5, "$this$fastCoerceAtMost$iv$iv":I
    .local v6, "maximumValue$iv$iv":I
    const/4 v10, 0x0

    .line 1890
    .local v10, "$i$f$fastCoerceAtMost":I
    if-le v5, v6, :cond_6

    goto :goto_6

    :cond_6
    move v6, v5

    .line 1881
    .end local v5    # "$this$fastCoerceAtMost$iv$iv":I
    .end local v6    # "maximumValue$iv$iv":I
    .end local v10    # "$i$f$fastCoerceAtMost":I
    :goto_6
    nop

    .line 1569
    .end local v1    # "minimumValue$iv":I
    .end local v2    # "maximumValue$iv":I
    .end local v3    # "$this$fastCoerceIn$iv":I
    .end local v4    # "$i$f$fastCoerceIn":I
    nop

    .line 1568
    move v10, v6

    .line 1571
    .local v10, "finalMainAxisTotalSize":I
    const/4 v1, 0x0

    .line 1572
    .local v1, "layoutWidth":I
    const/4 v2, 0x0

    .line 1573
    .local v2, "layoutHeight":I
    if-eqz v7, :cond_7

    .line 1574
    move v1, v10

    .line 1575
    move v2, v13

    goto :goto_7

    .line 1577
    :cond_7
    move v1, v13

    .line 1578
    move v2, v10

    .line 1581
    :goto_7
    new-instance v4, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda3;

    move-object/from16 v11, p6

    invoke-direct {v4, v11}, Landroidx/compose/foundation/layout/FlowLayoutKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v3

    return-object v3
.end method

.method static final placeHelper_BmaY500$lambda$2(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lkotlin/Unit;
    .locals 7
    .param p0, "$items"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1582
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 1891
    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .line 1892
    .local v2, "i$iv":I
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1893
    .local v3, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 1894
    .local v4, "size$iv":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1895
    aget-object v5, v3, v2

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    .local v5, "measureResult":Landroidx/compose/ui/layout/MeasureResult;
    const/4 v6, 0x0

    .line 1582
    .local v6, "$i$a$-forEach-FlowLayoutKt$placeHelper$3$1":I
    invoke-interface {v5}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    .line 1895
    .end local v5    # "measureResult":Landroidx/compose/ui/layout/MeasureResult;
    .end local v6    # "$i$a$-forEach-FlowLayoutKt$placeHelper$3$1":I
    nop

    .line 1896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1898
    :cond_0
    nop

    .line 1583
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "i$iv":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    .end local v4    # "size$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final rowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 19
    .param p0, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "maxItemsInMainAxis"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    .line 440
    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, 0x582ba447

    const-string v3, "C(rowMeasurementHelper)N(horizontalArrangement,verticalArrangement,maxItemsInMainAxis)440@17697L893:FlowLayout.kt#2w3rfo"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:439)"

    invoke-static {v2, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 441
    :cond_0
    const v2, -0x42c371c

    const-string v3, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    xor-int/lit8 v2, v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v8, p0

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_1
    move-object/from16 v8, p0

    :goto_0
    and-int/lit8 v2, v1, 0x6

    if-ne v2, v3, :cond_3

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    and-int/lit8 v3, v1, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v6, 0x20

    if-le v3, v6, :cond_4

    move-object/from16 v9, p1

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    move-object/from16 v9, p1

    :goto_2
    and-int/lit8 v3, v1, 0x30

    if-ne v3, v6, :cond_6

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x380

    xor-int/lit16 v3, v3, 0x180

    const/16 v6, 0x100

    if-le v3, v6, :cond_7

    move/from16 v13, p2

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_7
    move/from16 v13, p2

    :goto_4
    and-int/lit16 v3, v1, 0x180

    if-ne v3, v6, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    or-int/2addr v2, v4

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p3

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1684
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1685
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_b

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_a

    goto :goto_5

    .line 1689
    :cond_a
    goto :goto_6

    .line 1686
    :cond_b
    :goto_5
    const/16 v18, 0x0

    .line 446
    .local v18, "$i$a$-cache-FlowLayoutKt$rowMeasurementHelper$1":I
    invoke-interface {v8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 447
    sget-object v11, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 449
    invoke-interface {v9}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v12

    .line 452
    sget-object v6, Landroidx/compose/foundation/layout/FlowRowOverflow;->Companion:Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlowRowOverflow$Companion;->getVisible()Landroidx/compose/foundation/layout/FlowRowOverflow;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlowRowOverflow;->createOverflowState$foundation_layout()Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-result-object v15

    .line 443
    new-instance v6, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 444
    nop

    .line 445
    nop

    .line 448
    nop

    .line 446
    nop

    .line 447
    nop

    .line 449
    nop

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 443
    const/4 v7, 0x1

    const v14, 0x7fffffff

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v16}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 442
    nop

    .line 456
    .local v6, "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    new-instance v7, Landroidx/compose/foundation/layout/FlowLayoutKt$rowMeasurementHelper$1$1;

    invoke-direct {v7, v6}, Landroidx/compose/foundation/layout/FlowLayoutKt$rowMeasurementHelper$1$1;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    check-cast v7, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 458
    nop

    .line 1686
    .end local v6    # "measurePolicy":Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .end local v18    # "$i$a$-cache-FlowLayoutKt$rowMeasurementHelper$1":I
    nop

    .line 1687
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1688
    move-object v5, v7

    .line 1684
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_6
    nop

    .line 441
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 440
    :cond_c
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 441
    return-object v5
.end method

.method public static final rowMeasurementMultiContentHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MultiContentMeasurePolicy;
    .locals 21
    .param p0, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "itemVerticalAlignment"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p3, "maxItemsInMainAxis"    # I
    .param p4, "maxLines"    # I
    .param p5, "overflowState"    # Landroidx/compose/foundation/layout/FlowLayoutOverflowState;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I

    .line 471
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p7

    const v3, -0x77d057b1    # -5.2859993E-34f

    const-string v4, "C(rowMeasurementMultiContentHelper)N(horizontalArrangement,verticalArrangement,itemVerticalAlignment,maxItemsInMainAxis,maxLines,overflowState)471@18969L708:FlowLayout.kt#2w3rfo"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    const-string/jumbo v5, "androidx.compose.foundation.layout.rowMeasurementMultiContentHelper (FlowLayout.kt:470)"

    invoke-static {v3, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 472
    :cond_0
    const v3, 0x3ae6faf3

    const-string v4, "CC(remember):FlowLayout.kt#9igjgp"

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    and-int/lit8 v3, v2, 0xe

    xor-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_1

    .line 473
    move-object/from16 v9, p0

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 472
    :cond_1
    move-object/from16 v9, p0

    .line 473
    :goto_0
    and-int/lit8 v3, v2, 0x6

    if-ne v3, v4, :cond_3

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    and-int/lit8 v4, v2, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v7, 0x20

    if-le v4, v7, :cond_4

    .line 474
    move-object/from16 v10, p1

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 473
    :cond_4
    move-object/from16 v10, p1

    .line 474
    :goto_2
    and-int/lit8 v4, v2, 0x30

    if-ne v4, v7, :cond_6

    :cond_5
    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0x380

    xor-int/lit16 v4, v4, 0x180

    const/16 v7, 0x100

    if-le v4, v7, :cond_7

    .line 475
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    and-int/lit16 v4, v2, 0x180

    if-ne v4, v7, :cond_9

    :cond_8
    move v4, v6

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0x1c00

    xor-int/lit16 v4, v4, 0xc00

    const/16 v7, 0x800

    if-le v4, v7, :cond_a

    .line 476
    move/from16 v14, p3

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 475
    :cond_a
    move/from16 v14, p3

    .line 476
    :goto_5
    and-int/lit16 v4, v2, 0xc00

    if-ne v4, v7, :cond_c

    :cond_b
    move v4, v6

    goto :goto_6

    :cond_c
    move v4, v5

    :goto_6
    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v4, v2

    xor-int/lit16 v4, v4, 0x6000

    const/16 v7, 0x4000

    if-le v4, v7, :cond_d

    .line 477
    move/from16 v15, p4

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_7

    .line 476
    :cond_d
    move/from16 v15, p4

    .line 477
    :goto_7
    and-int/lit16 v4, v2, 0x6000

    if-ne v4, v7, :cond_f

    :cond_e
    move v5, v6

    :cond_f
    or-int/2addr v3, v5

    .line 478
    move-object/from16 v4, p5

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 472
    nop

    .local v3, "invalid$iv":Z
    move-object/from16 v5, p6

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1690
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1691
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_11

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_10

    goto :goto_8

    .line 1695
    :cond_10
    goto :goto_9

    .line 1692
    :cond_11
    :goto_8
    const/16 v19, 0x0

    .line 483
    .local v19, "$i$a$-cache-FlowLayoutKt$rowMeasurementMultiContentHelper$1":I
    invoke-interface {v9}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v11

    .line 484
    sget-object v8, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    invoke-virtual {v8, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->vertical$foundation_layout(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v12

    .line 486
    invoke-interface {v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v13

    .line 480
    move-object v8, v7

    .end local v7    # "it$iv":Ljava/lang/Object;
    .local v8, "it$iv":Ljava/lang/Object;
    new-instance v7, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 481
    nop

    .line 482
    nop

    .line 485
    nop

    .line 483
    nop

    .line 484
    nop

    .line 486
    nop

    .line 487
    nop

    .line 488
    nop

    .line 489
    nop

    .line 480
    move-object/from16 v16, v8

    .end local v8    # "it$iv":Ljava/lang/Object;
    .local v16, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x1

    const/16 v17, 0x0

    move-object/from16 v20, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v20

    .end local v16    # "it$iv":Ljava/lang/Object;
    .local v4, "it$iv":Ljava/lang/Object;
    invoke-direct/range {v7 .. v17}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 490
    nop

    .line 1692
    .end local v19    # "$i$a$-cache-FlowLayoutKt$rowMeasurementMultiContentHelper$1":I
    nop

    .line 1693
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1694
    nop

    .line 1690
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    :goto_9
    nop

    .line 472
    .end local v3    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v7, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 471
    :cond_12
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v7, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    .line 472
    return-object v7
.end method

.method private static final safeNext(Ljava/util/Iterator;Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;
    .locals 2
    .param p0, "$this$safeNext"    # Ljava/util/Iterator;
    .param p1, "info"    # Landroidx/compose/foundation/layout/FlowLineInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;",
            "Landroidx/compose/foundation/layout/FlowLineInfo;",
            ")",
            "Landroidx/compose/ui/layout/Measurable;"
        }
    .end annotation

    .line 1479
    nop

    .line 1480
    :try_start_0
    instance-of v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    if-eqz v0, :cond_0

    .line 1481
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getNext$foundation_layout(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object v0

    goto :goto_0

    .line 1483
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 1479
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return-object v0
.end method
