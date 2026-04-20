.class public final Landroidx/compose/foundation/text/selection/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 7 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 8 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n+ 9 Rect.kt\nandroidx/compose/ui/geometry/Rect\n+ 10 LongObjectMap.kt\nandroidx/collection/LongObjectMap\n+ 11 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 12 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,1365:1\n759#1,3:1392\n762#1,2:1398\n760#1,9:1404\n769#1,9:1416\n778#1:1426\n759#1,3:1466\n762#1,2:1472\n760#1,9:1478\n769#1,9:1490\n778#1:1500\n759#1,3:1502\n762#1,2:1508\n760#1,9:1514\n769#1,9:1526\n778#1:1536\n85#2:1366\n117#2,2:1367\n85#2:1369\n85#2:1370\n117#2,2:1371\n85#2:1373\n117#2,2:1374\n85#2:1376\n117#2,2:1377\n85#2:1379\n117#2,2:1380\n85#2:1382\n117#2,2:1383\n85#2:1385\n117#2,2:1386\n85#2:1389\n117#2,2:1390\n1#3:1388\n1#3:1554\n388#4,3:1395\n391#4,4:1400\n388#4,3:1469\n391#4,4:1474\n388#4,3:1505\n391#4,4:1510\n388#4,7:1537\n71#5,3:1413\n75#5:1425\n270#5,2:1438\n35#5,5:1440\n272#5:1445\n88#5:1446\n35#5,5:1447\n89#5:1452\n35#5,5:1453\n103#5:1458\n35#5,5:1459\n104#5:1464\n71#5,3:1487\n75#5:1499\n71#5,3:1523\n75#5:1535\n71#5,5:1544\n440#5,2:1549\n35#5,3:1551\n39#5:1555\n442#5:1556\n71#5,5:1563\n35#5,5:1569\n103#5:1574\n35#5,5:1575\n104#5:1580\n103#5:1581\n35#5,5:1582\n104#5:1587\n278#6:1427\n278#6:1428\n278#6:1568\n273#6:1598\n109#7,5:1429\n97#7,4:1434\n85#7,5:1588\n1580#8:1465\n1580#8:1501\n57#9,6:1557\n425#10:1593\n425#10:1599\n425#10:1600\n54#11:1594\n59#11:1596\n85#12:1595\n90#12:1597\n*S KotlinDebug\n*F\n+ 1 SelectionManager.kt\nandroidx/compose/foundation/text/selection/SelectionManager\n*L\n428#1:1392,3\n428#1:1398,2\n428#1:1404,9\n428#1:1416,9\n428#1:1426\n685#1:1466,3\n685#1:1472,2\n685#1:1478,9\n685#1:1490,9\n685#1:1500\n716#1:1502,3\n716#1:1508,2\n716#1:1514,9\n716#1:1526,9\n716#1:1536\n150#1:1366\n150#1:1367,2\n181#1:1369\n230#1:1370\n230#1:1371,2\n236#1:1373\n236#1:1374,2\n243#1:1376\n243#1:1377,2\n251#1:1379\n251#1:1380,2\n259#1:1382\n259#1:1383,2\n266#1:1385\n266#1:1386,2\n289#1:1389\n289#1:1390,2\n853#1:1554\n428#1:1395,3\n428#1:1400,4\n685#1:1469,3\n685#1:1474,4\n716#1:1505,3\n716#1:1510,4\n761#1:1537,7\n428#1:1413,3\n428#1:1425\n562#1:1438,2\n562#1:1440,5\n562#1:1445\n585#1:1446\n585#1:1447,5\n585#1:1452\n612#1:1453,5\n672#1:1458\n672#1:1459,5\n672#1:1464\n685#1:1487,3\n685#1:1499\n716#1:1523,3\n716#1:1535\n768#1:1544,5\n853#1:1549,2\n853#1:1551,3\n853#1:1555\n853#1:1556\n1118#1:1563,5\n1136#1:1569,5\n1151#1:1574\n1151#1:1575,5\n1151#1:1580\n1163#1:1581\n1163#1:1582,5\n1163#1:1587\n527#1:1427\n539#1:1428\n1125#1:1568\n333#1:1598\n551#1:1429,5\n552#1:1434,4\n199#1:1588,5\n684#1:1465\n715#1:1501\n868#1:1557,6\n312#1:1593\n398#1:1599\n415#1:1600\n322#1:1594\n322#1:1596\n322#1:1595\n322#1:1597\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ea\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0097\u0001\u001a\u00020\u0017H\u0002J\u001c\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0000\u00a2\u0006\u0003\u0008\u009c\u0001J\t\u0010\u009d\u0001\u001a\u00020\u0017H\u0002J\u000f\u0010\u009e\u0001\u001a\u00020PH\u0000\u00a2\u0006\u0003\u0008\u009f\u0001J:\u0010\u00a0\u0001\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00080\u00a2\u00010\u00a1\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u00012\t\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0003\u0008\u00a6\u0001J\u000f\u0010\u00a7\u0001\u001a\u00020\u0010H\u0000\u00a2\u0006\u0003\u0008\u00a8\u0001J\u000f\u0010\u00a9\u0001\u001a\u00020\u0017H\u0000\u00a2\u0006\u0003\u0008\u00aa\u0001J\u000f\u0010\u00ab\u0001\u001a\u00020\u0010H\u0000\u00a2\u0006\u0003\u0008\u00ac\u0001J\u000f\u0010\u00ad\u0001\u001a\u00020\u0010H\u0000\u00a2\u0006\u0003\u0008\u00ae\u0001J\u0011\u0010\u00af\u0001\u001a\u0004\u0018\u00010$H\u0000\u00a2\u0006\u0003\u0008\u00b0\u0001J\u001f\u0010\u00b1\u0001\u001a\u0012\u0012\u0004\u0012\u00020$\u0012\u0005\u0012\u00030\u00b2\u0001\u0018\u00010\u00a1\u0001H\u0000\u00a2\u0006\u0003\u0008\u00b3\u0001J\u0083\u0001\u0010\u00b4\u0001\u001a\u00020\u00172q\u0008\u0004\u0010\u00b5\u0001\u001aj\u0012\u0017\u0012\u00150\u00a4\u0001\u00a2\u0006\u000f\u0008\u00b7\u0001\u0012\n\u0008\u00b8\u0001\u0012\u0005\u0008\u0008(\u00a3\u0001\u0012\u0016\u0012\u00140$\u00a2\u0006\u000f\u0008\u00b7\u0001\u0012\n\u0008\u00b8\u0001\u0012\u0005\u0008\u0008(\u00b9\u0001\u0012\u0016\u0012\u00140\u00b2\u0001\u00a2\u0006\u000e\u0008\u00b7\u0001\u0012\t\u0008\u00b8\u0001\u0012\u0004\u0008\u0008(\n\u0012\u0016\u0012\u00140\u0010\u00a2\u0006\u000f\u0008\u00b7\u0001\u0012\n\u0008\u00b8\u0001\u0012\u0005\u0008\u0008(\u00ba\u0001\u0012\u0004\u0012\u00020\u00100\u00b6\u0001H\u0080\u0008\u00a2\u0006\u0003\u0008\u00bb\u0001J\u000f\u0010\u00bc\u0001\u001a\u00020\u0017H\u0000\u00a2\u0006\u0003\u0008\u00bd\u0001J\t\u0010\u00c1\u0001\u001a\u00020\u0017H\u0002J\t\u0010\u00c2\u0001\u001a\u00020\u0017H\u0002J\u000f\u0010\u00c3\u0001\u001a\u00020\u0010H\u0000\u00a2\u0006\u0003\u0008\u00c4\u0001J\t\u0010\u00c5\u0001\u001a\u00020\u0017H\u0002J\u000b\u0010\u00c6\u0001\u001a\u0004\u0018\u00010GH\u0002J\u0007\u0010\u00c7\u0001\u001a\u00020\u0017J\u0011\u0010\u00c8\u0001\u001a\u00030\u00c9\u00012\u0007\u0010\u00ca\u0001\u001a\u00020\u0010J\r\u0010\u00cb\u0001\u001a\u00020C*\u00020CH\u0002J\u001d\u0010\u00cc\u0001\u001a\u00020C*\u00020C2\u000e\u0010\u00b5\u0001\u001a\t\u0012\u0004\u0012\u00020\u00170\u00cd\u0001H\u0002J$\u0010\u00ce\u0001\u001a\u00020O2\u0007\u0010\u00cf\u0001\u001a\u00020P2\u0007\u0010\u00d0\u0001\u001a\u00020OH\u0002\u00a2\u0006\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001J.\u0010\u00d3\u0001\u001a\u00020\u00172\u0007\u0010\u00d4\u0001\u001a\u00020O2\u0007\u0010\u00ca\u0001\u001a\u00020\u00102\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0002\u00a2\u0006\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001J8\u0010\u00d9\u0001\u001a\u00020\u00102\t\u0010\u00da\u0001\u001a\u0004\u0018\u00010O2\u0006\u0010N\u001a\u00020O2\u0007\u0010\u00ca\u0001\u001a\u00020\u00102\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0000\u00a2\u0006\u0006\u0008\u00db\u0001\u0010\u00dc\u0001J7\u0010\u00d9\u0001\u001a\u00020\u00102\u0007\u0010\u00d4\u0001\u001a\u00020O2\u0007\u0010\u00dd\u0001\u001a\u00020O2\u0007\u0010\u00ca\u0001\u001a\u00020\u00102\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0000\u00a2\u0006\u0006\u0008\u00de\u0001\u0010\u00df\u0001J0\u0010\u00e0\u0001\u001a\u0005\u0018\u00010\u0084\u00012\u0007\u0010\u00d4\u0001\u001a\u00020O2\u0007\u0010\u00dd\u0001\u001a\u00020O2\u0007\u0010\u00ca\u0001\u001a\u00020\u0010H\u0002\u00a2\u0006\u0006\u0008\u00e1\u0001\u0010\u00e2\u0001J\u001c\u0010\u00e3\u0001\u001a\u00020\u00172\u0008\u0010\u00e4\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u00e5\u0001\u001a\u00020\u0008H\u0002J\u000f\u0010\u00e6\u0001\u001a\u00020\u0010H\u0001\u00a2\u0006\u0003\u0008\u00e7\u0001J\u0018\u0010\u00e8\u0001\u001a\u00020\u00172\u0007\u0010\u00d4\u0001\u001a\u00020O\u00a2\u0006\u0005\u0008\u00e9\u0001\u0010`R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R@\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0014\u0010\u0015\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u00170\u0016@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R(\u0010#\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001a\"\u0004\u0008&\u0010\u001cR\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R$\u0010-\u001a\u00020.8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u00105\u001a\u000206X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R+\u0010<\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u00108F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008=\u0010\u0012\"\u0004\u0008>\u0010\u0014R\u0014\u0010A\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u0012R\u0011\u0010B\u001a\u00020C8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u001d\u0010F\u001a\u0004\u0018\u00010G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008H\u0010IR\u0011\u0010L\u001a\u00020C8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010ER\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010Q\u001a\u0004\u0018\u00010P2\u0008\u0010\t\u001a\u0004\u0018\u00010P@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR+\u0010V\u001a\u00020\u00172\u0006\u0010;\u001a\u00020\u00178B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008[\u0010@\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR+\u0010\\\u001a\u00020O2\u0006\u0010;\u001a\u00020O8@@BX\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008a\u0010@\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R+\u0010b\u001a\u00020O2\u0006\u0010;\u001a\u00020O8@@BX\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008e\u0010@\u001a\u0004\u0008c\u0010^\"\u0004\u0008d\u0010`R/\u0010f\u001a\u0004\u0018\u00010O2\u0008\u0010;\u001a\u0004\u0018\u00010O8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008k\u0010@\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR/\u0010l\u001a\u0004\u0018\u00010O2\u0008\u0010;\u001a\u0004\u0018\u00010O8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008o\u0010@\u001a\u0004\u0008m\u0010h\"\u0004\u0008n\u0010jR/\u0010q\u001a\u0004\u0018\u00010p2\u0008\u0010;\u001a\u0004\u0018\u00010p8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008v\u0010@\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u0011\u0010w\u001a\u00020x8F\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010zR\u0011\u0010{\u001a\u00020x8F\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010zR0\u0010}\u001a\u0004\u0018\u00010O2\u0008\u0010;\u001a\u0004\u0018\u00010O8F@BX\u0086\u008e\u0002\u00a2\u0006\u0013\n\u0005\u0008\u0080\u0001\u0010@\u001a\u0004\u0008~\u0010h\"\u0004\u0008\u007f\u0010jR\u0016\u0010\u0081\u0001\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0082\u0001\u0010\u0012R-\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u0085\u0001\u00100\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001\"\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u000f\u0010\u008a\u0001\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\"\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\'\u0010\u00be\u0001\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010@@X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bf\u0001\u0010\u0012\"\u0005\u0008\u00c0\u0001\u0010\u0014\u00a8\u0006\u00ea\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "",
        "selectionRegistrar",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;",
        "<init>",
        "(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V",
        "_selection",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "value",
        "selection",
        "getSelection",
        "()Landroidx/compose/foundation/text/selection/Selection;",
        "setSelection",
        "(Landroidx/compose/foundation/text/selection/Selection;)V",
        "_isInTouchMode",
        "",
        "isInTouchMode",
        "()Z",
        "setInTouchMode",
        "(Z)V",
        "newOnSelectionChange",
        "Lkotlin/Function1;",
        "",
        "onSelectionChange",
        "getOnSelectionChange",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSelectionChange",
        "(Lkotlin/jvm/functions/Function1;)V",
        "hapticFeedBack",
        "Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "getHapticFeedBack",
        "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;",
        "setHapticFeedBack",
        "(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V",
        "onCopyHandler",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "getOnCopyHandler",
        "setOnCopyHandler",
        "textToolbar",
        "Landroidx/compose/ui/platform/TextToolbar;",
        "getTextToolbar",
        "()Landroidx/compose/ui/platform/TextToolbar;",
        "setTextToolbar",
        "(Landroidx/compose/ui/platform/TextToolbar;)V",
        "toolbarRequester",
        "Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;",
        "getToolbarRequester$foundation$annotations",
        "()V",
        "getToolbarRequester$foundation",
        "()Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;",
        "setToolbarRequester$foundation",
        "(Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;)V",
        "focusRequester",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "getFocusRequester",
        "()Landroidx/compose/ui/focus/FocusRequester;",
        "setFocusRequester",
        "(Landroidx/compose/ui/focus/FocusRequester;)V",
        "<set-?>",
        "hasFocus",
        "getHasFocus",
        "setHasFocus",
        "hasFocus$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "isDraggingInProgress",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "derivedContentRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "getDerivedContentRect",
        "()Landroidx/compose/ui/geometry/Rect;",
        "derivedContentRect$delegate",
        "Landroidx/compose/runtime/State;",
        "contextMenuAreaModifier",
        "getContextMenuAreaModifier",
        "previousPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "containerLayoutCoordinates",
        "getContainerLayoutCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setContainerLayoutCoordinates",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "positionChangeState",
        "getPositionChangeState",
        "()Lkotlin/Unit;",
        "setPositionChangeState",
        "(Lkotlin/Unit;)V",
        "positionChangeState$delegate",
        "dragBeginPosition",
        "getDragBeginPosition-F1C5BW0$foundation",
        "()J",
        "setDragBeginPosition-k-4lQ0M",
        "(J)V",
        "dragBeginPosition$delegate",
        "dragTotalDistance",
        "getDragTotalDistance-F1C5BW0$foundation",
        "setDragTotalDistance-k-4lQ0M",
        "dragTotalDistance$delegate",
        "startHandlePosition",
        "getStartHandlePosition-_m7T9-E",
        "()Landroidx/compose/ui/geometry/Offset;",
        "setStartHandlePosition-_kEHs6E",
        "(Landroidx/compose/ui/geometry/Offset;)V",
        "startHandlePosition$delegate",
        "endHandlePosition",
        "getEndHandlePosition-_m7T9-E",
        "setEndHandlePosition-_kEHs6E",
        "endHandlePosition$delegate",
        "Landroidx/compose/foundation/text/Handle;",
        "draggingHandle",
        "getDraggingHandle",
        "()Landroidx/compose/foundation/text/Handle;",
        "setDraggingHandle",
        "(Landroidx/compose/foundation/text/Handle;)V",
        "draggingHandle$delegate",
        "startHandleLineHeight",
        "",
        "getStartHandleLineHeight",
        "()F",
        "endHandleLineHeight",
        "getEndHandleLineHeight",
        "currentDragPosition",
        "getCurrentDragPosition-_m7T9-E",
        "setCurrentDragPosition-_kEHs6E",
        "currentDragPosition$delegate",
        "shouldShowMagnifier",
        "getShouldShowMagnifier",
        "previousSelectionLayout",
        "Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "getPreviousSelectionLayout$foundation$annotations",
        "getPreviousSelectionLayout$foundation",
        "()Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "setPreviousSelectionLayout$foundation",
        "(Landroidx/compose/foundation/text/selection/SelectionLayout;)V",
        "isLongPressOrClickSelection",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope$foundation",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "setCoroutineScope$foundation",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "platformSelectionBehaviors",
        "Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;",
        "getPlatformSelectionBehaviors$foundation",
        "()Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;",
        "setPlatformSelectionBehaviors$foundation",
        "(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;)V",
        "suggestSelectionForLongPressOrDoubleClick",
        "getAnchorSelectable",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "anchor",
        "Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;",
        "getAnchorSelectable$foundation",
        "updateHandleOffsets",
        "requireContainerCoordinates",
        "requireContainerCoordinates$foundation",
        "selectAllInSelectable",
        "Lkotlin/Pair;",
        "Landroidx/collection/LongObjectMap;",
        "selectableId",
        "",
        "previousSelection",
        "selectAllInSelectable$foundation",
        "isEntireContainerSelected",
        "isEntireContainerSelected$foundation",
        "selectAll",
        "selectAll$foundation",
        "isTriviallyCollapsedSelection",
        "isTriviallyCollapsedSelection$foundation",
        "isNonEmptySelection",
        "isNonEmptySelection$foundation",
        "getSelectedText",
        "getSelectedText$foundation",
        "getContextTextAndSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "getContextTextAndSelection$foundation",
        "forEachSelectableWithSelection",
        "block",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "text",
        "isLastSelectable",
        "forEachSelectableWithSelection$foundation",
        "copy",
        "copy$foundation",
        "showToolbar",
        "getShowToolbar$foundation",
        "setShowToolbar$foundation",
        "toolbarCopy",
        "updateSelectionToolbar",
        "canCopy",
        "canCopy$foundation",
        "updateSelectionTextToolbar",
        "getContentRect",
        "onRelease",
        "handleDragObserver",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "isStartHandle",
        "addContextMenuComponents",
        "onClearSelectionRequested",
        "Lkotlin/Function0;",
        "convertToContainerCoordinates",
        "layoutCoordinates",
        "offset",
        "convertToContainerCoordinates-R5De75A",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J",
        "startSelection",
        "position",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "startSelection-9KIMszo",
        "(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "updateSelection",
        "newPosition",
        "updateSelection-qNKwrvQ$foundation",
        "(Landroidx/compose/ui/geometry/Offset;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "previousHandlePosition",
        "updateSelection-jyLRC_s$foundation",
        "(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "getSelectionLayout",
        "getSelectionLayout-Wko1d7g",
        "(JJZ)Landroidx/compose/foundation/text/selection/SelectionLayout;",
        "selectionChanged",
        "selectionLayout",
        "newSelection",
        "shouldPerformHaptics",
        "shouldPerformHaptics$foundation",
        "selectWordAtPositionIfNotAlreadySelected",
        "selectWordAtPositionIfNotAlreadySelected-k-4lQ0M",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final _isInTouchMode:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _selection:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;"
        }
    .end annotation
.end field

.field private containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private final derivedContentRect$delegate:Landroidx/compose/runtime/State;

.field private final dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

.field private final dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

.field private final draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private final endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

.field private focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field private hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field private final hasFocus$delegate:Landroidx/compose/runtime/MutableState;

.field private isLongPressOrClickSelection:Z

.field private onCopyHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectionChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

.field private final positionChangeState$delegate:Landroidx/compose/runtime/MutableState;

.field private previousPosition:Landroidx/compose/ui/geometry/Offset;

.field private previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field private final selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

.field private showToolbar:Z

.field private final startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

.field private textToolbar:Landroidx/compose/ui/platform/TextToolbar;

.field private toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text/selection/SelectionManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
    .locals 4
    .param p1, "selectionRegistrar"    # Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    .line 106
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    .line 121
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 144
    new-instance v2, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;

    invoke-direct {v2}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;-><init>()V

    check-cast v2, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 147
    new-instance v2, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v2}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 150
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 181
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->derivedContentRect$delegate:Landroidx/compose/runtime/State;

    .line 230
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->positionChangeState$delegate:Landroidx/compose/runtime/MutableState;

    .line 236
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 243
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 251
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 259
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 266
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 289
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .line 310
    nop

    .line 311
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnPositionChangeCallback$foundation(Lkotlin/jvm/functions/Function1;)V

    .line 319
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateStartCallback$foundation(Lkotlin/jvm/functions/Function4;)V

    .line 347
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateSelectAll$foundation(Lkotlin/jvm/functions/Function2;)V

    .line 360
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateCallback$foundation(Lkotlin/jvm/functions/Function6;)V

    .line 382
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectionUpdateEndCallback$foundation(Lkotlin/jvm/functions/Function0;)V

    .line 397
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setOnSelectableChangeCallback$foundation(Lkotlin/jvm/functions/Function1;)V

    .line 405
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda13;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setAfterSelectableUnsubscribe$foundation(Lkotlin/jvm/functions/Function1;)V

    .line 420
    nop

    .line 91
    return-void
.end method

.method static final _get_contextMenuAreaModifier_$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "destinationCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 198
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDerivedContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    nop

    .line 199
    .local v0, "rootBounds":Landroidx/compose/ui/geometry/Rect;
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1588
    .local v2, "$i$f$checkPreconditionNotNull":I
    if-eqz v1, :cond_1

    .line 1592
    nop

    .line 199
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$checkPreconditionNotNull":I
    nop

    .line 201
    .local v1, "localCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    nop

    .line 202
    nop

    .line 203
    nop

    .line 200
    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerModifierKt;->translateRootToDestination(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 204
    return-object v2

    .line 1589
    .local v1, "value$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$checkPreconditionNotNull":I
    :cond_1
    const-string/jumbo v3, "Required value was null."

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method static final _get_modifier_$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 159
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _get_modifier_$lambda$1(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/layout/LayoutCoordinates;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "it"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 160
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setContainerLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _get_modifier_$lambda$2(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/focus/FocusState;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "focusState"    # Landroidx/compose/ui/focus/FocusState;

    .line 163
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->getHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    .line 166
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->getHasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setHasFocus(Z)V

    .line 167
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _get_modifier_$lambda$3(Landroidx/compose/foundation/text/selection/SelectionManager;Z)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "it"    # Z

    .line 169
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setInTouchMode(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _init_$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;J)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "selectableId"    # J

    .line 312
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/collection/LongObjectMap;
    move-wide v1, p1

    .local v1, "key$iv":J
    const/4 v3, 0x0

    .line 1593
    .local v3, "$i$f$contains":I
    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongObjectMap;->containsKey(J)Z

    move-result v0

    .line 312
    .end local v0    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v1    # "key$iv":J
    .end local v3    # "$i$f$contains":I
    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setPositionChangeState(Lkotlin/Unit;)V

    .line 314
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 315
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 317
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _init_$lambda$1(Landroidx/compose/foundation/text/selection/SelectionManager;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Offset;Landroidx/compose/foundation/text/selection/SelectionAdjustment;)Lkotlin/Unit;
    .locals 13
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "isInTouchMode"    # Z
    .param p2, "layoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p3, "rawPosition"    # Landroidx/compose/ui/geometry/Offset;
    .param p4, "selectionMode"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 322
    invoke-interface {p2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v0

    .line 1388
    .local v0, "$this$lambda_u241_u240":J
    const/4 v2, 0x0

    .line 322
    .local v2, "$i$a$-with-SelectionManager$2$textRect$1":I
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    move-wide v4, v0

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 1594
    .local v6, "$i$f$getWidth-impl":I
    move-wide v7, v4

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 1595
    .local v9, "$i$f$unpackInt1":I
    const/16 v10, 0x20

    shr-long v10, v7, v10

    long-to-int v7, v10

    .line 1594
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt1":I
    nop

    .line 322
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getWidth-impl":I
    int-to-float v4, v7

    move-wide v5, v0

    .local v5, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v7, 0x0

    .line 1596
    .local v7, "$i$f$getHeight-impl":I
    move-wide v8, v5

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 1597
    .local v10, "$i$f$unpackInt2":I
    const-wide v11, 0xffffffffL

    and-long/2addr v11, v8

    long-to-int v8, v11

    .line 1596
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackInt2":I
    nop

    .line 322
    .end local v5    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v7    # "$i$f$getHeight-impl":I
    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 321
    .end local v0    # "$this$lambda_u241_u240":J
    .end local v2    # "$i$a$-with-SelectionManager$2$textRect$1":I
    nop

    .line 325
    .local v3, "textRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1, v3}, Landroidx/compose/foundation/text/input/internal/TextLayoutStateKt;->coerceIn-3MmeM6k(JLandroidx/compose/ui/geometry/Rect;)J

    move-result-wide v0

    .line 325
    :goto_0
    nop

    .line 324
    nop

    .line 331
    .local v0, "position":J
    invoke-direct {p0, p2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v4

    .line 333
    .local v4, "positionInContainer":J
    move-wide v6, v4

    .local v6, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v2, 0x0

    .line 1598
    .local v2, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v8, 0x7fffffff7fffffffL

    and-long/2addr v8, v6

    const-wide v10, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v8, v8, v10

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    move v2, v9

    goto :goto_1

    :cond_1
    move v2, v10

    .line 333
    .end local v2    # "$i$f$isSpecified-k-4lQ0M":I
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    :goto_1
    if-eqz v2, :cond_2

    .line 334
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setInTouchMode(Z)V

    .line 335
    nop

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 335
    move-object/from16 v2, p4

    invoke-direct {p0, v4, v5, v10, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 341
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 v7, 0x0

    invoke-static {v6, v10, v9, v7}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;IILjava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->setShowToolbar$foundation(Z)V

    .line 343
    iput-boolean v9, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    goto :goto_2

    .line 333
    :cond_2
    move-object/from16 v2, p4

    .line 345
    :goto_2
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v6
.end method

.method static final _init_$lambda$2(Landroidx/compose/foundation/text/selection/SelectionManager;ZJ)Lkotlin/Unit;
    .locals 6
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "isInTouchMode"    # Z
    .param p2, "selectableId"    # J

    .line 349
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->selectAllInSelectable$foundation(JLandroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/text/selection/Selection;

    .local v1, "newSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongObjectMap;

    .line 350
    .local v0, "newSubselection":Landroidx/collection/LongObjectMap;
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Landroidx/collection/LongObjectMap;)V

    .line 352
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setInTouchMode(Z)V

    .line 356
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;IILjava/lang/Object;)Z

    .line 357
    invoke-virtual {p0, v5}, Landroidx/compose/foundation/text/selection/SelectionManager;->setShowToolbar$foundation(Z)V

    .line 358
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static final _init_$lambda$3(Landroidx/compose/foundation/text/selection/SelectionManager;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/geometry/Offset;ZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "isInTouchMode"    # Z
    .param p2, "layoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p3, "newPosition"    # Landroidx/compose/ui/geometry/Offset;
    .param p4, "previousPosition"    # Landroidx/compose/ui/geometry/Offset;
    .param p5, "isStartHandle"    # Z
    .param p6, "selectionMode"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 369
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    invoke-direct {p0, p2, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v1

    .line 368
    move-wide v6, v1

    .line 371
    .local v6, "newPositionInContainer":J
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    invoke-direct {p0, p2, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v2

    .line 370
    nop

    .line 373
    .local v2, "previousPositionInContainer":J
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setInTouchMode(Z)V

    .line 374
    nop

    .line 375
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    .line 376
    nop

    .line 377
    nop

    .line 378
    nop

    .line 374
    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-qNKwrvQ$foundation(Landroidx/compose/ui/geometry/Offset;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v1

    .line 379
    return v1
.end method

.method static final _init_$lambda$4(Landroidx/compose/foundation/text/selection/SelectionManager;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setShowToolbar$foundation(Z)V

    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 387
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 389
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isNonEmptySelection$foundation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->suggestSelectionForLongPressOrDoubleClick()V

    .line 392
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    .line 393
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _init_$lambda$5(Landroidx/compose/foundation/text/selection/SelectionManager;J)Lkotlin/Unit;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "selectableKey"    # J

    .line 398
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/collection/LongObjectMap;
    move-wide v1, p1

    .local v1, "key$iv":J
    const/4 v3, 0x0

    .line 1599
    .local v3, "$i$f$contains":I
    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongObjectMap;->containsKey(J)Z

    move-result v0

    .line 398
    .end local v0    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v1    # "key$iv":J
    .end local v3    # "$i$f$contains":I
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setSelection(Landroidx/compose/foundation/text/selection/Selection;)V

    .line 403
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _init_$lambda$6(Landroidx/compose/foundation/text/selection/SelectionManager;J)Lkotlin/Unit;
    .locals 6
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "selectableId"    # J

    .line 406
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 409
    invoke-direct {p0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 411
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 412
    invoke-direct {p0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 415
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/collection/LongObjectMap;
    move-wide v1, p1

    .local v1, "key$iv":J
    const/4 v3, 0x0

    .line 1600
    .local v3, "$i$f$contains":I
    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongObjectMap;->containsKey(J)Z

    move-result v0

    .line 415
    .end local v0    # "this_$iv":Landroidx/collection/LongObjectMap;
    .end local v1    # "key$iv":J
    .end local v3    # "$i$f$contains":I
    if-eqz v0, :cond_4

    .line 417
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 419
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final _set_onSelectionChange_$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$newOnSelectionChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "newSelection"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 130
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setSelection(Landroidx/compose/foundation/text/selection/Selection;)V

    .line 131
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 91
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    return-object v0
.end method

.method public static final synthetic access$isDraggingInProgress(Landroidx/compose/foundation/text/selection/SelectionManager;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 91
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isDraggingInProgress()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/geometry/Offset;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 91
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    return-void
.end method

.method public static final synthetic access$setDragBeginPosition-k-4lQ0M(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-<set-?>$0"    # J

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDragBeginPosition-k-4lQ0M(J)V

    return-void
.end method

.method public static final synthetic access$setDragTotalDistance-k-4lQ0M(Landroidx/compose/foundation/text/selection/SelectionManager;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-<set-?>$0"    # J

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDragTotalDistance-k-4lQ0M(J)V

    return-void
.end method

.method public static final synthetic access$setDraggingHandle(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/Handle;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/Handle;

    .line 91
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    return-void
.end method

.method public static final synthetic access$toolbarCopy(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 91
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarCopy()V

    return-void
.end method

.method private final addContextMenuComponents(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p1, "$this$addContextMenuComponents"    # Landroidx/compose/ui/Modifier;

    .line 984
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNewContextMenuEnabled:Z

    if-eqz v0, :cond_0

    .line 985
    invoke-static {p1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->addSelectionContainerTextContextMenuComponents(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 986
    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private final convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 3
    .param p1, "layoutCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 1011
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1012
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v1

    return-wide v1

    .line 1012
    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v1

    return-wide v1
.end method

.method static final derivedContentRect_delegate$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 181
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method private final getContentRect()Landroidx/compose/ui/geometry/Rect;
    .locals 18

    .line 844
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getPositionChangeState()Lkotlin/Unit;

    .line 846
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 847
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-nez v1, :cond_1

    return-object v2

    .line 848
    .local v1, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 851
    :cond_2
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 852
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v3

    .line 853
    nop

    .local v3, "$this$fastMapNotNull$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1549
    .local v4, "$i$f$fastMapNotNull":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1550
    .local v5, "target$iv":Ljava/util/ArrayList;
    move-object v6, v3

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1551
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_5

    .line 1552
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1553
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "e$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1550
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v14, 0x0

    .line 854
    .local v14, "$i$a$-fastMapNotNull-SelectionManager$getContentRect$selectableSubSelections$1":I
    iget-object v15, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v15

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v3    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .local v17, "$this$fastMapNotNull$iv":Ljava/util/List;
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v2, :cond_3

    .local v2, "it":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v3, 0x0

    .line 855
    .local v3, "$i$a$-let-SelectionManager$getContentRect$selectableSubSelections$1$1":I
    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 854
    .end local v2    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .end local v3    # "$i$a$-let-SelectionManager$getContentRect$selectableSubSelections$1$1":I
    goto :goto_1

    :cond_3
    move-object/from16 v2, v16

    .line 856
    :goto_1
    nop

    .line 1550
    .end local v13    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "$i$a$-fastMapNotNull-SelectionManager$getContentRect$selectableSubSelections$1":I
    if-eqz v2, :cond_4

    .line 1554
    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1550
    .local v3, "$i$a$-let-ListUtilsKt$fastMapNotNull$1$1$iv":I
    move-object v13, v5

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1553
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-ListUtilsKt$fastMapNotNull$1$1$iv":I
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastMapNotNull$1$iv":I
    :cond_4
    nop

    .line 1551
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_0

    .end local v17    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .local v3, "$this$fastMapNotNull$iv":Ljava/util/List;
    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 1555
    .end local v3    # "$this$fastMapNotNull$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v17    # "$this$fastMapNotNull$iv":Ljava/util/List;
    nop

    .line 1556
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 858
    .end local v4    # "$i$f$fastMapNotNull":I
    .end local v5    # "target$iv":Ljava/util/ArrayList;
    .end local v17    # "$this$fastMapNotNull$iv":Ljava/util/List;
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->access$firstAndLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 850
    nop

    .line 860
    .local v2, "selectableSubSelections":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v16

    .line 862
    :cond_6
    invoke-static {v2, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->getSelectedRegionRect(Ljava/util/List;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 861
    nop

    .line 864
    .local v3, "selectedRegionRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->access$getInvertedInfiniteRect$p()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v16

    .line 866
    :cond_7
    invoke-static {v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/ui/geometry/Rect;->intersect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    .line 868
    .local v4, "visibleRect":Landroidx/compose/ui/geometry/Rect;
    move-object v5, v4

    .local v5, "this_$iv":Landroidx/compose/ui/geometry/Rect;
    const/4 v6, 0x0

    .line 1557
    .local v6, "$i$f$getWidth":I
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v7

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v8

    sub-float/2addr v7, v8

    .line 868
    .end local v5    # "this_$iv":Landroidx/compose/ui/geometry/Rect;
    .end local v6    # "$i$f$getWidth":I
    const/4 v5, 0x0

    cmpg-float v6, v7, v5

    if-ltz v6, :cond_9

    move-object v6, v4

    .local v6, "this_$iv":Landroidx/compose/ui/geometry/Rect;
    const/4 v7, 0x0

    .line 1562
    .local v7, "$i$f$getHeight":I
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v9

    sub-float/2addr v8, v9

    .line 868
    .end local v6    # "this_$iv":Landroidx/compose/ui/geometry/Rect;
    .end local v7    # "$i$f$getHeight":I
    cmpg-float v5, v8, v5

    if-gez v5, :cond_8

    goto :goto_2

    .line 870
    :cond_8
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/geometry/Rect;->translate-k-4lQ0M(J)Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    .line 871
    .local v7, "rootRect":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v5

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getHandleHeight()F

    move-result v6

    const/4 v8, 0x4

    int-to-float v8, v8

    mul-float/2addr v6, v8

    add-float v11, v5, v6

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/geometry/Rect;->copy$default(Landroidx/compose/ui/geometry/Rect;FFFFILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v5

    return-object v5

    .line 868
    .end local v7    # "rootRect":Landroidx/compose/ui/geometry/Rect;
    :cond_9
    :goto_2
    return-object v16
.end method

.method private final getDerivedContentRect()Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 181
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->derivedContentRect$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1369
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 181
    return-object v0
.end method

.method private final getPositionChangeState()Lkotlin/Unit;
    .locals 4

    .line 230
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->positionChangeState$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1370
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 230
    return-object v0
.end method

.method public static synthetic getPreviousSelectionLayout$foundation$annotations()V
    .locals 0

    return-void
.end method

.method private final getSelectionLayout-Wko1d7g(JJZ)Landroidx/compose/foundation/text/selection/SelectionLayout;
    .locals 14
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-previousHandlePosition$0"    # J
    .param p5, "isStartHandle"    # Z

    .line 1114
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    .line 1115
    .local v5, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v10

    .line 1117
    .local v10, "sortedSelectables":Ljava/util/List;
    invoke-static {}, Landroidx/collection/LongIntMapKt;->mutableLongIntMapOf()Landroidx/collection/MutableLongIntMap;

    move-result-object v11

    .line 1118
    .local v11, "idToIndexMap":Landroidx/collection/MutableLongIntMap;
    move-object v0, v10

    .local v0, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1563
    .local v1, "$i$f$fastForEachIndexed":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1564
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1565
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Landroidx/compose/foundation/text/selection/Selectable;

    .local v6, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    move v7, v2

    .local v7, "index":I
    const/4 v8, 0x0

    .line 1119
    .local v8, "$i$a$-fastForEachIndexed-SelectionManager$getSelectionLayout$1":I
    invoke-interface {v6}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13, v7}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 1120
    nop

    .line 1565
    .end local v6    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v7    # "index":I
    .end local v8    # "$i$a$-fastForEachIndexed-SelectionManager$getSelectionLayout$1":I
    nop

    .line 1563
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1567
    .end local v2    # "index$iv":I
    :cond_0
    nop

    .line 1122
    .end local v0    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEachIndexed":I
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$getSelectionLayout-Wko1d7g$$inlined$compareBy$1;

    invoke-direct {v0, v11}, Landroidx/compose/foundation/text/selection/SelectionManager$getSelectionLayout-Wko1d7g$$inlined$compareBy$1;-><init>(Landroidx/collection/MutableLongIntMap;)V

    move-object v8, v0

    check-cast v8, Ljava/util/Comparator;

    .line 1125
    .local v8, "selectableIdOrderingComparator":Ljava/util/Comparator;
    move-wide/from16 v0, p3

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    const/4 v2, 0x0

    .line 1568
    .local v2, "$i$f$isUnspecified-k-4lQ0M":I
    const-wide v3, 0x7fffffff7fffffffL

    and-long/2addr v3, v0

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v3, v6

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1125
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    .end local v2    # "$i$f$isUnspecified-k-4lQ0M":I
    :goto_1
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    :goto_2
    move-object v7, v0

    .line 1127
    .local v7, "previousSelection":Landroidx/compose/foundation/text/selection/Selection;
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;

    .line 1128
    nop

    .line 1129
    nop

    .line 1130
    nop

    .line 1131
    nop

    .line 1132
    nop

    .line 1133
    nop

    .line 1127
    const/4 v9, 0x0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;-><init>(JJLandroidx/compose/ui/layout/LayoutCoordinates;ZLandroidx/compose/foundation/text/selection/Selection;Ljava/util/Comparator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1126
    nop

    .line 1136
    .local v0, "builder":Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;
    move-object v1, v10

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1569
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_3

    .line 1570
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1571
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v9, v6

    check-cast v9, Landroidx/compose/foundation/text/selection/Selectable;

    .local v9, "it":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v12, 0x0

    .line 1136
    .local v12, "$i$a$-fastForEach-SelectionManager$getSelectionLayout$2":I
    invoke-interface {v9, v0}, Landroidx/compose/foundation/text/selection/Selectable;->appendSelectableInfoToBuilder(Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;)V

    .line 1571
    .end local v9    # "it":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v12    # "$i$a$-fastForEach-SelectionManager$getSelectionLayout$2":I
    nop

    .line 1569
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1573
    .end local v3    # "index$iv":I
    :cond_3
    nop

    .line 1138
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->build()Landroidx/compose/foundation/text/selection/SelectionLayout;

    move-result-object v1

    return-object v1
.end method

.method private final getShouldShowMagnifier()Z
    .locals 1

    .line 293
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isDraggingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isTriviallyCollapsedSelection$foundation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic getToolbarRequester$foundation$annotations()V
    .locals 0

    return-void
.end method

.method private final isDraggingInProgress()Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final onClearSelectionRequested(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p1, "$this$onClearSelectionRequested"    # Landroidx/compose/ui/Modifier;
    .param p2, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 990
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;

    invoke-direct {v1, p0, p2}, Landroidx/compose/foundation/text/selection/SelectionManager$onClearSelectionRequested$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1005
    return-object v0
.end method

.method static final onSelectionChange$lambda$0(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/text/selection/SelectionManager;
    .param p1, "it"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 121
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setSelection(Landroidx/compose/foundation/text/selection/Selection;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final selectionChanged(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 2
    .param p1, "selectionLayout"    # Landroidx/compose/foundation/text/selection/SelectionLayout;
    .param p2, "newSelection"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 1142
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->shouldPerformHaptics$foundation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 1145
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-interface {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionLayout;->createSubSelections(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/collection/LongObjectMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Landroidx/collection/LongObjectMap;)V

    .line 1146
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-void
.end method

.method private final setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 289
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1390
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1391
    nop

    .line 289
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setDragBeginPosition-k-4lQ0M(J)V
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-<set-?>$0"    # J

    .line 236
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1374
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1375
    nop

    .line 236
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setDragTotalDistance-k-4lQ0M(J)V
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-<set-?>$0"    # J

    .line 243
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1377
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1378
    nop

    .line 243
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/Handle;

    .line 266
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1386
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1387
    nop

    .line 266
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 259
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1383
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1384
    nop

    .line 259
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setPositionChangeState(Lkotlin/Unit;)V
    .locals 5
    .param p1, "<set-?>"    # Lkotlin/Unit;

    .line 230
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->positionChangeState$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1371
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1372
    nop

    .line 230
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V
    .locals 5
    .param p1, "<set-?>"    # Landroidx/compose/ui/geometry/Offset;

    .line 251
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p1

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1380
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1381
    nop

    .line 251
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method private final startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .param p3, "isStartHandle"    # Z
    .param p4, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 1032
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 1033
    nop

    .line 1034
    nop

    .line 1035
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v4

    .line 1036
    nop

    .line 1037
    nop

    .line 1033
    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-position$0":J
    .end local p3    # "isStartHandle":Z
    .end local p4    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-position$0":J
    .local v6, "isStartHandle":Z
    .local v7, "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-jyLRC_s$foundation(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 1039
    return-void
.end method

.method private final suggestSelectionForLongPressOrDoubleClick()V
    .locals 31

    .line 424
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v3, v0

    .line 425
    .local v3, "textInSelectable":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 426
    .local v4, "selectionInSelectable":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 428
    .local v5, "targetSelectableId":Lkotlin/jvm/internal/Ref$LongRef;
    move-object/from16 v0, p0

    .local v0, "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    const/4 v1, 0x0

    .line 1392
    .local v1, "$i$f$forEachSelectableWithSelection$foundation":I
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v2

    .line 1394
    .local v2, "sortedSelectables$iv":Ljava/util/List;
    move-object v6, v2

    .local v6, "$this$indexOfLast$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1395
    .local v7, "$i$f$indexOfLast":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 1396
    .local v8, "iterator$iv$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_2

    .line 1397
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/text/selection/Selectable;

    .local v9, "it$iv":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v13, 0x0

    .line 1398
    .local v13, "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v14

    const/16 v16, 0x0

    invoke-interface {v9}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/text/selection/Selection;

    .line 1399
    .local v11, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v12

    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v14

    if-eq v12, v14, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move/from16 v9, v16

    .line 1397
    .end local v9    # "it$iv":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v11    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v13    # "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1$iv":I
    :goto_0
    if-eqz v9, :cond_0

    .line 1400
    invoke-interface {v8}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    goto :goto_1

    .line 1403
    :cond_2
    const/16 v16, 0x0

    move v9, v10

    .line 1394
    .end local v6    # "$this$indexOfLast$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$indexOfLast":I
    .end local v8    # "iterator$iv$iv":Ljava/util/ListIterator;
    :goto_1
    nop

    .line 1404
    nop

    .line 1410
    .local v9, "lastSelectableIndex$iv":I
    if-eq v9, v10, :cond_7

    .line 1412
    move-object v6, v2

    .local v6, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1413
    .local v7, "$i$f$fastForEachIndexed":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v10, v6

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    :goto_2
    if-ge v8, v10, :cond_6

    .line 1414
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1415
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/text/selection/Selectable;

    .local v12, "selectable$iv":Landroidx/compose/foundation/text/selection/Selectable;
    move v13, v8

    .local v13, "selectableIndex$iv":I
    const/4 v14, 0x0

    .line 1416
    .local v14, "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1$iv":I
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v15

    move-object/from16 v17, v0

    move/from16 v18, v1

    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v1    # "$i$f$forEachSelectableWithSelection$foundation":I
    .local v17, "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .local v18, "$i$f$forEachSelectableWithSelection$foundation":I
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v0, :cond_5

    .local v0, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v1, 0x0

    .line 1417
    .local v1, "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v15

    .line 1418
    .local v15, "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v19

    move-object/from16 v20, v0

    .end local v0    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .local v20, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v19

    move/from16 v21, v1

    .end local v1    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .local v21, "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    .line 1419
    .local v0, "selectionRange$iv":J
    if-lt v13, v9, :cond_3

    const/16 v19, 0x1

    goto :goto_3

    :cond_3
    move/from16 v19, v16

    .line 1421
    .local v19, "isLastSelectable$iv":Z
    :goto_3
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v22

    .local v22, "selectableId":J
    move-object/from16 v24, v15

    .local v24, "text":Landroidx/compose/ui/text/AnnotatedString;
    move-wide/from16 v25, v22

    .end local v22    # "selectableId":J
    .local v25, "selectableId":J
    move-wide/from16 v22, v0

    .local v22, "selection":J
    move/from16 v27, v19

    .local v27, "isLastSelectable":Z
    const/16 v28, 0x0

    .line 432
    .local v28, "$i$a$-forEachSelectableWithSelection$foundation-SelectionManager$suggestSelectionForLongPressOrDoubleClick$1":I
    if-eqz v27, :cond_4

    .line 433
    move-wide/from16 v29, v0

    move-object/from16 v0, v24

    .end local v24    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .local v0, "text":Landroidx/compose/ui/text/AnnotatedString;
    .local v29, "selectionRange$iv":J
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 434
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v1

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 435
    move-wide/from16 v0, v25

    .end local v25    # "selectableId":J
    .local v0, "selectableId":J
    .restart local v24    # "text":Landroidx/compose/ui/text/AnnotatedString;
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    goto :goto_4

    .line 432
    .end local v29    # "selectionRange$iv":J
    .local v0, "selectionRange$iv":J
    .restart local v25    # "selectableId":J
    :cond_4
    move-wide/from16 v29, v0

    move-wide/from16 v0, v25

    .line 437
    .end local v25    # "selectableId":J
    .local v0, "selectableId":J
    .restart local v29    # "selectionRange$iv":J
    :goto_4
    nop

    .line 1421
    .end local v0    # "selectableId":J
    .end local v22    # "selection":J
    .end local v24    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v27    # "isLastSelectable":Z
    .end local v28    # "$i$a$-forEachSelectableWithSelection$foundation-SelectionManager$suggestSelectionForLongPressOrDoubleClick$1":I
    nop

    .line 1420
    move/from16 v0, v16

    .line 1422
    .local v0, "shouldContinue$iv":Z
    if-eqz v0, :cond_8

    .line 1423
    nop

    .line 1416
    .end local v0    # "shouldContinue$iv":Z
    .end local v15    # "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    .end local v19    # "isLastSelectable$iv":Z
    .end local v20    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v21    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .end local v29    # "selectionRange$iv":J
    nop

    .line 1424
    :cond_5
    nop

    .line 1415
    .end local v12    # "selectable$iv":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v13    # "selectableIndex$iv":I
    .end local v14    # "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1$iv":I
    nop

    .line 1413
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    goto :goto_2

    .end local v17    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v18    # "$i$f$forEachSelectableWithSelection$foundation":I
    .local v0, "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .local v1, "$i$f$forEachSelectableWithSelection$foundation":I
    :cond_6
    move-object/from16 v17, v0

    move/from16 v18, v1

    .line 1425
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v1    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v8    # "index$iv$iv":I
    .restart local v17    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .restart local v18    # "$i$f$forEachSelectableWithSelection$foundation":I
    nop

    .line 1426
    .end local v6    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEachIndexed":I
    goto :goto_5

    .line 1410
    .end local v17    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v18    # "$i$f$forEachSelectableWithSelection$foundation":I
    .restart local v0    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .restart local v1    # "$i$f$forEachSelectableWithSelection$foundation":I
    :cond_7
    move-object/from16 v17, v0

    move/from16 v18, v1

    .line 440
    .end local v0    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v1    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v2    # "sortedSelectables$iv":Ljava/util/List;
    .end local v9    # "lastSelectableIndex$iv":I
    :cond_8
    :goto_5
    nop

    .line 441
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 442
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 443
    iget-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_a

    .line 444
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    move/from16 v11, v16

    :goto_6
    if-eqz v11, :cond_a

    .line 446
    move-object/from16 v2, p0

    iget-object v0, v2, Landroidx/compose/foundation/text/selection/SelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_a

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$suggestSelectionForLongPressOrDoubleClick$2;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/SelectionManager$suggestSelectionForLongPressOrDoubleClick$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 488
    :cond_a
    return-void
.end method

.method private final toolbarCopy()V
    .locals 0

    .line 797
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->copy$foundation()V

    .line 798
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->onRelease()V

    .line 799
    return-void
.end method

.method private final updateHandleOffsets()V
    .locals 26

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    .line 500
    .local v1, "selection":Landroidx/compose/foundation/text/selection/Selection;
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 501
    .local v2, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1388
    .local v4, "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    const/4 v5, 0x0

    .line 501
    .local v5, "$i$a$-let-SelectionManager$updateHandleOffsets$startSelectable$1":I
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v4

    .end local v4    # "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local v5    # "$i$a$-let-SelectionManager$updateHandleOffsets$startSelectable$1":I
    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 502
    .local v4, "startSelectable":Landroidx/compose/foundation/text/selection/Selectable;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1388
    .local v5, "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    const/4 v6, 0x0

    .line 502
    .local v6, "$i$a$-let-SelectionManager$updateHandleOffsets$endSelectable$1":I
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v5

    .end local v5    # "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local v6    # "$i$a$-let-SelectionManager$updateHandleOffsets$endSelectable$1":I
    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 503
    .local v5, "endSelectable":Landroidx/compose/foundation/text/selection/Selectable;
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 504
    .local v6, "startLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 506
    .local v7, "endLayoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_3
    nop

    .line 507
    if-eqz v1, :cond_13

    .line 508
    if-eqz v2, :cond_12

    .line 509
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 510
    if-nez v6, :cond_4

    if-nez v7, :cond_4

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto/16 :goto_10

    .line 517
    :cond_4
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    .line 518
    .local v8, "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    nop

    .line 519
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v11, 0x7fffffff7fffffffL

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v6, :cond_a

    move-object v15, v6

    .local v15, "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/16 v16, 0x0

    .line 526
    .local v16, "$i$a$-let-SelectionManager$updateHandleOffsets$1":I
    invoke-interface {v4, v1, v14}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v17

    .line 525
    move-wide/from16 v19, v17

    .line 527
    .local v19, "handlePosition":J
    nop

    .local v17, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    const/16 v21, 0x0

    .line 1427
    .local v21, "$i$f$isUnspecified-k-4lQ0M":I
    and-long v22, v17, v11

    cmp-long v22, v22, v9

    if-nez v22, :cond_5

    move/from16 v17, v14

    goto :goto_4

    :cond_5
    move/from16 v17, v13

    .line 527
    .end local v17    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    .end local v21    # "$i$f$isUnspecified-k-4lQ0M":I
    :goto_4
    if-eqz v17, :cond_6

    move-wide/from16 v17, v9

    move-wide/from16 v22, v11

    const/16 v21, 0x0

    goto :goto_8

    .line 529
    :cond_6
    move-wide/from16 v17, v9

    move-wide/from16 v9, v19

    .end local v19    # "handlePosition":J
    .local v9, "handlePosition":J
    invoke-interface {v2, v15, v9, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v19

    .line 528
    nop

    .line 530
    .local v19, "position":J
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v21

    move-wide/from16 v22, v11

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v11

    .local v11, "it":J
    const/16 v24, 0x0

    .line 531
    .local v24, "$i$a$-takeIf-SelectionManager$updateHandleOffsets$1$1":I
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v14

    sget-object v3, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    if-eq v14, v3, :cond_8

    invoke-static {v8, v11, v12}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move v3, v13

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x1

    .line 530
    .end local v11    # "it":J
    .end local v24    # "$i$a$-takeIf-SelectionManager$updateHandleOffsets$1$1":I
    :goto_6
    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    const/16 v21, 0x0

    .line 532
    :goto_7
    nop

    .line 519
    .end local v9    # "handlePosition":J
    .end local v15    # "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v16    # "$i$a$-let-SelectionManager$updateHandleOffsets$1":I
    .end local v19    # "position":J
    :goto_8
    move-object/from16 v3, v21

    goto :goto_9

    :cond_a
    move-wide/from16 v17, v9

    move-wide/from16 v22, v11

    const/4 v3, 0x0

    .line 518
    :goto_9
    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 535
    nop

    .line 536
    if-eqz v7, :cond_10

    move-object v3, v7

    .local v3, "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v9, 0x0

    .line 538
    .local v9, "$i$a$-let-SelectionManager$updateHandleOffsets$2":I
    invoke-interface {v5, v1, v13}, Landroidx/compose/foundation/text/selection/Selectable;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    move-result-wide v10

    .line 537
    nop

    .line 539
    .local v10, "handlePosition":J
    move-wide v14, v10

    .local v14, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    const/4 v12, 0x0

    .line 1428
    .local v12, "$i$f$isUnspecified-k-4lQ0M":I
    and-long v19, v14, v22

    cmp-long v16, v19, v17

    if-nez v16, :cond_b

    const/4 v12, 0x1

    goto :goto_a

    :cond_b
    move v12, v13

    .line 539
    .end local v12    # "$i$f$isUnspecified-k-4lQ0M":I
    .end local v14    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isUnspecified$0$iv":J
    :goto_a
    if-eqz v12, :cond_c

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const/4 v3, 0x0

    goto :goto_e

    .line 541
    :cond_c
    invoke-interface {v2, v3, v10, v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v14

    .line 540
    nop

    .line 542
    .local v14, "position":J
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v12

    move-wide/from16 v17, v14

    .end local v14    # "position":J
    .local v17, "position":J
    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v13

    .local v13, "it":J
    const/4 v15, 0x0

    .line 543
    .local v15, "$i$a$-takeIf-SelectionManager$updateHandleOffsets$2$1":I
    move-object/from16 v19, v1

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v19, "selection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v1

    move-object/from16 v20, v2

    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v20, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    sget-object v2, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    if-eq v1, v2, :cond_e

    invoke-static {v8, v13, v14}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    const/4 v13, 0x0

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v13, 0x1

    .line 542
    .end local v13    # "it":J
    .end local v15    # "$i$a$-takeIf-SelectionManager$updateHandleOffsets$2$1":I
    :goto_c
    if-eqz v13, :cond_f

    move-object/from16 v25, v12

    goto :goto_d

    :cond_f
    const/16 v25, 0x0

    .line 544
    :goto_d
    move-object/from16 v3, v25

    .line 536
    .end local v3    # "handleCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v9    # "$i$a$-let-SelectionManager$updateHandleOffsets$2":I
    .end local v10    # "handlePosition":J
    .end local v17    # "position":J
    :goto_e
    goto :goto_f

    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_10
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 535
    :goto_f
    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 546
    return-void

    .line 509
    .end local v8    # "visibleBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    goto :goto_10

    .line 508
    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_12
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    goto :goto_10

    .line 507
    .end local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_13
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 512
    .end local v1    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v2    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v19    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v20    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :goto_10
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setStartHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 513
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setEndHandlePosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 514
    return-void
.end method

.method private final updateSelectionTextToolbar()V
    .locals 10

    .line 823
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    .line 824
    .local v1, "textToolbar":Landroidx/compose/ui/platform/TextToolbar;
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 825
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 826
    .local v2, "rect":Landroidx/compose/ui/geometry/Rect;
    :cond_1
    nop

    .line 827
    nop

    .line 828
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->canCopy$foundation()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$updateSelectionTextToolbar$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$updateSelectionTextToolbar$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/KFunction;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 826
    nop

    .line 829
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isEntireContainerSelected$foundation()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionManager$updateSelectionTextToolbar$2;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$updateSelectionTextToolbar$2;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/reflect/KFunction;

    :goto_1
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 830
    nop

    .line 826
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/platform/TextToolbar;->showMenu$default(Landroidx/compose/ui/platform/TextToolbar;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .end local v2    # "rect":Landroidx/compose/ui/geometry/Rect;
    goto :goto_2

    .line 832
    :cond_4
    invoke-interface {v1}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/TextToolbarStatus;->Shown:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v2, :cond_5

    .line 833
    invoke-interface {v1}, Landroidx/compose/ui/platform/TextToolbar;->hide()V

    .line 835
    :cond_5
    :goto_2
    return-void
.end method

.method private final updateSelectionToolbar()V
    .locals 1

    .line 803
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    return-void

    .line 807
    :cond_0
    sget-boolean v0, Landroidx/compose/foundation/ComposeFoundationFlags;->isNewContextMenuEnabled:Z

    if-eqz v0, :cond_3

    .line 808
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 809
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDerivedContentRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->show()V

    goto :goto_0

    .line 812
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->hide()V

    goto :goto_0

    .line 815
    :cond_3
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionTextToolbar()V

    .line 817
    :goto_0
    return-void
.end method


# virtual methods
.method public final canCopy$foundation()Z
    .locals 1

    .line 820
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onCopyHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isNonEmptySelection$foundation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final copy$foundation()V
    .locals 4

    .line 782
    nop

    .line 783
    nop

    .line 781
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelectedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_2

    .line 781
    nop

    .line 782
    move-object v1, v0

    .line 1388
    .local v1, "it":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v2, 0x0

    .line 782
    .local v2, "$i$a$-takeIf-SelectionManager$copy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":Landroidx/compose/ui/text/AnnotatedString;
    .end local v2    # "$i$a$-takeIf-SelectionManager$copy$1":I
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 783
    :goto_1
    if-eqz v0, :cond_2

    .line 781
    nop

    .line 783
    nop

    .line 1388
    .local v0, "textToCopy":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v1, 0x0

    .line 783
    .local v1, "$i$a$-let-SelectionManager$copy$2":I
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onCopyHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 782
    .end local v0    # "textToCopy":Landroidx/compose/ui/text/AnnotatedString;
    .end local v1    # "$i$a$-let-SelectionManager$copy$2":I
    :cond_2
    nop

    .line 784
    :cond_3
    :goto_2
    return-void
.end method

.method public final forEachSelectableWithSelection$foundation(Lkotlin/jvm/functions/Function4;)V
    .locals 21
    .param p1, "block"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "-",
            "Landroidx/compose/ui/text/TextRange;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 759
    .local v0, "$i$f$forEachSelectableWithSelection$foundation":I
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v1

    .line 761
    .local v1, "sortedSelectables":Ljava/util/List;
    move-object v2, v1

    .local v2, "$this$indexOfLast$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1537
    .local v3, "$i$f$indexOfLast":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 1538
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_2

    .line 1539
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/text/selection/Selectable;

    .local v5, "it":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v9, 0x0

    .line 762
    .local v9, "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1":I
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v10

    invoke-interface {v5}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/text/selection/Selection;

    .line 763
    .local v10, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v11

    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v12

    if-eq v11, v12, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1539
    .end local v5    # "it":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v9    # "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1":I
    .end local v10    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    :goto_0
    if-eqz v5, :cond_0

    .line 1540
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    goto :goto_1

    .line 1543
    :cond_2
    move v5, v7

    .line 761
    .end local v2    # "$this$indexOfLast$iv":Ljava/util/List;
    .end local v3    # "$i$f$indexOfLast":I
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    nop

    .line 760
    nop

    .line 766
    .local v5, "lastSelectableIndex":I
    if-ne v5, v7, :cond_3

    return-void

    .line 768
    :cond_3
    move-object v2, v1

    .local v2, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1544
    .local v3, "$i$f$fastForEachIndexed":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_7

    .line 1545
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1546
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/text/selection/Selectable;

    .local v10, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    move v11, v4

    .local v11, "selectableIndex":I
    const/4 v12, 0x0

    .line 769
    .local v12, "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1":I
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v13

    invoke-interface {v10}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v13, :cond_6

    .local v13, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v14, 0x0

    .line 770
    .local v14, "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1":I
    invoke-interface {v10}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v15

    .line 771
    .local v15, "currentText":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v13}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v6

    invoke-virtual {v13}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v17

    .line 772
    .local v17, "selectionRange":J
    if-lt v11, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 774
    .local v6, "isLastSelectable":Z
    :goto_3
    invoke-interface {v10}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move/from16 v16, v0

    .end local v0    # "$i$f$forEachSelectableWithSelection$foundation":I
    .local v16, "$i$f$forEachSelectableWithSelection$foundation":I
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    move-object/from16 v19, v1

    .end local v1    # "sortedSelectables":Ljava/util/List;
    .local v19, "sortedSelectables":Ljava/util/List;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    .end local v2    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v20, "$this$fastForEachIndexed$iv":Ljava/util/List;
    invoke-interface {v2, v8, v15, v0, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 773
    nop

    .line 775
    .local v0, "shouldContinue":Z
    if-nez v0, :cond_5

    return-void

    .line 776
    :cond_5
    nop

    .end local v0    # "shouldContinue":Z
    .end local v6    # "isLastSelectable":Z
    .end local v13    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v14    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1":I
    .end local v15    # "currentText":Landroidx/compose/ui/text/AnnotatedString;
    .end local v17    # "selectionRange":J
    goto :goto_4

    .line 769
    .end local v16    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v19    # "sortedSelectables":Ljava/util/List;
    .end local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .local v0, "$i$f$forEachSelectableWithSelection$foundation":I
    .restart local v1    # "sortedSelectables":Ljava/util/List;
    .restart local v2    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    :cond_6
    move/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    .end local v0    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v1    # "sortedSelectables":Ljava/util/List;
    .end local v2    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v16    # "$i$f$forEachSelectableWithSelection$foundation":I
    .restart local v19    # "sortedSelectables":Ljava/util/List;
    .restart local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    :goto_4
    nop

    .line 777
    nop

    .line 1546
    .end local v10    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v11    # "selectableIndex":I
    .end local v12    # "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1":I
    nop

    .line 1544
    .end local v9    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto :goto_2

    .line 1548
    .end local v4    # "index$iv":I
    .end local v16    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v19    # "sortedSelectables":Ljava/util/List;
    .end local v20    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .restart local v0    # "$i$f$forEachSelectableWithSelection$foundation":I
    .restart local v1    # "sortedSelectables":Ljava/util/List;
    .restart local v2    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    :cond_7
    nop

    .line 778
    .end local v2    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEachIndexed":I
    return-void
.end method

.method public final getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;
    .locals 3
    .param p1, "anchor"    # Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 495
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectableMap$foundation()Landroidx/collection/LongObjectMap;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/Selectable;

    return-object v0
.end method

.method public final getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public final getContextMenuAreaModifier()Landroidx/compose/ui/Modifier;
    .locals 10

    .line 185
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$contextMenuAreaModifier$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$contextMenuAreaModifier$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGesturesModifierKt;->showTextContextMenuOnSecondaryClick(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 195
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 185
    nop

    .line 195
    nop

    .line 194
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$contextMenuAreaModifier$2;

    invoke-direct {v0, p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$contextMenuAreaModifier$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v7, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerModifierKt;->textContextMenuToolbarHandler$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method public final getContextTextAndSelection$foundation()Lkotlin/Pair;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextRange;",
            ">;"
        }
    .end annotation

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectables$foundation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v17, v1

    goto/16 :goto_a

    .line 713
    :cond_0
    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v2, -0x1

    .line 714
    const/4 v3, 0x0

    .local v3, "end":I
    const/4 v3, -0x1

    .line 715
    const/4 v4, 0x0

    .line 1501
    .local v4, "$i$f$buildAnnotatedString":I
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v5

    .local v8, "$this$getContextTextAndSelection_u24lambda_u240":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v9, 0x0

    .line 716
    .local v9, "$i$a$-buildAnnotatedString-SelectionManager$getContextTextAndSelection$text$1":I
    move-object/from16 v10, p0

    .local v10, "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    const/4 v11, 0x0

    .line 1502
    .local v11, "$i$f$forEachSelectableWithSelection$foundation":I
    invoke-static {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v12

    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v12

    .line 1504
    .local v12, "sortedSelectables$iv":Ljava/util/List;
    move-object v13, v12

    .local v13, "$this$indexOfLast$iv$iv":Ljava/util/List;
    const/4 v14, 0x0

    .line 1505
    .local v14, "$i$f$indexOfLast":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v13, v15}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v15

    .line 1506
    .local v15, "iterator$iv$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v16

    move-object/from16 v17, v1

    if-eqz v16, :cond_3

    .line 1507
    invoke-interface {v15}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/text/selection/Selectable;

    .local v16, "it$iv":Landroidx/compose/foundation/text/selection/Selectable;
    const/16 v18, 0x0

    .line 1508
    .local v18, "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1$iv":I
    invoke-static {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v19

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v7

    move/from16 v19, v2

    .end local v2    # "start":I
    .local v19, "start":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 1509
    .local v1, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v7

    if-eq v2, v7, :cond_1

    move/from16 v1, v20

    goto :goto_1

    :cond_1
    move v1, v6

    .line 1507
    .end local v1    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v16    # "it$iv":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v18    # "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1$iv":I
    :goto_1
    if-eqz v1, :cond_2

    .line 1510
    invoke-interface {v15}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    goto :goto_2

    .line 1507
    :cond_2
    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v7, v20

    goto :goto_0

    .line 1513
    .end local v19    # "start":I
    .restart local v2    # "start":I
    :cond_3
    move/from16 v19, v2

    move/from16 v20, v7

    .end local v2    # "start":I
    .restart local v19    # "start":I
    const/4 v1, -0x1

    .line 1504
    .end local v13    # "$this$indexOfLast$iv$iv":Ljava/util/List;
    .end local v14    # "$i$f$indexOfLast":I
    .end local v15    # "iterator$iv$iv":Ljava/util/ListIterator;
    :goto_2
    nop

    .line 1514
    nop

    .line 1520
    .local v1, "lastSelectableIndex$iv":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 1522
    move-object v2, v12

    .local v2, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1523
    .local v7, "$i$f$fastForEachIndexed":I
    const/4 v13, 0x0

    .local v13, "index$iv$iv":I
    move-object v14, v2

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    move v15, v13

    move v13, v3

    move/from16 v3, v19

    .end local v19    # "start":I
    .local v3, "start":I
    .local v13, "end":I
    .local v15, "index$iv$iv":I
    :goto_3
    if-ge v15, v14, :cond_9

    .line 1524
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1525
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/foundation/text/selection/Selectable;

    .local v18, "selectable$iv":Landroidx/compose/foundation/text/selection/Selectable;
    move/from16 v19, v15

    .local v19, "selectableIndex$iv":I
    move/from16 v21, v19

    .end local v19    # "selectableIndex$iv":I
    .local v21, "selectableIndex$iv":I
    const/16 v19, 0x0

    .line 1526
    .local v19, "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1$iv":I
    invoke-static {v10}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v6

    move/from16 v22, v4

    move-object/from16 v23, v5

    .end local v4    # "$i$f$buildAnnotatedString":I
    .local v22, "$i$f$buildAnnotatedString":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v4, :cond_8

    .local v4, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v5, 0x0

    .line 1527
    .local v5, "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v6

    .line 1528
    .local v6, "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v24

    move-object/from16 v25, v2

    .end local v2    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v25, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v26

    .line 1529
    .local v26, "selectionRange$iv":J
    move/from16 v0, v21

    .end local v21    # "selectableIndex$iv":I
    .local v0, "selectableIndex$iv":I
    if-lt v0, v1, :cond_4

    move/from16 v2, v20

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 1531
    .local v2, "isLastSelectable$iv":Z
    :goto_4
    invoke-interface/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-object/from16 v21, v6

    .local v21, "text":Landroidx/compose/ui/text/AnnotatedString;
    move/from16 v24, v2

    .local v24, "isLastSelectable":Z
    move-wide/from16 v28, v26

    .local v28, "selection":J
    const/16 v30, 0x0

    .line 717
    .local v30, "$i$a$-forEachSelectableWithSelection$foundation-SelectionManager$getContextTextAndSelection$text$1$1":I
    move/from16 v31, v0

    const/4 v0, -0x1

    .end local v0    # "selectableIndex$iv":I
    .local v31, "selectableIndex$iv":I
    if-ne v3, v0, :cond_5

    .line 718
    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 719
    .end local v3    # "start":I
    .local v0, "start":I
    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v3

    move/from16 v32, v0

    move-object/from16 v0, v21

    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "lastSelectableIndex$iv":I
    .local v0, "text":Landroidx/compose/ui/text/AnnotatedString;
    .local v21, "lastSelectableIndex$iv":I
    .local v32, "start":I
    invoke-virtual {v8, v0, v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    goto :goto_5

    .line 717
    .end local v0    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v32    # "start":I
    .restart local v1    # "lastSelectableIndex$iv":I
    .restart local v3    # "start":I
    .local v21, "text":Landroidx/compose/ui/text/AnnotatedString;
    :cond_5
    move-object/from16 v0, v21

    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "lastSelectableIndex$iv":I
    .restart local v0    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .local v21, "lastSelectableIndex$iv":I
    move/from16 v32, v3

    .line 722
    .end local v3    # "start":I
    .restart local v32    # "start":I
    :goto_5
    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v3

    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    invoke-virtual {v8, v0, v3, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    .line 723
    if-nez v24, :cond_6

    .line 724
    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(C)Landroidx/compose/ui/text/AnnotatedString$Builder;

    move v3, v13

    goto :goto_6

    .line 728
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;->getLength()I

    move-result v1

    .line 729
    .end local v13    # "end":I
    .local v1, "end":I
    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v13

    invoke-virtual {v8, v0, v3, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    move v3, v1

    .line 731
    .end local v1    # "end":I
    .local v3, "end":I
    :goto_6
    nop

    .line 1531
    .end local v0    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v24    # "isLastSelectable":Z
    .end local v28    # "selection":J
    .end local v30    # "$i$a$-forEachSelectableWithSelection$foundation-SelectionManager$getContextTextAndSelection$text$1$1":I
    nop

    .line 1530
    move/from16 v0, v20

    .line 1532
    .local v0, "shouldContinue$iv":Z
    if-eqz v0, :cond_7

    .line 1533
    nop

    .line 1526
    .end local v0    # "shouldContinue$iv":Z
    .end local v2    # "isLastSelectable$iv":Z
    .end local v4    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v5    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .end local v6    # "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    .end local v26    # "selectionRange$iv":J
    move v13, v3

    move/from16 v3, v32

    goto :goto_7

    .line 1532
    .restart local v0    # "shouldContinue$iv":Z
    .restart local v2    # "isLastSelectable$iv":Z
    .restart local v4    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .restart local v5    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .restart local v6    # "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    .restart local v26    # "selectionRange$iv":J
    :cond_7
    move/from16 v2, v32

    goto :goto_8

    .line 1526
    .end local v0    # "shouldContinue$iv":Z
    .end local v4    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v5    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .end local v6    # "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    .end local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v26    # "selectionRange$iv":J
    .end local v31    # "selectableIndex$iv":I
    .end local v32    # "start":I
    .local v1, "lastSelectableIndex$iv":I
    .local v2, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v3, "start":I
    .restart local v13    # "end":I
    .local v21, "selectableIndex$iv":I
    :cond_8
    move-object/from16 v25, v2

    move/from16 v31, v21

    move/from16 v21, v1

    .line 1534
    .end local v1    # "lastSelectableIndex$iv":I
    .end local v2    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v21, "lastSelectableIndex$iv":I
    .restart local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .restart local v31    # "selectableIndex$iv":I
    :goto_7
    nop

    .line 1525
    .end local v18    # "selectable$iv":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v19    # "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1$iv":I
    .end local v31    # "selectableIndex$iv":I
    nop

    .line 1523
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v25

    const/4 v6, 0x0

    goto/16 :goto_3

    .end local v21    # "lastSelectableIndex$iv":I
    .end local v22    # "$i$f$buildAnnotatedString":I
    .end local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .restart local v1    # "lastSelectableIndex$iv":I
    .restart local v2    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .local v4, "$i$f$buildAnnotatedString":I
    :cond_9
    move/from16 v21, v1

    move-object/from16 v25, v2

    move/from16 v22, v4

    move-object/from16 v23, v5

    .line 1535
    .end local v1    # "lastSelectableIndex$iv":I
    .end local v2    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$buildAnnotatedString":I
    .end local v15    # "index$iv$iv":I
    .restart local v21    # "lastSelectableIndex$iv":I
    .restart local v22    # "$i$f$buildAnnotatedString":I
    .restart local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    nop

    .line 1536
    .end local v7    # "$i$f$fastForEachIndexed":I
    .end local v25    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    move v2, v3

    move v3, v13

    goto :goto_8

    .line 1520
    .end local v13    # "end":I
    .end local v21    # "lastSelectableIndex$iv":I
    .end local v22    # "$i$f$buildAnnotatedString":I
    .restart local v1    # "lastSelectableIndex$iv":I
    .local v3, "end":I
    .restart local v4    # "$i$f$buildAnnotatedString":I
    .local v19, "start":I
    :cond_a
    move/from16 v21, v1

    move/from16 v22, v4

    move-object/from16 v23, v5

    .end local v1    # "lastSelectableIndex$iv":I
    .end local v4    # "$i$f$buildAnnotatedString":I
    .restart local v21    # "lastSelectableIndex$iv":I
    .restart local v22    # "$i$f$buildAnnotatedString":I
    move/from16 v2, v19

    .line 733
    .end local v10    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v11    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v12    # "sortedSelectables$iv":Ljava/util/List;
    .end local v19    # "start":I
    .end local v21    # "lastSelectableIndex$iv":I
    .local v2, "start":I
    :goto_8
    nop

    .line 1501
    .end local v8    # "$this$getContextTextAndSelection_u24lambda_u240":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v9    # "$i$a$-buildAnnotatedString-SelectionManager$getContextTextAndSelection$text$1":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 715
    .end local v22    # "$i$f$buildAnnotatedString":I
    nop

    .line 734
    .local v0, "text":Landroidx/compose/ui/text/AnnotatedString;
    const/4 v1, -0x1

    if-eq v2, v1, :cond_c

    if-ne v3, v1, :cond_b

    goto :goto_9

    .line 736
    :cond_b
    new-instance v1, Lkotlin/Pair;

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 734
    :cond_c
    :goto_9
    return-object v17

    .line 709
    .end local v0    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_d
    move-object/from16 v17, v1

    .line 710
    :goto_a
    return-object v17
.end method

.method public final getCoroutineScope$foundation()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 306
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 4

    .line 289
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1389
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 289
    return-object v0
.end method

.method public final getDragBeginPosition-F1C5BW0$foundation()J
    .locals 4

    .line 236
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1373
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 236
    return-wide v0
.end method

.method public final getDragTotalDistance-F1C5BW0$foundation()J
    .locals 4

    .line 243
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1376
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 243
    return-wide v0
.end method

.method public final getDraggingHandle()Landroidx/compose/foundation/text/Handle;
    .locals 4

    .line 266
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1385
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/foundation/text/Handle;

    .line 266
    return-object v0
.end method

.method public final getEndHandleLineHeight()F
    .locals 4

    .line 280
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 281
    .local v0, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    .line 1388
    .local v2, "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    const/4 v3, 0x0

    .line 281
    .local v3, "$i$a$-let-SelectionManager$endHandleLineHeight$selectable$1":I
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v2

    .end local v2    # "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local v3    # "$i$a$-let-SelectionManager$endHandleLineHeight$selectable$1":I
    if-nez v2, :cond_1

    return v1

    .line 282
    .local v2, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v1

    invoke-interface {v2, v1}, Landroidx/compose/foundation/text/selection/Selectable;->getLineHeight(I)F

    move-result v1

    return v1
.end method

.method public final getEndHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 4

    .line 259
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1382
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 259
    return-object v0
.end method

.method public final getFocusRequester()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method

.method public final getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-object v0
.end method

.method public final getHasFocus()Z
    .locals 4

    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1366
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 150
    return v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 4

    .line 159
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->onClearSelectionRequested(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 160
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 161
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 162
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v1}, Landroidx/compose/foundation/FocusableKt;->focusable$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 169
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->updateSelectionTouchMode(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 170
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$5;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$modifier$5;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 178
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getShouldShowMagnifier()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    invoke-static {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt;->selectionMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    :goto_0
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->addContextMenuComponents(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCopyHandler()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onCopyHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSelectionChange()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getPlatformSelectionBehaviors$foundation()Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    return-object v0
.end method

.method public final getPreviousSelectionLayout$foundation()Landroidx/compose/foundation/text/selection/SelectionLayout;
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    return-object v0
.end method

.method public final getSelectedText$foundation()Landroidx/compose/ui/text/AnnotatedString;
    .locals 30

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/LongObjectMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 684
    :cond_0
    const/4 v2, 0x0

    .line 1465
    .local v2, "$i$f$buildAnnotatedString":I
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v3

    .local v1, "$this$getSelectedText_u24lambda_u240":Landroidx/compose/ui/text/AnnotatedString$Builder;
    const/4 v6, 0x0

    .line 685
    .local v6, "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    move-object/from16 v7, p0

    .local v7, "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    const/4 v8, 0x0

    .line 1466
    .local v8, "$i$f$forEachSelectableWithSelection$foundation":I
    invoke-static {v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v9

    .line 1468
    .local v9, "sortedSelectables$iv":Ljava/util/List;
    move-object v10, v9

    .local v10, "$this$indexOfLast$iv$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 1469
    .local v11, "$i$f$indexOfLast":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v12

    .line 1470
    .local v12, "iterator$iv$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v13

    const/4 v14, -0x1

    if-eqz v13, :cond_3

    .line 1471
    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "it$iv":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v15, 0x0

    .line 1472
    .local v15, "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1$iv":I
    invoke-static {v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v4

    move/from16 v16, v5

    move/from16 v17, v6

    .end local v6    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    .local v17, "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/Selection;

    .line 1473
    .local v4, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v6

    if-eq v5, v6, :cond_1

    move/from16 v4, v16

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1471
    .end local v4    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v13    # "it$iv":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v15    # "$i$a$-indexOfLast-SelectionManager$forEachSelectableWithSelection$lastSelectableIndex$1$iv":I
    :goto_1
    if-eqz v4, :cond_2

    .line 1474
    invoke-interface {v12}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    goto :goto_2

    .line 1471
    :cond_2
    move/from16 v5, v16

    move/from16 v6, v17

    const/4 v4, 0x0

    goto :goto_0

    .line 1477
    .end local v17    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    .restart local v6    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    :cond_3
    move/from16 v16, v5

    move/from16 v17, v6

    .end local v6    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    .restart local v17    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    move v4, v14

    .line 1468
    .end local v10    # "$this$indexOfLast$iv$iv":Ljava/util/List;
    .end local v11    # "$i$f$indexOfLast":I
    .end local v12    # "iterator$iv$iv":Ljava/util/ListIterator;
    :goto_2
    nop

    .line 1478
    nop

    .line 1484
    .local v4, "lastSelectableIndex$iv":I
    if-eq v4, v14, :cond_8

    .line 1486
    move-object v5, v9

    .local v5, "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1487
    .local v6, "$i$f$fastForEachIndexed":I
    const/4 v10, 0x0

    .local v10, "index$iv$iv":I
    move-object v11, v5

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    :goto_3
    if-ge v10, v11, :cond_7

    .line 1488
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1489
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable$iv":Landroidx/compose/foundation/text/selection/Selectable;
    move v14, v10

    .local v14, "selectableIndex$iv":I
    const/4 v15, 0x0

    .line 1490
    .local v15, "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1$iv":I
    invoke-static {v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->access$getSelectionRegistrar$p(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v0

    move/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "$i$f$buildAnnotatedString":I
    .local v18, "$i$f$buildAnnotatedString":I
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v0, :cond_6

    .local v0, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v2, 0x0

    .line 1491
    .local v2, "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    .line 1492
    .local v3, "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v20

    move-object/from16 v21, v0

    .end local v0    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .local v21, "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v0

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v20

    move/from16 v22, v2

    .end local v2    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .local v22, "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v23

    .line 1493
    .local v23, "selectionRange$iv":J
    if-lt v14, v4, :cond_4

    move/from16 v0, v16

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 1495
    .local v0, "isLastSelectable$iv":Z
    :goto_4
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-wide/from16 v25, v23

    .local v25, "selection":J
    move-object v2, v3

    .local v2, "text":Landroidx/compose/ui/text/AnnotatedString;
    move/from16 v20, v0

    .local v20, "isLastSelectable":Z
    const/16 v27, 0x0

    .line 686
    .local v27, "$i$a$-forEachSelectableWithSelection$foundation-SelectionManager$getSelectedText$1$1":I
    move/from16 v28, v0

    .end local v0    # "isLastSelectable$iv":Z
    .local v28, "isLastSelectable$iv":Z
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    move-object/from16 v29, v3

    .end local v3    # "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    .local v29, "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    .line 687
    if-nez v20, :cond_5

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(C)Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 688
    :cond_5
    nop

    .line 1495
    .end local v2    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v20    # "isLastSelectable":Z
    .end local v25    # "selection":J
    .end local v27    # "$i$a$-forEachSelectableWithSelection$foundation-SelectionManager$getSelectedText$1$1":I
    nop

    .line 1494
    move/from16 v0, v16

    .line 1496
    .local v0, "shouldContinue$iv":Z
    if-eqz v0, :cond_9

    .line 1497
    nop

    .line 1490
    .end local v0    # "shouldContinue$iv":Z
    .end local v21    # "subSelection$iv":Landroidx/compose/foundation/text/selection/Selection;
    .end local v22    # "$i$a$-let-SelectionManager$forEachSelectableWithSelection$1$1$iv":I
    .end local v23    # "selectionRange$iv":J
    .end local v28    # "isLastSelectable$iv":Z
    .end local v29    # "currentText$iv":Landroidx/compose/ui/text/AnnotatedString;
    nop

    .line 1498
    :cond_6
    nop

    .line 1489
    .end local v13    # "selectable$iv":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "selectableIndex$iv":I
    .end local v15    # "$i$a$-fastForEachIndexed-SelectionManager$forEachSelectableWithSelection$1$iv":I
    nop

    .line 1487
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_3

    .end local v18    # "$i$f$buildAnnotatedString":I
    .local v2, "$i$f$buildAnnotatedString":I
    :cond_7
    move/from16 v18, v2

    move-object/from16 v19, v3

    .line 1499
    .end local v2    # "$i$f$buildAnnotatedString":I
    .end local v10    # "index$iv$iv":I
    .restart local v18    # "$i$f$buildAnnotatedString":I
    nop

    .line 1500
    .end local v5    # "$this$fastForEachIndexed$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEachIndexed":I
    goto :goto_5

    .line 1484
    .end local v18    # "$i$f$buildAnnotatedString":I
    .restart local v2    # "$i$f$buildAnnotatedString":I
    :cond_8
    move/from16 v18, v2

    move-object/from16 v19, v3

    .line 690
    .end local v2    # "$i$f$buildAnnotatedString":I
    .end local v4    # "lastSelectableIndex$iv":I
    .end local v7    # "this_$iv":Landroidx/compose/foundation/text/selection/SelectionManager;
    .end local v8    # "$i$f$forEachSelectableWithSelection$foundation":I
    .end local v9    # "sortedSelectables$iv":Ljava/util/List;
    .restart local v18    # "$i$f$buildAnnotatedString":I
    :cond_9
    :goto_5
    nop

    .line 1465
    .end local v1    # "$this$getSelectedText_u24lambda_u240":Landroidx/compose/ui/text/AnnotatedString$Builder;
    .end local v17    # "$i$a$-buildAnnotatedString-SelectionManager$getSelectedText$1":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 684
    .end local v18    # "$i$f$buildAnnotatedString":I
    return-object v0

    .line 681
    :cond_a
    :goto_6
    return-object v1
.end method

.method public final getSelection()Landroidx/compose/foundation/text/selection/Selection;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text/selection/Selection;

    return-object v0
.end method

.method public final getShowToolbar$foundation()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    return v0
.end method

.method public final getStartHandleLineHeight()F
    .locals 4

    .line 272
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 273
    .local v0, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    .line 1388
    .local v2, "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    const/4 v3, 0x0

    .line 273
    .local v3, "$i$a$-let-SelectionManager$startHandleLineHeight$selectable$1":I
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v2

    .end local v2    # "p0":Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .end local v3    # "$i$a$-let-SelectionManager$startHandleLineHeight$selectable$1":I
    if-nez v2, :cond_1

    return v1

    .line 274
    .local v2, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v1

    invoke-interface {v2, v1}, Landroidx/compose/foundation/text/selection/Selectable;->getLineHeight(I)F

    move-result v1

    return v1
.end method

.method public final getStartHandlePosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;
    .locals 4

    .line 251
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "thisObj$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1379
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "thisObj$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 251
    return-object v0
.end method

.method public final getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-object v0
.end method

.method public final getToolbarRequester$foundation()Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    return-object v0
.end method

.method public final handleDragObserver(Z)Landroidx/compose/foundation/text/TextDragObserver;
    .locals 1
    .param p1, "isStartHandle"    # Z

    .line 887
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager$handleDragObserver$1;-><init>(ZLandroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 980
    return-object v0
.end method

.method public final isEntireContainerSelected$foundation()Z
    .locals 19

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v1

    .line 582
    .local v1, "selectables":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 585
    :cond_0
    move-object v2, v1

    .local v2, "$this$fastAll$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1446
    .local v4, "$i$f$fastAll":I
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1447
    .local v6, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_6

    .line 1448
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1449
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1446
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/foundation/text/selection/Selectable;

    .local v12, "it":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v13, 0x0

    .line 586
    .local v13, "$i$a$-fastAll-SelectionManager$isEntireContainerSelected$1":I
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v14

    .line 587
    .local v14, "text":Landroidx/compose/ui/text/AnnotatedString;
    move-object v15, v14

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/16 v16, 0x0

    if-nez v15, :cond_1

    move v15, v3

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    if-eqz v15, :cond_2

    move-object/from16 v18, v1

    move/from16 v17, v4

    goto :goto_2

    .line 592
    :cond_2
    iget-object v15, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v15

    move/from16 v17, v4

    .end local v4    # "$i$f$fastAll":I
    .local v17, "$i$f$fastAll":I
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v3

    invoke-virtual {v15, v3, v4}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/text/selection/Selection;

    if-nez v3, :cond_3

    move-object/from16 v18, v1

    move/from16 v3, v16

    goto :goto_2

    .line 591
    :cond_3
    nop

    .line 594
    .local v3, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v4

    .line 595
    .local v4, "selectionStart":I
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v15

    .line 599
    .local v15, "selectionEnd":I
    sub-int v18, v4, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move-object/from16 v18, v1

    .end local v1    # "selectables":Ljava/util/List;
    .local v18, "selectables":Ljava/util/List;
    invoke-virtual {v14}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    move/from16 v3, v16

    .line 1446
    .end local v3    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v4    # "selectionStart":I
    .end local v12    # "it":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v13    # "$i$a$-fastAll-SelectionManager$isEntireContainerSelected$1":I
    .end local v14    # "text":Landroidx/compose/ui/text/AnnotatedString;
    .end local v15    # "selectionEnd":I
    :goto_2
    if-nez v3, :cond_5

    move/from16 v3, v16

    goto :goto_3

    .line 1449
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastAll$1$iv":I
    :cond_5
    nop

    .line 1447
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 v1, v18

    goto :goto_0

    .end local v17    # "$i$f$fastAll":I
    .end local v18    # "selectables":Ljava/util/List;
    .restart local v1    # "selectables":Ljava/util/List;
    .local v4, "$i$f$fastAll":I
    :cond_6
    move-object/from16 v18, v1

    move/from16 v17, v4

    .line 1451
    .end local v1    # "selectables":Ljava/util/List;
    .end local v4    # "$i$f$fastAll":I
    .end local v7    # "index$iv$iv":I
    .restart local v17    # "$i$f$fastAll":I
    .restart local v18    # "selectables":Ljava/util/List;
    nop

    .line 1452
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    const/4 v3, 0x1

    .line 585
    .end local v2    # "$this$fastAll$iv":Ljava/util/List;
    .end local v17    # "$i$f$fastAll":I
    :goto_3
    return v3
.end method

.method public final isInTouchMode()Z
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isNonEmptySelection$foundation()Z
    .locals 18

    .line 660
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 661
    .local v1, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    return v2

    .line 665
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 668
    return v4

    .line 672
    :cond_2
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastAny$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1458
    .local v5, "$i$f$fastAny":I
    move-object v6, v3

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1459
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_6

    .line 1460
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1461
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1458
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v14, 0x0

    .line 673
    .local v14, "$i$a$-fastAny-SelectionManager$isNonEmptySelection$1":I
    iget-object v15, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v15

    move-object/from16 v16, v3

    .end local v3    # "$this$fastAny$iv":Ljava/util/List;
    .local v16, "$this$fastAny$iv":Ljava/util/List;
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/Selection;

    if-eqz v2, :cond_4

    .local v2, "$this$isNonEmptySelection_u24lambda_u240_u240":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v3, 0x0

    .line 674
    .local v3, "$i$a$-run-SelectionManager$isNonEmptySelection$1$1":I
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v15

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result v4

    if-eq v15, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 673
    .end local v2    # "$this$isNonEmptySelection_u24lambda_u240_u240":Landroidx/compose/foundation/text/selection/Selection;
    .end local v3    # "$i$a$-run-SelectionManager$isNonEmptySelection$1$1":I
    :goto_1
    goto :goto_2

    .line 675
    :cond_4
    const/4 v2, 0x0

    .line 1458
    .end local v13    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "$i$a$-fastAny-SelectionManager$isNonEmptySelection$1":I
    :goto_2
    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    .line 1461
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_5
    nop

    .line 1459
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_0

    .end local v16    # "$this$fastAny$iv":Ljava/util/List;
    .local v3, "$this$fastAny$iv":Ljava/util/List;
    :cond_6
    move-object/from16 v16, v3

    .line 1463
    .end local v3    # "$this$fastAny$iv":Ljava/util/List;
    .end local v8    # "index$iv$iv":I
    .restart local v16    # "$this$fastAny$iv":Ljava/util/List;
    nop

    .line 1464
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v2, 0x0

    .line 672
    .end local v5    # "$i$f$fastAny":I
    .end local v16    # "$this$fastAny$iv":Ljava/util/List;
    :goto_3
    return v2
.end method

.method public final isTriviallyCollapsedSelection$foundation()Z
    .locals 3

    .line 647
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 648
    .local v0, "selection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final onRelease()V
    .locals 2

    .line 876
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-static {}, Landroidx/collection/LongObjectMapKt;->emptyLongObjectMap()Landroidx/collection/LongObjectMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Landroidx/collection/LongObjectMap;)V

    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setShowToolbar$foundation(Z)V

    .line 878
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 884
    :cond_0
    return-void
.end method

.method public final requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4

    .line 550
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 551
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    move-object v1, v0

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1429
    .local v2, "$i$f$requirePreconditionNotNull":I
    if-eqz v1, :cond_1

    .line 1433
    nop

    .line 552
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$requirePreconditionNotNull":I
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 1434
    .local v2, "$i$f$requirePrecondition":I
    if-nez v1, :cond_0

    .line 1435
    const/4 v3, 0x0

    .line 552
    .local v3, "$i$a$-requirePrecondition-SelectionManager$requireContainerCoordinates$2":I
    nop

    .line 1435
    .end local v3    # "$i$a$-requirePrecondition-SelectionManager$requireContainerCoordinates$2":I
    const-string/jumbo v3, "unattached coordinates"

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1437
    :cond_0
    nop

    .line 553
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    return-object v0

    .line 1430
    .local v1, "value$iv":Ljava/lang/Object;
    .local v2, "$i$f$requirePreconditionNotNull":I
    :cond_1
    const/4 v3, 0x0

    .line 551
    .local v3, "$i$a$-requirePreconditionNotNull-SelectionManager$requireContainerCoordinates$1":I
    nop

    .line 1430
    .end local v3    # "$i$a$-requirePreconditionNotNull-SelectionManager$requireContainerCoordinates$1":I
    const-string/jumbo v3, "null coordinates"

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final selectAll$foundation()V
    .locals 17

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v1

    .line 606
    .local v1, "selectables":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 608
    :cond_0
    const/4 v2, 0x0

    .line 609
    .local v2, "firstSubSelection":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 611
    .local v3, "lastSubSelection":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongObjectMapKt;->mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;

    move-result-object v4

    move-object v5, v4

    .local v5, "$this$selectAll_u24lambda_u240":Landroidx/collection/MutableLongObjectMap;
    const/4 v6, 0x0

    .line 612
    .local v6, "$i$a$-apply-SelectionManager$selectAll$newSubSelections$1":I
    move-object v7, v1

    .local v7, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1453
    .local v8, "$i$f$fastForEach":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    move-object v10, v7

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_3

    .line 1454
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1455
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/foundation/text/selection/Selectable;

    .local v12, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v13, 0x0

    .line 613
    .local v13, "$i$a$-fastForEach-SelectionManager$selectAll$newSubSelections$1$1":I
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectAllSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v14

    if-nez v14, :cond_1

    move-object v15, v1

    goto :goto_1

    .line 614
    .local v14, "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    :cond_1
    if-nez v2, :cond_2

    move-object v2, v14

    .line 615
    :cond_2
    move-object v3, v14

    .line 616
    move-object v15, v1

    move-object/from16 v16, v2

    .end local v1    # "selectables":Ljava/util/List;
    .end local v2    # "firstSubSelection":Ljava/lang/Object;
    .local v15, "selectables":Ljava/util/List;
    .local v16, "firstSubSelection":Ljava/lang/Object;
    invoke-interface {v12}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v14}, Landroidx/collection/MutableLongObjectMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 617
    move-object/from16 v2, v16

    .line 1455
    .end local v12    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v13    # "$i$a$-fastForEach-SelectionManager$selectAll$newSubSelections$1$1":I
    .end local v14    # "subSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v16    # "firstSubSelection":Ljava/lang/Object;
    .restart local v2    # "firstSubSelection":Ljava/lang/Object;
    :goto_1
    nop

    .line 1453
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object v1, v15

    goto :goto_0

    .end local v15    # "selectables":Ljava/util/List;
    .restart local v1    # "selectables":Ljava/util/List;
    :cond_3
    move-object v15, v1

    .line 1457
    .end local v1    # "selectables":Ljava/util/List;
    .end local v9    # "index$iv":I
    .restart local v15    # "selectables":Ljava/util/List;
    nop

    .line 618
    .end local v7    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    nop

    .line 611
    .end local v5    # "$this$selectAll_u24lambda_u240":Landroidx/collection/MutableLongObjectMap;
    .end local v6    # "$i$a$-apply-SelectionManager$selectAll$newSubSelections$1":I
    nop

    .line 610
    nop

    .line 620
    .local v4, "newSubSelections":Landroidx/collection/MutableLongObjectMap;
    invoke-virtual {v4}, Landroidx/collection/MutableLongObjectMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 624
    :cond_4
    if-ne v2, v3, :cond_5

    .line 625
    move-object v1, v2

    goto :goto_2

    .line 627
    :cond_5
    new-instance v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 628
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v5

    .line 629
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v6

    .line 630
    nop

    .line 627
    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 624
    :goto_2
    nop

    .line 623
    nop

    .line 634
    .local v1, "newSelection":Landroidx/compose/foundation/text/selection/Selection;
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    move-object v6, v4

    check-cast v6, Landroidx/collection/LongObjectMap;

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->setSubselections(Landroidx/collection/LongObjectMap;)V

    .line 635
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 637
    return-void
.end method

.method public final selectAllInSelectable$foundation(JLandroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;
    .locals 22
    .param p1, "selectableId"    # J
    .param p3, "previousSelection"    # Landroidx/compose/foundation/text/selection/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Lkotlin/Pair<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Landroidx/collection/LongObjectMap<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;>;"
        }
    .end annotation

    .line 560
    move-object/from16 v0, p0

    invoke-static {}, Landroidx/collection/LongObjectMapKt;->mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;

    move-result-object v1

    .line 562
    .local v1, "subselections":Landroidx/collection/MutableLongObjectMap;
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastFold$iv":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "initial$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1438
    .local v4, "$i$f$fastFold":I
    const/4 v5, 0x0

    .local v5, "accumulator$iv":Ljava/lang/Object;
    move-object v5, v3

    .line 1439
    move-object v6, v2

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1440
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_2

    .line 1441
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1442
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "e$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1439
    .local v12, "$i$a$-fastForEach-ListUtilsKt$fastFold$1$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/foundation/text/selection/Selectable;

    .local v13, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    move-object v14, v5

    .local v14, "mergedSelection":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v15, 0x0

    .line 566
    .local v15, "$i$a$-fastFold-SelectionManager$selectAllInSelectable$newSelection$1":I
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v16

    cmp-long v16, v16, p1

    if-nez v16, :cond_0

    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectAllSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v16

    goto :goto_1

    .line 567
    :cond_0
    const/16 v16, 0x0

    .line 566
    :goto_1
    nop

    .line 565
    move-object/from16 v17, v16

    .line 568
    .local v17, "selection":Landroidx/compose/foundation/text/selection/Selection;
    if-eqz v17, :cond_1

    move-object/from16 v16, v17

    .line 1388
    .local v16, "it":Landroidx/compose/foundation/text/selection/Selection;
    const/16 v18, 0x0

    .line 568
    .local v18, "$i$a$-let-SelectionManager$selectAllInSelectable$newSelection$1$1":I
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "$this$fastFold$iv":Ljava/util/List;
    .end local v3    # "initial$iv":Ljava/lang/Object;
    .local v19, "$this$fastFold$iv":Ljava/util/List;
    .local v20, "initial$iv":Ljava/lang/Object;
    invoke-interface {v13}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v2

    move/from16 v21, v4

    move-object/from16 v4, v16

    .end local v16    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .local v4, "it":Landroidx/compose/foundation/text/selection/Selection;
    .local v21, "$i$f$fastFold":I
    invoke-virtual {v1, v2, v3, v4}, Landroidx/collection/MutableLongObjectMap;->set(JLjava/lang/Object;)V

    .end local v4    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .end local v18    # "$i$a$-let-SelectionManager$selectAllInSelectable$newSelection$1$1":I
    goto :goto_2

    .end local v19    # "$this$fastFold$iv":Ljava/util/List;
    .end local v20    # "initial$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$fastFold":I
    .restart local v2    # "$this$fastFold$iv":Ljava/util/List;
    .restart local v3    # "initial$iv":Ljava/lang/Object;
    .local v4, "$i$f$fastFold":I
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    .line 569
    .end local v2    # "$this$fastFold$iv":Ljava/util/List;
    .end local v3    # "initial$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$fastFold":I
    .restart local v19    # "$this$fastFold$iv":Ljava/util/List;
    .restart local v20    # "initial$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$fastFold":I
    :goto_2
    move-object/from16 v4, v17

    .end local v17    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .local v4, "selection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-static {v14, v4}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v2

    .line 1439
    .end local v4    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v13    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v14    # "mergedSelection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v15    # "$i$a$-fastFold-SelectionManager$selectAllInSelectable$newSelection$1":I
    move-object v5, v2

    .line 1442
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-ListUtilsKt$fastFold$1$iv":I
    nop

    .line 1440
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    goto :goto_0

    .end local v19    # "$this$fastFold$iv":Ljava/util/List;
    .end local v20    # "initial$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$fastFold":I
    .restart local v2    # "$this$fastFold$iv":Ljava/util/List;
    .restart local v3    # "initial$iv":Ljava/lang/Object;
    .local v4, "$i$f$fastFold":I
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    .line 1444
    .end local v2    # "$this$fastFold$iv":Ljava/util/List;
    .end local v3    # "initial$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$fastFold":I
    .end local v8    # "index$iv$iv":I
    .restart local v19    # "$this$fastFold$iv":Ljava/util/List;
    .restart local v20    # "initial$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$fastFold":I
    nop

    .line 1445
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    nop

    .line 562
    .end local v5    # "accumulator$iv":Ljava/lang/Object;
    .end local v19    # "$this$fastFold$iv":Ljava/util/List;
    .end local v20    # "initial$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$fastFold":I
    nop

    .line 561
    nop

    .line 571
    .local v5, "newSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 572
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    if-eqz v3, :cond_4

    sget-object v4, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    goto :goto_3

    .line 571
    :cond_3
    move-object/from16 v2, p3

    .line 574
    :cond_4
    :goto_3
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final selectWordAtPositionIfNotAlreadySelected-k-4lQ0M(J)V
    .locals 23
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J

    .line 1159
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-nez v3, :cond_0

    return-void

    .line 1160
    .local v3, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_0
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 1163
    :cond_1
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectables$foundation()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastAny$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1581
    .local v5, "$i$f$fastAny":I
    move-object v6, v4

    .local v6, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1582
    .local v7, "$i$f$fastForEach":I
    const/4 v8, 0x0

    .local v8, "index$iv$iv":I
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_6

    .line 1583
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1584
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1581
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/foundation/text/selection/Selectable;

    .local v15, "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    const/16 v16, 0x0

    .line 1165
    .local v16, "$i$a$-fastAny-SelectionManager$selectWordAtPositionIfNotAlreadySelected$isClickedPositionInsideSelection$1":I
    iget-object v11, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/LongObjectMap;

    move-result-object v11

    move-object/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "$this$fastAny$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastAny":I
    .local v17, "$this$fastAny$iv":Ljava/util/List;
    .local v18, "$i$f$fastAny":I
    invoke-interface {v15}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/selection/Selection;

    if-nez v4, :cond_2

    .line 1166
    move-object/from16 v19, v3

    const/4 v11, 0x0

    goto :goto_1

    .line 1164
    :cond_2
    nop

    .line 1168
    .local v4, "selection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-interface {v15}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    if-nez v5, :cond_3

    move-object/from16 v19, v3

    const/4 v11, 0x0

    goto :goto_1

    .line 1167
    :cond_3
    nop

    .line 1170
    .local v5, "selectableLayoutCoords":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v5, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v19

    .line 1169
    move-wide/from16 v21, v19

    .line 1171
    .local v21, "positionInSelectable":J
    invoke-interface {v15}, Landroidx/compose/foundation/text/selection/Selectable;->textLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v11

    if-nez v11, :cond_4

    move-object/from16 v19, v3

    const/4 v11, 0x0

    goto :goto_1

    .line 1172
    .local v11, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_4
    nop

    .line 1173
    nop

    .line 1174
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/Selection;->toTextRange-d9O1mEE()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v10

    .line 1172
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v3, v21

    .end local v4    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    .end local v21    # "positionInSelectable":J
    .local v3, "positionInSelectable":J
    .local v19, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v20, "selection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-static {v11, v3, v4, v10}, Landroidx/compose/foundation/text/TextLayoutHelperKt;->isPositionInsideSelection-uaM50fQ(Landroidx/compose/ui/text/TextLayoutResult;JLandroidx/compose/ui/text/TextRange;)Z

    move-result v10

    .line 1175
    move v11, v10

    .line 1581
    .end local v3    # "positionInSelectable":J
    .end local v5    # "selectableLayoutCoords":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v11    # "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    .end local v15    # "selectable":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v16    # "$i$a$-fastAny-SelectionManager$selectWordAtPositionIfNotAlreadySelected$isClickedPositionInsideSelection$1":I
    .end local v20    # "selection":Landroidx/compose/foundation/text/selection/Selection;
    :goto_1
    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    .line 1584
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_5
    nop

    .line 1582
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v3, v19

    goto :goto_0

    .end local v17    # "$this$fastAny$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastAny":I
    .end local v19    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v3, "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v4, "$this$fastAny$iv":Ljava/util/List;
    .local v5, "$i$f$fastAny":I
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 1586
    .end local v3    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v4    # "$this$fastAny$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastAny":I
    .end local v8    # "index$iv$iv":I
    .restart local v17    # "$this$fastAny$iv":Ljava/util/List;
    .restart local v18    # "$i$f$fastAny":I
    .restart local v19    # "containerCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    nop

    .line 1587
    .end local v6    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    const/4 v11, 0x0

    .line 1163
    .end local v17    # "$this$fastAny$iv":Ljava/util/List;
    .end local v18    # "$i$f$fastAny":I
    :goto_2
    nop

    .line 1162
    nop

    .line 1177
    .local v11, "isClickedPositionInsideSelection":Z
    if-nez v11, :cond_7

    .line 1178
    nop

    .line 1179
    nop

    .line 1180
    nop

    .line 1181
    sget-object v3, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v3

    .line 1178
    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->startSelection-9KIMszo(JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 1184
    :cond_7
    return-void
.end method

.method public final setContainerLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 2
    .param p1, "value"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 218
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 219
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, "positionInWindow":Landroidx/compose/ui/geometry/Offset;
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousPosition:Landroidx/compose/ui/geometry/Offset;

    .line 223
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 224
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 227
    .end local v0    # "positionInWindow":Landroidx/compose/ui/geometry/Offset;
    :cond_1
    return-void
.end method

.method public final setCoroutineScope$foundation(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/CoroutineScope;

    .line 306
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public final setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/focus/FocusRequester;

    .line 147
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public final setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 136
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    return-void
.end method

.method public final setHasFocus(Z)V
    .locals 5
    .param p1, "<set-?>"    # Z

    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "thisObj$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1367
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1368
    nop

    .line 150
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "thisObj$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method

.method public final setInTouchMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 110
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 111
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 114
    :cond_0
    return-void
.end method

.method public final setOnCopyHandler(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onCopyHandler:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectionChange(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "newOnSelectionChange"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 129
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda14;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 133
    return-void
.end method

.method public final setPlatformSelectionBehaviors$foundation(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 308
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    return-void
.end method

.method public final setPreviousSelectionLayout$foundation(Landroidx/compose/foundation/text/selection/SelectionLayout;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 295
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    return-void
.end method

.method public final setSelection(Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/foundation/text/selection/Selection;

    .line 99
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 103
    :cond_0
    return-void
.end method

.method public final setShowToolbar$foundation(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 792
    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 793
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 794
    return-void
.end method

.method public final setTextToolbar(Landroidx/compose/ui/platform/TextToolbar;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/platform/TextToolbar;

    .line 142
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->textToolbar:Landroidx/compose/ui/platform/TextToolbar;

    return-void
.end method

.method public final setToolbarRequester$foundation(Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    .line 144
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;

    return-void
.end method

.method public final shouldPerformHaptics$foundation()Z
    .locals 14

    .line 1151
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSelectables$foundation()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1574
    .local v2, "$i$f$fastAny":I
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1575
    .local v4, "$i$f$fastForEach":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 1576
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1577
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1574
    .local v10, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v11, v9

    check-cast v11, Landroidx/compose/foundation/text/selection/Selectable;

    .local v11, "it":Landroidx/compose/foundation/text/selection/Selectable;
    const/4 v12, 0x0

    .line 1151
    .local v12, "$i$a$-fastAny-SelectionManager$shouldPerformHaptics$1":I
    invoke-interface {v11}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_0

    move v13, v7

    goto :goto_1

    :cond_0
    move v13, v1

    .line 1574
    .end local v11    # "it":Landroidx/compose/foundation/text/selection/Selectable;
    .end local v12    # "$i$a$-fastAny-SelectionManager$shouldPerformHaptics$1":I
    :goto_1
    if-eqz v13, :cond_1

    move v0, v7

    goto :goto_2

    .line 1577
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_1
    nop

    .line 1575
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1579
    .end local v5    # "index$iv$iv":I
    :cond_2
    nop

    .line 1580
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v0, v1

    .line 1151
    .end local v0    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_2
    if-eqz v0, :cond_3

    move v1, v7

    :cond_3
    return v1
.end method

.method public final updateSelection-jyLRC_s$foundation(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-previousHandlePosition$0"    # J
    .param p5, "isStartHandle"    # Z
    .param p6, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 1091
    if-eqz p5, :cond_0

    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setDraggingHandle(Landroidx/compose/foundation/text/Handle;)V

    .line 1092
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setCurrentDragPosition-_kEHs6E(Landroidx/compose/ui/geometry/Offset;)V

    .line 1095
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelectionLayout-Wko1d7g(JJZ)Landroidx/compose/foundation/text/selection/SelectionLayout;

    move-result-object v0

    move v1, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-position$0":J
    .end local p3    # "$v$c$androidx-compose-ui-geometry-Offset$-previousHandlePosition$0":J
    .end local p5    # "isStartHandle":Z
    .local v1, "isStartHandle":Z
    .local p2, "$v$c$androidx-compose-ui-geometry-Offset$-position$0":J
    .local p4, "$v$c$androidx-compose-ui-geometry-Offset$-previousHandlePosition$0":J
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1094
    :cond_1
    nop

    .line 1096
    .local v0, "selectionLayout":Landroidx/compose/foundation/text/selection/SelectionLayout;
    iget-object v3, p1, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    invoke-interface {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionLayout;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1097
    return v2

    .line 1100
    :cond_2
    invoke-interface {p6, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->adjust(Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v3

    .line 1101
    .local v3, "newSelection":Landroidx/compose/foundation/text/selection/Selection;
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1102
    invoke-direct {p0, v0, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionChanged(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/Selection;)V

    .line 1103
    iput-boolean v2, p1, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    .line 1105
    :cond_3
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 1106
    const/4 v2, 0x1

    return v2
.end method

.method public final updateSelection-qNKwrvQ$foundation(Landroidx/compose/ui/geometry/Offset;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 8
    .param p1, "newPosition"    # Landroidx/compose/ui/geometry/Offset;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-previousPosition$0"    # J
    .param p4, "isStartHandle"    # Z
    .param p5, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 1058
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1059
    :cond_0
    nop

    .line 1060
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    .line 1061
    nop

    .line 1062
    nop

    .line 1063
    nop

    .line 1059
    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    .end local p2    # "$v$c$androidx-compose-ui-geometry-Offset$-previousPosition$0":J
    .end local p4    # "isStartHandle":Z
    .end local p5    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-previousPosition$0":J
    .local v6, "isStartHandle":Z
    .local v7, "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-jyLRC_s$foundation(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result p2

    return p2
.end method
