.class public final Landroidx/compose/ui/node/LayoutNode;
.super Ljava/lang/Object;
.source "LayoutNode.kt"

# interfaces
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;
.implements Landroidx/compose/ui/layout/Remeasurement;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/layout/LayoutInfo;
.implements Landroidx/compose/ui/semantics/SemanticsInfo;
.implements Landroidx/compose/ui/node/ComposeUiNode;
.implements Landroidx/compose/ui/node/InteroperableComposeUiNode;
.implements Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNode$Companion;,
        Landroidx/compose/ui/node/LayoutNode$LayoutState;,
        Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;,
        Landroidx/compose/ui/node/LayoutNode$UsageByParent;,
        Landroidx/compose/ui/node/LayoutNode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVectorWithMutationTracking.kt\nandroidx/compose/ui/node/MutableVectorWithMutationTracking\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 6 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 7 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 8 OwnerSnapshotObserver.kt\nandroidx/compose/ui/node/OwnerSnapshotObserver\n+ 9 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 10 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 11 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 12 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 13 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNodeKt\n+ 14 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n*L\n1#1,1610:1\n1378#1,7:1617\n1378#1,7:1707\n1218#1,2:1715\n1220#1,2:1726\n211#1:1730\n1368#1,7:1965\n211#1:2178\n211#1:2187\n211#1:2196\n1378#1,7:2210\n1107#2:1611\n1085#2,2:1612\n1107#2:1614\n1085#2,2:1615\n1107#2:1625\n1085#2,2:1626\n1107#2:1783\n1085#2,2:1784\n1107#2:1845\n1085#2,2:1846\n1107#2:1935\n1085#2,2:1936\n1107#2:2004\n1085#2,2:2005\n1107#2:2082\n1085#2,2:2083\n1107#2:2147\n1085#2,2:2148\n48#3:1624\n46#3:1629\n50#3:1663\n30#3:1665\n50#3:1666\n46#3:1668\n46#3:1692\n46#3:1717\n1#4:1628\n424#5,5:1630\n144#5:1635\n429#5,3:1636\n424#5,8:1639\n436#5,8:1647\n472#5:1664\n472#5:1667\n424#5,8:1669\n424#5,8:1693\n424#5,8:1718\n144#5:1729\n424#5,8:1731\n424#5,8:2034\n424#5,8:2042\n424#5,8:2112\n424#5,8:2179\n424#5,8:2188\n424#5,8:2197\n57#6,4:1655\n103#6,4:1659\n57#6,4:1682\n57#6,4:1686\n78#6,5:1702\n78#6,5:1875\n103#6,4:1880\n103#6,4:1884\n57#6,4:1898\n103#6,4:2205\n92#7:1677\n92#7:1690\n116#7:1691\n92#7:1701\n92#7:1714\n92#7:1728\n96#7:1751\n140#7:1813\n96#7:1888\n120#7:1889\n96#7:1890\n120#7:1891\n116#7:1892\n112#7:1902\n112#7:1919\n84#7:1972\n84#7:2050\n164#7:2120\n92#7:2209\n125#8:1678\n138#8,2:1679\n126#8:1681\n654#9,6:1739\n654#9,6:1745\n633#9,6:1752\n654#9,3:1758\n639#9,2:1761\n642#9,2:1806\n657#9,3:1808\n644#9:1811\n634#9:1812\n633#9,6:1814\n654#9,3:1820\n639#9,2:1823\n642#9,2:1868\n657#9,3:1870\n644#9:1873\n634#9:1874\n633#9,6:1903\n654#9,3:1909\n639#9,2:1912\n642#9,2:1958\n657#9,3:1960\n644#9:1963\n634#9:1964\n633#9,6:1973\n654#9,3:1979\n639#9,2:1982\n642#9,2:2027\n657#9,3:2029\n644#9:2032\n634#9:2033\n633#9,6:2051\n654#9,3:2057\n639#9,2:2060\n642#9,2:2105\n657#9,3:2107\n644#9:2110\n634#9:2111\n556#10,6:1763\n566#10,2:1770\n568#10,8:1775\n576#10,9:1786\n585#10,8:1798\n556#10,6:1825\n566#10,2:1832\n568#10,8:1837\n576#10,9:1848\n585#10,8:1860\n556#10,5:1914\n561#10:1920\n566#10,2:1922\n568#10,8:1927\n576#10,9:1938\n585#10,8:1950\n556#10,6:1984\n566#10,2:1991\n568#10,8:1996\n576#10,9:2007\n585#10,8:2019\n556#10,6:2062\n566#10,2:2069\n568#10,8:2074\n576#10,9:2085\n585#10,8:2097\n556#10,6:2127\n566#10,2:2134\n568#10,8:2139\n576#10,9:2150\n585#10,8:2162\n247#11:1769\n247#11:1831\n247#11:1921\n247#11:1990\n247#11:2068\n247#11:2133\n240#12,3:1772\n243#12,3:1795\n240#12,3:1834\n243#12,3:1857\n240#12,3:1924\n243#12,3:1947\n240#12,3:1993\n243#12,3:2016\n240#12,3:2071\n243#12,3:2094\n240#12,3:2136\n243#12,3:2159\n1590#13,5:1893\n121#14:2121\n110#14,5:2122\n115#14,8:2170\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n*L\n124#1:1617,7\n599#1:1707,7\n607#1:1715,2\n607#1:1726,2\n686#1:1730\n1257#1:1965,7\n1400#1:2178\n1421#1:2187\n1433#1:2196\n1504#1:2210,7\n143#1:1611\n143#1:1612,2\n635#1:1614\n635#1:1615,2\n157#1:1625\n157#1:1626,2\n788#1:1783\n788#1:1784,2\n798#1:1845\n798#1:1846,2\n1244#1:1935\n1244#1:1936,2\n1326#1:2004\n1326#1:2005,2\n1340#1:2082\n1340#1:2083,2\n1363#1:2147\n1363#1:2148,2\n147#1:1624\n159#1:1629\n346#1:1663\n356#1:1665\n357#1:1666\n382#1:1668\n559#1:1692\n607#1:1717\n159#1:1630,5\n161#1:1635\n159#1:1636,3\n211#1:1639,8\n214#1:1647,8\n346#1:1664\n357#1:1667\n382#1:1669,8\n559#1:1693,8\n607#1:1718,8\n650#1:1729\n686#1:1731,8\n1328#1:2034,8\n1333#1:2042,8\n1341#1:2112,8\n1400#1:2179,8\n1421#1:2188,8\n1433#1:2197,8\n295#1:1655,4\n342#1:1659,4\n507#1:1682,4\n510#1:1686,4\n587#1:1702,5\n927#1:1875,5\n956#1:1880,4\n959#1:1884,4\n1158#1:1898,4\n1451#1:2205,4\n468#1:1677\n538#1:1690\n551#1:1691\n572#1:1701\n603#1:1714\n623#1:1728\n788#1:1751\n798#1:1813\n971#1:1888\n972#1:1889\n975#1:1890\n976#1:1891\n978#1:1892\n1244#1:1902\n1245#1:1919\n1326#1:1972\n1340#1:2050\n1363#1:2120\n1473#1:2209\n484#1:1678\n484#1:1679,2\n484#1:1681\n768#1:1739,6\n779#1:1745,6\n788#1:1752,6\n788#1:1758,3\n788#1:1761,2\n788#1:1806,2\n788#1:1808,3\n788#1:1811\n788#1:1812\n798#1:1814,6\n798#1:1820,3\n798#1:1823,2\n798#1:1868,2\n798#1:1870,3\n798#1:1873\n798#1:1874\n1244#1:1903,6\n1244#1:1909,3\n1244#1:1912,2\n1244#1:1958,2\n1244#1:1960,3\n1244#1:1963\n1244#1:1964\n1326#1:1973,6\n1326#1:1979,3\n1326#1:1982,2\n1326#1:2027,2\n1326#1:2029,3\n1326#1:2032\n1326#1:2033\n1340#1:2051,6\n1340#1:2057,3\n1340#1:2060,2\n1340#1:2105,2\n1340#1:2107,3\n1340#1:2110\n1340#1:2111\n788#1:1763,6\n788#1:1770,2\n788#1:1775,8\n788#1:1786,9\n788#1:1798,8\n798#1:1825,6\n798#1:1832,2\n798#1:1837,8\n798#1:1848,9\n798#1:1860,8\n1244#1:1914,5\n1244#1:1920\n1244#1:1922,2\n1244#1:1927,8\n1244#1:1938,9\n1244#1:1950,8\n1326#1:1984,6\n1326#1:1991,2\n1326#1:1996,8\n1326#1:2007,9\n1326#1:2019,8\n1340#1:2062,6\n1340#1:2069,2\n1340#1:2074,8\n1340#1:2085,9\n1340#1:2097,8\n1363#1:2127,6\n1363#1:2134,2\n1363#1:2139,8\n1363#1:2150,9\n1363#1:2162,8\n788#1:1769\n798#1:1831\n1244#1:1921\n1326#1:1990\n1340#1:2068\n1363#1:2133\n788#1:1772,3\n788#1:1795,3\n798#1:1834,3\n798#1:1857,3\n1244#1:1924,3\n1244#1:1947,3\n1326#1:1993,3\n1326#1:2016,3\n1340#1:2071,3\n1340#1:2094,3\n1363#1:2136,3\n1363#1:2159,3\n1061#1:1893,5\n1363#1:2121\n1363#1:2122,5\n1363#1:2170,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0001\u0018\u0000 \u00a6\u00032\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008:\u0008\u00a5\u0003\u00a6\u0003\u00a7\u0003\u00a8\u0003B\u001b\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010C\u001a\u00020DH\u0002J\u0008\u0010K\u001a\u00020DH\u0002J\r\u0010O\u001a\u00020DH\u0000\u00a2\u0006\u0002\u0008PJ\u001d\u0010Q\u001a\u00020D2\u0012\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020D0SH\u0086\u0008J#\u0010T\u001a\u00020D2\u0018\u0010R\u001a\u0014\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020D0UH\u0086\u0008J\u0015\u0010h\u001a\n\u0018\u00010ij\u0004\u0018\u0001`jH\u0017\u00a2\u0006\u0002\u0010kJ\u001e\u0010}\u001a\u00020D2\u0006\u0010~\u001a\u00020\u000c2\u0006\u0010\u007f\u001a\u00020\u0000H\u0000\u00a2\u0006\u0003\u0008\u0080\u0001J\u0012\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0006\u0010\u007f\u001a\u00020\u0000H\u0002J\u000f\u0010\u0083\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0084\u0001J \u0010\u0085\u0001\u001a\u00020D2\u0006\u0010~\u001a\u00020\u000c2\u0007\u0010\u0086\u0001\u001a\u00020\u000cH\u0000\u00a2\u0006\u0003\u0008\u0087\u0001J\u000f\u0010\u0088\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0089\u0001J\u0012\u0010\u008a\u0001\u001a\u00020D2\u0007\u0010\u008b\u0001\u001a\u00020\u0000H\u0002J*\u0010\u008c\u0001\u001a\u00020D2\u0007\u0010\u008d\u0001\u001a\u00020\u000c2\u0007\u0010\u008e\u0001\u001a\u00020\u000c2\u0007\u0010\u0086\u0001\u001a\u00020\u000cH\u0000\u00a2\u0006\u0003\u0008\u008f\u0001J\t\u0010\u0090\u0001\u001a\u00020\nH\u0016J\u000f\u0010\u0094\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0095\u0001J\u000f\u0010\u0096\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0097\u0001J\n\u0010\u009e\u0001\u001a\u00030\u0099\u0001H\u0002J\u0017\u0010\u009f\u0001\u001a\u00020D2\u0006\u0010]\u001a\u00020\\H\u0000\u00a2\u0006\u0003\u0008\u00a0\u0001J\u000f\u0010\u00a1\u0001\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00a2\u0001J\n\u0010\u00aa\u0001\u001a\u00030\u0082\u0001H\u0016J\u0014\u0010\u00ad\u0001\u001a\u00030\u0082\u00012\u0008\u0008\u0002\u0010m\u001a\u00020\u000cH\u0002J\n\u0010\u00b6\u0001\u001a\u00030\u00b5\u0001H\u0002J\u0010\u0010\u00b7\u0001\u001a\u00020\u000c2\u0007\u0010\u00b8\u0001\u001a\u00020\u000cJ\u0010\u0010\u00b9\u0001\u001a\u00020\u000c2\u0007\u0010\u00ba\u0001\u001a\u00020\u000cJ\u0010\u0010\u00bb\u0001\u001a\u00020\u000c2\u0007\u0010\u00b8\u0001\u001a\u00020\u000cJ\u0010\u0010\u00bc\u0001\u001a\u00020\u000c2\u0007\u0010\u00ba\u0001\u001a\u00020\u000cJ\u0010\u0010\u00bd\u0001\u001a\u00020\u000c2\u0007\u0010\u00b8\u0001\u001a\u00020\u000cJ\u0010\u0010\u00be\u0001\u001a\u00020\u000c2\u0007\u0010\u00ba\u0001\u001a\u00020\u000cJ\u0010\u0010\u00bf\u0001\u001a\u00020\u000c2\u0007\u0010\u00b8\u0001\u001a\u00020\u000cJ\u0010\u0010\u00c0\u0001\u001a\u00020\u000c2\u0007\u0010\u00ba\u0001\u001a\u00020\u000cJ\u0012\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u0001J\t\u0010\u00e1\u0001\u001a\u00020DH\u0002J\u000f\u0010\u009b\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u009c\u0002J\u0013\u0010\u00a7\u0002\u001a\u00020D2\u0008\u0010\u00a2\u0002\u001a\u00030\u009e\u0002H\u0002J\t\u0010\u00a8\u0002\u001a\u00020DH\u0002J\u000f\u0010\u00a9\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00aa\u0002J!\u0010\u00bd\u0002\u001a\u00020D2\u0007\u0010\u00be\u0002\u001a\u00020\u000c2\u0007\u0010\u00bf\u0002\u001a\u00020\u000cH\u0000\u00a2\u0006\u0003\u0008\u00c0\u0002J\u000f\u0010\u00c1\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00c2\u0002J\u000f\u0010\u00c3\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00c4\u0002J%\u0010\u00c5\u0002\u001a\u00020D2\u0008\u0010\u00c6\u0002\u001a\u00030\u00c7\u00022\n\u0010\u00c8\u0002\u001a\u0005\u0018\u00010\u00c9\u0002H\u0000\u00a2\u0006\u0003\u0008\u00ca\u0002J=\u0010\u00cb\u0002\u001a\u00020D2\u0008\u0010\u00cc\u0002\u001a\u00030\u00cd\u00022\u0008\u0010\u00ce\u0002\u001a\u00030\u00cf\u00022\n\u0008\u0002\u0010\u00d0\u0002\u001a\u00030\u00d1\u00022\t\u0008\u0002\u0010\u00d2\u0002\u001a\u00020\nH\u0000\u00a2\u0006\u0006\u0008\u00d3\u0002\u0010\u00d4\u0002J=\u0010\u00d5\u0002\u001a\u00020D2\u0008\u0010\u00cc\u0002\u001a\u00030\u00cd\u00022\u0008\u0010\u00d6\u0002\u001a\u00030\u00cf\u00022\n\u0008\u0002\u0010\u00d0\u0002\u001a\u00030\u00d1\u00022\t\u0008\u0002\u0010\u00d2\u0002\u001a\u00020\nH\u0000\u00a2\u0006\u0006\u0008\u00d7\u0002\u0010\u00d4\u0002J\u0018\u0010\u00d8\u0002\u001a\u00020D2\u0007\u0010\u00d9\u0002\u001a\u00020\u0000H\u0000\u00a2\u0006\u0003\u0008\u00da\u0002J0\u0010\u00db\u0002\u001a\u00020D2\t\u0008\u0002\u0010\u00dc\u0002\u001a\u00020\n2\t\u0008\u0002\u0010\u00dd\u0002\u001a\u00020\n2\t\u0008\u0002\u0010\u00de\u0002\u001a\u00020\nH\u0000\u00a2\u0006\u0003\u0008\u00df\u0002J0\u0010\u00e0\u0002\u001a\u00020D2\t\u0008\u0002\u0010\u00dc\u0002\u001a\u00020\n2\t\u0008\u0002\u0010\u00dd\u0002\u001a\u00020\n2\t\u0008\u0002\u0010\u00de\u0002\u001a\u00020\nH\u0000\u00a2\u0006\u0003\u0008\u00e1\u0002J\u000f\u0010\u00e2\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00e3\u0002J\u000f\u0010\u00e4\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00e5\u0002J\u000f\u0010\u00e6\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00e7\u0002J*\u0010|\u001a\u0003H\u00e8\u0002\"\u0005\u0008\u0000\u0010\u00e8\u00022\u000e\u0010R\u001a\n\u0012\u0005\u0012\u0003H\u00e8\u00020\u00e9\u0002H\u0080\u0008\u00a2\u0006\u0006\u0008\u00ea\u0002\u0010\u00eb\u0002J\u001a\u0010\u00ec\u0002\u001a\u00020D2\t\u0008\u0002\u0010\u00dc\u0002\u001a\u00020\nH\u0000\u00a2\u0006\u0003\u0008\u00ed\u0002J\u001a\u0010\u00ee\u0002\u001a\u00020D2\t\u0008\u0002\u0010\u00dc\u0002\u001a\u00020\nH\u0000\u00a2\u0006\u0003\u0008\u00ef\u0002J\u000f\u0010\u00f0\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00f1\u0002J\u0010\u0010\u00f2\u0002\u001a\t\u0012\u0005\u0012\u00030\u00f3\u00020>H\u0016J\u000f\u0010\u00f4\u0002\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u00f5\u0002J\u001d\u0010\u00f6\u0002\u001a\u00020\n2\u000c\u0008\u0002\u0010\u00f7\u0002\u001a\u0005\u0018\u00010\u00f8\u0002H\u0000\u00a2\u0006\u0003\u0008\u00f9\u0002J\u001d\u0010\u00fa\u0002\u001a\u00020\n2\u000c\u0008\u0002\u0010\u00f7\u0002\u001a\u0005\u0018\u00010\u00f8\u0002H\u0000\u00a2\u0006\u0003\u0008\u00fb\u0002J\u000f\u0010\u0084\u0003\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0085\u0003J\u000f\u0010\u0086\u0003\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0087\u0003J\u000f\u0010\u0088\u0003\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0089\u0003J\u0012\u0010\u008a\u0003\u001a\u00020D2\t\u0008\u0002\u0010\u008b\u0003\u001a\u00020\nJ\u0007\u0010\u008c\u0003\u001a\u00020DJ\u0012\u0010\u008d\u0003\u001a\u00020D2\t\u0008\u0002\u0010\u008b\u0003\u001a\u00020\nJ\u000f\u0010\u008e\u0003\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u008f\u0003J\t\u0010\u0090\u0003\u001a\u00020DH\u0016J\t\u0010\u0091\u0003\u001a\u00020DH\u0016J%\u0010\u0092\u0003\u001a\u00020D2\u0013\u0010R\u001a\u000f\u0012\u0005\u0012\u00030\u0093\u0003\u0012\u0004\u0012\u00020D0SH\u0080\u0008\u00a2\u0006\u0003\u0008\u0094\u0003J%\u0010\u0095\u0003\u001a\u00020D2\u0013\u0010R\u001a\u000f\u0012\u0005\u0012\u00030\u0082\u0002\u0012\u0004\u0012\u00020D0SH\u0080\u0008\u00a2\u0006\u0003\u0008\u0096\u0003J\u000f\u0010\u0097\u0003\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u0098\u0003J\t\u0010\u0099\u0003\u001a\u00020DH\u0002J\u000f\u0010\u009a\u0003\u001a\u00020DH\u0000\u00a2\u0006\u0003\u0008\u009b\u0003J\t\u0010\u00a2\u0003\u001a\u00020DH\u0016J\t\u0010\u00a3\u0003\u001a\u00020DH\u0016J\t\u0010\u00a4\u0003\u001a\u00020DH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001f\u001a\u00020 X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008!\u0010\u001b\"\u0004\u0008\"\u0010\u001dR\u001c\u0010#\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008%\u0010\u001dR\u001a\u0010&\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0015\"\u0004\u0008(\u0010\u0017R\u001a\u0010)\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0015\"\u0004\u0008+\u0010\u0017R\u001a\u0010,\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0010\"\u0004\u0008.\u0010\u0012R\u001a\u0010/\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0015\"\u0004\u00081\u0010\u0017R(\u00103\u001a\u0004\u0018\u00010\u00002\u0008\u00102\u001a\u0004\u0018\u00010\u0000@BX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u0013\u00108\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u000e\u0010:\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u00000<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00000>8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R\u0016\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020F0>8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010@R\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00020F0>8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010@R\u000e\u0010J\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00000B8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010NR\u001a\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00000>8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010@R\u0010\u0010X\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010Y\u001a\u0004\u0018\u00010\u00008@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Z\u00105R\"\u0010]\u001a\u0004\u0018\u00010\\2\u0008\u0010[\u001a\u0004\u0018\u00010\\@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010_R$\u0010`\u001a\n\u0018\u00010aj\u0004\u0018\u0001`bX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010g\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0014\u0010l\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\u0015R\u001a\u0010m\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010\u0010\"\u0004\u0008o\u0010\u0012R\u0014\u0010p\u001a\u00020q8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010sR\u0016\u0010t\u001a\u0004\u0018\u00010u8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010wR\u0014\u0010x\u001a\u00020y8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010{R\u000e\u0010|\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0091\u0001\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0092\u0001\u0010\u0015\"\u0005\u0008\u0093\u0001\u0010\u0017R\u0012\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0099\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u000f\u0010\u009d\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u00a3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00000BX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00a4\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u00a5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00000B8@X\u0081\u0004\u00a2\u0006\u000f\u0012\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\u001a\u0005\u0008\u00a8\u0001\u0010NR\u0016\u0010\u00a9\u0001\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a9\u0001\u0010\u0015R\u0016\u0010\u00ab\u0001\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ac\u0001\u0010\u0015R+\u0010\u00af\u0001\u001a\u00030\u00ae\u00012\u0007\u0010[\u001a\u00030\u00ae\u0001@VX\u0096\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001\"\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u0012\u0010\u00b4\u0001\u001a\u0005\u0018\u00010\u00b5\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u00c2\u0001\u001a\u00030\u00c1\u00012\u0007\u0010[\u001a\u00030\u00c1\u0001@VX\u0096\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\"\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R+\u0010\u00c8\u0001\u001a\u00030\u00c7\u00012\u0007\u0010[\u001a\u00030\u00c7\u0001@VX\u0096\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001\"\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R+\u0010\u00ce\u0001\u001a\u00030\u00cd\u00012\u0007\u0010[\u001a\u00030\u00cd\u0001@VX\u0096\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001\"\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R+\u0010\u00d4\u0001\u001a\u00030\u00d3\u00012\u0007\u0010[\u001a\u00030\u00d3\u0001@VX\u0096\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001\"\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001R\u001a\u0010\u00d9\u0001\u001a\u0005\u0018\u00010\u00da\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00db\u0001\u0010\u00dc\u0001R\u0016\u0010\u00ba\u0001\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00e2\u0001\u0010\u0010R\u0016\u0010\u00b8\u0001\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00e3\u0001\u0010\u0010R\u0016\u0010\u00e4\u0001\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00e5\u0001\u0010\u0015R\u0018\u0010\u00e6\u0001\u001a\u00030\u00e7\u00018@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u0016\u0010\u00ea\u0001\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ea\u0001\u0010\u0015R\u0013\u0010\u00eb\u0001\u001a\u00020\n8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00eb\u0001\u0010\u0015R\u0016\u0010\u00ec\u0001\u001a\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ed\u0001\u0010\u0010R\u0018\u0010\u00ee\u0001\u001a\u00030\u00ef\u00018@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001R\u0018\u0010\u00f2\u0001\u001a\u00030\u00ef\u00018@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00f3\u0001\u0010\u00f1\u0001R \u0010\u00f4\u0001\u001a\u00030\u00ef\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00f5\u0001\u0010\u00f1\u0001\"\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R\u0010\u0010\u00f8\u0001\u001a\u00030\u00ef\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R)\u0010\u00f9\u0001\u001a\u00020\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0000\u0012\u0006\u0008\u00fa\u0001\u0010\u00a7\u0001\u001a\u0005\u0008\u00fb\u0001\u0010\u0015\"\u0005\u0008\u00fc\u0001\u0010\u0017R\u0018\u0010\u00fd\u0001\u001a\u00030\u00fe\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00ff\u0001\u0010\u0080\u0002R\u0018\u0010\u0081\u0002\u001a\u00030\u0082\u00028@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0083\u0002\u0010\u0084\u0002R\u0018\u0010\u0085\u0002\u001a\u00030\u0086\u0002X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0087\u0002\u0010\u0088\u0002R\u0018\u0010\u0089\u0002\u001a\u00030\u0082\u00028@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008a\u0002\u0010\u0084\u0002R\u0018\u0010\u008b\u0002\u001a\u00030\u008c\u00028BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008d\u0002\u0010\u008e\u0002R\"\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u0090\u0002X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0091\u0002\u0010\u0092\u0002\"\u0006\u0008\u0093\u0002\u0010\u0094\u0002R\u0012\u0010\u0095\u0002\u001a\u0005\u0018\u00010\u0082\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0096\u0002\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0097\u0002\u0010\u0015\"\u0005\u0008\u0098\u0002\u0010\u0017R\u001a\u0010\u0099\u0002\u001a\u0005\u0018\u00010\u0082\u00028@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009a\u0002\u0010\u0084\u0002R\u0010\u0010\u009d\u0002\u001a\u00030\u009e\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u009f\u0002\u001a\u0005\u0018\u00010\u009e\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00a0\u0002\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a1\u0002\u0010\u0015R+\u0010\u00a2\u0002\u001a\u00030\u009e\u00022\u0007\u0010[\u001a\u00030\u009e\u00028V@VX\u0096\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00a3\u0002\u0010\u00a4\u0002\"\u0006\u0008\u00a5\u0002\u0010\u00a6\u0002R\u0018\u0010\u00ab\u0002\u001a\u00030\u00ac\u00028VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ad\u0002\u0010\u00ae\u0002R-\u0010\u00af\u0002\u001a\u0010\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020D\u0018\u00010SX\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00b0\u0002\u0010\u00b1\u0002\"\u0006\u0008\u00b2\u0002\u0010\u00b3\u0002R-\u0010\u00b4\u0002\u001a\u0010\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020D\u0018\u00010SX\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00b5\u0002\u0010\u00b1\u0002\"\u0006\u0008\u00b6\u0002\u0010\u00b3\u0002R\u001d\u0010\u00b7\u0002\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b8\u0002\u0010\u0015\"\u0005\u0008\u00b9\u0002\u0010\u0017R\'\u0010\u00ba\u0002\u001a\u00020\u000c2\u0006\u0010[\u001a\u00020\u000c@FX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bb\u0002\u0010\u0010\"\u0005\u0008\u00bc\u0002\u0010\u0012R\u0016\u0010\u00fc\u0002\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00fd\u0002\u0010\u0015R\u0016\u0010\u00fe\u0002\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ff\u0002\u0010\u0015R\u0016\u0010\u0080\u0003\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0003\u0010\u0015R\u0016\u0010\u0082\u0003\u001a\u00020\n8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0003\u0010\u0015R\u0019\u0010\u009c\u0003\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009d\u0003\u0010\u009e\u0003R\u001c\u0010\u009f\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050>8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0003\u0010@R \u0010\u00a1\u0003\u001a\u00020\n2\u0006\u0010[\u001a\u00020\n@RX\u0096\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u00a1\u0003\u0010\u0015\u00a8\u0006\u00a9\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/node/LayoutNode;",
        "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "Landroidx/compose/ui/layout/LayoutInfo;",
        "Landroidx/compose/ui/semantics/SemanticsInfo;",
        "Landroidx/compose/ui/node/ComposeUiNode;",
        "Landroidx/compose/ui/node/InteroperableComposeUiNode;",
        "Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;",
        "isVirtual",
        "",
        "semanticsId",
        "",
        "<init>",
        "(ZI)V",
        "getSemanticsId",
        "()I",
        "setSemanticsId",
        "(I)V",
        "hasPositionalLayerTransformationsInOffsetFromRoot",
        "getHasPositionalLayerTransformationsInOffsetFromRoot$ui",
        "()Z",
        "setHasPositionalLayerTransformationsInOffsetFromRoot$ui",
        "(Z)V",
        "lastOffsetFromParent",
        "Landroidx/compose/ui/unit/IntOffset;",
        "getLastOffsetFromParent-nOcc-ac$ui",
        "()J",
        "setLastOffsetFromParent--gyyYBs$ui",
        "(J)V",
        "J",
        "lastSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getLastSize-YbymL2g$ui",
        "setLastSize-ozmzZPI$ui",
        "outerToInnerOffset",
        "getOuterToInnerOffset-nOcc-ac$ui",
        "setOuterToInnerOffset--gyyYBs$ui",
        "outerToInnerOffsetDirty",
        "getOuterToInnerOffsetDirty$ui",
        "setOuterToInnerOffsetDirty$ui",
        "addedToRectList",
        "getAddedToRectList$ui",
        "setAddedToRectList$ui",
        "compositeKeyHash",
        "getCompositeKeyHash",
        "setCompositeKeyHash",
        "isVirtualLookaheadRoot",
        "isVirtualLookaheadRoot$ui",
        "setVirtualLookaheadRoot$ui",
        "newRoot",
        "lookaheadRoot",
        "getLookaheadRoot$ui",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "setLookaheadRoot",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "isPlacedInLookahead",
        "()Ljava/lang/Boolean;",
        "virtualChildrenCount",
        "_foldedChildren",
        "Landroidx/compose/ui/node/MutableVectorWithMutationTracking;",
        "foldedChildren",
        "",
        "getFoldedChildren$ui",
        "()Ljava/util/List;",
        "_unfoldedChildren",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "recreateUnfoldedChildrenIfDirty",
        "",
        "childMeasurables",
        "Landroidx/compose/ui/layout/Measurable;",
        "getChildMeasurables$ui",
        "childLookaheadMeasurables",
        "getChildLookaheadMeasurables$ui",
        "unfoldedVirtualChildrenListDirty",
        "invalidateUnfoldedVirtualChildren",
        "_children",
        "get_children$ui",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "updateChildrenIfDirty",
        "updateChildrenIfDirty$ui",
        "forEachChild",
        "block",
        "Lkotlin/Function1;",
        "forEachChildIndexed",
        "Lkotlin/Function2;",
        "children",
        "getChildren$ui",
        "_foldedParent",
        "parent",
        "getParent$ui",
        "value",
        "Landroidx/compose/ui/node/Owner;",
        "owner",
        "getOwner$ui",
        "()Landroidx/compose/ui/node/Owner;",
        "interopViewFactoryHolder",
        "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "Landroidx/compose/ui/viewinterop/InteropViewFactoryHolder;",
        "getInteropViewFactoryHolder$ui",
        "()Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "setInteropViewFactoryHolder$ui",
        "(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V",
        "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "getInteropView",
        "Landroid/view/View;",
        "Landroidx/compose/ui/viewinterop/InteropView;",
        "()Landroid/view/View;",
        "isAttached",
        "depth",
        "getDepth$ui",
        "setDepth$ui",
        "layoutState",
        "Landroidx/compose/ui/node/LayoutNode$LayoutState;",
        "getLayoutState$ui",
        "()Landroidx/compose/ui/node/LayoutNode$LayoutState;",
        "lookaheadPassDelegate",
        "Landroidx/compose/ui/node/LookaheadPassDelegate;",
        "getLookaheadPassDelegate$ui",
        "()Landroidx/compose/ui/node/LookaheadPassDelegate;",
        "measurePassDelegate",
        "Landroidx/compose/ui/node/MeasurePassDelegate;",
        "getMeasurePassDelegate$ui",
        "()Landroidx/compose/ui/node/MeasurePassDelegate;",
        "ignoreRemeasureRequests",
        "insertAt",
        "index",
        "instance",
        "insertAt$ui",
        "exceptionMessageForParentingOrOwnership",
        "",
        "onZSortedChildrenInvalidated",
        "onZSortedChildrenInvalidated$ui",
        "removeAt",
        "count",
        "removeAt$ui",
        "removeAll",
        "removeAll$ui",
        "onChildRemoved",
        "child",
        "move",
        "from",
        "to",
        "move$ui",
        "isTransparent",
        "isSemanticsInvalidated",
        "isSemanticsInvalidated$ui",
        "setSemanticsInvalidated$ui",
        "requestAutofill",
        "requestAutofill$ui",
        "invalidateSemantics",
        "invalidateSemantics$ui",
        "_semanticsConfiguration",
        "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "semanticsConfiguration",
        "getSemanticsConfiguration",
        "()Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "isCurrentlyCalculatingSemanticsConfiguration",
        "calculateSemanticsConfiguration",
        "attach",
        "attach$ui",
        "detach",
        "detach$ui",
        "_zSortedChildren",
        "zSortedChildrenInvalidated",
        "zSortedChildren",
        "getZSortedChildren$annotations",
        "()V",
        "getZSortedChildren",
        "isValidOwnerScope",
        "toString",
        "hasFixedInnerContentConstraints",
        "getHasFixedInnerContentConstraints$ui",
        "debugTreeToString",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "measurePolicy",
        "getMeasurePolicy",
        "()Landroidx/compose/ui/layout/MeasurePolicy;",
        "setMeasurePolicy",
        "(Landroidx/compose/ui/layout/MeasurePolicy;)V",
        "intrinsicsPolicy",
        "Landroidx/compose/ui/node/IntrinsicsPolicy;",
        "getOrCreateIntrinsicsPolicy",
        "minLookaheadIntrinsicWidth",
        "height",
        "minLookaheadIntrinsicHeight",
        "width",
        "maxLookaheadIntrinsicWidth",
        "maxLookaheadIntrinsicHeight",
        "minIntrinsicWidth",
        "minIntrinsicHeight",
        "maxIntrinsicWidth",
        "maxIntrinsicHeight",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity",
        "(Landroidx/compose/ui/unit/Density;)V",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setLayoutDirection",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "viewConfiguration",
        "getViewConfiguration",
        "()Landroidx/compose/ui/platform/ViewConfiguration;",
        "setViewConfiguration",
        "(Landroidx/compose/ui/platform/ViewConfiguration;)V",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "compositionLocalMap",
        "getCompositionLocalMap",
        "()Landroidx/compose/runtime/CompositionLocalMap;",
        "setCompositionLocalMap",
        "(Landroidx/compose/runtime/CompositionLocalMap;)V",
        "traceContext",
        "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
        "getTraceContext",
        "()Landroidx/compose/runtime/tooling/CompositionErrorContext;",
        "rethrowWithComposeStackTrace",
        "",
        "e",
        "",
        "onDensityOrLayoutDirectionChanged",
        "getWidth",
        "getHeight",
        "alignmentLinesRequired",
        "getAlignmentLinesRequired$ui",
        "mDrawScope",
        "Landroidx/compose/ui/node/LayoutNodeDrawScope;",
        "getMDrawScope$ui",
        "()Landroidx/compose/ui/node/LayoutNodeDrawScope;",
        "isPlaced",
        "isPlacedByParent",
        "placeOrder",
        "getPlaceOrder$ui",
        "measuredByParent",
        "Landroidx/compose/ui/node/LayoutNode$UsageByParent;",
        "getMeasuredByParent$ui",
        "()Landroidx/compose/ui/node/LayoutNode$UsageByParent;",
        "measuredByParentInLookahead",
        "getMeasuredByParentInLookahead$ui",
        "intrinsicsUsageByParent",
        "getIntrinsicsUsageByParent$ui",
        "setIntrinsicsUsageByParent$ui",
        "(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V",
        "previousIntrinsicsUsageByParent",
        "canMultiMeasure",
        "getCanMultiMeasure$ui$annotations",
        "getCanMultiMeasure$ui",
        "setCanMultiMeasure$ui",
        "nodes",
        "Landroidx/compose/ui/node/NodeChain;",
        "getNodes$ui",
        "()Landroidx/compose/ui/node/NodeChain;",
        "innerCoordinator",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "getInnerCoordinator$ui",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "layoutDelegate",
        "Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;",
        "getLayoutDelegate$ui",
        "()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;",
        "outerCoordinator",
        "getOuterCoordinator$ui",
        "zIndex",
        "",
        "getZIndex",
        "()F",
        "subcompositionsState",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;",
        "getSubcompositionsState$ui",
        "()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;",
        "setSubcompositionsState$ui",
        "(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V",
        "_innerLayerCoordinator",
        "innerLayerCoordinatorIsDirty",
        "getInnerLayerCoordinatorIsDirty$ui",
        "setInnerLayerCoordinatorIsDirty$ui",
        "innerLayerCoordinator",
        "getInnerLayerCoordinator$ui",
        "invalidateLayer",
        "invalidateLayer$ui",
        "_modifier",
        "Landroidx/compose/ui/Modifier;",
        "pendingModifier",
        "applyingModifierOnAttach",
        "getApplyingModifierOnAttach$ui",
        "modifier",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "setModifier",
        "(Landroidx/compose/ui/Modifier;)V",
        "applyModifier",
        "resetModifierState",
        "invalidateParentData",
        "invalidateParentData$ui",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "onAttach",
        "getOnAttach$ui",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnAttach$ui",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onDetach",
        "getOnDetach$ui",
        "setOnDetach$ui",
        "needsOnGloballyPositionedDispatch",
        "getNeedsOnGloballyPositionedDispatch$ui",
        "setNeedsOnGloballyPositionedDispatch$ui",
        "globallyPositionedObservers",
        "getGloballyPositionedObservers",
        "setGloballyPositionedObservers",
        "place",
        "x",
        "y",
        "place$ui",
        "replace",
        "replace$ui",
        "lookaheadReplace",
        "lookaheadReplace$ui",
        "draw",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "graphicsLayer",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "draw$ui",
        "hitTest",
        "pointerPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "pointerType",
        "Landroidx/compose/ui/input/pointer/PointerType;",
        "isInLayer",
        "hitTest-6fMxITs$ui",
        "(JLandroidx/compose/ui/node/HitTestResult;IZ)V",
        "hitTestSemantics",
        "hitSemanticsEntities",
        "hitTestSemantics-6fMxITs$ui",
        "rescheduleRemeasureOrRelayout",
        "it",
        "rescheduleRemeasureOrRelayout$ui",
        "requestRemeasure",
        "forceRequest",
        "scheduleMeasureAndLayout",
        "invalidateIntrinsics",
        "requestRemeasure$ui",
        "requestLookaheadRemeasure",
        "requestLookaheadRemeasure$ui",
        "invalidateMeasurements",
        "invalidateMeasurements$ui",
        "invalidateOnPositioned",
        "invalidateOnPositioned$ui",
        "onCoordinatorPositionChanged",
        "onCoordinatorPositionChanged$ui",
        "T",
        "Lkotlin/Function0;",
        "ignoreRemeasureRequests$ui",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "requestRelayout",
        "requestRelayout$ui",
        "requestLookaheadRelayout",
        "requestLookaheadRelayout$ui",
        "dispatchOnPositionedCallbacks",
        "dispatchOnPositionedCallbacks$ui",
        "getModifierInfo",
        "Landroidx/compose/ui/layout/ModifierInfo;",
        "invalidateLayers",
        "invalidateLayers$ui",
        "lookaheadRemeasure",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "lookaheadRemeasure-_Sx5XlM$ui",
        "remeasure",
        "remeasure-_Sx5XlM$ui",
        "measurePending",
        "getMeasurePending$ui",
        "layoutPending",
        "getLayoutPending$ui",
        "lookaheadMeasurePending",
        "getLookaheadMeasurePending$ui",
        "lookaheadLayoutPending",
        "getLookaheadLayoutPending$ui",
        "markLayoutPending",
        "markLayoutPending$ui",
        "markMeasurePending",
        "markMeasurePending$ui",
        "markLookaheadLayoutPending",
        "markLookaheadLayoutPending$ui",
        "invalidateSubtree",
        "isRootOfInvalidation",
        "invalidateMeasurementForSubtree",
        "invalidateDrawForSubtree",
        "markLookaheadMeasurePending",
        "markLookaheadMeasurePending$ui",
        "forceRemeasure",
        "onLayoutComplete",
        "forEachCoordinator",
        "Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;",
        "forEachCoordinator$ui",
        "forEachCoordinatorIncludingInner",
        "forEachCoordinatorIncludingInner$ui",
        "clearSubtreeIntrinsicsUsage",
        "clearSubtreeIntrinsicsUsage$ui",
        "clearSubtreePlacementIntrinsicsUsage",
        "resetSubtreeIntrinsicsUsage",
        "resetSubtreeIntrinsicsUsage$ui",
        "parentInfo",
        "getParentInfo",
        "()Landroidx/compose/ui/semantics/SemanticsInfo;",
        "childrenInfo",
        "getChildrenInfo",
        "isDeactivated",
        "onReuse",
        "onDeactivate",
        "onRelease",
        "NoIntrinsicsMeasurePolicy",
        "Companion",
        "LayoutState",
        "UsageByParent",
        "ui"
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

.field public static final Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

.field private static final Constructor:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

.field private static final ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;

.field public static final NotPlacedPlaceOrder:I = 0x7fffffff

.field private static final ZComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/MutableVectorWithMutationTracking<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private _foldedParent:Landroidx/compose/ui/node/LayoutNode;

.field private _innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field private _modifier:Landroidx/compose/ui/Modifier;

.field private _semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

.field private _unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private final _zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private addedToRectList:Z

.field private canMultiMeasure:Z

.field private compositeKeyHash:I

.field private compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

.field private density:Landroidx/compose/ui/unit/Density;

.field private depth:I

.field private globallyPositionedObservers:I

.field private hasPositionalLayerTransformationsInOffsetFromRoot:Z

.field private ignoreRemeasureRequests:Z

.field private innerLayerCoordinatorIsDirty:Z

.field private interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

.field private intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

.field private intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field private isCurrentlyCalculatingSemanticsConfiguration:Z

.field private isDeactivated:Z

.field private isSemanticsInvalidated:Z

.field private final isVirtual:Z

.field private isVirtualLookaheadRoot:Z

.field private lastOffsetFromParent:J

.field private lastSize:J

.field private final layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

.field private measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

.field private needsOnGloballyPositionedDispatch:Z

.field private final nodes:Landroidx/compose/ui/node/NodeChain;

.field private onAttach:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onDetach:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private outerToInnerOffset:J

.field private outerToInnerOffsetDirty:Z

.field private owner:Landroidx/compose/ui/node/Owner;

.field private pendingModifier:Landroidx/compose/ui/Modifier;

.field private previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field private semanticsId:I

.field private subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field private unfoldedVirtualChildrenListDirty:Z

.field private viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

.field private virtualChildrenCount:I

.field private zSortedChildrenInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/LayoutNode;->$stable:I

    .line 1509
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;

    .line 1521
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->Constructor:Lkotlin/jvm/functions/Function0;

    .line 1528
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1547
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 8
    .param p1, "isVirtual"    # Z
    .param p2, "semanticsId"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    .line 90
    iput p2, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 103
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getMax-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->lastOffsetFromParent:J

    .line 104
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->lastSize:J

    .line 105
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getMax-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 143
    new-instance v1, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    const/4 v2, 0x0

    .line 1611
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1612
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv":I
    const/4 v4, 0x0

    .line 1613
    .local v4, "$i$f$MutableVector":I
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    new-array v6, v3, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1611
    .end local v3    # "capacity$iv$iv":I
    .end local v4    # "$i$f$MutableVector":I
    nop

    .line 143
    .end local v2    # "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v5, v2}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;-><init>(Landroidx/compose/runtime/collection/MutableVector;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 635
    const/4 v1, 0x0

    .line 1614
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1615
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv":I
    const/4 v3, 0x0

    .line 1616
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v4, v5, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1614
    .end local v2    # "capacity$iv$iv":I
    .end local v3    # "$i$f$MutableVector":I
    nop

    .line 635
    .end local v1    # "$i$f$mutableVectorOf":I
    iput-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .line 636
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 720
    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->ErrorMeasurePolicy:Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 762
    invoke-static {}, Landroidx/compose/ui/node/LayoutNodeKt;->access$getDefaultDensity$p()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 773
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 783
    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 792
    sget-object v1, Landroidx/compose/runtime/CompositionLocalMap;->Companion:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionLocalMap$Companion;->getEmpty()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

    .line 877
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 883
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 888
    new-instance v1, Landroidx/compose/ui/node/NodeChain;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 892
    new-instance v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 910
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    .line 947
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_modifier:Landroidx/compose/ui/Modifier;

    .line 79
    return-void
.end method

.method public synthetic constructor <init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 79
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 87
    const/4 p1, 0x0

    .line 79
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 90
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->generateSemanticsId()I

    move-result p2

    .line 79
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZI)V

    .line 91
    return-void
.end method

.method static final ZComparator$lambda$0(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I
    .locals 2
    .param p0, "node1"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "node2"    # Landroidx/compose/ui/node/LayoutNode;

    .line 1548
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getZIndex()F

    move-result v0

    invoke-direct {p1}, Landroidx/compose/ui/node/LayoutNode;->getZIndex()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1550
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    goto :goto_1

    .line 1552
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getZIndex()F

    move-result v0

    invoke-direct {p1}, Landroidx/compose/ui/node/LayoutNode;->getZIndex()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 1553
    :goto_1
    return v0
.end method

.method public static final synthetic access$getConstructor$cp()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 78
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->Constructor:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getDummyViewConfiguration$cp()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1

    .line 78
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->DummyViewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    return-object v0
.end method

.method public static final synthetic access$getZComparator$cp()Ljava/util/Comparator;
    .locals 1

    .line 78
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "<set-?>"    # Z

    .line 78
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    return-void
.end method

.method private final applyModifier(Landroidx/compose/ui/Modifier;)V
    .locals 7
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;

    .line 971
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v1, 0x0

    .line 1888
    .local v1, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v2, 0x10

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 971
    .end local v1    # "$i$f$getPointerInput-OLwlOKw":I
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v0

    .line 972
    .local v0, "hadPointerInput":Z
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v3, 0x0

    .line 1889
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 972
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v1

    .line 973
    .local v1, "hadFocusTarget":Z
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->_modifier:Landroidx/compose/ui/Modifier;

    .line 974
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/NodeChain;->updateFrom$ui(Landroidx/compose/ui/Modifier;)V

    .line 975
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v5, 0x0

    .line 1890
    .local v5, "$i$f$getPointerInput-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 975
    .end local v5    # "$i$f$getPointerInput-OLwlOKw":I
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v2

    .line 976
    .local v2, "hasPointerInput":Z
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v5, 0x0

    .line 1891
    .local v5, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 976
    .end local v5    # "$i$f$getFocusTarget-OLwlOKw":I
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v3

    .line 977
    .local v3, "hasFocusTarget":Z
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->updateParentData()V

    .line 978
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v5, 0x0

    .line 1892
    .local v5, "$i$f$getApproachMeasure-OLwlOKw":I
    const/16 v6, 0x200

    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 978
    .end local v5    # "$i$f$getApproachMeasure-OLwlOKw":I
    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 979
    invoke-direct {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    .line 982
    :cond_0
    if-ne v0, v2, :cond_1

    if-eq v1, v3, :cond_2

    .line 983
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v4

    invoke-virtual {v4, p0, v3, v2}, Landroidx/compose/ui/spatial/RectManager;->updateFlagsFor(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    .line 985
    :cond_2
    return-void
.end method

.method private final calculateSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 11

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    .line 483
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v0, "config":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 484
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    new-instance v2, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;

    invoke-direct {v2, p0, v0}, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;-><init>(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .local v2, "block$iv":Lkotlin/jvm/functions/Function0;
    move-object v3, p0

    .local v3, "node$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v4, 0x0

    .line 1678
    .local v4, "$i$f$observeSemanticsReads$ui":I
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/OwnerScope;

    .local v5, "target$iv$iv":Landroidx/compose/ui/node/OwnerScope;
    invoke-static {v1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getOnCommitAffectingSemantics$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .local v6, "onChanged$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v7, v2

    .local v7, "block$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v8, v1

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    const/4 v9, 0x0

    .line 1679
    .local v9, "$i$f$observeReads$ui":I
    invoke-static {v8}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v10

    invoke-virtual {v10, v5, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 1680
    nop

    .line 1681
    .end local v5    # "target$iv$iv":Landroidx/compose/ui/node/OwnerScope;
    .end local v6    # "onChanged$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "block$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .end local v9    # "$i$f$observeReads$ui":I
    nop

    .line 497
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .end local v2    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "node$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v4    # "$i$f$observeSemanticsReads$ui":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    .line 499
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object v1
.end method

.method private final clearSubtreePlacementIntrinsicsUsage()V
    .locals 11

    .line 1419
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1420
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1421
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 2187
    .local v1, "$i$f$forEachChild":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .local v2, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 2188
    .local v3, "$i$f$forEach":I
    const/4 v4, 0x0

    .line 2189
    .local v4, "i$iv$iv":I
    iget-object v5, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2190
    .local v5, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    .line 2191
    .local v6, "size$iv$iv":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 2192
    aget-object v7, v5, v4

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .local v7, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v8, 0x0

    .line 1422
    .local v8, "$i$a$-forEachChild-LayoutNode$clearSubtreePlacementIntrinsicsUsage$1":I
    iget-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v10, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v9, v10, :cond_0

    .line 1423
    invoke-direct {v7}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 1425
    :cond_0
    nop

    .line 2192
    .end local v7    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v8    # "$i$a$-forEachChild-LayoutNode$clearSubtreePlacementIntrinsicsUsage$1":I
    nop

    .line 2193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2195
    :cond_1
    nop

    .line 2187
    .end local v2    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "i$iv$iv":I
    .end local v5    # "content$iv$iv":[Ljava/lang/Object;
    .end local v6    # "size$iv$iv":I
    nop

    .line 1426
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$forEachChild":I
    return-void
.end method

.method private final debugTreeToString(I)Ljava/lang/String;
    .locals 11
    .param p1, "depth"    # I

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v0, "tree":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 680
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v1, "|-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v2, 0x0

    .line 1730
    .local v2, "$i$f$forEachChild":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 1731
    .local v4, "$i$f$forEach":I
    const/4 v5, 0x0

    .line 1732
    .local v5, "i$iv$iv":I
    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1733
    .local v6, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 1734
    .local v7, "size$iv$iv":I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 1735
    aget-object v8, v6, v5

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .local v8, "child":Landroidx/compose/ui/node/LayoutNode;
    const/4 v9, 0x0

    .line 686
    .local v9, "$i$a$-forEachChild-LayoutNode$debugTreeToString$1":I
    add-int/lit8 v10, p1, 0x1

    invoke-direct {v8, v10}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    .end local v8    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v9    # "$i$a$-forEachChild-LayoutNode$debugTreeToString$1":I
    nop

    .line 1736
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1738
    :cond_1
    nop

    .line 1730
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "i$iv$iv":I
    .end local v6    # "content$iv$iv":[Ljava/lang/Object;
    .end local v7    # "size$iv$iv":I
    nop

    .line 688
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v2    # "$i$f$forEachChild":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "treeString":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 691
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 694
    :cond_2
    return-object v1
.end method

.method static synthetic debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 677
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final exceptionMessageForParentingOrOwnership(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;
    .locals 5
    .param p1, "instance"    # Landroidx/compose/ui/node/LayoutNode;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot insert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because it already has a parent or an owner. This tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    nop

    .line 326
    const-string v4, " Other tree: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    iget-object v4, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v4, :cond_0

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 326
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    return-object v0
.end method

.method public static synthetic getCanMultiMeasure$ui$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Temporary API to support ConstraintLayout prototyping."
    .end annotation

    return-void
.end method

.method private final getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;
    .locals 3

    .line 737
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Landroidx/compose/ui/node/IntrinsicsPolicy;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/node/IntrinsicsPolicy;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/MeasurePolicy;)V

    move-object v1, v0

    .line 1628
    .local v1, "it":Landroidx/compose/ui/node/IntrinsicsPolicy;
    const/4 v2, 0x0

    .line 738
    .local v2, "$i$a$-also-LayoutNode$getOrCreateIntrinsicsPolicy$1":I
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 737
    .end local v1    # "it":Landroidx/compose/ui/node/IntrinsicsPolicy;
    .end local v2    # "$i$a$-also-LayoutNode$getOrCreateIntrinsicsPolicy$1":I
    :cond_0
    return-object v0
.end method

.method private final getTraceContext()Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .locals 2

    .line 809
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->getLocalCompositionErrorContext()Landroidx/compose/runtime/CompositionLocal;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/CompositionLocalMap;->get(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContext;

    return-object v0
.end method

.method private final getZIndex()F
    .locals 1

    .line 903
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getZIndex$ui()F

    move-result v0

    return v0
.end method

.method public static synthetic getZSortedChildren$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hitTest-6fMxITs$ui$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZILjava/lang/Object;)V
    .locals 6

    .line 1074
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1077
    sget-object p4, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    move-result p4

    move v4, p4

    goto :goto_0

    .line 1074
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 1078
    const/4 p5, 0x1

    move v5, p5

    goto :goto_1

    .line 1074
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNode;->hitTest-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void
.end method

.method public static synthetic hitTestSemantics-6fMxITs$ui$default(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZILjava/lang/Object;)V
    .locals 6

    .line 1091
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1094
    sget-object p4, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result p4

    move v4, p4

    goto :goto_0

    .line 1091
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 1095
    const/4 p5, 0x1

    move v5, p5

    goto :goto_1

    .line 1091
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNode;->hitTestSemantics-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void
.end method

.method public static synthetic invalidateDrawForSubtree$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1336
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateDrawForSubtree(Z)V

    return-void
.end method

.method public static synthetic invalidateSubtree$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1320
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateSubtree(Z)V

    return-void
.end method

.method private final invalidateUnfoldedVirtualChildren()V
    .locals 1

    .line 181
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    if-lez v0, :cond_0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    .line 184
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 188
    :cond_1
    return-void
.end method

.method public static synthetic lookaheadRemeasure-_Sx5XlM$ui$default(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;ILjava/lang/Object;)Z
    .locals 0

    .line 1261
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1262
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLastLookaheadConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    move-result-object p1

    .line 1261
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->lookaheadRemeasure-_Sx5XlM$ui(Landroidx/compose/ui/unit/Constraints;)Z

    move-result p0

    return p0
.end method

.method private final onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 11
    .param p1, "child"    # Landroidx/compose/ui/node/LayoutNode;

    .line 367
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getChildrenAccessingCoordinatesDuringPlacement()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getChildrenAccessingCoordinatesDuringPlacement()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setChildrenAccessingCoordinatesDuringPlacement(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->detach$ui()V

    .line 373
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 374
    iget v1, p1, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    if-lez v1, :cond_2

    .line 375
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->setGloballyPositionedObservers(I)V

    .line 378
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 380
    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v1, :cond_4

    .line 381
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 382
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v1, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    const/4 v2, 0x0

    .line 1668
    .local v2, "$i$f$forEach":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 1669
    .local v4, "$i$f$forEach":I
    const/4 v5, 0x0

    .line 1670
    .local v5, "i$iv$iv":I
    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1671
    .local v6, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 1672
    .local v7, "size$iv$iv":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 1673
    aget-object v8, v6, v5

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .local v8, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v9, 0x0

    .line 382
    .local v9, "$i$a$-forEach-LayoutNode$onChildRemoved$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 1673
    .end local v8    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v9    # "$i$a$-forEach-LayoutNode$onChildRemoved$1":I
    nop

    .line 1674
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1676
    :cond_3
    nop

    .line 1668
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "i$iv$iv":I
    .end local v6    # "content$iv$iv":[Ljava/lang/Object;
    .end local v7    # "size$iv$iv":I
    nop

    .line 384
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v2    # "$i$f$forEach":I
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 385
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui()V

    .line 386
    return-void
.end method

.method private final onDensityOrLayoutDirectionChanged()V
    .locals 1

    .line 818
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 820
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 822
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui()V

    .line 823
    return-void
.end method

.method private final recreateUnfoldedChildrenIfDirty()V
    .locals 14

    .line 154
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    if-eqz v0, :cond_3

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->unfoldedVirtualChildrenListDirty:Z

    .line 157
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1625
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1626
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv":I
    const/4 v3, 0x0

    .line 1627
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v4, v5, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1625
    .end local v2    # "capacity$iv$iv":I
    .end local v3    # "$i$f$MutableVector":I
    nop

    .line 157
    .end local v1    # "$i$f$mutableVectorOf":I
    move-object v0, v4

    .line 1628
    .local v0, "it":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$a$-also-LayoutNode$recreateUnfoldedChildrenIfDirty$unfoldedChildren$1":I
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    move-object v1, v4

    .line 156
    .end local v0    # "it":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$a$-also-LayoutNode$recreateUnfoldedChildrenIfDirty$unfoldedChildren$1":I
    :cond_0
    nop

    .line 158
    .local v1, "unfoldedChildren":Landroidx/compose/runtime/collection/MutableVector;
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 159
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v0, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    const/4 v2, 0x0

    .line 1629
    .local v2, "$i$f$forEach":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 1630
    .local v4, "$i$f$forEach":I
    const/4 v5, 0x0

    .line 1631
    .local v5, "i$iv$iv":I
    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1632
    .local v6, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 1633
    .local v7, "size$iv$iv":I
    :goto_0
    if-ge v5, v7, :cond_2

    .line 1634
    aget-object v8, v6, v5

    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .local v8, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v9, 0x0

    .line 160
    .local v9, "$i$a$-forEach-LayoutNode$recreateUnfoldedChildrenIfDirty$1":I
    iget-boolean v10, v8, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v10, :cond_1

    .line 161
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v10

    .local v10, "elements$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v11, v1

    .local v11, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 1635
    .local v12, "$i$f$addAll":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v13

    invoke-virtual {v11, v13, v10}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .end local v10    # "elements$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$addAll":I
    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_1
    nop

    .line 1634
    .end local v8    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v9    # "$i$a$-forEach-LayoutNode$recreateUnfoldedChildrenIfDirty$1":I
    nop

    .line 1636
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1638
    :cond_2
    nop

    .line 1629
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "i$iv$iv":I
    .end local v6    # "content$iv$iv":[Ljava/lang/Object;
    .end local v7    # "size$iv$iv":I
    nop

    .line 166
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v2    # "$i$f$forEach":I
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->markChildrenDirty()V

    .line 168
    .end local v1    # "unfoldedChildren":Landroidx/compose/runtime/collection/MutableVector;
    :cond_3
    return-void
.end method

.method public static synthetic remeasure-_Sx5XlM$ui$default(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;ILjava/lang/Object;)Z
    .locals 0

    .line 1274
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLastConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->remeasure-_Sx5XlM$ui(Landroidx/compose/ui/unit/Constraints;)Z

    move-result p0

    return p0
.end method

.method public static synthetic requestLookaheadRelayout$ui$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1231
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui(Z)V

    return-void
.end method

.method public static synthetic requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V
    .locals 1

    .line 1153
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1154
    const/4 p1, 0x0

    .line 1153
    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 1155
    move p2, v0

    .line 1153
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 1156
    move p3, v0

    .line 1153
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui(ZZZ)V

    return-void
.end method

.method public static synthetic requestRelayout$ui$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1225
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui(Z)V

    return-void
.end method

.method public static synthetic requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V
    .locals 1

    .line 1131
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1132
    const/4 p1, 0x0

    .line 1131
    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 1133
    move p2, v0

    .line 1131
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 1134
    move p3, v0

    .line 1131
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui(ZZZ)V

    return-void
.end method

.method private final resetModifierState()V
    .locals 1

    .line 988
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->resetState$ui()V

    .line 989
    return-void
.end method

.method private final setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 6
    .param p1, "newRoot"    # Landroidx/compose/ui/node/LayoutNode;

    .line 120
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 122
    nop

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 122
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->ensureLookaheadDelegateCreated$ui()V

    .line 124
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 1617
    .local v1, "$i$f$forEachCoordinatorIncludingInner$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 1618
    .local v2, "delegate$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    .line 1619
    .local v3, "final$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 1620
    move-object v4, v2

    .local v4, "it":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v5, 0x0

    .line 124
    .local v5, "$i$a$-forEachCoordinatorIncludingInner$ui-LayoutNode$lookaheadRoot$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->ensureLookaheadDelegateCreated()V

    .line 1620
    .end local v4    # "it":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "$i$a$-forEachCoordinatorIncludingInner$ui-LayoutNode$lookaheadRoot$1":I
    nop

    .line 1621
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_0

    .line 1623
    :cond_0
    nop

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$forEachCoordinatorIncludingInner$ui":I
    .end local v2    # "delegate$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "final$iv":Landroidx/compose/ui/node/NodeCoordinator;
    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->onRemovedFromLookaheadScope()V

    .line 132
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 134
    :cond_2
    return-void
.end method


# virtual methods
.method public final attach$ui(Landroidx/compose/ui/node/Owner;)V
    .locals 11
    .param p1, "owner"    # Landroidx/compose/ui/node/Owner;

    .line 507
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 1682
    .local v3, "$i$f$checkPrecondition":I
    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 1683
    const/4 v5, 0x0

    .line 508
    .local v5, "$i$a$-checkPrecondition-LayoutNode$attach$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot attach "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as it already is attached.  Tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0, v1, v2, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1683
    .end local v5    # "$i$a$-checkPrecondition-LayoutNode$attach$1":I
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1685
    :cond_1
    nop

    .line 510
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$checkPrecondition":I
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    goto :goto_1

    :cond_2
    move-object v0, v4

    :goto_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    .restart local v0    # "value$iv":Z
    :goto_3
    const/4 v3, 0x0

    .line 1686
    .restart local v3    # "$i$f$checkPrecondition":I
    if-nez v0, :cond_7

    .line 1687
    const/4 v5, 0x0

    .line 511
    .local v5, "$i$a$-checkPrecondition-LayoutNode$attach$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attaching to a different owner("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") than the parent\'s owner("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    goto :goto_4

    :cond_5
    move-object v7, v4

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "). This tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    invoke-static {p0, v1, v2, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 514
    nop

    .line 511
    const-string v7, " Parent tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 515
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v7, :cond_6

    invoke-static {v7, v1, v2, v4}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    move-object v7, v4

    .line 511
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    nop

    .line 1687
    .end local v5    # "$i$a$-checkPrecondition-LayoutNode$attach$2":I
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1689
    :cond_7
    nop

    .line 517
    .end local v0    # "value$iv":Z
    .end local v3    # "$i$f$checkPrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 518
    .local v0, "parent":Landroidx/compose/ui/node/LayoutNode;
    if-nez v0, :cond_8

    .line 519
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/MeasurePassDelegate;->setPlaced$ui(Z)V

    .line 522
    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, p0, v1, v5, v4}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged$default(Landroidx/compose/ui/spatial/RectManager;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 523
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadPassDelegate;->onAttachedToNullParent()V

    .line 527
    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object v3, v4

    :goto_6
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/NodeCoordinator;->setWrappedBy$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 529
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 530
    if-eqz v0, :cond_a

    iget v1, v0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    goto :goto_7

    :cond_a
    const/4 v1, -0x1

    :goto_7
    add-int/2addr v1, v2

    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 532
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    if-eqz v1, :cond_b

    .line 1628
    .local v1, "it":Landroidx/compose/ui/Modifier;
    const/4 v2, 0x0

    .line 532
    .local v2, "$i$a$-let-LayoutNode$attach$3":I
    invoke-direct {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->applyModifier(Landroidx/compose/ui/Modifier;)V

    .line 533
    .end local v1    # "it":Landroidx/compose/ui/Modifier;
    .end local v2    # "$i$a$-let-LayoutNode$attach$3":I
    :cond_b
    iput-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    .line 538
    sget-boolean v1, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    const/16 v2, 0x8

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v3, 0x0

    .line 1690
    .local v3, "$i$f$getSemantics-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 538
    .end local v3    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 539
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 541
    :cond_c
    invoke-interface {p1, p0}, Landroidx/compose/ui/node/Owner;->onPreAttach(Landroidx/compose/ui/node/LayoutNode;)V

    .line 545
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtualLookaheadRoot:Z

    if-eqz v1, :cond_d

    .line 546
    invoke-direct {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    goto :goto_8

    .line 550
    :cond_d
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_e

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-nez v1, :cond_f

    :cond_e
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    :cond_f
    invoke-direct {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    .line 551
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-nez v1, :cond_10

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v3, 0x0

    .line 1691
    .local v3, "$i$f$getApproachMeasure-OLwlOKw":I
    const/16 v4, 0x200

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 551
    .end local v3    # "$i$f$getApproachMeasure-OLwlOKw":I
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 553
    invoke-direct {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    .line 556
    :cond_10
    :goto_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_11

    .line 557
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->markAsAttached()V

    .line 559
    :cond_11
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v1, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    const/4 v3, 0x0

    .line 1692
    .local v3, "$i$f$forEach":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v5, 0x0

    .line 1693
    .local v5, "$i$f$forEach":I
    const/4 v6, 0x0

    .line 1694
    .local v6, "i$iv$iv":I
    iget-object v7, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1695
    .local v7, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    .line 1696
    .local v8, "size$iv$iv":I
    :goto_9
    if-ge v6, v8, :cond_12

    .line 1697
    aget-object v9, v7, v6

    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .local v9, "child":Landroidx/compose/ui/node/LayoutNode;
    const/4 v10, 0x0

    .line 559
    .local v10, "$i$a$-forEach-LayoutNode$attach$4":I
    invoke-virtual {v9, p1}, Landroidx/compose/ui/node/LayoutNode;->attach$ui(Landroidx/compose/ui/node/Owner;)V

    .line 1697
    .end local v9    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v10    # "$i$a$-forEach-LayoutNode$attach$4":I
    nop

    .line 1698
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1700
    :cond_12
    nop

    .line 1692
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "$i$f$forEach":I
    .end local v6    # "i$iv$iv":I
    .end local v7    # "content$iv$iv":[Ljava/lang/Object;
    .end local v8    # "size$iv$iv":I
    nop

    .line 560
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v3    # "$i$f$forEach":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_13

    .line 561
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->runAttachLifecycle()V

    .line 564
    :cond_13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 565
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 567
    :cond_14
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_15
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->updateParentData()V

    .line 571
    sget-boolean v1, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-eqz v1, :cond_16

    .line 572
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v3, 0x0

    .line 1701
    .local v3, "$i$f$getSemantics-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 572
    .end local v3    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 573
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 577
    :cond_16
    invoke-interface {p1, p0}, Landroidx/compose/ui/node/Owner;->onPostAttach(Landroidx/compose/ui/node/LayoutNode;)V

    .line 578
    return-void
.end method

.method public final clearSubtreeIntrinsicsUsage$ui()V
    .locals 11

    .line 1398
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1399
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1400
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 2178
    .local v1, "$i$f$forEachChild":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .local v2, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 2179
    .local v3, "$i$f$forEach":I
    const/4 v4, 0x0

    .line 2180
    .local v4, "i$iv$iv":I
    iget-object v5, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2181
    .local v5, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    .line 2182
    .local v6, "size$iv$iv":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 2183
    aget-object v7, v5, v4

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .local v7, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v8, 0x0

    .line 1401
    .local v8, "$i$a$-forEachChild-LayoutNode$clearSubtreeIntrinsicsUsage$1":I
    iget-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v10, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v9, v10, :cond_0

    .line 1402
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui()V

    .line 1404
    :cond_0
    nop

    .line 2183
    .end local v7    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v8    # "$i$a$-forEachChild-LayoutNode$clearSubtreeIntrinsicsUsage$1":I
    nop

    .line 2184
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2186
    :cond_1
    nop

    .line 2178
    .end local v2    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "i$iv$iv":I
    .end local v5    # "content$iv$iv":[Ljava/lang/Object;
    .end local v6    # "size$iv$iv":I
    nop

    .line 1405
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$forEachChild":I
    return-void
.end method

.method public final detach$ui()V
    .locals 18

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 587
    .local v1, "owner":Landroidx/compose/ui/node/Owner;
    move-object v2, v1

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1702
    .local v3, "$i$f$checkPreconditionNotNull":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 1703
    const/4 v7, 0x0

    .line 588
    .local v7, "$i$a$-checkPreconditionNotNull-LayoutNode$detach$1":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot detach node that is already detached!  Tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {v9, v5, v4, v6}, Landroidx/compose/ui/node/LayoutNode;->debugTreeToString$default(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1703
    .end local v7    # "$i$a$-checkPreconditionNotNull-LayoutNode$detach$1":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 1706
    :cond_1
    nop

    .line 590
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$checkPreconditionNotNull":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 591
    .local v2, "parent":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v2, :cond_2

    .line 592
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 593
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 594
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v3, v7}, Landroidx/compose/ui/node/MeasurePassDelegate;->setMeasuredByParent$ui(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 595
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1628
    .local v3, "it":Landroidx/compose/ui/node/LookaheadPassDelegate;
    const/4 v7, 0x0

    .line 595
    .local v7, "$i$a$-let-LayoutNode$detach$2":I
    sget-object v8, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v3, v8}, Landroidx/compose/ui/node/LookaheadPassDelegate;->setMeasuredByParent$ui(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 597
    .end local v3    # "it":Landroidx/compose/ui/node/LookaheadPassDelegate;
    .end local v7    # "$i$a$-let-LayoutNode$detach$2":I
    :cond_2
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->resetAlignmentLines()V

    .line 599
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 1707
    .local v7, "$i$f$forEachCoordinatorIncludingInner$ui":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v8

    .line 1708
    .local v8, "delegate$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v9

    .line 1709
    .local v9, "final$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v8, :cond_3

    .line 1710
    move-object v10, v8

    .local v10, "it":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v11, 0x0

    .line 599
    .local v11, "$i$a$-forEachCoordinatorIncludingInner$ui-LayoutNode$detach$3":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeCoordinator;->onLayoutNodeDetach()V

    .line 1710
    .end local v10    # "it":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v11    # "$i$a$-forEachCoordinatorIncludingInner$ui-LayoutNode$detach$3":I
    nop

    .line 1711
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v8

    goto :goto_0

    .line 1713
    :cond_3
    nop

    .line 600
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$f$forEachCoordinatorIncludingInner$ui":I
    .end local v8    # "delegate$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "final$iv":Landroidx/compose/ui/node/NodeCoordinator;
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_4

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_4
    sget-boolean v3, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    const/16 v7, 0x8

    if-nez v3, :cond_5

    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v8, 0x0

    .line 1714
    .local v8, "$i$f$getSemantics-OLwlOKw":I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 603
    .end local v8    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v3, v8}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 604
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 606
    :cond_5
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->runDetachLifecycle$ui()V

    .line 607
    move-object/from16 v3, p0

    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v8, 0x0

    .line 1715
    .local v8, "$i$f$ignoreRemeasureRequests$ui":I
    invoke-static {v3, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1716
    const/4 v4, 0x0

    .line 607
    .local v4, "$i$a$-ignoreRemeasureRequests$ui-LayoutNode$detach$4":I
    iget-object v9, v0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v9, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    const/4 v10, 0x0

    .line 1717
    .local v10, "$i$f$forEach":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v11

    .local v11, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 1718
    .local v12, "$i$f$forEach":I
    const/4 v13, 0x0

    .line 1719
    .local v13, "i$iv$iv":I
    iget-object v14, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1720
    .local v14, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v15

    .line 1721
    .local v15, "size$iv$iv":I
    :goto_1
    if-ge v13, v15, :cond_6

    .line 1722
    aget-object v16, v14, v13

    check-cast v16, Landroidx/compose/ui/node/LayoutNode;

    .local v16, "child":Landroidx/compose/ui/node/LayoutNode;
    const/16 v17, 0x0

    .line 607
    .local v17, "$i$a$-forEach-LayoutNode$detach$4$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/LayoutNode;->detach$ui()V

    .line 1722
    .end local v16    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v17    # "$i$a$-forEach-LayoutNode$detach$4$1":I
    nop

    .line 1723
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1725
    :cond_6
    nop

    .line 1717
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$forEach":I
    .end local v13    # "i$iv$iv":I
    .end local v14    # "content$iv$iv":[Ljava/lang/Object;
    .end local v15    # "size$iv$iv":I
    nop

    .line 607
    .end local v9    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v10    # "$i$f$forEach":I
    nop

    .end local v4    # "$i$a$-ignoreRemeasureRequests$ui-LayoutNode$detach$4":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1716
    nop

    .line 1726
    .local v4, "result$iv":Ljava/lang/Object;
    invoke-static {v3, v5}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1727
    nop

    .line 608
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v4    # "result$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$ignoreRemeasureRequests$ui":I
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->markAsDetached$ui()V

    .line 609
    invoke-interface {v1, v0}, Landroidx/compose/ui/node/Owner;->onDetach(Landroidx/compose/ui/node/LayoutNode;)V

    .line 610
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/spatial/RectManager;->remove(Landroidx/compose/ui/node/LayoutNode;)V

    .line 611
    iput-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 613
    invoke-direct {v0, v6}, Landroidx/compose/ui/node/LayoutNode;->setLookaheadRoot(Landroidx/compose/ui/node/LayoutNode;)V

    .line 614
    iput v5, v0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    .line 615
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/MeasurePassDelegate;->onNodeDetached()V

    .line 616
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroidx/compose/ui/node/LookaheadPassDelegate;->onNodeDetached()V

    .line 623
    :cond_7
    sget-boolean v3, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v4, 0x0

    .line 1728
    .local v4, "$i$f$getSemantics-OLwlOKw":I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 623
    .end local v4    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 624
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 625
    .local v3, "prev":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    iput-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 626
    iput-boolean v5, v0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    .line 627
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsInfo;

    invoke-virtual {v4, v5, v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->notifySemanticsChange$ui(Landroidx/compose/ui/semantics/SemanticsInfo;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 631
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 633
    .end local v3    # "prev":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    :cond_8
    return-void
.end method

.method public final dispatchOnPositionedCallbacks$ui()V
    .locals 33

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 1241
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    return-void

    .line 1244
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v2, 0x0

    .line 1902
    .local v2, "$i$f$getGlobalPositionAware-OLwlOKw":I
    const/16 v3, 0x100

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1244
    .end local v2    # "$i$f$getGlobalPositionAware-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 1903
    .local v4, "$i$f$headToTail-aLcG6gQ$ui":I
    move v5, v2

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1907
    .local v7, "$i$f$headToTail$ui":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_10

    .line 1908
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 1909
    .local v9, "$i$f$headToTail$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1910
    .local v10, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_f

    .line 1911
    move-object v11, v10

    .local v11, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1912
    .local v12, "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_e

    .line 1913
    move-object v13, v11

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1903
    .local v14, "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    move v15, v2

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1914
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1915
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v32, v19

    move/from16 v19, v3

    move-object/from16 v3, v32

    .line 1916
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_d

    .line 1917
    instance-of v0, v3, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v0, :cond_2

    .line 1918
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    .local v0, "it":Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
    const/16 v20, 0x0

    .line 1245
    .local v20, "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$dispatchOnPositionedCallbacks$1":I
    move-object/from16 v21, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v21, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v22, 0x0

    .line 1919
    .local v22, "$i$f$getGlobalPositionAware-OLwlOKw":I
    move/from16 v23, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1245
    .end local v22    # "$i$f$getGlobalPositionAware-OLwlOKw":I
    invoke-static {v1, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;->onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 1246
    nop

    .line 1918
    .end local v0    # "it":Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
    .end local v20    # "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$dispatchOnPositionedCallbacks$1":I
    goto/16 :goto_8

    .line 1920
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2
    move-object/from16 v21, v1

    move/from16 v23, v2

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move v0, v15

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v3

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1921
    .local v2, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v0

    move/from16 v22, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v0, 0x1

    if-eqz v20, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1920
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_2
    if-eqz v1, :cond_c

    instance-of v1, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_c

    .line 1922
    const/4 v1, 0x0

    .line 1923
    .local v1, "count$iv$iv":I
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1924
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1925
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v22, :cond_b

    .line 1926
    move-object/from16 v24, v22

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1927
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1921
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_4

    move/from16 v26, v0

    goto :goto_4

    :cond_4
    const/16 v26, 0x0

    .line 1927
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v26, :cond_a

    .line 1928
    add-int/lit8 v1, v1, 0x1

    .line 1929
    if-ne v1, v0, :cond_5

    .line 1930
    move-object/from16 v3, v24

    move-object/from16 v30, v2

    move-object/from16 v0, v24

    goto :goto_7

    .line 1934
    :cond_5
    if-nez v18, :cond_6

    const/16 v26, 0x0

    .line 1935
    .local v26, "$i$f$mutableVectorOf":I
    nop

    .line 1936
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 1937
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v30, v2

    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v30, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1935
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 1934
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v29    # "count$iv$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v1    # "count$iv$iv":I
    .restart local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_6
    move/from16 v29, v1

    move-object/from16 v30, v2

    const/4 v0, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v29    # "count$iv$iv":I
    .restart local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    move-object/from16 v1, v18

    :goto_5
    nop

    .line 1938
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v2, v3

    .line 1939
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1940
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1941
    :cond_7
    const/4 v3, 0x0

    .line 1943
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v0, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v0, v24

    .line 1946
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v18, v1

    move/from16 v1, v29

    goto :goto_7

    .line 1927
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "count$iv$iv":I
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v1, "count$iv$iv":I
    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v30, v2

    move-object/from16 v0, v24

    .line 1946
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :goto_7
    nop

    .line 1926
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1947
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v2, v30

    const/4 v0, 0x1

    goto :goto_3

    .line 1949
    .end local v30    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_b
    move-object/from16 v30, v2

    .line 1950
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v0, 0x1

    if-ne v1, v0, :cond_c

    .line 1952
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    goto/16 :goto_1

    .line 1955
    .end local v1    # "count$iv$iv":I
    :cond_c
    :goto_8
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    goto/16 :goto_1

    .line 1957
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_d
    move-object/from16 v21, v1

    move/from16 v23, v2

    .line 1903
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1913
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    goto :goto_9

    .line 1912
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    move-object/from16 v21, v1

    move/from16 v23, v2

    move/from16 v19, v3

    .line 1958
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_11

    .line 1959
    nop

    .line 1911
    .end local v11    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 1960
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-object/from16 v1, v21

    move/from16 v2, v23

    goto/16 :goto_0

    .line 1962
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v21, v1

    move/from16 v23, v2

    .line 1963
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$headToTail$ui":I
    .end local v10    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_a

    .line 1907
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move-object/from16 v21, v1

    move/from16 v23, v2

    .line 1964
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    :goto_a
    nop

    .line 1247
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    return-void

    .line 1239
    :cond_12
    :goto_b
    return-void
.end method

.method public final draw$ui(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 4
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "graphicsLayer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 1061
    move-object v0, p0

    .local v0, "layoutNode$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 1893
    .local v1, "$i$f$withComposeStackTrace":I
    nop

    .line 1894
    const/4 v2, 0x0

    .line 1061
    .local v2, "$i$a$-withComposeStackTrace-LayoutNode$draw$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->draw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .end local v2    # "$i$a$-withComposeStackTrace-LayoutNode$draw$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    nop

    .line 1897
    nop

    .line 1061
    .end local v0    # "layoutNode$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$withComposeStackTrace":I
    return-void

    .line 1895
    .restart local v0    # "layoutNode$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v1    # "$i$f$withComposeStackTrace":I
    :catchall_0
    move-exception v2

    .line 1896
    .local v2, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->rethrowWithComposeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final forEachChild(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$forEachChild":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 1639
    .local v2, "$i$f$forEach":I
    const/4 v3, 0x0

    .line 1640
    .local v3, "i$iv":I
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1641
    .local v4, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    .line 1642
    .local v5, "size$iv":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1643
    aget-object v6, v4, v3

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1646
    :cond_0
    nop

    .line 211
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    .end local v5    # "size$iv":I
    return-void
.end method

.method public final forEachChildIndexed(Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    .local v0, "$i$f$forEachChildIndexed":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 1647
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 1648
    .local v3, "i$iv":I
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 1649
    .local v4, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    .line 1650
    .local v5, "size$iv":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1651
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-interface {p1, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1654
    :cond_0
    nop

    .line 214
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    .end local v5    # "size$iv":I
    return-void
.end method

.method public final forEachCoordinator$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1368
    .local v0, "$i$f$forEachCoordinator$ui":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 1369
    .local v1, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 1370
    .local v2, "inner":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v1, v2, :cond_0

    .line 1371
    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    goto :goto_0

    .line 1374
    :cond_0
    return-void
.end method

.method public final forEachCoordinatorIncludingInner$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1378
    .local v0, "$i$f$forEachCoordinatorIncludingInner$ui":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 1379
    .local v1, "delegate":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 1380
    .local v2, "final":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 1381
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    goto :goto_0

    .line 1384
    :cond_0
    return-void
.end method

.method public forceRemeasure()V
    .locals 13

    .line 1349
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    .line 1350
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    .line 1352
    :cond_0
    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    move-object v1, v7

    .line 1354
    :goto_0
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLastConstraints-DWUhwKw()Landroidx/compose/ui/unit/Constraints;

    move-result-object v0

    .line 1355
    .local v0, "lastConstraints":Landroidx/compose/ui/unit/Constraints;
    nop

    .line 1358
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 1355
    if-eqz v0, :cond_1

    .line 1356
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v3

    invoke-interface {v2, p0, v3, v4}, Landroidx/compose/ui/node/Owner;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    goto :goto_1

    .line 1358
    :cond_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Landroidx/compose/ui/node/Owner;->measureAndLayout$default(Landroidx/compose/ui/node/Owner;ZILjava/lang/Object;)V

    .line 1360
    :cond_2
    :goto_1
    return-void
.end method

.method public final getAddedToRectList$ui()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    return v0
.end method

.method public final getAlignmentLinesRequired$ui()Z
    .locals 5

    .line 837
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .local v0, "$this$_get_alignmentLinesRequired__u24lambda_u240":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    const/4 v1, 0x0

    .line 838
    .local v1, "$i$a$-run-LayoutNode$alignmentLinesRequired$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getAlignmentLinesOwner$ui()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/AlignmentLines;->getRequired$ui()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 839
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLookaheadAlignmentLinesOwner$ui()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/node/AlignmentLines;->getRequired$ui()Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 837
    .end local v0    # "$this$_get_alignmentLinesRequired__u24lambda_u240":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    .end local v1    # "$i$a$-run-LayoutNode$alignmentLinesRequired$1":I
    :goto_2
    nop

    .line 840
    return v3
.end method

.method public final getApplyingModifierOnAttach$ui()Z
    .locals 1

    .line 950
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCanMultiMeasure$ui()Z
    .locals 1

    .line 886
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    return v0
.end method

.method public final getChildLookaheadMeasurables$ui()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->getChildDelegates$ui()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getChildMeasurables$ui()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getChildDelegates$ui()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getChildren$ui()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsInfo;",
            ">;"
        }
    .end annotation

    .line 1445
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompositeKeyHash()I
    .locals 1

    .line 110
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->compositeKeyHash:I

    return v0
.end method

.method public getCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 1

    .line 792
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

    return-object v0
.end method

.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 999
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 762
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getDepth$ui()I
    .locals 1

    .line 261
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    return v0
.end method

.method public final getFoldedChildren$ui()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v0, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    const/4 v1, 0x0

    .line 1624
    .local v1, "$i$f$asList":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    move-result-object v0

    .line 147
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v1    # "$i$f$asList":I
    return-object v0
.end method

.method public final getGloballyPositionedObservers()I
    .locals 1

    .line 1017
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    return v0
.end method

.method public final getHasFixedInnerContentConstraints$ui()Z
    .locals 3

    .line 671
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLastMeasurementConstraints-msEJaDk$ui()J

    move-result-wide v0

    .line 672
    .local v0, "innerContentConstraints":J
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedWidth-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasFixedHeight-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final getHasPositionalLayerTransformationsInOffsetFromRoot$ui()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 833
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getHeight$ui()I

    move-result v0

    return v0
.end method

.method public final getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 890
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getInnerCoordinator$ui()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getInnerLayerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 4

    .line 913
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    if-eqz v0, :cond_3

    .line 914
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 915
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 916
    .local v1, "final":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 917
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 918
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    .line 919
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 920
    goto :goto_3

    .line 922
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    move-object v0, v3

    goto :goto_0

    .line 925
    .end local v0    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "final":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_3
    :goto_3
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_innerLayerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 926
    .local v0, "layerCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    if-eqz v0, :cond_5

    .line 927
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v1

    .local v1, "value$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1875
    .local v2, "$i$f$checkPreconditionNotNull":I
    if-eqz v1, :cond_4

    .line 1879
    goto :goto_4

    .line 1876
    :cond_4
    const/4 v3, 0x0

    .line 927
    .local v3, "$i$a$-checkPreconditionNotNull-LayoutNode$innerLayerCoordinator$1":I
    nop

    .line 1876
    .end local v3    # "$i$a$-checkPreconditionNotNull-LayoutNode$innerLayerCoordinator$1":I
    const-string/jumbo v3, "layer was not set"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 929
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$checkPreconditionNotNull":I
    :cond_5
    :goto_4
    return-object v0
.end method

.method public final getInnerLayerCoordinatorIsDirty$ui()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    return v0
.end method

.method public getInteropView()Landroid/view/View;
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getInteropView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getInteropViewFactoryHolder$ui()Landroidx/compose/ui/viewinterop/AndroidViewHolder;
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    return-object v0
.end method

.method public final getIntrinsicsUsageByParent$ui()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    .line 877
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object v0
.end method

.method public final getLastOffsetFromParent-nOcc-ac$ui()J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->lastOffsetFromParent:J

    return-wide v0
.end method

.method public final getLastSize-YbymL2g$ui()J
    .locals 2

    .line 104
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->lastSize:J

    return-wide v0
.end method

.method public final getLayoutDelegate$ui()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    .locals 1

    .line 892
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 773
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final getLayoutPending$ui()Z
    .locals 1

    .line 1303
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLayoutPending$ui()Z

    move-result v0

    return v0
.end method

.method public final getLayoutState$ui()Landroidx/compose/ui/node/LayoutNode$LayoutState;
    .locals 1

    .line 270
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLayoutState$ui()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    return-object v0
.end method

.method public final getLookaheadLayoutPending$ui()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLookaheadLayoutPending$ui()Z

    move-result v0

    return v0
.end method

.method public final getLookaheadMeasurePending$ui()Z
    .locals 1

    .line 1306
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLookaheadMeasurePending$ui()Z

    move-result v0

    return v0
.end method

.method public final getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getLookaheadRoot$ui()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final getMDrawScope$ui()Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .locals 1

    .line 843
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v0

    return-object v0
.end method

.method public final getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;
    .locals 1

    .line 285
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getMeasurePending$ui()Z
    .locals 1

    .line 1294
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePending$ui()Z

    move-result v0

    return v0
.end method

.method public getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1

    .line 720
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v0
.end method

.method public final getMeasuredByParent$ui()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    .line 870
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getMeasuredByParent$ui()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    return-object v0
.end method

.method public final getMeasuredByParentInLookahead$ui()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    .line 874
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->getMeasuredByParent$ui()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :cond_1
    return-object v0
.end method

.method public getModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 954
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public getModifierInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/ModifierInfo;",
            ">;"
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getModifierInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNeedsOnGloballyPositionedDispatch$ui()Z
    .locals 1

    .line 1011
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnGloballyPositionedDispatch:Z

    return v0
.end method

.method public final getNodes$ui()Landroidx/compose/ui/node/NodeChain;
    .locals 1

    .line 888
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    return-object v0
.end method

.method public final getOnAttach$ui()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnDetach$ui()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 894
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public final getOuterToInnerOffset-nOcc-ac$ui()J
    .locals 2

    .line 105
    iget-wide v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    return-wide v0
.end method

.method public final getOuterToInnerOffsetDirty$ui()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    return v0
.end method

.method public final getOwner$ui()Landroidx/compose/ui/node/Owner;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    return-object v0
.end method

.method public final getParent$ui()Landroidx/compose/ui/node/LayoutNode;
    .locals 4

    .line 231
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 232
    .local v0, "parent":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 233
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_0

    .line 235
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getParentInfo()Landroidx/compose/ui/layout/LayoutInfo;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParentInfo()Landroidx/compose/ui/semantics/SemanticsInfo;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutInfo;

    return-object v0
.end method

.method public getParentInfo()Landroidx/compose/ui/semantics/SemanticsInfo;
    .locals 1

    .line 1442
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsInfo;

    return-object v0
.end method

.method public final getPlaceOrder$ui()I
    .locals 1

    .line 866
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->getPlaceOrder()I

    move-result v0

    return v0
.end method

.method public getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 3

    .line 468
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v1, 0x0

    .line 1677
    .local v1, "$i$f$getSemantics-OLwlOKw":I
    const/16 v2, 0x8

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 468
    .end local v1    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    if-nez v0, :cond_1

    .line 472
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->calculateSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 474
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    return-object v0

    .line 468
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSemanticsId()I
    .locals 1

    .line 90
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    return v0
.end method

.method public final getSubcompositionsState$ui()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .locals 1

    .line 906
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    return-object v0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1

    .line 783
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 827
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getWidth$ui()I

    move-result v0

    return v0
.end method

.method public final getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 648
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 650
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v1

    .local v1, "elements$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 1729
    .local v2, "$i$f$addAll":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 651
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "elements$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$addAll":I
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->sortWith(Ljava/util/Comparator;)V

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 654
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_zSortedChildren:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final get_children$ui()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->updateChildrenIfDirty$ui()V

    .line 197
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    invoke-virtual {v0}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_unfoldedChildren:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-object v0
.end method

.method public final hitTest-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 13
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p3, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p4, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p5, "isInLayer"    # Z

    .line 1080
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk$default(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v8

    .line 1081
    .local v8, "positionInWrapped":J
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    .line 1082
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion;->getPointerInputSource()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    move-result-object v7

    .line 1083
    nop

    .line 1084
    nop

    .line 1085
    nop

    .line 1086
    nop

    .line 1081
    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 1088
    return-void
.end method

.method public final hitTestSemantics-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 13
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p3, "hitSemanticsEntities"    # Landroidx/compose/ui/node/HitTestResult;
    .param p4, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p5, "isInLayer"    # Z

    .line 1097
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk$default(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v8

    .line 1098
    .local v8, "positionInWrapped":J
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    .line 1099
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion;->getSemanticsSource()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    move-result-object v7

    .line 1100
    nop

    .line 1101
    nop

    .line 1102
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v11

    .line 1103
    nop

    .line 1098
    move-object/from16 v10, p3

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 1105
    return-void
.end method

.method public final ignoreRemeasureRequests$ui(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1218
    .local v0, "$i$f$ignoreRemeasureRequests$ui":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1219
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    .line 1220
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1221
    return-object v1
.end method

.method public final insertAt$ui(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "instance"    # Landroidx/compose/ui/node/LayoutNode;

    .line 295
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_1
    const/4 v2, 0x0

    .line 1655
    .local v2, "$i$f$checkPrecondition":I
    if-nez v0, :cond_2

    .line 1656
    const/4 v3, 0x0

    .line 296
    .local v3, "$i$a$-checkPrecondition-LayoutNode$insertAt$1":I
    invoke-direct {p0, p2}, Landroidx/compose/ui/node/LayoutNode;->exceptionMessageForParentingOrOwnership(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;

    move-result-object v3

    .line 1656
    .end local v3    # "$i$a$-checkPrecondition-LayoutNode$insertAt$1":I
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1658
    :cond_2
    nop

    .line 299
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    nop

    .line 303
    iput-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->_foldedParent:Landroidx/compose/ui/node/LayoutNode;

    .line 304
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->add(ILjava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui()V

    .line 307
    iget-boolean v0, p2, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_3

    .line 308
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    .line 310
    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 312
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 313
    .local v0, "owner":Landroidx/compose/ui/node/Owner;
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {p2, v0}, Landroidx/compose/ui/node/LayoutNode;->attach$ui(Landroidx/compose/ui/node/Owner;)V

    .line 317
    :cond_4
    iget-object v2, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getChildrenAccessingCoordinatesDuringPlacement()I

    move-result v2

    if-lez v2, :cond_5

    .line 318
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getChildrenAccessingCoordinatesDuringPlacement()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setChildrenAccessingCoordinatesDuringPlacement(I)V

    .line 320
    :cond_5
    iget v2, p2, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    if-lez v2, :cond_6

    .line 321
    iget v2, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->setGloballyPositionedObservers(I)V

    .line 323
    :cond_6
    return-void
.end method

.method public final invalidateDrawForSubtree(Z)V
    .locals 33
    .param p1, "isRootOfInvalidation"    # Z

    .line 1337
    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 1340
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v2, 0x0

    .line 2050
    .local v2, "$i$f$getLayout-OLwlOKw":I
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1340
    .end local v2    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 2051
    .local v4, "$i$f$headToTail-aLcG6gQ$ui":I
    move v5, v2

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 2055
    .local v7, "$i$f$headToTail$ui":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_11

    .line 2056
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v10, 0x0

    .line 2057
    .local v10, "$i$f$headToTail$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 2058
    .local v11, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v11, :cond_10

    .line 2059
    move-object v12, v11

    .local v12, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 2060
    .local v13, "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v5

    if-eqz v14, :cond_f

    .line 2061
    move-object v14, v12

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 2051
    .local v15, "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    move/from16 v16, v2

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 2062
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 2063
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move-object/from16 v32, v20

    move/from16 v20, v3

    move-object/from16 v3, v32

    .line 2064
    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_e

    .line 2065
    instance-of v9, v3, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v9, :cond_2

    .line 2066
    move-object v9, v3

    check-cast v9, Landroidx/compose/ui/node/LayoutModifierNode;

    .local v9, "it":Landroidx/compose/ui/node/LayoutModifierNode;
    const/16 v21, 0x0

    .line 1340
    .local v21, "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$invalidateDrawForSubtree$1":I
    move-object v0, v9

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v22, 0x0

    .line 2050
    .local v22, "$i$f$getLayout-OLwlOKw":I
    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v23, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1340
    .end local v22    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 2066
    .end local v9    # "it":Landroidx/compose/ui/node/LayoutModifierNode;
    .end local v21    # "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$invalidateDrawForSubtree$1":I
    :cond_1
    move/from16 v30, v2

    goto/16 :goto_8

    .line 2067
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_2
    move-object/from16 v23, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move/from16 v0, v16

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v3

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 2068
    .local v9, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v0

    move/from16 v22, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v0, 0x1

    if-eqz v21, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2067
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_2
    if-eqz v1, :cond_c

    instance-of v1, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_c

    .line 2069
    const/4 v1, 0x0

    .line 2070
    .local v1, "count$iv$iv":I
    move-object v9, v3

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .local v9, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 2071
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 2072
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v22, :cond_b

    .line 2073
    move-object/from16 v24, v22

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 2074
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v16

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 2068
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_4

    move/from16 v26, v0

    goto :goto_4

    :cond_4
    const/16 v26, 0x0

    .line 2074
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v26, :cond_a

    .line 2075
    add-int/lit8 v1, v1, 0x1

    .line 2076
    if-ne v1, v0, :cond_5

    .line 2077
    move-object/from16 v3, v24

    move/from16 v30, v2

    move-object/from16 v2, v24

    goto :goto_7

    .line 2081
    :cond_5
    if-nez v19, :cond_6

    const/16 v26, 0x0

    .line 2082
    .local v26, "$i$f$mutableVectorOf":I
    nop

    .line 2083
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 2084
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2082
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 2081
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "count$iv$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_6
    move/from16 v29, v1

    move/from16 v30, v2

    .end local v1    # "count$iv$iv":I
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v29    # "count$iv$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, v19

    :goto_5
    nop

    .line 2085
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v0, v3

    .line 2086
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_8

    .line 2087
    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2088
    :cond_7
    const/4 v2, 0x0

    move-object v3, v2

    .line 2090
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v2, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v24

    .line 2093
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v19, v1

    move/from16 v1, v29

    goto :goto_7

    .line 2074
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "count$iv$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v30, v2

    move-object/from16 v2, v24

    .line 2093
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_7
    nop

    .line 2073
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2094
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move/from16 v2, v30

    const/4 v0, 0x1

    goto :goto_3

    .line 2096
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_b
    move/from16 v30, v2

    .line 2097
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    .line 2099
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    goto/16 :goto_1

    .line 2067
    .end local v1    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_c
    move/from16 v30, v2

    .line 2102
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_d
    :goto_8
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    goto/16 :goto_1

    .line 2104
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    move-object/from16 v23, v1

    move/from16 v30, v2

    .line 2051
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 2061
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    goto :goto_9

    .line 2060
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v23, v1

    move/from16 v30, v2

    move/from16 v20, v3

    .line 2105
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_12

    .line 2106
    nop

    .line 2059
    .end local v12    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 2107
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v3, v20

    move-object/from16 v1, v23

    move/from16 v2, v30

    goto/16 :goto_0

    .line 2109
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move-object/from16 v23, v1

    move/from16 v30, v2

    .line 2110
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v10    # "$i$f$headToTail$ui":I
    .end local v11    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_a

    .line 2055
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move-object/from16 v23, v1

    move/from16 v30, v2

    .line 2111
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui":I
    .restart local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    :goto_a
    nop

    .line 1341
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui":I
    .end local v23    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 2112
    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .line 2113
    .local v2, "i$iv":I
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2114
    .local v3, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 2115
    .local v4, "size$iv":I
    :goto_b
    if-ge v2, v4, :cond_13

    .line 2116
    aget-object v5, v3, v2

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .local v5, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 1341
    .local v6, "$i$a$-forEach-LayoutNode$invalidateDrawForSubtree$2":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/compose/ui/node/LayoutNode;->invalidateDrawForSubtree(Z)V

    .line 2116
    .end local v5    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$a$-forEach-LayoutNode$invalidateDrawForSubtree$2":I
    nop

    .line 2117
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2119
    :cond_13
    nop

    .line 1342
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "i$iv":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    .end local v4    # "size$iv":I
    return-void
.end method

.method public final invalidateLayer$ui()V
    .locals 2

    .line 938
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 939
    .local v0, "innerLayerCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 943
    .local v1, "parent":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 945
    .end local v1    # "parent":Landroidx/compose/ui/node/LayoutNode;
    :cond_1
    :goto_0
    return-void
.end method

.method public final invalidateLayers$ui()V
    .locals 7

    .line 1257
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 1965
    .local v1, "$i$f$forEachCoordinator$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 1966
    .local v2, "coordinator$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    .line 1967
    .local v3, "inner$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v2, v3, :cond_1

    .line 1968
    const-string/jumbo v4, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .local v4, "coordinator":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    const/4 v5, 0x0

    .line 1257
    .local v5, "$i$a$-forEachCoordinator$ui-LayoutNode$invalidateLayers$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 1968
    .end local v4    # "coordinator":Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;
    .end local v5    # "$i$a$-forEachCoordinator$ui-LayoutNode$invalidateLayers$1":I
    :cond_0
    nop

    .line 1969
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_0

    .line 1971
    :cond_1
    nop

    .line 1258
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$forEachCoordinator$ui":I
    .end local v2    # "coordinator$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "inner$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 1259
    :cond_2
    return-void
.end method

.method public final invalidateMeasurementForSubtree()V
    .locals 7

    .line 1332
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 1333
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 2042
    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .line 2043
    .local v2, "i$iv":I
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2044
    .local v3, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 2045
    .local v4, "size$iv":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 2046
    aget-object v5, v3, v2

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .local v5, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 1333
    .local v6, "$i$a$-forEach-LayoutNode$invalidateMeasurementForSubtree$1":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurementForSubtree()V

    .line 2046
    .end local v5    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$a$-forEach-LayoutNode$invalidateMeasurementForSubtree$1":I
    nop

    .line 2047
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2049
    :cond_0
    nop

    .line 1334
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "i$iv":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    .end local v4    # "size$iv":I
    return-void
.end method

.method public final invalidateMeasurements$ui()V
    .locals 13

    .line 1181
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 1185
    :cond_0
    return-void

    .line 1187
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_2

    .line 1188
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    .line 1190
    :cond_2
    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 1192
    :goto_0
    return-void
.end method

.method public final invalidateOnPositioned$ui()V
    .locals 1

    .line 1196
    nop

    .line 1197
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    if-eqz v0, :cond_1

    .line 1198
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1200
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnGloballyPositionedDispatch:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/ui/node/Owner;->requestOnPositionedCallback(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1204
    return-void

    .line 1202
    :cond_1
    :goto_0
    return-void
.end method

.method public final invalidateParentData$ui()V
    .locals 1

    .line 992
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->invalidateParentData()V

    .line 993
    return-void
.end method

.method public final invalidateSemantics$ui()V
    .locals 4

    .line 432
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    if-eqz v0, :cond_0

    return-void

    .line 434
    :cond_0
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-nez v0, :cond_1

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 440
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    goto :goto_1

    .line 441
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->isUpdating$ui()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getApplyingModifierOnAttach$ui()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 449
    .local v0, "prev":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->calculateSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 450
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    .line 452
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    .line 453
    .local v1, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsInfo;

    invoke-virtual {v2, v3, v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->notifySemanticsChange$ui(Landroidx/compose/ui/semantics/SemanticsInfo;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 457
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    goto :goto_1

    .line 444
    .end local v0    # "prev":Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .end local v1    # "owner":Landroidx/compose/ui/node/Owner;
    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    .line 459
    :goto_1
    return-void
.end method

.method public final invalidateSubtree(Z)V
    .locals 33
    .param p1, "isRootOfInvalidation"    # Z

    .line 1321
    if-eqz p1, :cond_0

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 1324
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 1325
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 1326
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v2, 0x0

    .line 1972
    .local v2, "$i$f$getLayout-OLwlOKw":I
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1326
    .end local v2    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 1973
    .local v4, "$i$f$headToTail-aLcG6gQ$ui":I
    move v5, v2

    .local v5, "mask$iv$iv":I
    move-object v6, v0

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1977
    .local v7, "$i$f$headToTail$ui":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_11

    .line 1978
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v10, 0x0

    .line 1979
    .local v10, "$i$f$headToTail$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1980
    .local v11, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v11, :cond_10

    .line 1981
    move-object v12, v11

    .local v12, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1982
    .local v13, "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v5

    if-eqz v14, :cond_f

    .line 1983
    move-object v14, v12

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1973
    .local v15, "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    move/from16 v16, v2

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1984
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 1985
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move-object/from16 v32, v20

    move/from16 v20, v3

    move-object/from16 v3, v32

    .line 1986
    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_e

    .line 1987
    instance-of v9, v3, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v9, :cond_2

    .line 1988
    move-object v9, v3

    check-cast v9, Landroidx/compose/ui/node/LayoutModifierNode;

    .local v9, "it":Landroidx/compose/ui/node/LayoutModifierNode;
    const/16 v21, 0x0

    .line 1326
    .local v21, "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$invalidateSubtree$1":I
    move-object/from16 v22, v0

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v22, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move-object v0, v9

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v23, 0x0

    .line 1972
    .local v23, "$i$f$getLayout-OLwlOKw":I
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1326
    .end local v23    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayer()Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 1988
    .end local v9    # "it":Landroidx/compose/ui/node/LayoutModifierNode;
    .end local v21    # "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$invalidateSubtree$1":I
    :cond_1
    move/from16 v30, v2

    goto/16 :goto_8

    .line 1989
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_2
    move-object/from16 v22, v0

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move/from16 v0, v16

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v3

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 1990
    .local v9, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v0

    move/from16 v23, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v0, 0x1

    if-eqz v21, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1989
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$isKind-H91voCI$ui":I
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_2
    if-eqz v1, :cond_c

    instance-of v1, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_c

    .line 1991
    const/4 v1, 0x0

    .line 1992
    .local v1, "count$iv$iv":I
    move-object v9, v3

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .local v9, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1993
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 1994
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v23, :cond_b

    .line 1995
    move-object/from16 v24, v23

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1996
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v16

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1990
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_4

    move/from16 v26, v0

    goto :goto_4

    :cond_4
    const/16 v26, 0x0

    .line 1996
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v26, :cond_a

    .line 1997
    add-int/lit8 v1, v1, 0x1

    .line 1998
    if-ne v1, v0, :cond_5

    .line 1999
    move-object/from16 v3, v24

    move/from16 v30, v2

    move-object/from16 v2, v24

    goto :goto_7

    .line 2003
    :cond_5
    if-nez v19, :cond_6

    const/16 v26, 0x0

    .line 2004
    .local v26, "$i$f$mutableVectorOf":I
    nop

    .line 2005
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 2006
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2004
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 2003
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "count$iv$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_6
    move/from16 v29, v1

    move/from16 v30, v2

    .end local v1    # "count$iv$iv":I
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v29    # "count$iv$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, v19

    :goto_5
    nop

    .line 2007
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v0, v3

    .line 2008
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_8

    .line 2009
    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2010
    :cond_7
    const/4 v2, 0x0

    move-object v3, v2

    .line 2012
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v2, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v24

    .line 2015
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v19, v1

    move/from16 v1, v29

    goto :goto_7

    .line 1996
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "count$iv$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v30, v2

    move-object/from16 v2, v24

    .line 2015
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_7
    nop

    .line 1995
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2016
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move/from16 v2, v30

    const/4 v0, 0x1

    goto :goto_3

    .line 2018
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_b
    move/from16 v30, v2

    .line 2019
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    .line 2021
    move-object/from16 v1, p0

    move-object/from16 v0, v22

    move/from16 v2, v30

    goto/16 :goto_1

    .line 1989
    .end local v1    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_c
    move/from16 v30, v2

    .line 2024
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_d
    :goto_8
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v1, p0

    move-object/from16 v0, v22

    move/from16 v2, v30

    goto/16 :goto_1

    .line 2026
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    move-object/from16 v22, v0

    move/from16 v30, v2

    .line 1973
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1983
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    goto :goto_9

    .line 1982
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v22, v0

    move/from16 v30, v2

    move/from16 v20, v3

    .line 2027
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_12

    .line 2028
    nop

    .line 1981
    .end local v12    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 2029
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v1, p0

    move/from16 v3, v20

    move-object/from16 v0, v22

    move/from16 v2, v30

    goto/16 :goto_0

    .line 2031
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move-object/from16 v22, v0

    move/from16 v30, v2

    .line 2032
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v10    # "$i$f$headToTail$ui":I
    .end local v11    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_a

    .line 1977
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move-object/from16 v22, v0

    move/from16 v30, v2

    .line 2033
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui":I
    .restart local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    :goto_a
    nop

    .line 1328
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui":I
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 2034
    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .line 2035
    .local v2, "i$iv":I
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2036
    .local v3, "content$iv":[Ljava/lang/Object;
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    .line 2037
    .local v4, "size$iv":I
    :goto_b
    if-ge v2, v4, :cond_13

    .line 2038
    aget-object v5, v3, v2

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .local v5, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 1328
    .local v6, "$i$a$-forEach-LayoutNode$invalidateSubtree$2":I
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/compose/ui/node/LayoutNode;->invalidateSubtree(Z)V

    .line 2038
    .end local v5    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$a$-forEach-LayoutNode$invalidateSubtree$2":I
    nop

    .line 2039
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2041
    :cond_13
    nop

    .line 1329
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "i$iv":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    .end local v4    # "size$iv":I
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeactivated()Z
    .locals 1

    .line 1447
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    return v0
.end method

.method public isPlaced()Z
    .locals 1

    .line 849
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlaced$ui()Z

    move-result v0

    return v0
.end method

.method public final isPlacedByParent()Z
    .locals 1

    .line 856
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->isPlacedByParent()Z

    move-result v0

    return v0
.end method

.method public final isPlacedInLookahead()Ljava/lang/Boolean;
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->isPlaced$ui()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isSemanticsInvalidated$ui()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 418
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result v0

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 658
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    return v0
.end method

.method public final isVirtualLookaheadRoot$ui()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtualLookaheadRoot:Z

    return v0
.end method

.method public final lookaheadRemeasure-_Sx5XlM$ui(Landroidx/compose/ui/unit/Constraints;)Z
    .locals 3
    .param p1, "constraints"    # Landroidx/compose/ui/unit/Constraints;

    .line 1266
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/LookaheadPassDelegate;->remeasure-BRTryo0(J)Z

    move-result v0

    goto :goto_0

    .line 1269
    :cond_0
    const/4 v0, 0x0

    .line 1266
    :goto_0
    return v0
.end method

.method public final lookaheadReplace$ui()V
    .locals 2

    .line 1052
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 1057
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;->replace()V

    .line 1058
    return-void
.end method

.method public final markLayoutPending$ui()V
    .locals 1

    .line 1312
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->markLayoutPending$ui()V

    return-void
.end method

.method public final markLookaheadLayoutPending$ui()V
    .locals 1

    .line 1318
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->markLookaheadLayoutPending$ui()V

    return-void
.end method

.method public final markLookaheadMeasurePending$ui()V
    .locals 1

    .line 1345
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->markLookaheadMeasurePending$ui()V

    return-void
.end method

.method public final markMeasurePending$ui()V
    .locals 1

    .line 1315
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->markMeasurePending$ui()V

    return-void
.end method

.method public final maxIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 759
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public final maxIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 757
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public final maxLookaheadIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 751
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxLookaheadIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public final maxLookaheadIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 748
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->maxLookaheadIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public final minIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 755
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public final minIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 753
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public final minLookaheadIntrinsicHeight(I)I
    .locals 1
    .param p1, "width"    # I

    .line 745
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minLookaheadIntrinsicHeight(I)I

    move-result v0

    return v0
.end method

.method public final minLookaheadIntrinsicWidth(I)I
    .locals 1
    .param p1, "height"    # I

    .line 742
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateIntrinsicsPolicy()Landroidx/compose/ui/node/IntrinsicsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->minLookaheadIntrinsicWidth(I)I

    move-result v0

    return v0
.end method

.method public final move$ui(III)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "count"    # I

    .line 396
    if-ne p1, p2, :cond_0

    .line 397
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 402
    if-le p1, p2, :cond_1

    add-int v1, p1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    .line 403
    .local v1, "fromIndex":I
    :goto_1
    if-le p1, p2, :cond_2

    add-int v2, p2, v0

    goto :goto_2

    :cond_2
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    .line 404
    .local v2, "toIndex":I
    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 406
    .local v3, "child":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 410
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->add(ILjava/lang/Object;)V

    .line 400
    .end local v1    # "fromIndex":I
    .end local v2    # "toIndex":I
    .end local v3    # "child":Landroidx/compose/ui/node/LayoutNode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui()V

    .line 414
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateUnfoldedVirtualChildren()V

    .line 415
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 416
    return-void
.end method

.method public final onCoordinatorPositionChanged$ui()V
    .locals 1

    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 1214
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/spatial/RectManager;->invalidateCallbacksFor(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1215
    :cond_0
    return-void
.end method

.method public onDeactivate()V
    .locals 1

    .line 1485
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDeactivate()V

    .line 1486
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onDeactivate()V

    .line 1487
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    .line 1488
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->resetModifierState()V

    .line 1490
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1491
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-nez v0, :cond_2

    .line 1492
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    goto :goto_0

    .line 1494
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_semanticsConfiguration:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    .line 1498
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Landroidx/compose/ui/node/Owner;->onLayoutNodeDeactivated(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1499
    :cond_4
    return-void
.end method

.method public onLayoutComplete()V
    .locals 29

    .line 1363
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2120
    .local v1, "$i$f$getOnPlaced-OLwlOKw":I
    const/high16 v2, 0x400000

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1363
    .end local v1    # "$i$f$getOnPlaced-OLwlOKw":I
    nop

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v2, 0x0

    .line 2121
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v3

    .local v3, "includeTail$iv$iv":Z
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v5, v1

    .local v5, "mask$iv$iv":I
    const/4 v6, 0x0

    .line 2122
    .local v6, "$i$f$visitNodes":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-nez v7, :cond_1

    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v27, v2

    goto/16 :goto_b

    .line 2123
    .local v7, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v4, v3}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 2124
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v8, :cond_11

    .line 2125
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_10

    .line 2126
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_f

    move-object v9, v8

    .local v9, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 2121
    .local v10, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move v11, v1

    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v12, v9

    .local v12, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 2127
    .local v13, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v14, 0x0

    .line 2128
    .local v14, "stack$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "node$iv$iv":Ljava/lang/Object;
    move-object v15, v12

    .line 2129
    :goto_2
    if-eqz v15, :cond_e

    .line 2130
    move-object/from16 v16, v0

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v16, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    instance-of v0, v15, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v0, :cond_2

    .line 2131
    move-object v0, v15

    check-cast v0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .local v0, "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    const/16 v17, 0x0

    .line 1363
    .local v17, "$i$a$-visitNodes-aLcG6gQ-LayoutNode$onLayoutComplete$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v18

    move/from16 v19, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, v18

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 2131
    .end local v0    # "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    .end local v17    # "$i$a$-visitNodes-aLcG6gQ-LayoutNode$onLayoutComplete$1":I
    move/from16 v27, v2

    goto/16 :goto_9

    .line 2132
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2
    move/from16 v19, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move v0, v11

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v15

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 2133
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v18

    and-int v18, v18, v0

    move/from16 v20, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v0, 0x1

    if-eqz v18, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 2132
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_3
    if-eqz v1, :cond_c

    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_c

    .line 2134
    const/4 v1, 0x0

    .line 2135
    .local v1, "count$iv$iv":I
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/node/DelegatingNode;

    .local v17, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 2136
    .local v18, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 2137
    .local v20, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v20, :cond_b

    .line 2138
    move-object/from16 v21, v20

    .local v21, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 2139
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v23, v11

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v24, v21

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 2133
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v23

    if-eqz v26, :cond_4

    move/from16 v23, v0

    goto :goto_5

    :cond_4
    const/16 v23, 0x0

    .line 2139
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v23, :cond_a

    .line 2140
    add-int/lit8 v1, v1, 0x1

    .line 2141
    if-ne v1, v0, :cond_5

    .line 2142
    move-object/from16 v15, v21

    move/from16 v27, v2

    move-object/from16 v2, v21

    const/4 v0, 0x0

    goto :goto_8

    .line 2146
    :cond_5
    if-nez v14, :cond_6

    const/16 v23, 0x0

    .line 2147
    .local v23, "$i$f$mutableVectorOf":I
    nop

    .line 2148
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 2149
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v1

    .end local v1    # "count$iv$iv":I
    .local v26, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v2

    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .local v27, "$i$f$visitNodes-aLcG6gQ":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2147
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 2146
    .end local v23    # "$i$f$mutableVectorOf":I
    .end local v26    # "count$iv$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "count$iv$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_6
    move/from16 v26, v1

    move/from16 v27, v2

    const/4 v0, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v26    # "count$iv$iv":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    move-object v1, v14

    :goto_6
    move-object v14, v1

    .line 2150
    move-object v1, v15

    .line 2151
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_8

    .line 2152
    if-eqz v14, :cond_7

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2153
    :cond_7
    const/4 v2, 0x0

    move-object v15, v2

    .line 2155
    :cond_8
    if-eqz v14, :cond_9

    move-object/from16 v2, v21

    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v21

    .line 2158
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move/from16 v1, v26

    goto :goto_8

    .line 2139
    .end local v26    # "count$iv$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .local v1, "count$iv$iv":I
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v27, v2

    move-object/from16 v2, v21

    const/4 v0, 0x0

    .line 2158
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_8
    nop

    .line 2138
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2159
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move/from16 v2, v27

    const/4 v0, 0x1

    goto :goto_4

    .line 2161
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    :cond_b
    move/from16 v27, v2

    .line 2162
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v20    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    .line 2164
    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v27

    goto/16 :goto_2

    .line 2132
    .end local v1    # "count$iv$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_c
    move/from16 v27, v2

    .line 2167
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_d
    :goto_9
    invoke-static {v14}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v27

    goto/16 :goto_2

    .line 2169
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_e
    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v27, v2

    .line 2121
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v12    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v14    # "stack$iv$iv":Ljava/lang/Object;
    .end local v15    # "node$iv$iv":Ljava/lang/Object;
    .restart local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    nop

    .end local v9    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_a

    .line 2126
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_f
    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v27, v2

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_a
    nop

    .line 2170
    if-eq v8, v7, :cond_12

    .line 2171
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v27

    goto/16 :goto_1

    .line 2125
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_10
    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v27, v2

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    goto :goto_b

    .line 2124
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_11
    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v27, v2

    .line 2173
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_12
    nop

    .line 2177
    .end local v3    # "includeTail$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$i$f$visitNodes":I
    .end local v7    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    nop

    .line 1364
    .end local v16    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    return-void
.end method

.method public onRelease()V
    .locals 6

    .line 1502
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRelease()V

    .line 1503
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onRelease()V

    .line 1504
    :cond_1
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 2210
    .local v1, "$i$f$forEachCoordinatorIncludingInner$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 2211
    .local v2, "delegate$iv":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    .line 2212
    .local v3, "final$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 2213
    move-object v4, v2

    .local v4, "it":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v5, 0x0

    .line 1504
    .local v5, "$i$a$-forEachCoordinatorIncludingInner$ui-LayoutNode$onRelease$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->onRelease()V

    .line 2213
    .end local v4    # "it":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "$i$a$-forEachCoordinatorIncludingInner$ui-LayoutNode$onRelease$1":I
    nop

    .line 2214
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    goto :goto_0

    .line 2216
    :cond_2
    nop

    .line 1505
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$forEachCoordinatorIncludingInner$ui":I
    .end local v2    # "delegate$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "final$iv":Landroidx/compose/ui/node/NodeCoordinator;
    return-void
.end method

.method public onReuse()V
    .locals 4

    .line 1451
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 2205
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_0

    .line 2206
    const/4 v2, 0x0

    .line 1451
    .local v2, "$i$a$-requirePrecondition-LayoutNode$onReuse$1":I
    nop

    .line 2206
    .end local v2    # "$i$a$-requirePrecondition-LayoutNode$onReuse$1":I
    const-string/jumbo v2, "onReuse is only expected on attached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 2208
    :cond_0
    nop

    .line 1452
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onReuse()V

    .line 1453
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onReuse()V

    .line 1454
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    .line 1455
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1456
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isDeactivated:Z

    .line 1457
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-nez v0, :cond_4

    .line 1458
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    goto :goto_0

    .line 1462
    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->resetModifierState()V

    .line 1464
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result v0

    .line 1466
    .local v0, "oldSemanticsId":I
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroidx/compose/ui/spatial/RectManager;->remove(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1467
    :cond_5
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->generateSemanticsId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->setSemanticsId(I)V

    .line 1468
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v1, :cond_6

    invoke-interface {v1, p0, v0}, Landroidx/compose/ui/node/Owner;->onPreLayoutNodeReused(Landroidx/compose/ui/node/LayoutNode;I)V

    .line 1470
    :cond_6
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->markAsAttached()V

    .line 1471
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->runAttachLifecycle()V

    .line 1473
    sget-boolean v1, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v2, 0x0

    .line 2209
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1473
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1474
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    .line 1476
    :cond_7
    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->rescheduleRemeasureOrRelayout$ui(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1477
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v1, :cond_8

    invoke-interface {v1, p0, v0}, Landroidx/compose/ui/node/Owner;->onPostLayoutNodeReused(Landroidx/compose/ui/node/LayoutNode;I)V

    .line 1481
    :cond_8
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 1482
    :cond_9
    return-void
.end method

.method public final onZSortedChildrenInvalidated$ui()V
    .locals 1

    .line 333
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->onZSortedChildrenInvalidated$ui()V

    goto :goto_0

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->zSortedChildrenInvalidated:Z

    .line 338
    :cond_1
    :goto_0
    return-void
.end method

.method public final place$ui(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1031
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    .line 1034
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 1036
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .local v1, "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/4 v0, 0x0

    .line 1037
    .local v0, "$i$a$-with-LayoutNode$place$1":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    .end local p1    # "x":I
    .end local p2    # "y":I
    .local v3, "x":I
    .local v4, "y":I
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 1038
    nop

    .line 1036
    .end local v0    # "$i$a$-with-LayoutNode$place$1":I
    .end local v1    # "$this$place_u24lambda_u240":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    nop

    .line 1039
    return-void
.end method

.method public final remeasure-_Sx5XlM$ui(Landroidx/compose/ui/unit/Constraints;)Z
    .locals 3
    .param p1, "constraints"    # Landroidx/compose/ui/unit/Constraints;

    .line 1275
    if-eqz p1, :cond_1

    .line 1276
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    .line 1279
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreeIntrinsicsUsage$ui()V

    .line 1281
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/MeasurePassDelegate;->remeasure-BRTryo0(J)Z

    move-result v0

    goto :goto_0

    .line 1283
    :cond_1
    const/4 v0, 0x0

    .line 1275
    :goto_0
    return v0
.end method

.method public final removeAll$ui()V
    .locals 8

    .line 356
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v0, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    const/4 v1, 0x0

    .line 1665
    .local v1, "$i$f$getSize":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    .line 356
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v1    # "$i$f$getSize":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_0

    .line 357
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v1, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    move v2, v0

    .local v2, "index$iv":I
    const/4 v3, 0x0

    .line 1666
    .local v3, "$i$f$get":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    move v5, v2

    .local v5, "index$iv$iv":I
    const/4 v6, 0x0

    .line 1667
    .local v6, "$i$f$get":I
    iget-object v7, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v7, v5

    .line 1666
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "index$iv$iv":I
    .end local v6    # "$i$f$get":I
    nop

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v2    # "index$iv":I
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 357
    invoke-direct {p0, v4}, Landroidx/compose/ui/node/LayoutNode;->onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V

    .line 356
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    invoke-virtual {v0}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->clear()V

    .line 361
    nop

    .line 364
    return-void
.end method

.method public final removeAt$ui(II)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 342
    const/4 v0, 0x1

    if-ltz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 1659
    .local v2, "$i$f$requirePrecondition":I
    if-nez v1, :cond_1

    .line 1660
    const/4 v3, 0x0

    .line 342
    .local v3, "$i$a$-requirePrecondition-LayoutNode$removeAt$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") must be greater than 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1660
    .end local v3    # "$i$a$-requirePrecondition-LayoutNode$removeAt$1":I
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1662
    :cond_1
    nop

    .line 343
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    add-int v1, p1, p2

    sub-int/2addr v1, v0

    .local v1, "i":I
    if-gt p1, v1, :cond_2

    .line 346
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .local v0, "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    move v2, v1

    .local v2, "index$iv":I
    const/4 v3, 0x0

    .line 1663
    .local v3, "$i$f$get":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->getVector()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4

    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    move v5, v2

    .local v5, "index$iv$iv":I
    const/4 v6, 0x0

    .line 1664
    .local v6, "$i$f$get":I
    iget-object v7, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v7, v5

    .line 1663
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v5    # "index$iv$iv":I
    .end local v6    # "$i$f$get":I
    nop

    .end local v0    # "this_$iv":Landroidx/compose/ui/node/MutableVectorWithMutationTracking;
    .end local v2    # "index$iv":I
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 346
    invoke-direct {p0, v4}, Landroidx/compose/ui/node/LayoutNode;->onChildRemoved(Landroidx/compose/ui/node/LayoutNode;)V

    .line 347
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->_foldedChildren:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 348
    .local v0, "child":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 343
    .end local v0    # "child":Landroidx/compose/ui/node/LayoutNode;
    if-eq v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 352
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final replace$ui()V
    .locals 2

    .line 1043
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    .line 1046
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->clearSubtreePlacementIntrinsicsUsage()V

    .line 1048
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasurePassDelegate;->replace()V

    .line 1049
    return-void
.end method

.method public final requestAutofill$ui()V
    .locals 1

    .line 424
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isCurrentlyCalculatingSemanticsConfiguration:Z

    if-eqz v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .line 427
    .local v0, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v0, p0}, Landroidx/compose/ui/node/Owner;->requestAutofill(Landroidx/compose/ui/node/LayoutNode;)V

    .line 428
    return-void
.end method

.method public final requestLookaheadRelayout$ui(Z)V
    .locals 2
    .param p1, "forceRequest"    # Z

    .line 1232
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Landroidx/compose/ui/node/Owner;->onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    .line 1235
    :cond_0
    return-void
.end method

.method public final requestLookaheadRemeasure$ui(ZZZ)V
    .locals 4
    .param p1, "forceRequest"    # Z
    .param p2, "scheduleMeasureAndLayout"    # Z
    .param p3, "invalidateIntrinsics"    # Z

    .line 1158
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 1898
    .local v2, "$i$f$checkPrecondition":I
    if-nez v0, :cond_1

    .line 1899
    const/4 v3, 0x0

    .line 1159
    .local v3, "$i$a$-checkPrecondition-LayoutNode$requestLookaheadRemeasure$1":I
    nop

    .line 1160
    nop

    .line 1899
    .end local v3    # "$i$a$-checkPrecondition-LayoutNode$requestLookaheadRemeasure$1":I
    const-string v3, "Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1901
    :cond_1
    nop

    .line 1162
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez v0, :cond_2

    return-void

    .line 1163
    .local v0, "owner":Landroidx/compose/ui/node/Owner;
    :cond_2
    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v2, :cond_3

    .line 1164
    nop

    .line 1165
    nop

    .line 1166
    nop

    .line 1167
    nop

    .line 1168
    nop

    .line 1164
    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/node/Owner;->onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    .line 1170
    if-eqz p3, :cond_3

    .line 1171
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadPassDelegate$ui()Landroidx/compose/ui/node/LookaheadPassDelegate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/LookaheadPassDelegate;->invalidateIntrinsicsParent(Z)V

    .line 1174
    :cond_3
    return-void
.end method

.method public final requestRelayout$ui(Z)V
    .locals 7
    .param p1, "forceRequest"    # Z

    .line 1226
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v0, :cond_1

    .line 1227
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    .end local p1    # "forceRequest":Z
    .local v4, "forceRequest":Z
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/Owner;->onRequestRelayout$default(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V

    goto :goto_0

    .end local v4    # "forceRequest":Z
    .restart local p1    # "forceRequest":Z
    :cond_0
    move v4, p1

    .end local p1    # "forceRequest":Z
    .restart local v4    # "forceRequest":Z
    goto :goto_0

    .line 1226
    .end local v4    # "forceRequest":Z
    .restart local p1    # "forceRequest":Z
    :cond_1
    move v4, p1

    .line 1229
    .end local p1    # "forceRequest":Z
    .restart local v4    # "forceRequest":Z
    :goto_0
    return-void
.end method

.method public final requestRemeasure$ui(ZZZ)V
    .locals 8
    .param p1, "forceRequest"    # Z
    .param p2, "scheduleMeasureAndLayout"    # Z
    .param p3, "invalidateIntrinsics"    # Z

    .line 1136
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->ignoreRemeasureRequests:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    if-nez v0, :cond_1

    .line 1137
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    .line 1138
    .local v1, "owner":Landroidx/compose/ui/node/Owner;
    nop

    .line 1139
    nop

    .line 1138
    nop

    .line 1140
    nop

    .line 1141
    nop

    .line 1138
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    .end local p1    # "forceRequest":Z
    .end local p2    # "scheduleMeasureAndLayout":Z
    .local v4, "forceRequest":Z
    .local v5, "scheduleMeasureAndLayout":Z
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/node/Owner;->onRequestMeasure$default(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .line 1143
    if-eqz p3, :cond_2

    .line 1144
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/compose/ui/node/MeasurePassDelegate;->invalidateIntrinsicsParent(Z)V

    goto :goto_0

    .line 1136
    .end local v1    # "owner":Landroidx/compose/ui/node/Owner;
    .end local v4    # "forceRequest":Z
    .end local v5    # "scheduleMeasureAndLayout":Z
    .restart local p1    # "forceRequest":Z
    .restart local p2    # "scheduleMeasureAndLayout":Z
    :cond_1
    move v4, p1

    move v5, p2

    .line 1147
    .end local p1    # "forceRequest":Z
    .end local p2    # "scheduleMeasureAndLayout":Z
    .restart local v4    # "forceRequest":Z
    .restart local v5    # "scheduleMeasureAndLayout":Z
    :cond_2
    :goto_0
    return-void
.end method

.method public final rescheduleRemeasureOrRelayout$ui(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 14
    .param p1, "it"    # Landroidx/compose/ui/node/LayoutNode;

    .line 1108
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode$LayoutState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 1109
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1113
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadMeasurePending$ui()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    .end local p1    # "it":Landroidx/compose/ui/node/LayoutNode;
    .local v2, "it":Landroidx/compose/ui/node/LayoutNode;
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    .line 1116
    .end local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    .restart local p1    # "it":Landroidx/compose/ui/node/LayoutNode;
    :cond_0
    move-object v2, p1

    .end local p1    # "it":Landroidx/compose/ui/node/LayoutNode;
    .restart local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLookaheadLayoutPending$ui()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1117
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRelayout$ui(Z)V

    .line 1119
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1120
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    .end local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    .local v8, "it":Landroidx/compose/ui/node/LayoutNode;
    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    .end local v8    # "it":Landroidx/compose/ui/node/LayoutNode;
    .restart local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1122
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui(Z)V

    .line 1128
    :cond_3
    :goto_0
    return-void

    .line 1126
    .end local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    .restart local p1    # "it":Landroidx/compose/ui/node/LayoutNode;
    :cond_4
    move-object v2, p1

    .end local p1    # "it":Landroidx/compose/ui/node/LayoutNode;
    .restart local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final resetSubtreeIntrinsicsUsage$ui()V
    .locals 11

    .line 1433
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v1, 0x0

    .line 2196
    .local v1, "$i$f$forEachChild":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .local v2, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 2197
    .local v3, "$i$f$forEach":I
    const/4 v4, 0x0

    .line 2198
    .local v4, "i$iv$iv":I
    iget-object v5, v2, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 2199
    .local v5, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    .line 2200
    .local v6, "size$iv$iv":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 2201
    aget-object v7, v5, v4

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .local v7, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v8, 0x0

    .line 1434
    .local v8, "$i$a$-forEachChild-LayoutNode$resetSubtreeIntrinsicsUsage$1":I
    iget-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->previousIntrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 1435
    iget-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v10, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v9, v10, :cond_0

    .line 1436
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->resetSubtreeIntrinsicsUsage$ui()V

    .line 1438
    :cond_0
    nop

    .line 2201
    .end local v7    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v8    # "$i$a$-forEachChild-LayoutNode$resetSubtreeIntrinsicsUsage$1":I
    nop

    .line 2202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    nop

    .line 2196
    .end local v2    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "i$iv$iv":I
    .end local v5    # "content$iv$iv":[Ljava/lang/Object;
    .end local v6    # "size$iv$iv":I
    nop

    .line 1439
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "$i$f$forEachChild":I
    return-void
.end method

.method public final rethrowWithComposeStackTrace(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 812
    move-object v0, p1

    .line 1628
    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 812
    .local v1, "$i$a$-also-LayoutNode$rethrowWithComposeStackTrace$1":I
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->getTraceContext()Landroidx/compose/runtime/tooling/CompositionErrorContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1628
    .local v2, "$this$rethrowWithComposeStackTrace_u24lambda_u240_u240":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    const/4 v3, 0x0

    .line 812
    .local v3, "$i$a$-apply-LayoutNode$rethrowWithComposeStackTrace$1$1":I
    invoke-interface {v2, p1, p0}, Landroidx/compose/runtime/tooling/CompositionErrorContext;->attachComposeStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-also-LayoutNode$rethrowWithComposeStackTrace$1":I
    .end local v2    # "$this$rethrowWithComposeStackTrace_u24lambda_u240_u240":Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .end local v3    # "$i$a$-apply-LayoutNode$rethrowWithComposeStackTrace$1$1":I
    :cond_0
    throw p1
.end method

.method public final setAddedToRectList$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 107
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    return-void
.end method

.method public final setCanMultiMeasure$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 886
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->canMultiMeasure:Z

    return-void
.end method

.method public setCompositeKeyHash(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 110
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->compositeKeyHash:I

    return-void
.end method

.method public setCompositionLocalMap(Landroidx/compose/runtime/CompositionLocalMap;)V
    .locals 31
    .param p1, "value"    # Landroidx/compose/runtime/CompositionLocalMap;

    .line 794
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

    .line 795
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/CompositionLocalMap;->get(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 796
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/CompositionLocalMap;->get(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 797
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/CompositionLocalMap;->get(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 798
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v3, 0x0

    .line 1813
    .local v3, "$i$f$getCompositionLocalConsumer-OLwlOKw":I
    const v4, 0x8000

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 798
    .end local v3    # "$i$f$getCompositionLocalConsumer-OLwlOKw":I
    nop

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 1814
    .local v4, "$i$f$headToTail-aLcG6gQ$ui":I
    move v5, v3

    .local v5, "mask$iv$iv":I
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1818
    .local v7, "$i$f$headToTail$ui":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_10

    .line 1819
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 1820
    .local v9, "$i$f$headToTail$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1821
    .local v10, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_f

    .line 1822
    move-object v11, v10

    .local v11, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1823
    .local v12, "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_e

    .line 1824
    move-object v13, v11

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1814
    .local v14, "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1825
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1826
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    .line 1827
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v0, :cond_d

    .line 1828
    instance-of v1, v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    move/from16 v19, v1

    if-eqz v19, :cond_1

    .line 1829
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .local v19, "modifierNode":Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
    const/16 v20, 0x0

    .line 799
    .local v20, "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$compositionLocalMap$1":I
    invoke-interface/range {v19 .. v19}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 800
    .local v1, "delegatedNode":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 801
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    move-object/from16 v21, v2

    goto :goto_2

    .line 803
    :cond_0
    move-object/from16 v21, v2

    const/4 v2, 0x1

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v21, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-virtual {v1, v2}, Landroidx/compose/ui/Modifier$Node;->setUpdatedNodeAwaitingAttachForInvalidation$ui(Z)V

    .line 805
    :goto_2
    nop

    .line 1829
    .end local v1    # "delegatedNode":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "modifierNode":Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
    .end local v20    # "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$compositionLocalMap$1":I
    goto/16 :goto_a

    .line 1830
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_1
    move-object/from16 v21, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move v1, v15

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v2, v0

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 1831
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v1

    move/from16 v22, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v20, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 1830
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_3
    if-eqz v2, :cond_c

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_c

    .line 1832
    const/4 v2, 0x0

    .line 1833
    .local v2, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1834
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1835
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v22, :cond_a

    .line 1836
    move-object/from16 v23, v22

    .local v23, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1837
    .local v24, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v25, v15

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1831
    .local v27, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v25

    if-eqz v28, :cond_3

    const/16 v25, 0x1

    goto :goto_5

    :cond_3
    const/16 v25, 0x0

    .line 1837
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v25, :cond_9

    .line 1838
    add-int/lit8 v2, v2, 0x1

    .line 1839
    const/4 v1, 0x1

    if-ne v2, v1, :cond_4

    .line 1840
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v18, v0

    goto :goto_9

    .line 1844
    :cond_4
    if-nez v18, :cond_5

    const/4 v1, 0x0

    .line 1845
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1846
    move-object/from16 v26, v0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v26, "node$iv$iv":Ljava/lang/Object;
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v27, 0x0

    .line 1847
    .local v27, "$i$f$MutableVector":I
    move/from16 v28, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v28, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v29, v2

    .end local v2    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v30, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v30, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1845
    .end local v27    # "$i$f$MutableVector":I
    .end local v30    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 1844
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .end local v28    # "$i$f$mutableVectorOf":I
    .end local v29    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "count$iv$iv":I
    :cond_5
    move-object/from16 v26, v0

    move/from16 v29, v2

    const/4 v0, 0x0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "count$iv$iv":I
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v29    # "count$iv$iv":I
    move-object/from16 v1, v18

    :goto_6
    nop

    .line 1848
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v26

    .line 1849
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 1850
    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1851
    :cond_6
    const/16 v18, 0x0

    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .local v18, "node$iv$iv":Ljava/lang/Object;
    goto :goto_7

    .line 1849
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    :cond_7
    move-object/from16 v18, v26

    .line 1853
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v18    # "node$iv$iv":Ljava/lang/Object;
    :goto_7
    if-eqz v1, :cond_8

    move-object/from16 v0, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v0, v23

    .line 1856
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move/from16 v2, v29

    goto :goto_9

    .line 1837
    .end local v1    # "stack$iv$iv":Ljava/lang/Object;
    .end local v29    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v26, v0

    move-object/from16 v0, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v18

    move-object/from16 v18, v26

    .line 1856
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "stack$iv$iv":Ljava/lang/Object;
    .local v18, "node$iv$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 1836
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1857
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v18, v1

    goto :goto_4

    .line 1859
    .end local v1    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v26, v0

    .line 1860
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_b

    .line 1862
    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v0, v26

    goto/16 :goto_1

    .line 1860
    :cond_b
    move-object/from16 v0, v26

    .line 1865
    .end local v2    # "count$iv$iv":I
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_c
    :goto_a
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    goto/16 :goto_1

    .line 1867
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move-object/from16 v21, v2

    .line 1814
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 1824
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    goto :goto_b

    .line 1823
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move-object/from16 v21, v2

    .line 1868
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_11

    .line 1869
    nop

    .line 1822
    .end local v11    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 1870
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    goto/16 :goto_0

    .line 1872
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f
    move-object/from16 v21, v2

    .line 1873
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$headToTail$ui":I
    .end local v10    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_c

    .line 1818
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_10
    move-object/from16 v21, v2

    .line 1874
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui":I
    .restart local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_11
    :goto_c
    nop

    .line 806
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui":I
    .end local v21    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    return-void
.end method

.method public setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 5
    .param p1, "value"    # Landroidx/compose/ui/unit/Density;

    .line 764
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 766
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onDensityOrLayoutDirectionChanged()V

    .line 768
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 1739
    .local v1, "$i$f$headToTail$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1740
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_0

    .line 1741
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 768
    .local v4, "$i$a$-headToTail$ui-LayoutNode$density$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->onDensityChange()V

    .line 1741
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-headToTail$ui-LayoutNode$density$1":I
    nop

    .line 1742
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 1744
    :cond_0
    nop

    .line 770
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$headToTail$ui":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    return-void
.end method

.method public final setDepth$ui(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 261
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    return-void
.end method

.method public final setGloballyPositionedObservers(I)V
    .locals 2
    .param p1, "value"    # I

    .line 1019
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    if-eq v0, p1, :cond_2

    .line 1020
    if-lez p1, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->setGloballyPositionedObservers(I)V

    .line 1023
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    if-lez v0, :cond_1

    .line 1024
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->setGloballyPositionedObservers(I)V

    .line 1026
    :cond_1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->globallyPositionedObservers:I

    .line 1028
    :cond_2
    return-void
.end method

.method public final setHasPositionalLayerTransformationsInOffsetFromRoot$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 102
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    return-void
.end method

.method public final setInnerLayerCoordinatorIsDirty$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 910
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    return-void
.end method

.method public final setInteropViewFactoryHolder$ui(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 246
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    return-void
.end method

.method public final setIntrinsicsUsageByParent$ui(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 877
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsUsageByParent:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-void
.end method

.method public final setLastOffsetFromParent--gyyYBs$ui(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-<set-?>$0"    # J

    .line 103
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNode;->lastOffsetFromParent:J

    return-void
.end method

.method public final setLastSize-ozmzZPI$ui(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-<set-?>$0"    # J

    .line 104
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNode;->lastSize:J

    return-void
.end method

.method public setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 5
    .param p1, "value"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 775
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, p1, :cond_1

    .line 776
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 777
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->onDensityOrLayoutDirectionChanged()V

    .line 779
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .line 1745
    .local v1, "$i$f$headToTail$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1746
    .local v2, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_0

    .line 1747
    move-object v3, v2

    .local v3, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 779
    .local v4, "$i$a$-headToTail$ui-LayoutNode$layoutDirection$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->onLayoutDirectionChange()V

    .line 1747
    .end local v3    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$a$-headToTail$ui-LayoutNode$layoutDirection$1":I
    nop

    .line 1748
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 1750
    :cond_0
    nop

    .line 781
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v1    # "$i$f$headToTail$ui":I
    .end local v2    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    return-void
.end method

.method public setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V
    .locals 2
    .param p1, "value"    # Landroidx/compose/ui/layout/MeasurePolicy;

    .line 722
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 724
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->intrinsicsPolicy:Landroidx/compose/ui/node/IntrinsicsPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/IntrinsicsPolicy;->updateFrom(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 727
    :cond_1
    return-void
.end method

.method public setModifier(Landroidx/compose/ui/Modifier;)V
    .locals 4
    .param p1, "value"    # Landroidx/compose/ui/Modifier;

    .line 956
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtual:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .local v0, "value$iv":Z
    :goto_1
    const/4 v2, 0x0

    .line 1880
    .local v2, "$i$f$requirePrecondition":I
    if-nez v0, :cond_2

    .line 1881
    const/4 v3, 0x0

    .line 957
    .local v3, "$i$a$-requirePrecondition-LayoutNode$modifier$1":I
    nop

    .line 1881
    .end local v3    # "$i$a$-requirePrecondition-LayoutNode$modifier$1":I
    const-string v3, "Modifiers are not supported on virtual LayoutNodes"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1883
    :cond_2
    nop

    .line 959
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v0

    xor-int/2addr v0, v1

    .restart local v0    # "value$iv":Z
    const/4 v1, 0x0

    .line 1884
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_3

    .line 1885
    const/4 v2, 0x0

    .line 959
    .local v2, "$i$a$-requirePrecondition-LayoutNode$modifier$2":I
    nop

    .line 1885
    .end local v2    # "$i$a$-requirePrecondition-LayoutNode$modifier$2":I
    const-string/jumbo v2, "modifier is updated when deactivated"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1887
    :cond_3
    nop

    .line 960
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->applyModifier(Landroidx/compose/ui/Modifier;)V

    .line 962
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    if-eqz v0, :cond_5

    .line 963
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateSemantics$ui()V

    goto :goto_2

    .line 966
    :cond_4
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->pendingModifier:Landroidx/compose/ui/Modifier;

    .line 968
    :cond_5
    :goto_2
    return-void
.end method

.method public final setNeedsOnGloballyPositionedDispatch$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 1011
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->needsOnGloballyPositionedDispatch:Z

    return-void
.end method

.method public final setOnAttach$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1002
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->onAttach:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnDetach$ui(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/Owner;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1005
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->onDetach:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOuterToInnerOffset--gyyYBs$ui(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-<set-?>$0"    # J

    .line 105
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    return-void
.end method

.method public final setOuterToInnerOffsetDirty$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 106
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    return-void
.end method

.method public setSemanticsId(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 90
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    return-void
.end method

.method public final setSemanticsInvalidated$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 420
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isSemanticsInvalidated:Z

    return-void
.end method

.method public final setSubcompositionsState$ui(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 906
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->subcompositionsState:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    return-void
.end method

.method public setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 31
    .param p1, "value"    # Landroidx/compose/ui/platform/ViewConfiguration;

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 786
    iput-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 788
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/4 v3, 0x0

    .line 1751
    .local v3, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v4, 0x10

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 788
    .end local v3    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 1752
    .local v4, "$i$f$headToTail-aLcG6gQ$ui":I
    move v5, v3

    .local v5, "mask$iv$iv":I
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1756
    .local v7, "$i$f$headToTail$ui":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_f

    .line 1757
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 1758
    .local v9, "$i$f$headToTail$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1759
    .local v10, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_e

    .line 1760
    move-object v11, v10

    .local v11, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1761
    .local v12, "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_d

    .line 1762
    move-object v13, v11

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1752
    .local v14, "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1763
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1764
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    .line 1765
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v0, :cond_c

    .line 1766
    instance-of v1, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v1, :cond_0

    .line 1767
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v1, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/16 v19, 0x0

    .line 788
    .local v19, "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$viewConfiguration$1":I
    invoke-interface {v1}, Landroidx/compose/ui/node/PointerInputModifierNode;->onViewConfigurationChange()V

    .line 1767
    .end local v1    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v19    # "$i$a$-headToTail-aLcG6gQ$ui-LayoutNode$viewConfiguration$1":I
    move-object/from16 v29, v2

    goto/16 :goto_9

    .line 1768
    :cond_0
    move v1, v15

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v19, v0

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1769
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v1

    move/from16 v22, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v21, :cond_1

    const/16 v19, 0x1

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    .line 1768
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_2
    if-eqz v19, :cond_b

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    .line 1770
    const/4 v1, 0x0

    .line 1771
    .local v1, "count$iv$iv":I
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1772
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1773
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v22, :cond_9

    .line 1774
    move-object/from16 v23, v22

    .local v23, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1775
    .local v24, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v25, v15

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1769
    .local v27, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v25

    if-eqz v28, :cond_2

    const/16 v25, 0x1

    goto :goto_4

    :cond_2
    const/16 v25, 0x0

    .line 1775
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v25, :cond_8

    .line 1776
    add-int/lit8 v1, v1, 0x1

    .line 1777
    move-object/from16 v25, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v25, "node$iv$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_3

    .line 1778
    move-object/from16 v0, v23

    move-object/from16 v29, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v0

    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 1782
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    :cond_3
    if-nez v18, :cond_4

    const/4 v0, 0x0

    .line 1783
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1784
    move/from16 v26, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v27, 0x0

    .line 1785
    .local v27, "$i$f$MutableVector":I
    move/from16 v28, v1

    .end local v1    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v29, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v29, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v30, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v30, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1783
    .end local v27    # "$i$f$MutableVector":I
    .end local v30    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 1782
    .end local v26    # "$i$f$mutableVectorOf":I
    .end local v28    # "count$iv$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "count$iv$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_4
    move/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v0, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v28    # "count$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move-object/from16 v1, v18

    :goto_5
    nop

    .line 1786
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v25

    .line 1787
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_6

    .line 1788
    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1789
    :cond_5
    const/16 v18, 0x0

    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .local v18, "node$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 1787
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    :cond_6
    move-object/from16 v18, v25

    .line 1791
    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v18    # "node$iv$iv":Ljava/lang/Object;
    :goto_6
    if-eqz v1, :cond_7

    move-object/from16 v0, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move-object/from16 v0, v23

    .line 1794
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object v2, v1

    move/from16 v1, v28

    goto :goto_8

    .line 1775
    .end local v28    # "count$iv$iv":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v1, "count$iv$iv":I
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v25, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v23

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    move-object/from16 v2, v18

    move-object/from16 v18, v25

    .line 1794
    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv":Ljava/lang/Object;
    .local v18, "node$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 1774
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1795
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v29

    goto :goto_3

    .line 1797
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    :cond_9
    move-object/from16 v25, v0

    move-object/from16 v29, v2

    .line 1798
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "node$iv$iv":Ljava/lang/Object;
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    .line 1800
    move-object/from16 v1, p1

    move-object/from16 v0, v25

    move-object/from16 v2, v29

    goto/16 :goto_1

    .line 1798
    :cond_a
    move-object/from16 v0, v25

    goto :goto_9

    .line 1768
    .end local v1    # "count$iv$iv":I
    .end local v25    # "node$iv$iv":Ljava/lang/Object;
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b
    move-object/from16 v29, v2

    .line 1803
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_9
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    goto/16 :goto_1

    .line 1805
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c
    move-object/from16 v29, v2

    .line 1752
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 1762
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-headToTail$ui-NodeChain$headToTail$1$iv":I
    goto :goto_a

    .line 1761
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_d
    move-object/from16 v29, v2

    .line 1806
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_a
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    .line 1807
    nop

    .line 1760
    .end local v11    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-headToTail$ui-NodeChain$headToTail$2$iv$iv":I
    nop

    .line 1808
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    goto/16 :goto_0

    .line 1810
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e
    move-object/from16 v29, v2

    .line 1811
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$headToTail$ui":I
    .end local v10    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_b

    .line 1756
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f
    move-object/from16 v29, v2

    .line 1812
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$headToTail$ui":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_10
    :goto_b
    nop

    .line 790
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$headToTail-aLcG6gQ$ui":I
    .end local v29    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_11
    return-void
.end method

.method public final setVirtualLookaheadRoot$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 112
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->isVirtualLookaheadRoot:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroidx/compose/ui/platform/JvmActuals_jvmKt;->simpleIdentityToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " measurePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 662
    nop

    .line 661
    const-string v1, " deactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isDeactivated()Z

    move-result v1

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateChildrenIfDirty$ui()V
    .locals 1

    .line 206
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->virtualChildrenCount:I

    if-lez v0, :cond_0

    .line 207
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->recreateUnfoldedChildrenIfDirty()V

    .line 209
    :cond_0
    return-void
.end method
