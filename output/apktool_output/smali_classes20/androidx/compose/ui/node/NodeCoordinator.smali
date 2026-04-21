.class public abstract Landroidx/compose/ui/node/NodeCoordinator;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.source "NodeCoordinator.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeCoordinator$Companion;,
        Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n+ 2 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 3 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 4 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 8 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 9 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 10 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 11 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 12 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 13 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 14 OwnerSnapshotObserver.kt\nandroidx/compose/ui/node/OwnerSnapshotObserver\n+ 15 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n+ 16 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n+ 17 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 18 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 19 Size.kt\nandroidx/compose/ui/geometry/Size\n+ 20 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 21 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 22 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,1659:1\n110#1,5:1660\n115#1,4:1708\n110#1,9:1712\n121#1:1728\n110#1,5:1729\n115#1,8:1777\n121#1:1854\n110#1,5:1855\n115#1,8:1903\n121#1:1914\n110#1,5:1915\n115#1,8:1963\n121#1:1977\n110#1,5:1978\n115#1,8:2026\n556#2,6:1665\n566#2,2:1672\n568#2,8:1677\n576#2,9:1688\n585#2,8:1700\n556#2,6:1734\n566#2,2:1741\n568#2,8:1746\n576#2,9:1757\n585#2,8:1769\n556#2,5:1792\n561#2:1798\n566#2,2:1800\n568#2,8:1805\n576#2,9:1816\n585#2,8:1828\n556#2,6:1860\n566#2,2:1867\n568#2,8:1872\n576#2,9:1883\n585#2,8:1895\n556#2,6:1920\n566#2,2:1927\n568#2,8:1932\n576#2,9:1943\n585#2,8:1955\n556#2,6:1983\n566#2,2:1990\n568#2,8:1995\n576#2,9:2006\n585#2,8:2018\n556#2,5:2085\n561#2:2102\n566#2,2:2104\n568#2,8:2109\n576#2,9:2120\n585#2,8:2132\n227#2:2219\n228#2,8:2224\n240#2:2234\n214#2:2235\n215#2,6:2240\n556#2,6:2246\n566#2,2:2253\n568#2,8:2258\n576#2,9:2269\n585#2,8:2281\n222#2,3:2289\n247#3:1671\n247#3:1740\n247#3:1790\n247#3:1799\n247#3:1866\n247#3:1926\n247#3:1989\n247#3:2103\n247#3:2252\n240#4,3:1674\n243#4,3:1697\n240#4,3:1743\n243#4,3:1766\n240#4,3:1802\n243#4,3:1825\n240#4,3:1869\n243#4,3:1892\n240#4,3:1929\n243#4,3:1952\n240#4,3:1992\n243#4,3:2015\n240#4,3:2106\n243#4,3:2129\n240#4,3:2255\n243#4,3:2278\n1107#5:1685\n1085#5,2:1686\n1107#5:1754\n1085#5,2:1755\n1107#5:1813\n1085#5,2:1814\n1107#5:1880\n1085#5,2:1881\n1107#5:1940\n1085#5,2:1941\n1107#5:2003\n1085#5,2:2004\n1107#5:2117\n1085#5,2:2118\n1107#5:2266\n1085#5,2:2267\n216#6,2:1721\n30#7:1723\n30#7:1725\n80#8:1724\n80#8:1726\n60#8:2091\n60#8:2094\n70#8:2097\n70#8:2100\n60#8:2141\n70#8:2144\n60#8:2147\n70#8:2150\n60#8:2168\n70#8:2171\n85#8:2181\n90#8:2183\n85#8:2189\n90#8:2191\n60#8:2193\n70#8:2196\n85#8:2199\n90#8:2201\n85#8:2203\n90#8:2205\n85#8:2207\n90#8:2209\n60#8:2213\n70#8:2216\n60#8:2293\n70#8:2296\n53#8,3:2299\n60#8:2303\n70#8:2306\n53#8,3:2309\n60#8:2313\n70#8:2316\n60#8:2320\n70#8:2324\n60#8:2326\n70#8:2329\n88#9:1727\n104#9:1785\n104#9:1789\n104#9:1791\n108#9:1847\n108#9:1853\n156#9:1912\n156#9:1913\n88#9:1975\n164#9:1976\n84#9:2068\n84#9:2080\n84#9:2083\n96#9:2084\n84#9:2218\n96#9:2232\n96#9:2233\n683#10,3:1786\n686#10,3:1836\n1#11:1797\n57#12,4:1839\n57#12,4:1843\n103#12,4:1971\n103#12,4:2034\n78#12,5:2038\n57#12,4:2045\n57#12,4:2152\n57#12,4:2156\n57#12,4:2160\n57#12,4:2172\n57#12,4:2176\n57#12,4:2184\n57#12,4:2220\n57#12,4:2236\n613#13,5:1848\n619#13:1911\n138#14,2:2043\n139#15:2049\n139#15:2050\n92#16,9:2051\n113#16,8:2060\n121#16,2:2069\n100#16:2071\n113#16,8:2072\n121#16,2:2081\n65#17:2090\n65#17:2093\n69#17:2096\n69#17:2099\n150#17:2164\n150#17:2165\n65#17:2167\n69#17:2170\n65#17:2212\n69#17:2215\n65#17:2292\n69#17:2295\n65#17:2325\n69#17:2328\n22#18:2092\n22#18:2095\n22#18:2098\n22#18:2101\n22#18:2142\n22#18:2145\n22#18:2148\n22#18:2151\n22#18:2169\n22#18:2194\n22#18:2197\n22#18:2214\n22#18:2217\n22#18:2294\n22#18:2297\n22#18:2304\n22#18:2307\n22#18:2314\n22#18:2317\n22#18:2321\n22#18:2327\n57#19:2140\n61#19:2143\n57#19:2146\n61#19:2149\n57#19:2192\n61#19:2195\n57#19:2302\n61#19:2305\n57#19:2312\n61#19:2315\n63#19:2318\n57#19:2319\n65#19:2322\n61#19:2323\n273#20:2166\n266#20,2:2210\n30#20:2298\n54#21:2180\n59#21:2182\n54#21:2188\n59#21:2190\n54#21:2198\n59#21:2200\n54#21:2202\n59#21:2204\n54#21:2206\n59#21:2208\n33#22:2308\n*S KotlinDebug\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator\n*L\n121#1:1660,5\n121#1:1708,4\n129#1:1712,9\n248#1:1728\n248#1:1729,5\n248#1:1777,8\n346#1:1854\n346#1:1855,5\n346#1:1903,8\n353#1:1914\n353#1:1915,5\n353#1:1963,8\n493#1:1977\n493#1:1978,5\n493#1:2026,8\n121#1:1665,6\n121#1:1672,2\n121#1:1677,8\n121#1:1688,9\n121#1:1700,8\n248#1:1734,6\n248#1:1741,2\n248#1:1746,8\n248#1:1757,9\n248#1:1769,8\n270#1:1792,5\n270#1:1798\n270#1:1800,2\n270#1:1805,8\n270#1:1816,9\n270#1:1828,8\n346#1:1860,6\n346#1:1867,2\n346#1:1872,8\n346#1:1883,9\n346#1:1895,8\n353#1:1920,6\n353#1:1927,2\n353#1:1932,8\n353#1:1943,9\n353#1:1955,8\n493#1:1983,6\n493#1:1990,2\n493#1:1995,8\n493#1:2006,9\n493#1:2018,8\n923#1:2085,5\n923#1:2102\n923#1:2104,2\n923#1:2109,8\n923#1:2120,9\n923#1:2132,8\n1385#1:2219\n1385#1:2224,8\n1421#1:2234\n1421#1:2235\n1421#1:2240,6\n1421#1:2246,6\n1421#1:2253,2\n1421#1:2258,8\n1421#1:2269,9\n1421#1:2281,8\n1421#1:2289,3\n121#1:1671\n248#1:1740\n269#1:1790\n270#1:1799\n346#1:1866\n353#1:1926\n493#1:1989\n923#1:2103\n1421#1:2252\n121#1:1674,3\n121#1:1697,3\n248#1:1743,3\n248#1:1766,3\n270#1:1802,3\n270#1:1825,3\n346#1:1869,3\n346#1:1892,3\n353#1:1929,3\n353#1:1952,3\n493#1:1992,3\n493#1:2015,3\n923#1:2106,3\n923#1:2129,3\n1421#1:2255,3\n1421#1:2278,3\n121#1:1685\n121#1:1686,2\n248#1:1754\n248#1:1755,2\n270#1:1813\n270#1:1814,2\n346#1:1880\n346#1:1881,2\n353#1:1940\n353#1:1941,2\n493#1:2003\n493#1:2004,2\n923#1:2117\n923#1:2118,2\n1421#1:2266\n1421#1:2267,2\n201#1:1721,2\n237#1:1723\n244#1:1725\n237#1:1724\n244#1:1726\n926#1:2091\n927#1:2094\n928#1:2097\n929#1:2100\n961#1:2141\n962#1:2144\n963#1:2147\n964#1:2150\n1077#1:2168\n1077#1:2171\n1123#1:2181\n1124#1:2183\n1239#1:2189\n1240#1:2191\n1291#1:2193\n1292#1:2196\n1296#1:2199\n1297#1:2201\n1300#1:2203\n1300#1:2205\n1335#1:2207\n1335#1:2209\n1356#1:2213\n1357#1:2216\n1430#1:2293\n1432#1:2296\n1435#1:2299,3\n1444#1:2303\n1445#1:2306\n1446#1:2309,3\n1459#1:2313\n1460#1:2316\n1466#1:2320\n1466#1:2324\n1470#1:2326\n1470#1:2329\n248#1:1727\n262#1:1785\n269#1:1789\n270#1:1791\n344#1:1847\n346#1:1853\n352#1:1912\n353#1:1913\n479#1:1975\n493#1:1976\n763#1:2068\n850#1:2080\n894#1:2083\n923#1:2084\n1385#1:2218\n1415#1:2232\n1421#1:2233\n268#1:1786,3\n268#1:1836,3\n287#1:1839,4\n310#1:1843,4\n386#1:1971,4\n536#1:2034,4\n589#1:2038,5\n656#1:2045,4\n983#1:2152,4\n991#1:2156,4\n998#1:2160,4\n1112#1:2172,4\n1113#1:2176,4\n1168#1:2184,4\n1385#1:2220,4\n1421#1:2236,4\n345#1:1848,5\n345#1:1911\n596#1:2043,2\n709#1:2049\n734#1:2050\n762#1:2051,9\n762#1:2060,8\n762#1:2069,2\n849#1:2071\n849#1:2072,8\n849#1:2081,2\n926#1:2090\n927#1:2093\n928#1:2096\n929#1:2099\n1034#1:2164\n1032#1:2165\n1077#1:2167\n1077#1:2170\n1356#1:2212\n1357#1:2215\n1430#1:2292\n1432#1:2295\n1470#1:2325\n1470#1:2328\n926#1:2092\n927#1:2095\n928#1:2098\n929#1:2101\n961#1:2142\n962#1:2145\n963#1:2148\n964#1:2151\n1077#1:2169\n1291#1:2194\n1292#1:2197\n1356#1:2214\n1357#1:2217\n1430#1:2294\n1432#1:2297\n1444#1:2304\n1445#1:2307\n1459#1:2314\n1460#1:2317\n1466#1:2321\n1470#1:2327\n961#1:2140\n962#1:2143\n963#1:2146\n964#1:2149\n1291#1:2192\n1292#1:2195\n1444#1:2302\n1445#1:2305\n1459#1:2312\n1460#1:2315\n1466#1:2318\n1466#1:2319\n1466#1:2322\n1466#1:2323\n1076#1:2166\n1344#1:2210,2\n1435#1:2298\n1123#1:2180\n1124#1:2182\n1239#1:2188\n1240#1:2190\n1296#1:2198\n1297#1:2200\n1300#1:2202\n1300#1:2204\n1335#1:2206\n1335#1:2208\n1446#1:2308\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008!\u0018\u0000 \u00c7\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004\u00c6\u0002\u00c7\u0002B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u00103\u001a\u0004\u0018\u00010\u00152\u0006\u00104\u001a\u00020\u000cH\u0002J-\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00104\u001a\u00020\u000c2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002060:H\u0086\u0008J:\u00105\u001a\u000206\"\u0006\u0008\u0000\u0010;\u0018\u00012\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H;0=2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u0002H;\u0012\u0004\u0012\u0002060:H\u0086\u0008\u00a2\u0006\u0004\u0008>\u0010?J\u001b\u0010@\u001a\u00020\u000c2\n\u0010<\u001a\u0006\u0012\u0002\u0008\u00030=H\u0002\u00a2\u0006\u0004\u0008A\u0010BJ\u001b\u0010C\u001a\u0004\u0018\u00010\u00152\n\u0010<\u001a\u0006\u0012\u0002\u0008\u00030=\u00a2\u0006\u0004\u0008D\u0010EJ\u0006\u0010U\u001a\u00020\u000cJ\r\u0010\\\u001a\u000206H\u0010\u00a2\u0006\u0002\u0008]J\u0008\u0010q\u001a\u000206H&J\u0018\u0010v\u001a\u0002062\u0006\u0010w\u001a\u0002082\u0006\u0010x\u001a\u000208H\u0014J\u000f\u0010\u0087\u0001\u001a\u000206H\u0000\u00a2\u0006\u0003\u0008\u0088\u0001J0\u0010\u00a7\u0001\u001a\u00030\u00a8\u00012\u0008\u0010\u00a9\u0001\u001a\u00030\u0099\u00012\u0010\u0008\u0004\u00109\u001a\n\u0012\u0005\u0012\u00030\u00a8\u00010\u00aa\u0001H\u0084\u0008\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u0007\u0010\u00ad\u0001\u001a\u000206J\u0007\u0010\u00ae\u0001\u001a\u000206J=\u0010\u00af\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:\u00a2\u0006\u0002\u0008MH\u0014\u00a2\u0006\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001J,\u0010\u00af\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0008\u0010\u00b2\u0001\u001a\u00030\u00b3\u0001H\u0014\u00a2\u0006\u0006\u0008\u00b0\u0001\u0010\u00b4\u0001JI\u0010\u00b5\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:\u00a2\u0006\u0002\u0008M2\n\u0010\u00b6\u0001\u001a\u0005\u0018\u00010\u00b3\u0001H\u0002\u00a2\u0006\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001J\u0007\u0010\u00b9\u0001\u001a\u000206JG\u0010\u00ba\u0001\u001a\u0002062\u0006\u0010z\u001a\u00020y2\u0006\u0010\u007f\u001a\u00020%2\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:\u00a2\u0006\u0002\u0008M2\n\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00b3\u0001\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u00b8\u0001J\u001d\u0010\u00bc\u0001\u001a\u0002062\u0008\u0010\u00bd\u0001\u001a\u00030\u00be\u00012\n\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00b3\u0001J\u001f\u0010\u00c0\u0001\u001a\u0002062\u0008\u0010\u00bd\u0001\u001a\u00030\u00be\u00012\n\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00b3\u0001H\u0002J\u001f\u0010\u00c1\u0001\u001a\u0002062\u0008\u0010\u00bd\u0001\u001a\u00030\u00be\u00012\n\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00b3\u0001H\u0016J\u0007\u0010\u00c2\u0001\u001a\u000206J-\u0010\u00ca\u0001\u001a\u0002062\u0019\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:\u00a2\u0006\u0002\u0008M2\t\u0008\u0002\u0010\u00cb\u0001\u001a\u00020\u000cJ\u0014\u0010\u00cc\u0001\u001a\u0002062\t\u0008\u0002\u0010\u00cd\u0001\u001a\u00020\u000cH\u0002JA\u0010\u00d8\u0001\u001a\u0002062\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e1\u0001\u001a\u00020\u000c\u00a2\u0006\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001JI\u0010\u00e4\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e1\u0001\u001a\u00020\u000cH\u0002\u00a2\u0006\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001J[\u0010\u00e7\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e1\u0001\u001a\u00020\u000c2\u0007\u0010\u00e8\u0001\u001a\u00020%2\u0007\u0010\u00e9\u0001\u001a\u00020\u000cH\u0002\u00a2\u0006\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001JR\u0010\u00ec\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e1\u0001\u001a\u00020\u000c2\u0007\u0010\u00e8\u0001\u001a\u00020%H\u0002\u00a2\u0006\u0006\u0008\u00ed\u0001\u0010\u00ee\u0001JR\u0010\u00ef\u0001\u001a\u000206*\u0004\u0018\u00010\u00152\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e1\u0001\u001a\u00020\u000c2\u0007\u0010\u00e8\u0001\u001a\u00020%H\u0002\u00a2\u0006\u0006\u0008\u00f0\u0001\u0010\u00ee\u0001J,\u0010\u00f1\u0001\u001a\u00020\u000c*\u0004\u0018\u00010\u00152\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u0001H\u0002\u00a2\u0006\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001JC\u0010\u00f4\u0001\u001a\u0002062\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00dd\u0001\u001a\u00030\u00de\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u00e0\u00012\u0007\u0010\u00e1\u0001\u001a\u00020\u000cH\u0016\u00a2\u0006\u0006\u0008\u00f5\u0001\u0010\u00e3\u0001J\u0008\u0010\u00f6\u0001\u001a\u00030\u00f7\u0001J\u001d\u0010\u00f8\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00f9\u0001\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u00fa\u0001\u0010\u00fb\u0001J\u001d\u0010\u00fc\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00fd\u0001\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u00fe\u0001\u0010\u00fb\u0001J\u001d\u0010\u00ff\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u0080\u0002\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u0081\u0002\u0010\u00fb\u0001J\u001d\u0010\u0082\u0002\u001a\u00030\u00dc\u00012\u0008\u0010\u00fd\u0001\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u0083\u0002\u0010\u00fb\u0001J\r\u0010\u0084\u0002\u001a\u00020\u0000*\u00020\u0003H\u0002J&\u0010\u0085\u0002\u001a\u00030\u00dc\u00012\u0007\u0010\u0086\u0002\u001a\u00020\u00032\u0008\u0010\u0087\u0002\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u0088\u0002\u0010\u0089\u0002J/\u0010\u0085\u0002\u001a\u00030\u00dc\u00012\u0007\u0010\u0086\u0002\u001a\u00020\u00032\u0008\u0010\u0087\u0002\u001a\u00030\u00dc\u00012\u0007\u0010\u008a\u0002\u001a\u00020\u000cH\u0016\u00a2\u0006\u0006\u0008\u008b\u0002\u0010\u008c\u0002J%\u0010\u008d\u0002\u001a\u0002062\u0007\u0010\u0086\u0002\u001a\u00020\u00032\u0008\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0016\u00a2\u0006\u0006\u0008\u0090\u0002\u0010\u0091\u0002J\u001c\u0010\u0092\u0002\u001a\u0002062\u0008\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0016\u00a2\u0006\u0006\u0008\u0093\u0002\u0010\u0094\u0002J%\u0010\u0095\u0002\u001a\u0002062\u0007\u0010\u0096\u0002\u001a\u00020\u00002\u0008\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0002\u00a2\u0006\u0006\u0008\u0097\u0002\u0010\u0098\u0002J%\u0010\u0099\u0002\u001a\u0002062\u0007\u0010\u0096\u0002\u001a\u00020\u00002\u0008\u0010\u008e\u0002\u001a\u00030\u008f\u0002H\u0002\u00a2\u0006\u0006\u0008\u009a\u0002\u0010\u0098\u0002J\u001c\u0010\u009b\u0002\u001a\u00030\u00f7\u00012\u0007\u0010\u0086\u0002\u001a\u00020\u00032\u0007\u0010\u009c\u0002\u001a\u00020\u000cH\u0016J/\u0010\u009d\u0002\u001a\u00030\u00dc\u00012\u0007\u0010\u0096\u0002\u001a\u00020\u00002\u0008\u0010\u009e\u0002\u001a\u00030\u00dc\u00012\u0007\u0010\u008a\u0002\u001a\u00020\u000cH\u0002\u00a2\u0006\u0006\u0008\u009f\u0002\u0010\u00a0\u0002J%\u0010\u009d\u0002\u001a\u0002062\u0007\u0010\u0096\u0002\u001a\u00020\u00002\u0008\u0010\u00a1\u0002\u001a\u00030\u008e\u00012\u0007\u0010\u009c\u0002\u001a\u00020\u000cH\u0002J\u001d\u0010\u00a2\u0002\u001a\u00030\u00dc\u00012\u0008\u0010\u00fd\u0001\u001a\u00030\u00dc\u0001H\u0016\u00a2\u0006\u0006\u0008\u00a3\u0002\u0010\u00fb\u0001J)\u0010\u00a4\u0002\u001a\u0002062\u0008\u0010\u00bd\u0001\u001a\u00030\u00be\u00012\u0013\u00109\u001a\u000f\u0012\u0005\u0012\u00030\u00be\u0001\u0012\u0004\u0012\u0002060:H\u0084\u0008J\'\u0010\u00a5\u0002\u001a\u00030\u00dc\u00012\u0007\u0010z\u001a\u00030\u00dc\u00012\t\u0008\u0002\u0010\u008a\u0002\u001a\u00020\u000cH\u0016\u00a2\u0006\u0006\u0008\u00a6\u0002\u0010\u00a7\u0002J\'\u0010\u00a8\u0002\u001a\u00030\u00dc\u00012\u0007\u0010z\u001a\u00030\u00dc\u00012\t\u0008\u0002\u0010\u008a\u0002\u001a\u00020\u000cH\u0016\u00a2\u0006\u0006\u0008\u00a9\u0002\u0010\u00a7\u0002J\u001d\u0010\u00aa\u0002\u001a\u0002062\u0008\u0010\u00bd\u0001\u001a\u00030\u00be\u00012\u0008\u0010\u00ab\u0002\u001a\u00030\u00ac\u0002H\u0004J\u0007\u0010\u00ad\u0002\u001a\u000206J\u0007\u0010\u00ae\u0002\u001a\u000206J-\u0010\u00af\u0002\u001a\u0002062\u0008\u0010\u00b0\u0002\u001a\u00030\u008e\u00012\u0007\u0010\u009c\u0002\u001a\u00020\u000c2\t\u0008\u0002\u0010\u00b1\u0002\u001a\u00020\u000cH\u0000\u00a2\u0006\u0003\u0008\u00b2\u0002J\u001c\u0010\u00b3\u0002\u001a\u0002062\u0008\u0010\u00b0\u0002\u001a\u00030\u008e\u00012\u0007\u0010\u009c\u0002\u001a\u00020\u000cH\u0002J\u001c\u0010\u00b4\u0002\u001a\u00020\u000c2\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u0001H\u0004\u00a2\u0006\u0006\u0008\u00b5\u0002\u0010\u00b6\u0002J\u001c\u0010\u00b7\u0002\u001a\u00020\u000c2\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u0001H\u0004\u00a2\u0006\u0006\u0008\u00b8\u0002\u0010\u00b6\u0002J\t\u0010\u00b9\u0002\u001a\u000206H\u0016J\t\u0010\u00ba\u0002\u001a\u000206H\u0016J\u0018\u0010\u00bb\u0002\u001a\u00020\u00002\u0007\u0010\u00bc\u0002\u001a\u00020\u0000H\u0000\u00a2\u0006\u0003\u0008\u00bd\u0002J\u0007\u0010\u00be\u0002\u001a\u00020\u000cJ\u001d\u0010\u00bf\u0002\u001a\u00030\u00dc\u00012\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u0001H\u0002\u00a2\u0006\u0006\u0008\u00c0\u0002\u0010\u00fb\u0001J\u001d\u0010\u00c1\u0002\u001a\u00030\u00d6\u00012\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0004\u00a2\u0006\u0006\u0008\u00c2\u0002\u0010\u00fb\u0001J&\u0010\u00c3\u0002\u001a\u00020%2\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u00012\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0004\u00a2\u0006\u0006\u0008\u00c4\u0002\u0010\u00c5\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u0012\u0010\u0014\u001a\u00020\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u0014\u0010 \u001a\u00020!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020%8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\'R\u0016\u0010*\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u00100\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u000eR\u000e\u00102\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010F\u001a\u00020G8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u000e\u0010J\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000RD\u0010N\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:\u00a2\u0006\u0002\u0008M2\u0019\u0010K\u001a\u0015\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u000206\u0018\u00010:\u00a2\u0006\u0002\u0008M@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010PR\u000e\u0010Q\u001a\u00020RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010V\u001a\u00020W8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0016\u0010Z\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010,R\u0014\u0010^\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010\u000eR\u0014\u0010`\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010\u000eR\u0010\u0010a\u001a\u0004\u0018\u00010bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010c\u001a\u00020b2\u0006\u0010K\u001a\u00020b8P@PX\u0090\u000e\u00a2\u0006\u000c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR&\u0010i\u001a\u0004\u0018\u00010h2\u0008\u0010K\u001a\u0004\u0018\u00010h@dX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u0016\u0010n\u001a\n\u0012\u0004\u0012\u00020p\u0018\u00010oX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010r\u001a\u0008\u0012\u0004\u0012\u00020p0s8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010uR&\u0010z\u001a\u00020y2\u0006\u0010K\u001a\u00020y@TX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010~\u001a\u0004\u0008{\u0010I\"\u0004\u0008|\u0010}R\'\u0010\u007f\u001a\u00020%2\u0006\u0010K\u001a\u00020%@DX\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010\'\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u00018VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0015\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0007\u001a\u0005\u0008\u008a\u0001\u0010/R\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0007\u001a\u0005\u0008\u008c\u0001\u0010/R\u0012\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u008f\u0001\u001a\u00030\u008e\u00018DX\u0084\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u0093\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u0012\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0097\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0098\u0001\u001a\u00030\u0099\u00018@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u009a\u0001\u0010IR \u0010\u009b\u0001\u001a\u00030\u009c\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u001d\u0010\u00a1\u0001\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a2\u0001\u0010\u000e\"\u0005\u0008\u00a3\u0001\u0010\u0010R\u001d\u0010\u00a4\u0001\u001a\u00020\u000cX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a5\u0001\u0010\u000e\"\u0005\u0008\u00a6\u0001\u0010\u0010R\u0012\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00b3\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u00be\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u00c5\u0001\u001a\u001b\u0012\u0005\u0012\u00030\u00be\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u00b3\u0001\u0012\u0004\u0012\u000206\u0018\u00010\u00c6\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\u00c7\u0001\u001a\u0019\u0012\u0005\u0012\u00030\u00be\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u00b3\u0001\u0012\u0004\u0012\u0002060\u00c6\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001R\u0016\u0010\u00ce\u0001\u001a\t\u0012\u0004\u0012\u0002060\u00aa\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u00cf\u0001\u001a\u00020\u000c2\u0006\u0010K\u001a\u00020\u000c@BX\u0080\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u00d0\u0001\u0010\u000eR\'\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00d1\u00012\t\u0010K\u001a\u0005\u0018\u00010\u00d1\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001R\u0012\u0010\u00b6\u0001\u001a\u0005\u0018\u00010\u00b3\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00d4\u0001\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d4\u0001\u0010\u000eR\u0014\u0010\u00d5\u0001\u001a\u00030\u00d6\u00018F\u00a2\u0006\u0007\u001a\u0005\u0008\u00d7\u0001\u0010I\u00a8\u0006\u00c8\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "layoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "<init>",
        "(Landroidx/compose/ui/node/LayoutNode;)V",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "forcePlaceWithLookaheadOffset",
        "",
        "getForcePlaceWithLookaheadOffset$ui",
        "()Z",
        "setForcePlaceWithLookaheadOffset$ui",
        "(Z)V",
        "forceMeasureWithLookaheadConstraints",
        "getForceMeasureWithLookaheadConstraints$ui",
        "setForceMeasureWithLookaheadConstraints$ui",
        "tail",
        "Landroidx/compose/ui/Modifier$Node;",
        "getTail",
        "()Landroidx/compose/ui/Modifier$Node;",
        "wrapped",
        "getWrapped$ui",
        "()Landroidx/compose/ui/node/NodeCoordinator;",
        "setWrapped$ui",
        "(Landroidx/compose/ui/node/NodeCoordinator;)V",
        "wrappedBy",
        "getWrappedBy$ui",
        "setWrappedBy$ui",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "",
        "getDensity",
        "()F",
        "fontScale",
        "getFontScale",
        "parent",
        "getParent",
        "()Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "coordinates",
        "getCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "introducesMotionFrameOfReference",
        "getIntroducesMotionFrameOfReference",
        "released",
        "headNode",
        "includeTail",
        "visitNodes",
        "",
        "mask",
        "",
        "block",
        "Lkotlin/Function1;",
        "T",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "visitNodes-aLcG6gQ",
        "(ILkotlin/jvm/functions/Function1;)V",
        "hasNode",
        "hasNode-H91voCI",
        "(I)Z",
        "head",
        "head-H91voCI",
        "(I)Landroidx/compose/ui/Modifier$Node;",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "()J",
        "isClipping",
        "value",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/ExtensionFunctionType;",
        "layerBlock",
        "getLayerBlock",
        "()Lkotlin/jvm/functions/Function1;",
        "layerDensity",
        "Landroidx/compose/ui/unit/Density;",
        "layerLayoutDirection",
        "lastLayerAlpha",
        "isTransparent",
        "alignmentLinesOwner",
        "Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "getAlignmentLinesOwner",
        "()Landroidx/compose/ui/node/AlignmentLinesOwner;",
        "child",
        "getChild",
        "replace",
        "replace$ui",
        "hasMeasureResult",
        "getHasMeasureResult",
        "isAttached",
        "_measureResult",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureResult",
        "getMeasureResult$ui",
        "()Landroidx/compose/ui/layout/MeasureResult;",
        "setMeasureResult$ui",
        "(Landroidx/compose/ui/layout/MeasureResult;)V",
        "Landroidx/compose/ui/node/LookaheadDelegate;",
        "lookaheadDelegate",
        "getLookaheadDelegate",
        "()Landroidx/compose/ui/node/LookaheadDelegate;",
        "setLookaheadDelegate",
        "(Landroidx/compose/ui/node/LookaheadDelegate;)V",
        "oldAlignmentLines",
        "Landroidx/collection/MutableObjectIntMap;",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "ensureLookaheadDelegateCreated",
        "providedAlignmentLines",
        "",
        "getProvidedAlignmentLines",
        "()Ljava/util/Set;",
        "onMeasureResultChanged",
        "width",
        "height",
        "Landroidx/compose/ui/unit/IntOffset;",
        "position",
        "getPosition-nOcc-ac",
        "setPosition--gyyYBs",
        "(J)V",
        "J",
        "zIndex",
        "getZIndex",
        "setZIndex",
        "(F)V",
        "parentData",
        "",
        "getParentData",
        "()Ljava/lang/Object;",
        "onCoordinatesUsed",
        "onCoordinatesUsed$ui",
        "parentLayoutCoordinates",
        "getParentLayoutCoordinates",
        "parentCoordinates",
        "getParentCoordinates",
        "_rectCache",
        "Landroidx/compose/ui/geometry/MutableRect;",
        "rectCache",
        "getRectCache",
        "()Landroidx/compose/ui/geometry/MutableRect;",
        "snapshotObserver",
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "getSnapshotObserver",
        "()Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "layerPositionalProperties",
        "Landroidx/compose/ui/node/LayerPositionalProperties;",
        "lastMeasurementConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getLastMeasurementConstraints-msEJaDk$ui",
        "lastShape",
        "Landroidx/compose/ui/graphics/Shape;",
        "getLastShape$ui",
        "()Landroidx/compose/ui/graphics/Shape;",
        "setLastShape$ui",
        "(Landroidx/compose/ui/graphics/Shape;)V",
        "lastClip",
        "getLastClip$ui",
        "setLastClip$ui",
        "wasLayerBlockInvoked",
        "getWasLayerBlockInvoked$ui",
        "setWasLayerBlockInvoked$ui",
        "performingMeasure",
        "Landroidx/compose/ui/layout/Placeable;",
        "constraints",
        "Lkotlin/Function0;",
        "performingMeasure-K40F9xA",
        "(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;",
        "onMeasured",
        "onUnplaced",
        "placeAt",
        "placeAt-f8xVGno",
        "(JFLkotlin/jvm/functions/Function1;)V",
        "layer",
        "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
        "(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V",
        "placeSelf",
        "explicitLayer",
        "placeSelf-MLgxB_4",
        "(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V",
        "releaseLayer",
        "placeSelfApparentToRealOffset",
        "placeSelfApparentToRealOffset-MLgxB_4",
        "draw",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "graphicsLayer",
        "drawContainedDrawModifiers",
        "performDraw",
        "onPlaced",
        "drawBlockParentLayer",
        "drawBlockCanvas",
        "_drawBlock",
        "Lkotlin/Function2;",
        "drawBlock",
        "getDrawBlock",
        "()Lkotlin/jvm/functions/Function2;",
        "updateLayerBlock",
        "forceUpdateLayerParameters",
        "updateLayerParameters",
        "invokeOnLayoutChange",
        "invalidateParentLayer",
        "lastLayerDrawingWasSkipped",
        "getLastLayerDrawingWasSkipped$ui",
        "Landroidx/compose/ui/node/OwnedLayer;",
        "getLayer",
        "()Landroidx/compose/ui/node/OwnedLayer;",
        "isValidOwnerScope",
        "minimumTouchTargetSize",
        "Landroidx/compose/ui/geometry/Size;",
        "getMinimumTouchTargetSize-NH-jbRc",
        "hitTest",
        "hitTestSource",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "pointerPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "pointerType",
        "Landroidx/compose/ui/input/pointer/PointerType;",
        "isInLayer",
        "hitTest-qzLsGqo",
        "(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V",
        "hit",
        "hit-5ShdDok",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V",
        "outOfBoundsHit",
        "distanceFromEdge",
        "isHitInMinimumTouchTargetBetter",
        "outOfBoundsHit-8NAm7pk",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V",
        "hitNear",
        "hitNear-Fh5PU_I",
        "(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V",
        "speculativeHit",
        "speculativeHit-Fh5PU_I",
        "isInExpandedTouchBounds",
        "isInExpandedTouchBounds-ThD-n1k",
        "(Landroidx/compose/ui/Modifier$Node;JI)Z",
        "hitTestChild",
        "hitTestChild-qzLsGqo",
        "touchBoundsInRoot",
        "Landroidx/compose/ui/geometry/Rect;",
        "screenToLocal",
        "relativeToScreen",
        "screenToLocal-MK-Hz9U",
        "(J)J",
        "localToScreen",
        "relativeToLocal",
        "localToScreen-MK-Hz9U",
        "windowToLocal",
        "relativeToWindow",
        "windowToLocal-MK-Hz9U",
        "localToWindow",
        "localToWindow-MK-Hz9U",
        "toCoordinator",
        "localPositionOf",
        "sourceCoordinates",
        "relativeToSource",
        "localPositionOf-R5De75A",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;J)J",
        "includeMotionFrameOfReference",
        "localPositionOf-S_NoaFU",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J",
        "transformFrom",
        "matrix",
        "Landroidx/compose/ui/graphics/Matrix;",
        "transformFrom-EL8BTi8",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V",
        "transformToScreen",
        "transformToScreen-58bKbWc",
        "([F)V",
        "transformToAncestor",
        "ancestor",
        "transformToAncestor-EL8BTi8",
        "(Landroidx/compose/ui/node/NodeCoordinator;[F)V",
        "transformFromAncestor",
        "transformFromAncestor-EL8BTi8",
        "localBoundingBoxOf",
        "clipBounds",
        "ancestorToLocal",
        "offset",
        "ancestorToLocal-S_NoaFU",
        "(Landroidx/compose/ui/node/NodeCoordinator;JZ)J",
        "rect",
        "localToRoot",
        "localToRoot-MK-Hz9U",
        "withPositionTranslation",
        "toParentPosition",
        "toParentPosition-8S9VItk",
        "(JZ)J",
        "fromParentPosition",
        "fromParentPosition-8S9VItk",
        "drawBorder",
        "paint",
        "Landroidx/compose/ui/graphics/Paint;",
        "onLayoutNodeDetach",
        "onRelease",
        "rectInParent",
        "bounds",
        "clipToMinimumTouchTargetSize",
        "rectInParent$ui",
        "fromParentRect",
        "withinLayerBounds",
        "withinLayerBounds-k-4lQ0M",
        "(J)Z",
        "isPointerInBounds",
        "isPointerInBounds-k-4lQ0M",
        "invalidateLayer",
        "onLayoutModifierNodeChanged",
        "findCommonAncestor",
        "other",
        "findCommonAncestor$ui",
        "shouldSharePointerInputWithSiblings",
        "offsetFromEdge",
        "offsetFromEdge-MK-Hz9U",
        "calculateMinimumTouchTargetPadding",
        "calculateMinimumTouchTargetPadding-E7KxVPU",
        "distanceInMinimumTouchTarget",
        "distanceInMinimumTouchTarget-tz77jQw",
        "(JJ)F",
        "HitTestSource",
        "Companion",
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
.field public static final $stable:I = 0x0

.field public static final Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

.field public static final ExpectAttachedLayoutCoordinates:Ljava/lang/String; = "LayoutCoordinate operations are only valid when isAttached is true"

.field private static final PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field private static final SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

.field public static final UnmeasuredError:Ljava/lang/String; = "Asking for measurement result of unmeasured layout modifier"

.field private static final graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

.field private static final onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/NodeCoordinator;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field private static final tmpMatrix:[F


# instance fields
.field private _drawBlock:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "-",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private _measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private _rectCache:Landroidx/compose/ui/geometry/MutableRect;

.field private drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

.field private drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private forceMeasureWithLookaheadConstraints:Z

.field private forcePlaceWithLookaheadOffset:Z

.field private final invalidateParentLayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isClipping:Z

.field private lastClip:Z

.field private lastLayerAlpha:F

.field private lastLayerDrawingWasSkipped:Z

.field private lastShape:Landroidx/compose/ui/graphics/Shape;

.field private layer:Landroidx/compose/ui/node/OwnedLayer;

.field private layerBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private layerDensity:Landroidx/compose/ui/unit/Density;

.field private layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field private oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectIntMap<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            ">;"
        }
    .end annotation
.end field

.field private position:J

.field private released:Z

.field private wasLayerBlockInvoked:Z

.field private wrapped:Landroidx/compose/ui/node/NodeCoordinator;

.field private wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

.field private zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

    .line 1513
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    .line 1520
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    .line 1523
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1524
    new-instance v0, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 1528
    const/4 v0, 0x1

    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    .line 1532
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    .line 1555
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 69
    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 145
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 147
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    .line 252
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    .line 329
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 660
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    .line 69
    return-void
.end method

.method public static final synthetic access$drawContainedDrawModifiers(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "graphicsLayer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public static final synthetic access$getDrawBlockCanvas$p(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/graphics/Canvas;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 69
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

    return-object v0
.end method

.method public static final synthetic access$getDrawBlockParentLayer$p(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 69
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object v0
.end method

.method public static final synthetic access$getGraphicsLayerScope$cp()Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
    .locals 1

    .line 69
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    return-object v0
.end method

.method public static final synthetic access$getOnCommitAffectingLayer$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 69
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayer:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getPointerInputSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1

    .line 69
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-object v0
.end method

.method public static final synthetic access$getSemanticsSource$cp()Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .locals 1

    .line 69
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;

    return-object v0
.end method

.method public static final synthetic access$getSnapshotObserver(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 69
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "includeTail"    # Z

    .line 69
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "$receiver"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F
    .param p9, "isHitInMinimumTouchTargetBetter"    # Z

    .line 69
    invoke-direct/range {p0 .. p9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    return-void
.end method

.method public static final synthetic access$setDrawBlockCanvas$p(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "<set-?>"    # Landroidx/compose/ui/graphics/Canvas;

    .line 69
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

    return-void
.end method

.method public static final synthetic access$setDrawBlockParentLayer$p(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "<set-?>"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 69
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public static final synthetic access$setLastLayerDrawingWasSkipped$p(Landroidx/compose/ui/node/NodeCoordinator;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "<set-?>"    # Z

    .line 69
    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    return-void
.end method

.method public static final synthetic access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p1, "$v$c$androidx-compose-ui-unit-Constraints$-value$0"    # J

    .line 69
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasurementConstraints-BRTryo0(J)V

    return-void
.end method

.method private final ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 1
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "rect"    # Landroidx/compose/ui/geometry/MutableRect;
    .param p3, "clipBounds"    # Z

    .line 1159
    if-ne p1, p0, :cond_0

    .line 1160
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 1163
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V

    return-void
.end method

.method private final ancestorToLocal-S_NoaFU(Landroidx/compose/ui/node/NodeCoordinator;JZ)J
    .locals 3
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J
    .param p4, "includeMotionFrameOfReference"    # Z

    .line 1145
    if-ne p1, p0, :cond_0

    .line 1146
    return-wide p2

    .line 1148
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 1149
    .local v0, "wrappedBy":Landroidx/compose/ui/node/NodeCoordinator;
    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    nop

    .line 1153
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-S_NoaFU(Landroidx/compose/ui/node/NodeCoordinator;JZ)J

    move-result-wide v1

    .line 1154
    nop

    .line 1152
    invoke-virtual {p0, v1, v2, p4}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(JZ)J

    move-result-wide v1

    return-wide v1

    .line 1150
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(JZ)J

    move-result-wide v1

    return-wide v1
.end method

.method private final drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "graphicsLayer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 479
    const/4 v0, 0x0

    .line 1975
    .local v0, "$i$f$getDraw-OLwlOKw":I
    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 479
    .end local v0    # "$i$f$getDraw-OLwlOKw":I
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 480
    .local v6, "head":Landroidx/compose/ui/Modifier$Node;
    if-nez v6, :cond_0

    .line 481
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    move-object v2, p1

    move-object v7, p2

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMDrawScope$ui()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v1

    .line 484
    .local v1, "drawScope":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    move-object v5, p0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local p2    # "graphicsLayer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v2, "canvas":Landroidx/compose/ui/graphics/Canvas;
    .local v7, "graphicsLayer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->draw-eZhPAX0$ui(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 486
    .end local v1    # "drawScope":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    :goto_0
    return-void
.end method

.method public static synthetic fromParentPosition-8S9VItk$default(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J
    .locals 0

    .line 1221
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1223
    const/4 p3, 0x1

    .line 1221
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(JZ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final fromParentRect(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 12
    .param p1, "bounds"    # Landroidx/compose/ui/geometry/MutableRect;
    .param p2, "clipBounds"    # Z

    .line 1323
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    .line 1324
    .local v0, "x":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 1325
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v1

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 1327
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    .line 1328
    .local v1, "y":I
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 1329
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 1331
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1332
    .local v2, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v2, :cond_0

    .line 1333
    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 1334
    iget-boolean v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v3

    .local v3, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v5, 0x0

    .line 2206
    .local v5, "$i$f$getWidth-impl":I
    move-wide v6, v3

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 2207
    .local v8, "$i$f$unpackInt1":I
    const/16 v9, 0x20

    shr-long v9, v6, v9

    long-to-int v6, v9

    .line 2206
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt1":I
    nop

    .line 1335
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v5    # "$i$f$getWidth-impl":I
    int-to-float v3, v6

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v4

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 2208
    .local v6, "$i$f$getHeight-impl":I
    move-wide v7, v4

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 2209
    .local v9, "$i$f$unpackInt2":I
    const-wide v10, 0xffffffffL

    and-long/2addr v10, v7

    long-to-int v7, v10

    .line 2208
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt2":I
    nop

    .line 1335
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getHeight-impl":I
    int-to-float v4, v7

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 1336
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1337
    return-void

    .line 1341
    :cond_0
    return-void
.end method

.method private final getDrawBlock()Lkotlin/jvm/functions/Function2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_drawBlock:Lkotlin/jvm/functions/Function2;

    .line 505
    .local v0, "block":Lkotlin/jvm/functions/Function2;
    if-nez v0, :cond_0

    .line 506
    new-instance v1, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 509
    .local v1, "drawBlockCallToDrawModifiers":Lkotlin/jvm/functions/Function0;
    new-instance v2, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1;

    invoke-direct {v2, p0, v1}, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function0;)V

    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 527
    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_drawBlock:Lkotlin/jvm/functions/Function2;

    .line 529
    .end local v1    # "drawBlockCallToDrawModifiers":Lkotlin/jvm/functions/Function0;
    :cond_0
    return-object v0
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    .line 320
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method private final hasNode-H91voCI(I)Z
    .locals 3
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I

    .line 125
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->has-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private final headNode(Z)Landroidx/compose/ui/Modifier$Node;
    .locals 2
    .param p1, "includeTail"    # Z

    .line 100
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    nop

    .line 105
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 102
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 103
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 105
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 100
    :goto_0
    return-object v0
.end method

.method private final hit-5ShdDok(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 25
    .param p1, "$this$hit_u2d5ShdDok"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p7, "isInLayer"    # Z

    .line 759
    if-nez p1, :cond_0

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    goto/16 :goto_0

    .line 762
    :cond_0
    move/from16 v0, p7

    .local v0, "isInLayer$iv":Z
    move-object/from16 v8, p5

    .local v8, "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    move-object/from16 v9, p1

    .local v9, "node$iv":Landroidx/compose/ui/Modifier$Node;
    move v10, v0

    .end local v0    # "isInLayer$iv":Z
    .local v10, "isInLayer$iv":Z
    const/4 v11, 0x0

    .line 2051
    .local v11, "$i$f$hit":I
    const/high16 v12, -0x40800000    # -1.0f

    .local v12, "distanceFromEdge$iv$iv":F
    move v13, v10

    .local v13, "isInLayer$iv$iv":Z
    move-object v14, v8

    .local v14, "this_$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    move-object v15, v9

    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 2059
    .local v16, "$i$f$hitInMinimumTouchTarget":I
    const/4 v0, 0x0

    .local v0, "isInExpandedBounds$iv$iv$iv":Z
    move-object v1, v14

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    move v2, v12

    .local v2, "distanceFromEdge$iv$iv$iv":F
    move-object v3, v15

    .local v3, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v4, v13

    .local v4, "isInLayer$iv$iv$iv":Z
    const/16 v17, 0x0

    .line 2060
    .local v17, "$i$f$hitInMinimumTouchTarget":I
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v5

    .line 2061
    .local v5, "startDepth$iv$iv$iv":I
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result v7

    invoke-static {v1, v6, v7}, Landroidx/compose/ui/node/HitTestResult;->access$removeNodesInRange(Landroidx/compose/ui/node/HitTestResult;II)V

    .line 2062
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v1, v6}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    .line 2063
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getValues$p(Landroidx/compose/ui/node/HitTestResult;)Landroidx/collection/MutableObjectList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 2064
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getDistanceFromEdgeAndFlags$p(Landroidx/compose/ui/node/HitTestResult;)Landroidx/collection/MutableLongList;

    move-result-object v6

    .line 2065
    move-object/from16 v18, v8

    .end local v8    # "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    .local v18, "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/node/HitTestResultKt;->access$DistanceAndFlags(FZZ)J

    move-result-wide v7

    .line 2064
    invoke-virtual {v6, v7, v8}, Landroidx/collection/MutableLongList;->add(J)Z

    .line 2067
    const/4 v8, 0x0

    .line 763
    .local v8, "$i$a$-hit-NodeCoordinator$hit$1":I
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/ui/node/DelegatableNode;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v7

    const/16 v19, 0x0

    .line 2068
    .local v19, "$i$f$getLayout-OLwlOKw":I
    const/16 v20, 0x2

    move/from16 v21, v0

    .end local v0    # "isInExpandedBounds$iv$iv$iv":Z
    .local v21, "isInExpandedBounds$iv$iv$iv":Z
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 763
    .end local v19    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {v6, v7, v0}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 764
    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v20, v2

    move/from16 v23, v4

    move/from16 v19, v8

    move-object/from16 v24, v9

    move/from16 v22, v21

    move-object/from16 v2, p2

    move-object v8, v1

    move-object/from16 v21, v3

    move v9, v5

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object v1, v0

    move-object/from16 v0, p0

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v2    # "distanceFromEdge$iv$iv$iv":F
    .end local v3    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "isInLayer$iv$iv$iv":Z
    .end local v5    # "startDepth$iv$iv$iv":I
    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .local v9, "startDepth$iv$iv$iv":I
    .local v19, "$i$a$-hit-NodeCoordinator$hit$1":I
    .local v20, "distanceFromEdge$iv$iv$iv":F
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v22, "isInExpandedBounds$iv$iv$iv":Z
    .local v23, "isInLayer$iv$iv$iv":Z
    .local v24, "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-5ShdDok(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 765
    nop

    .line 2067
    .end local v19    # "$i$a$-hit-NodeCoordinator$hit$1":I
    nop

    .line 2069
    invoke-static {v8, v9}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    .line 2070
    nop

    .line 2059
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v9    # "startDepth$iv$iv$iv":I
    .end local v17    # "$i$f$hitInMinimumTouchTarget":I
    .end local v20    # "distanceFromEdge$iv$iv$iv":F
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "isInExpandedBounds$iv$iv$iv":Z
    .end local v23    # "isInLayer$iv$iv$iv":Z
    nop

    .line 2052
    .end local v12    # "distanceFromEdge$iv$iv":F
    .end local v13    # "isInLayer$iv$iv":Z
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$hitInMinimumTouchTarget":I
    nop

    .line 767
    .end local v10    # "isInLayer$iv":Z
    .end local v11    # "$i$f$hit":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    return-void
.end method

.method private final hitNear-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V
    .locals 23
    .param p1, "$this$hitNear_u2dFh5PU_I"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F

    .line 845
    if-nez p1, :cond_0

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    goto/16 :goto_0

    .line 849
    :cond_0
    move/from16 v10, p7

    .local v10, "isInLayer$iv":Z
    move-object/from16 v11, p5

    .local v11, "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    move/from16 v12, p8

    .local v12, "distanceFromEdge$iv":F
    move-object/from16 v13, p1

    .local v13, "node$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 2071
    .local v14, "$i$f$hitInMinimumTouchTarget":I
    const/4 v0, 0x0

    .local v0, "isInExpandedBounds$iv$iv":Z
    move-object v15, v13

    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move-object v1, v11

    .local v1, "this_$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    move v2, v12

    .local v2, "distanceFromEdge$iv$iv":F
    move v3, v10

    .local v3, "isInLayer$iv$iv":Z
    const/16 v16, 0x0

    .line 2072
    .local v16, "$i$f$hitInMinimumTouchTarget":I
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v4

    .line 2073
    .local v4, "startDepth$iv$iv":I
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Landroidx/compose/ui/node/HitTestResult;->size()I

    move-result v6

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/node/HitTestResult;->access$removeNodesInRange(Landroidx/compose/ui/node/HitTestResult;II)V

    .line 2074
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getHitDepth$p(Landroidx/compose/ui/node/HitTestResult;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1, v5}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    .line 2075
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getValues$p(Landroidx/compose/ui/node/HitTestResult;)Landroidx/collection/MutableObjectList;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 2076
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResult;->access$getDistanceFromEdgeAndFlags$p(Landroidx/compose/ui/node/HitTestResult;)Landroidx/collection/MutableLongList;

    move-result-object v5

    .line 2077
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/node/HitTestResultKt;->access$DistanceAndFlags(FZZ)J

    move-result-wide v6

    .line 2076
    invoke-virtual {v5, v6, v7}, Landroidx/collection/MutableLongList;->add(J)Z

    .line 2079
    const/16 v17, 0x0

    .line 850
    .local v17, "$i$a$-hitInMinimumTouchTarget-NodeCoordinator$hitNear$1":I
    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/ui/node/DelegatableNode;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v6

    const/4 v7, 0x0

    .line 2080
    .local v7, "$i$f$getLayout-OLwlOKw":I
    const/4 v8, 0x2

    invoke-static {v8}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 850
    .end local v7    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {v5, v6, v7}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 852
    nop

    .line 853
    nop

    .line 854
    nop

    .line 855
    nop

    .line 856
    nop

    .line 857
    nop

    .line 858
    nop

    .line 851
    const/4 v9, 0x1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v21, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v10

    move-object/from16 v22, v11

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v10, v1

    move v11, v4

    move-object v1, v5

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .end local v0    # "isInExpandedBounds$iv$iv":Z
    .end local v1    # "this_$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v2    # "distanceFromEdge$iv$iv":F
    .end local v3    # "isInLayer$iv$iv":Z
    .end local v4    # "startDepth$iv$iv":I
    .local v10, "this_$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .local v11, "startDepth$iv$iv":I
    .local v18, "isInLayer$iv":Z
    .local v19, "distanceFromEdge$iv$iv":F
    .local v20, "isInLayer$iv$iv":Z
    .local v21, "isInExpandedBounds$iv$iv":Z
    .local v22, "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 860
    nop

    .line 2079
    .end local v17    # "$i$a$-hitInMinimumTouchTarget-NodeCoordinator$hitNear$1":I
    nop

    .line 2081
    invoke-static {v10, v11}, Landroidx/compose/ui/node/HitTestResult;->access$setHitDepth$p(Landroidx/compose/ui/node/HitTestResult;I)V

    .line 2082
    nop

    .line 2071
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/node/HitTestResult;
    .end local v11    # "startDepth$iv$iv":I
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$hitInMinimumTouchTarget":I
    .end local v19    # "distanceFromEdge$iv$iv":F
    .end local v20    # "isInLayer$iv$iv":Z
    .end local v21    # "isInExpandedBounds$iv$iv":Z
    nop

    .line 862
    .end local v12    # "distanceFromEdge$iv":F
    .end local v13    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$hitInMinimumTouchTarget":I
    .end local v18    # "isInLayer$iv":Z
    .end local v22    # "this_$iv":Landroidx/compose/ui/node/HitTestResult;
    :goto_0
    return-void
.end method

.method private final isInExpandedTouchBounds-ThD-n1k(Landroidx/compose/ui/Modifier$Node;JI)Z
    .locals 23
    .param p1, "$this$isInExpandedTouchBounds_u2dThD_u2dn1k"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p4, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I

    .line 916
    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 917
    return v1

    .line 920
    :cond_0
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getStylus-T8wyACA()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getEraser-T8wyACA()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 921
    return v1

    .line 923
    :cond_1
    const/4 v2, 0x0

    .line 2084
    .local v2, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 923
    .end local v2    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object/from16 v3, p1

    .local v3, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v4, 0x0

    .line 2085
    .local v4, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v5, 0x0

    .line 2086
    .local v5, "stack$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "node$iv":Ljava/lang/Object;
    move-object v6, v3

    .line 2087
    :goto_0
    if-eqz v6, :cond_e

    .line 2088
    instance-of v7, v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v7, :cond_4

    .line 2089
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v7, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v9, 0x0

    .line 925
    .local v9, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    invoke-interface {v7}, Landroidx/compose/ui/node/PointerInputModifierNode;->getTouchBoundsExpansion-RZrCHBk()J

    move-result-wide v10

    .line 926
    .local v10, "expansion":J
    move-wide/from16 v12, p2

    .local v12, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v14, 0x0

    .line 2090
    .local v14, "$i$f$getX-impl":I
    move-wide v15, v12

    .local v15, "value$iv$iv":J
    const/16 v17, 0x0

    .line 2091
    .local v17, "$i$f$unpackFloat1":I
    const/16 v18, 0x20

    move/from16 v20, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    shr-long v1, v15, v18

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv":I
    const/4 v2, 0x0

    .line 2092
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 2091
    .end local v1    # "bits$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 2090
    .end local v15    # "value$iv$iv":J
    .end local v17    # "$i$f$unpackFloat1":I
    nop

    .line 926
    .end local v12    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v14    # "$i$f$getX-impl":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v10, v11, v2}, Landroidx/compose/ui/node/TouchBoundsExpansion;->computeLeft-impl$ui(JLandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 927
    move-wide/from16 v1, p2

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v12, 0x0

    .line 2093
    .local v12, "$i$f$getX-impl":I
    move-wide v13, v1

    .local v13, "value$iv$iv":J
    const/4 v15, 0x0

    .line 2094
    .local v15, "$i$f$unpackFloat1":I
    move/from16 v17, v9

    .end local v9    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    .local v17, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    shr-long v8, v13, v18

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 2095
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 2094
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 2093
    .end local v13    # "value$iv$iv":J
    .end local v15    # "$i$f$unpackFloat1":I
    nop

    .line 927
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v12    # "$i$f$getX-impl":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v10, v11, v2}, Landroidx/compose/ui/node/TouchBoundsExpansion;->computeRight-impl$ui(JLandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v8, v1

    if-gez v1, :cond_3

    .line 928
    move-wide/from16 v1, p2

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 2096
    .local v8, "$i$f$getY-impl":I
    move-wide v12, v1

    .local v12, "value$iv$iv":J
    const/4 v9, 0x0

    .line 2097
    .local v9, "$i$f$unpackFloat2":I
    const-wide v21, 0xffffffffL

    and-long v14, v12, v21

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2098
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2097
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2096
    .end local v9    # "$i$f$unpackFloat2":I
    .end local v12    # "value$iv$iv":J
    nop

    .line 928
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getY-impl":I
    invoke-static {v10, v11}, Landroidx/compose/ui/node/TouchBoundsExpansion;->getTop-impl(J)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-ltz v1, :cond_3

    .line 929
    move-wide/from16 v1, p2

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v8, 0x0

    .line 2099
    .restart local v8    # "$i$f$getY-impl":I
    move-wide v12, v1

    .restart local v12    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 2100
    .restart local v9    # "$i$f$unpackFloat2":I
    and-long v14, v12, v21

    long-to-int v14, v14

    .restart local v14    # "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2101
    .restart local v15    # "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2100
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2099
    .end local v9    # "$i$f$unpackFloat2":I
    .end local v12    # "value$iv$iv":J
    nop

    .line 929
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v8    # "$i$f$getY-impl":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v1

    invoke-static {v10, v11}, Landroidx/compose/ui/node/TouchBoundsExpansion;->getBottom-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v14, v1

    if-gez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 926
    .end local v17    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    .local v9, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    :cond_2
    move/from16 v17, v9

    .line 929
    .end local v9    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    .restart local v17    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    :cond_3
    const/4 v1, 0x0

    .line 926
    :goto_1
    return v1

    .line 2102
    .end local v7    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v10    # "expansion":J
    .end local v17    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$isInExpandedTouchBounds$1":I
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_4
    move/from16 v20, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move/from16 v1, v20

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v2, v6

    .local v2, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 2103
    .local v7, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v8

    and-int/2addr v8, v1

    if-eqz v8, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 2102
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v1, :cond_d

    instance-of v1, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_d

    .line 2104
    const/4 v1, 0x0

    .line 2105
    .local v1, "count$iv":I
    move-object v2, v6

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .local v2, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v7, 0x0

    .line 2106
    .local v7, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 2107
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v8, :cond_c

    .line 2108
    move-object v9, v8

    .local v9, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 2109
    .local v10, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v11, v20

    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v12, v9

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 2103
    .local v13, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v11

    if-eqz v14, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    .line 2109
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v11, :cond_b

    .line 2110
    add-int/lit8 v1, v1, 0x1

    .line 2111
    const/4 v11, 0x1

    if-ne v1, v11, :cond_7

    .line 2112
    move-object v6, v9

    goto :goto_6

    .line 2116
    :cond_7
    if-nez v5, :cond_8

    const/4 v11, 0x0

    .line 2117
    .local v11, "$i$f$mutableVectorOf":I
    nop

    .line 2118
    const/16 v12, 0x10

    .local v12, "capacity$iv$iv$iv":I
    const/4 v13, 0x0

    .line 2119
    .local v13, "$i$f$MutableVector":I
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v12, [Landroidx/compose/ui/Modifier$Node;

    const/4 v0, 0x0

    invoke-direct {v14, v15, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2117
    .end local v12    # "capacity$iv$iv$iv":I
    .end local v13    # "$i$f$MutableVector":I
    goto :goto_5

    .line 2116
    .end local v11    # "$i$f$mutableVectorOf":I
    :cond_8
    move-object v14, v5

    :goto_5
    move-object v5, v14

    .line 2120
    move-object v0, v6

    .line 2121
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_a

    .line 2122
    if-eqz v5, :cond_9

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2123
    :cond_9
    const/4 v6, 0x0

    .line 2125
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2128
    .end local v0    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    :goto_6
    nop

    .line 2108
    .end local v9    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 2129
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, p4

    goto :goto_3

    .line 2131
    :cond_c
    nop

    .line 2132
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v7    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x1

    if-ne v1, v11, :cond_d

    .line 2134
    move/from16 v0, p4

    move/from16 v2, v20

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2137
    .end local v1    # "count$iv":I
    :cond_d
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, p4

    move/from16 v2, v20

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2139
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_e
    nop

    .line 931
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v3    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v5    # "stack$iv":Ljava/lang/Object;
    .end local v6    # "node$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    return v19
.end method

.method private final offsetFromEdge-MK-Hz9U(J)J
    .locals 18
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J

    .line 1430
    move-wide/from16 v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 2292
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 2293
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 2294
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 2293
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 2292
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 1430
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    nop

    .line 1431
    .local v7, "x":F
    const/4 v0, 0x0

    cmpg-float v1, v7, v0

    if-gez v1, :cond_0

    neg-float v1, v7

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v7, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1432
    .local v1, "horizontal":F
    move-wide/from16 v2, p1

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2295
    .local v4, "$i$f$getY-impl":I
    move-wide v8, v2

    .local v8, "value$iv$iv":J
    const/4 v5, 0x0

    .line 2296
    .local v5, "$i$f$unpackFloat2":I
    const-wide v10, 0xffffffffL

    and-long v12, v8, v10

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 2297
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 2296
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 2295
    .end local v5    # "$i$f$unpackFloat2":I
    .end local v8    # "value$iv$iv":J
    nop

    .line 1432
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$getY-impl":I
    nop

    .line 1433
    .local v12, "y":F
    cmpg-float v2, v12, v0

    if-gez v2, :cond_1

    neg-float v2, v12

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v12, v2

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1435
    .local v0, "vertical":F
    move v2, v0

    .local v2, "y$iv":F
    move v3, v1

    .local v3, "x$iv":F
    const/4 v4, 0x0

    .line 2298
    .local v4, "$i$f$Offset":I
    move v5, v2

    .local v5, "val2$iv$iv":F
    move v8, v3

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 2299
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 2300
    .local v13, "v1$iv$iv":J
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v7    # "x":F
    .local v17, "x":F
    int-to-long v6, v15

    .line 2301
    .local v6, "v2$iv$iv":J
    shl-long v15, v13, v16

    and-long/2addr v10, v6

    or-long v5, v15, v10

    .line 2298
    .end local v5    # "val2$iv$iv":F
    .end local v6    # "v2$iv$iv":J
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v13    # "v1$iv$iv":J
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 1435
    .end local v2    # "y$iv":F
    .end local v3    # "x$iv":F
    .end local v4    # "$i$f$Offset":I
    return-wide v2
.end method

.method private final outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V
    .locals 11
    .param p1, "$this$outOfBoundsHit_u2d8NAm7pk"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F
    .param p9, "isHitInMinimumTouchTargetBetter"    # Z

    .line 797
    if-nez p1, :cond_0

    .line 798
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    move-object/from16 v6, p5

    move/from16 v8, p7

    goto :goto_0

    .line 799
    :cond_0
    move/from16 v7, p6

    invoke-direct {p0, p1, p3, p4, v7}, Landroidx/compose/ui/node/NodeCoordinator;->isInExpandedTouchBounds-ThD-n1k(Landroidx/compose/ui/Modifier$Node;JI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$outOfBoundsHit$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/node/NodeCoordinator$outOfBoundsHit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v6, p1, v8, v0}, Landroidx/compose/ui/node/HitTestResult;->hitExpandedTouchBounds(Landroidx/compose/ui/Modifier$Node;ZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 812
    :cond_1
    move-object/from16 v6, p5

    move/from16 v8, p7

    if-eqz p9, :cond_2

    .line 813
    nop

    .line 814
    nop

    .line 815
    nop

    .line 816
    nop

    .line 817
    nop

    .line 818
    nop

    .line 819
    nop

    .line 813
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    goto :goto_0

    .line 822
    :cond_2
    nop

    .line 823
    nop

    .line 824
    nop

    .line 825
    nop

    .line 826
    nop

    .line 827
    nop

    .line 828
    nop

    .line 822
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->speculativeHit-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .line 831
    :goto_0
    return-void
.end method

.method private final placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 9
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-position$0"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .param p5, "explicitLayer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ")V"
        }
    .end annotation

    .line 385
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p5, :cond_3

    .line 386
    const/4 v3, 0x1

    if-nez p4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    .local v4, "value$iv":Z
    :goto_0
    const/4 v5, 0x0

    .line 1971
    .local v5, "$i$f$requirePrecondition":I
    if-nez v4, :cond_1

    .line 1972
    const/4 v6, 0x0

    .line 387
    .local v6, "$i$a$-requirePrecondition-NodeCoordinator$placeSelf$1":I
    nop

    .line 1972
    .end local v6    # "$i$a$-requirePrecondition-NodeCoordinator$placeSelf$1":I
    const-string v6, "both ways to create layers shouldn\'t be used together"

    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1974
    :cond_1
    nop

    .line 389
    .end local v4    # "value$iv":Z
    .end local v5    # "$i$f$requirePrecondition":I
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v4, p5, :cond_2

    .line 391
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 392
    invoke-static {p0, v2, v1, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 393
    iput-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 395
    :cond_2
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez v4, :cond_5

    .line 396
    nop

    .line 397
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 398
    invoke-static {v4}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    .line 399
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDrawBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v5, v6, p5}, Landroidx/compose/ui/node/Owner;->createLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v4

    .line 400
    move-object v5, v4

    .local v5, "$this$placeSelf_MLgxB_4_u24lambda_u241":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v6, 0x0

    .line 401
    .local v6, "$i$a$-apply-NodeCoordinator$placeSelf$2":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v7

    invoke-interface {v5, v7, v8}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 402
    invoke-interface {v5, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    .line 403
    nop

    .line 400
    .end local v5    # "$this$placeSelf_MLgxB_4_u24lambda_u241":Landroidx/compose/ui/node/OwnedLayer;
    .end local v6    # "$i$a$-apply-NodeCoordinator$placeSelf$2":I
    nop

    .line 396
    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 404
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui(Z)V

    .line 405
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 408
    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v3, :cond_4

    .line 409
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 413
    invoke-static {p0, v2, v1, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 415
    :cond_4
    invoke-static {p0, p4, v1, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 417
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_8

    .line 418
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/FrameRateCategory;->Companion:Landroidx/compose/ui/FrameRateCategory$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/FrameRateCategory$Companion;->getHigh-NSsRyOo()F

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/node/Owner;->voteFrameRate(F)V

    .line 419
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->setPosition--gyyYBs(J)V

    .line 420
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v3

    .line 421
    invoke-virtual {v3}, Landroidx/compose/ui/node/MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    .line 422
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 423
    .local v3, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v3, :cond_6

    .line 424
    invoke-interface {v3, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    goto :goto_2

    .line 426
    :cond_6
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 428
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->onCoordinatorPositionChanged$ui()V

    .line 429
    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 430
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui()Landroidx/compose/ui/node/Owner;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 432
    .end local v3    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    :cond_8
    iput p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    .line 433
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    if-ne p0, v3, :cond_9

    .line 434
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v2}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged$default(Landroidx/compose/ui/spatial/RectManager;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 436
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isPlacingForAlignment$ui()Z

    move-result v0

    if-nez v0, :cond_a

    .line 437
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasureResult$ui()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->captureRulersIfNeeded$ui(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 439
    :cond_a
    return-void
.end method

.method public static synthetic rectInParent$ui$default(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V
    .locals 0

    .line 1281
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1284
    const/4 p3, 0x0

    .line 1281
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rectInParent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final speculativeHit-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V
    .locals 10
    .param p1, "$this$speculativeHit_u2dFh5PU_I"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p3, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p5, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p6, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p7, "isInLayer"    # Z
    .param p8, "distanceFromEdge"    # F

    .line 876
    if-nez p1, :cond_0

    .line 877
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    goto :goto_0

    .line 878
    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    move-object v4, v6

    check-cast v0, Lkotlin/jvm/functions/Function0;

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual {p5, p1, v8, v7, v0}, Landroidx/compose/ui/node/HitTestResult;->speculativeHit(Landroidx/compose/ui/Modifier$Node;FZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 894
    :cond_1
    move-object v4, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v1

    const/4 v2, 0x0

    .line 2083
    .local v2, "$i$f$getLayout-OLwlOKw":I
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 894
    .end local v2    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;II)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 896
    nop

    .line 897
    nop

    .line 898
    nop

    .line 899
    nop

    .line 900
    nop

    .line 901
    nop

    .line 902
    nop

    .line 895
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move/from16 v6, p6

    move-object v5, v4

    move-wide v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 905
    :goto_0
    return-void
.end method

.method private final toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1
    .param p1, "$this$toCoordinator"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1013
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_2
    return-object v0
.end method

.method public static synthetic toParentPosition-8S9VItk$default(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J
    .locals 0

    .line 1204
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1206
    const/4 p3, 0x1

    .line 1204
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-8S9VItk(JZ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 7
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0"    # [F

    .line 1097
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1098
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 1099
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 1101
    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    int-to-float v0, v0

    neg-float v2, v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v0

    int-to-float v0, v0

    neg-float v3, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 1102
    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    .line 1104
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Landroidx/compose/ui/node/OwnedLayer;->inverseTransform-58bKbWc([F)V

    .line 1106
    :cond_1
    return-void
.end method

.method private final transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 10
    .param p1, "ancestor"    # Landroidx/compose/ui/node/NodeCoordinator;
    .param p2, "$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0"    # [F

    .line 1083
    move-object v0, p0

    .line 1084
    .local v0, "wrapper":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1085
    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Landroidx/compose/ui/node/OwnedLayer;->transform-58bKbWc([F)V

    .line 1086
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    .line 1087
    .local v1, "position":J
    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1088
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {v3}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 1089
    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    int-to-float v5, v3

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    int-to-float v6, v3

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 1090
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->tmpMatrix:[F

    invoke-static {p2, v3}, Landroidx/compose/ui/graphics/Matrix;->timesAssign-58bKbWc([F[F)V

    .line 1092
    :cond_1
    iget-object v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v3

    .end local v1    # "position":J
    goto :goto_0

    .line 1094
    :cond_2
    return-void
.end method

.method public static synthetic updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .locals 0

    .line 532
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 534
    const/4 p2, 0x0

    .line 532
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerBlock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateLayerParameters(Z)V
    .locals 12
    .param p1, "invokeOnLayoutChange"    # Z

    .line 582
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_0

    .line 584
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 587
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 589
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2038
    .local v4, "$i$f$checkPreconditionNotNull":I
    if-eqz v3, :cond_8

    .line 2042
    nop

    .line 589
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$checkPreconditionNotNull":I
    nop

    .line 588
    nop

    .line 592
    .local v3, "layerBlock":Lkotlin/jvm/functions/Function1;
    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->reset()V

    .line 593
    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setGraphicsDensity$ui(Landroidx/compose/ui/unit/Density;)V

    .line 594
    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setLayoutDirection$ui(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 595
    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSize-uvyYCjk(J)V

    .line 596
    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v4

    .local v4, "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    move-object v5, p0

    check-cast v5, Landroidx/compose/ui/node/OwnerScope;

    .local v5, "target$iv":Landroidx/compose/ui/node/OwnerScope;
    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->onCommitAffectingLayerParams:Lkotlin/jvm/functions/Function1;

    .local v6, "onChanged$iv":Lkotlin/jvm/functions/Function1;
    new-instance v7, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;

    invoke-direct {v7, v3, p0}, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/NodeCoordinator;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2043
    .local v8, "$i$f$observeReads$ui":I
    invoke-static {v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->access$getObserver$p(Landroidx/compose/ui/node/OwnerSnapshotObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v9

    invoke-virtual {v9, v5, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 2044
    nop

    .line 614
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .end local v5    # "target$iv":Landroidx/compose/ui/node/OwnerScope;
    .end local v6    # "onChanged$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$observeReads$ui":I
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    if-nez v4, :cond_1

    .line 615
    new-instance v4, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v4}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    move-object v5, v4

    .line 1797
    .local v5, "it":Landroidx/compose/ui/node/LayerPositionalProperties;
    const/4 v6, 0x0

    .line 615
    .local v6, "$i$a$-also-NodeCoordinator$updateLayerParameters$layerPositionalProperties$1":I
    iput-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 614
    .end local v5    # "it":Landroidx/compose/ui/node/LayerPositionalProperties;
    .end local v6    # "$i$a$-also-NodeCoordinator$updateLayerParameters$layerPositionalProperties$1":I
    :cond_1
    nop

    .line 613
    nop

    .line 616
    .local v4, "layerPositionalProperties":Landroidx/compose/ui/node/LayerPositionalProperties;
    sget-object v5, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-virtual {v5, v4}, Landroidx/compose/ui/node/LayerPositionalProperties;->copyFrom(Landroidx/compose/ui/node/LayerPositionalProperties;)V

    .line 617
    sget-object v5, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    check-cast v5, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/LayerPositionalProperties;->copyFrom(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    .line 618
    sget-object v5, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-interface {v0, v5}, Landroidx/compose/ui/node/OwnedLayer;->updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V

    .line 619
    iget-boolean v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    .line 620
    .local v5, "wasClipping":Z
    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getClip()Z

    move-result v6

    iput-boolean v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    .line 621
    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->getAlpha()F

    move-result v6

    iput v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    .line 623
    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-virtual {v6, v4}, Landroidx/compose/ui/node/LayerPositionalProperties;->hasSameValuesAs(Landroidx/compose/ui/node/LayerPositionalProperties;)Z

    move-result v6

    .line 622
    xor-int/2addr v6, v1

    .line 624
    .local v6, "positionalPropertiesChanged":Z
    nop

    .line 625
    if-eqz p1, :cond_3

    if-nez v6, :cond_2

    iget-boolean v7, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eq v5, v7, :cond_3

    .line 627
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui()Landroidx/compose/ui/node/Owner;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 629
    :cond_3
    if-eqz v6, :cond_c

    .line 630
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 631
    .local v7, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v8

    .line 632
    .local v8, "layoutDelegate":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getChildrenAccessingCoordinatesDuringPlacement()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_6

    .line 633
    nop

    .line 634
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getCoordinatesAccessedDuringModifierPlacement()Z

    move-result v9

    if-nez v9, :cond_4

    .line 635
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getCoordinatesAccessedDuringPlacement()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 637
    :cond_4
    invoke-static {v7, v2, v1, v10}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 639
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getMeasurePassDelegate$ui()Landroidx/compose/ui/node/MeasurePassDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    .line 641
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->onCoordinatorPositionChanged$ui()V

    .line 642
    invoke-static {v7}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    .line 643
    .local v1, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v9

    .line 644
    .local v9, "rectManager":Landroidx/compose/ui/spatial/RectManager;
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v11

    if-ne p0, v11, :cond_7

    .line 646
    const/4 v11, 0x2

    invoke-static {v9, v7, v2, v11, v10}, Landroidx/compose/ui/spatial/RectManager;->onLayoutPositionChanged$default(Landroidx/compose/ui/spatial/RectManager;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    goto :goto_0

    .line 649
    :cond_7
    invoke-virtual {v9, v7}, Landroidx/compose/ui/spatial/RectManager;->onLayoutLayerPositionalPropertiesChanged(Landroidx/compose/ui/node/LayoutNode;)V

    .line 651
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getGloballyPositionedObservers()I

    move-result v2

    if-lez v2, :cond_c

    .line 652
    invoke-interface {v1, v7}, Landroidx/compose/ui/node/Owner;->requestOnPositionedCallback(Landroidx/compose/ui/node/LayoutNode;)V

    .end local v1    # "owner":Landroidx/compose/ui/node/Owner;
    .end local v3    # "layerBlock":Lkotlin/jvm/functions/Function1;
    .end local v4    # "layerPositionalProperties":Landroidx/compose/ui/node/LayerPositionalProperties;
    .end local v5    # "wasClipping":Z
    .end local v6    # "positionalPropertiesChanged":Z
    .end local v7    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v8    # "layoutDelegate":Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    .end local v9    # "rectManager":Landroidx/compose/ui/spatial/RectManager;
    goto :goto_2

    .line 2039
    .local v3, "value$iv":Ljava/lang/Object;
    .local v4, "$i$f$checkPreconditionNotNull":I
    :cond_8
    const/4 v1, 0x0

    .line 590
    .local v1, "$i$a$-checkPreconditionNotNull-NodeCoordinator$updateLayerParameters$layerBlock$1":I
    nop

    .line 2039
    .end local v1    # "$i$a$-checkPreconditionNotNull-NodeCoordinator$updateLayerParameters$layerBlock$1":I
    const-string/jumbo v1, "updateLayerParameters requires a non-null layerBlock"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 656
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$checkPreconditionNotNull":I
    :cond_9
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    move v1, v2

    .local v1, "value$iv":Z
    :goto_1
    const/4 v2, 0x0

    .line 2045
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_b

    .line 2046
    const/4 v3, 0x0

    .line 656
    .local v3, "$i$a$-checkPrecondition-NodeCoordinator$updateLayerParameters$2":I
    nop

    .line 2046
    .end local v3    # "$i$a$-checkPrecondition-NodeCoordinator$updateLayerParameters$2":I
    const-string/jumbo v3, "null layer with a non-null layerBlock"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2048
    :cond_b
    nop

    .line 658
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    :cond_c
    :goto_2
    return-void
.end method

.method static synthetic updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V
    .locals 0

    .line 581
    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerParameters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final calculateMinimumTouchTargetPadding-E7KxVPU(J)J
    .locals 17
    .param p1, "$v$c$androidx-compose-ui-geometry-Size$-minimumTouchTargetSize$0"    # J

    .line 1444
    move-wide/from16 v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 2302
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 2303
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 2304
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 2303
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 2302
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 1444
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v7, v0

    .line 1445
    .local v7, "widthDiff":F
    move-wide/from16 v0, p1

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 2305
    .local v2, "$i$f$getHeight-impl":I
    move-wide v3, v0

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 2306
    .local v5, "$i$f$unpackFloat2":I
    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 2307
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 2306
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 2305
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 1445
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v2    # "$i$f$getHeight-impl":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v10, v0

    .line 1446
    .local v10, "heightDiff":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v7, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .local v1, "width$iv":F
    div-float v0, v10, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .local v0, "height$iv":F
    const/4 v2, 0x0

    .line 2308
    .local v2, "$i$f$Size":I
    move v3, v0

    .local v3, "val2$iv$iv":F
    move v4, v1

    .local v4, "val1$iv$iv":F
    const/4 v5, 0x0

    .line 2309
    .local v5, "$i$f$packFloats":I
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 2310
    .local v11, "v1$iv$iv":J
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 2311
    .local v13, "v2$iv$iv":J
    shl-long v15, v11, v6

    and-long/2addr v8, v13

    or-long v3, v15, v8

    .line 2308
    .end local v3    # "val2$iv$iv":F
    .end local v4    # "val1$iv$iv":F
    .end local v5    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    .line 1446
    .end local v0    # "height$iv":F
    .end local v1    # "width$iv":F
    .end local v2    # "$i$f$Size":I
    return-wide v0
.end method

.method protected final distanceInMinimumTouchTarget-tz77jQw(JJ)F
    .locals 20
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p3, "$v$c$androidx-compose-ui-geometry-Size$-minimumTouchTargetSize$0"    # J

    .line 1458
    nop

    .line 1459
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    move-wide/from16 v1, p3

    .local v1, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v3, 0x0

    .line 2312
    .local v3, "$i$f$getWidth-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 2313
    .local v6, "$i$f$unpackFloat1":I
    const/16 v7, 0x20

    shr-long v8, v4, v7

    long-to-int v8, v8

    .local v8, "bits$iv$iv$iv":I
    const/4 v9, 0x0

    .line 2314
    .local v9, "$i$f$floatFromBits":I
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 2313
    .end local v8    # "bits$iv$iv$iv":I
    .end local v9    # "$i$f$floatFromBits":I
    nop

    .line 2312
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackFloat1":I
    nop

    .line 1459
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    cmpl-float v0, v0, v8

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const-wide v2, 0xffffffffL

    if-ltz v0, :cond_0

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    move-wide/from16 v4, p3

    .local v4, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v6, 0x0

    .line 2315
    .local v6, "$i$f$getHeight-impl":I
    move-wide v8, v4

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 2316
    .local v10, "$i$f$unpackFloat2":I
    and-long v11, v8, v2

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 2317
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 2316
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 2315
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 1460
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v6    # "$i$f$getHeight-impl":I
    cmpl-float v0, v0, v11

    if-ltz v0, :cond_0

    .line 1463
    return v1

    .line 1466
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v4, p3

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide v8

    move-wide v10, v8

    .local v10, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v6, 0x0

    .line 2318
    .local v6, "$i$f$component1-impl":I
    move-wide v12, v10

    .local v12, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    const/4 v14, 0x0

    .line 2319
    .local v14, "$i$f$getWidth-impl":I
    move-wide v15, v12

    .local v15, "value$iv$iv$iv":J
    const/16 v17, 0x0

    .line 2320
    .local v17, "$i$f$unpackFloat1":I
    move-wide/from16 v18, v2

    shr-long v1, v15, v7

    long-to-int v1, v1

    .local v1, "bits$iv$iv$iv$iv":I
    const/4 v2, 0x0

    .line 2321
    .local v2, "$i$f$floatFromBits":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 2320
    .end local v1    # "bits$iv$iv$iv$iv":I
    .end local v2    # "$i$f$floatFromBits":I
    nop

    .line 2319
    .end local v15    # "value$iv$iv$iv":J
    .end local v17    # "$i$f$unpackFloat1":I
    nop

    .line 2318
    .end local v12    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    .end local v14    # "$i$f$getWidth-impl":I
    nop

    .line 1466
    .end local v6    # "$i$f$component1-impl":I
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    nop

    .local v1, "width":F
    .local v8, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v2, 0x0

    .line 2322
    .local v2, "$i$f$component2-impl":I
    nop

    .local v10, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    const/4 v3, 0x0

    .line 2323
    .local v3, "$i$f$getHeight-impl":I
    nop

    .local v12, "value$iv$iv$iv":J
    const/4 v6, 0x0

    .line 2324
    .local v6, "$i$f$unpackFloat2":I
    and-long v14, v12, v18

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2321
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2324
    .end local v14    # "bits$iv$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2323
    .end local v6    # "$i$f$unpackFloat2":I
    .end local v12    # "value$iv$iv$iv":J
    nop

    .line 2322
    .end local v3    # "$i$f$getHeight-impl":I
    .end local v10    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv$iv":J
    nop

    .line 1466
    .end local v2    # "$i$f$component2-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    nop

    .line 1467
    .local v14, "height":F
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/node/NodeCoordinator;->offsetFromEdge-MK-Hz9U(J)J

    move-result-wide v2

    .line 1469
    .local v2, "offsetFromEdge":J
    nop

    .line 1470
    const/4 v6, 0x0

    cmpl-float v8, v1, v6

    if-gtz v8, :cond_2

    cmpl-float v6, v14, v6

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move v13, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v8, v2

    .local v8, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 2325
    .local v6, "$i$f$getX-impl":I
    move-wide v10, v8

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 2326
    .local v12, "$i$f$unpackFloat1":I
    move v13, v1

    .end local v1    # "width":F
    .local v13, "width":F
    shr-long v0, v10, v7

    long-to-int v0, v0

    .local v0, "bits$iv$iv$iv":I
    const/4 v1, 0x0

    .line 2327
    .local v1, "$i$f$floatFromBits":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2326
    .end local v0    # "bits$iv$iv$iv":I
    .end local v1    # "$i$f$floatFromBits":I
    nop

    .line 2325
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackFloat1":I
    nop

    .line 1470
    .end local v6    # "$i$f$getX-impl":I
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    cmpg-float v0, v0, v13

    if-gtz v0, :cond_3

    move-wide v0, v2

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 2328
    .local v6, "$i$f$getY-impl":I
    move-wide v7, v0

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 2329
    .local v9, "$i$f$unpackFloat2":I
    and-long v10, v7, v18

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 2327
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 2329
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 2328
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 1470
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getY-impl":I
    cmpg-float v0, v10, v14

    if-gtz v0, :cond_3

    .line 1472
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result v1

    goto :goto_2

    .line 1474
    :cond_3
    :goto_1
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1469
    :goto_2
    return v1
.end method

.method public final draw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 5
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "graphicsLayer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 466
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 467
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    .line 471
    .local v1, "x":F
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    int-to-float v2, v2

    .line 472
    .local v2, "y":F
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 473
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 474
    neg-float v3, v1

    neg-float v4, v2

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 476
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_0
    return-void
.end method

.method protected final drawBorder(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "paint"    # Landroidx/compose/ui/graphics/Paint;

    .line 1236
    nop

    .line 1237
    nop

    .line 1238
    nop

    .line 1239
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v0

    .local v0, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 2188
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 2189
    .local v5, "$i$f$unpackInt1":I
    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v3, v6

    .line 2188
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackInt1":I
    nop

    .line 1239
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v5, v0, v1

    .line 1240
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v2

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v0, 0x0

    .line 2190
    .local v0, "$i$f$getHeight-impl":I
    move-wide v6, v2

    .local v6, "value$iv$iv":J
    const/4 v4, 0x0

    .line 2191
    .local v4, "$i$f$unpackInt2":I
    const-wide v8, 0xffffffffL

    and-long/2addr v8, v6

    long-to-int v4, v8

    .line 2190
    .end local v4    # "$i$f$unpackInt2":I
    .end local v6    # "value$iv$iv":J
    nop

    .line 1240
    .end local v0    # "$i$f$getHeight-impl":I
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v0, v4

    sub-float v6, v0, v1

    .line 1241
    nop

    .line 1236
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local p2    # "paint":Landroidx/compose/ui/graphics/Paint;
    .local v2, "canvas":Landroidx/compose/ui/graphics/Canvas;
    .local v7, "paint":Landroidx/compose/ui/graphics/Paint;
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 1243
    return-void
.end method

.method public abstract ensureLookaheadDelegateCreated()V
.end method

.method public final findCommonAncestor$ui(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 9
    .param p1, "other"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 1380
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 1381
    .local v0, "ancestor1":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 1382
    .local v1, "ancestor2":Landroidx/compose/ui/node/LayoutNode;
    if-ne v0, v1, :cond_4

    .line 1383
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1385
    .local v2, "otherNode":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v4, 0x0

    .line 2218
    .local v4, "$i$f$getLayout-OLwlOKw":I
    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 1385
    .end local v4    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v3, "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "mask$iv":I
    const/4 v5, 0x0

    .line 2219
    .local v5, "$i$f$visitLocalAncestors":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 2220
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_0

    .line 2221
    const/4 v8, 0x0

    .line 2219
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalAncestors$1$iv":I
    nop

    .line 2221
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalAncestors$1$iv":I
    const-string/jumbo v8, "visitLocalAncestors called on an unattached node"

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2223
    :cond_0
    nop

    .line 2224
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 2225
    .local v6, "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_3

    .line 2226
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v7

    and-int/2addr v7, v4

    if-eqz v7, :cond_2

    .line 2227
    move-object v7, v6

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 1385
    .local v8, "$i$a$-visitLocalAncestors-NodeCoordinator$findCommonAncestor$1":I
    if-ne v7, v2, :cond_1

    return-object p1

    .line 2227
    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-visitLocalAncestors-NodeCoordinator$findCommonAncestor$1":I
    :cond_1
    nop

    .line 2229
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_0

    .line 2231
    :cond_3
    nop

    .line 1386
    .end local v3    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "mask$iv":I
    .end local v5    # "$i$f$visitLocalAncestors":I
    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    return-object p0

    .line 1389
    .end local v2    # "otherNode":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 1390
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    .line 1393
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDepth$ui()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 1394
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_2

    .line 1397
    :cond_6
    :goto_3
    if-eq v0, v1, :cond_8

    .line 1398
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 1399
    .local v2, "parent1":Landroidx/compose/ui/node/LayoutNode;
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    .line 1400
    .local v3, "parent2":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 1403
    move-object v0, v2

    .line 1404
    move-object v1, v3

    .end local v2    # "parent1":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "parent2":Landroidx/compose/ui/node/LayoutNode;
    goto :goto_3

    .line 1401
    .restart local v2    # "parent1":Landroidx/compose/ui/node/LayoutNode;
    .restart local v3    # "parent2":Landroidx/compose/ui/node/LayoutNode;
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "layouts are not part of the same hierarchy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1407
    .end local v2    # "parent1":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "parent2":Landroidx/compose/ui/node/LayoutNode;
    :cond_8
    nop

    .line 1408
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-ne v1, v2, :cond_9

    move-object v2, p0

    goto :goto_4

    .line 1409
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-ne v0, v2, :cond_a

    move-object v2, p1

    goto :goto_4

    .line 1410
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getInnerCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    .line 1407
    :goto_4
    return-object v2
.end method

.method public fromParentPosition-8S9VItk(JZ)J
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .param p3, "includeMotionFrameOfReference"    # Z

    .line 1226
    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isPlacedUnderMotionFrameOfReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    move-wide v0, p1

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->minus-Nv-tHpc(JJ)J

    move-result-wide v0

    .line 1226
    :goto_0
    nop

    .line 1225
    nop

    .line 1231
    .local v0, "relativeToPosition":J
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1232
    .local v2, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v0

    :goto_1
    return-wide v3
.end method

.method public getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->getAlignmentLinesOwner$ui()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    return-object v0
.end method

.method public getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object v0
.end method

.method public getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 92
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    return v0
.end method

.method public getFontScale()F
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    return v0
.end method

.method public final getForceMeasureWithLookaheadConstraints$ui()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->forceMeasureWithLookaheadConstraints:Z

    return v0
.end method

.method public final getForcePlaceWithLookaheadOffset$ui()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->forcePlaceWithLookaheadOffset:Z

    return v0
.end method

.method public getHasMeasureResult()Z
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIntroducesMotionFrameOfReference()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isPlacedUnderMotionFrameOfReference()Z

    move-result v0

    return v0
.end method

.method public final getLastClip$ui()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastClip:Z

    return v0
.end method

.method public final getLastLayerDrawingWasSkipped$ui()Z
    .locals 1

    .line 666
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    return v0
.end method

.method public final getLastMeasurementConstraints-msEJaDk$ui()J
    .locals 2

    .line 326
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasurementConstraints-msEJaDk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastShape$ui()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 329
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    return-object v0
.end method

.method public final getLayer()Landroidx/compose/ui/node/OwnedLayer;
    .locals 1

    .line 669
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    return-object v0
.end method

.method protected final getLayerBlock()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public abstract getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
.end method

.method public getMeasureResult$ui()Landroidx/compose/ui/layout/MeasureResult;
    .locals 2

    .line 177
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMinimumTouchTargetSize-NH-jbRc()J
    .locals 4

    .line 678
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 1797
    .local v0, "$this$getMinimumTouchTargetSize_NH_jbRc_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 678
    .local v1, "$i$a$-with-NodeCoordinator$minimumTouchTargetSize$1":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumTouchTargetSize-MYxV2XQ()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    .end local v0    # "$this$getMinimumTouchTargetSize_NH_jbRc_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-NodeCoordinator$minimumTouchTargetSize$1":I
    return-wide v0
.end method

.method public getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object v0
.end method

.method public final getParentCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 3

    .line 310
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 1843
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 1844
    const/4 v2, 0x0

    .line 310
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$parentCoordinates$1":I
    nop

    .line 1844
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$parentCoordinates$1":I
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1846
    :cond_0
    nop

    .line 311
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 312
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 25

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/4 v1, 0x0

    .line 1785
    .local v1, "$i$f$getParentData-OLwlOKw":I
    const/16 v2, 0x40

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 262
    .end local v1    # "$i$f$getParentData-OLwlOKw":I
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 267
    .local v0, "thisNode":Landroidx/compose/ui/Modifier$Node;
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 268
    .local v1, "data":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v4, 0x0

    .line 1786
    .local v4, "$i$f$tailToHead$ui":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1787
    .local v5, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v5, :cond_10

    .line 1788
    move-object v6, v5

    .local v6, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 269
    .local v7, "$i$a$-tailToHead$ui-NodeCoordinator$parentData$1":I
    const/4 v8, 0x0

    .line 1789
    .local v8, "$i$f$getParentData-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 269
    .end local v8    # "$i$f$getParentData-OLwlOKw":I
    nop

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v9, v6

    .local v9, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1790
    .local v10, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v11

    and-int/2addr v11, v8

    if-eqz v11, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 269
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v8, :cond_e

    .line 270
    const/4 v8, 0x0

    .line 1791
    .local v8, "$i$f$getParentData-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 270
    .end local v8    # "$i$f$getParentData-OLwlOKw":I
    move-object v9, v6

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v9, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1792
    .local v10, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v11, 0x0

    .line 1793
    .local v11, "stack$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "node$iv":Ljava/lang/Object;
    move-object v14, v9

    .line 1794
    :goto_2
    if-eqz v14, :cond_d

    .line 1795
    instance-of v15, v14, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v15, :cond_1

    .line 1796
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/node/ParentDataModifierNode;

    .local v15, "it":Landroidx/compose/ui/node/ParentDataModifierNode;
    const/16 v16, 0x0

    .line 271
    .local v16, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$parentData$1$1":I
    nop

    .line 1797
    move-object/from16 v17, v15

    .local v17, "$this$_get_parentData__u24lambda_u240_u240_u240":Landroidx/compose/ui/node/ParentDataModifierNode;
    const/16 v18, 0x0

    .line 271
    .local v18, "$i$a$-with-NodeCoordinator$parentData$1$1$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    iget-object v12, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v13, v17

    .end local v17    # "$this$_get_parentData__u24lambda_u240_u240_u240":Landroidx/compose/ui/node/ParentDataModifierNode;
    .local v13, "$this$_get_parentData__u24lambda_u240_u240_u240":Landroidx/compose/ui/node/ParentDataModifierNode;
    invoke-interface {v13, v2, v12}, Landroidx/compose/ui/node/ParentDataModifierNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v13    # "$this$_get_parentData__u24lambda_u240_u240_u240":Landroidx/compose/ui/node/ParentDataModifierNode;
    .end local v18    # "$i$a$-with-NodeCoordinator$parentData$1$1$1":I
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    nop

    .line 1796
    .end local v15    # "it":Landroidx/compose/ui/node/ParentDataModifierNode;
    .end local v16    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$parentData$1$1":I
    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1798
    :cond_1
    move v2, v8

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v12, v14

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1799
    .local v13, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v15

    and-int/2addr v15, v2

    if-eqz v15, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 1798
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v2, :cond_b

    instance-of v2, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_b

    .line 1800
    const/4 v2, 0x0

    .line 1801
    .local v2, "count$iv":I
    move-object v12, v14

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v13, 0x0

    .line 1802
    .local v13, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 1803
    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v15, :cond_a

    .line 1804
    move-object/from16 v16, v15

    .local v16, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1805
    .local v17, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v18, v8

    .local v18, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v20, v16

    .local v20, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1799
    .local v21, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v18

    if-eqz v22, :cond_3

    const/16 v18, 0x1

    goto :goto_5

    :cond_3
    const/16 v18, 0x0

    .line 1805
    .end local v18    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v18, :cond_9

    .line 1806
    add-int/lit8 v2, v2, 0x1

    .line 1807
    move-object/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v18, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    if-ne v2, v3, :cond_4

    .line 1808
    move-object/from16 v14, v16

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v3, v16

    const/4 v5, 0x0

    goto :goto_8

    .line 1812
    :cond_4
    if-nez v11, :cond_5

    const/4 v3, 0x0

    .line 1813
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1814
    move/from16 v20, v2

    .end local v2    # "count$iv":I
    .local v20, "count$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv":I
    const/16 v21, 0x0

    .line 1815
    .local v21, "$i$f$MutableVector":I
    move/from16 v22, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v22, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v23, v4

    .end local v4    # "$i$f$tailToHead$ui":I
    .local v23, "$i$f$tailToHead$ui":I
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .local v24, "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1813
    .end local v2    # "capacity$iv$iv$iv":I
    .end local v21    # "$i$f$MutableVector":I
    goto :goto_6

    .line 1812
    .end local v20    # "count$iv":I
    .end local v22    # "$i$f$mutableVectorOf":I
    .end local v23    # "$i$f$tailToHead$ui":I
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "count$iv":I
    .restart local v4    # "$i$f$tailToHead$ui":I
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_5
    move/from16 v20, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .end local v2    # "count$iv":I
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "count$iv":I
    .restart local v23    # "$i$f$tailToHead$ui":I
    .restart local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    move-object v3, v11

    :goto_6
    move-object v11, v3

    .line 1816
    move-object v2, v14

    .line 1817
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 1818
    if-eqz v11, :cond_6

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1819
    :cond_6
    const/4 v3, 0x0

    move-object v14, v3

    .line 1821
    :cond_7
    if-eqz v11, :cond_8

    move-object/from16 v3, v16

    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v3, v16

    .line 1824
    .end local v2    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move/from16 v2, v20

    goto :goto_8

    .line 1805
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "count$iv":I
    .end local v23    # "$i$f$tailToHead$ui":I
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "count$iv":I
    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui":I
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v3, v16

    const/4 v5, 0x0

    .line 1824
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$i$f$tailToHead$ui":I
    .restart local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    nop

    .line 1804
    .end local v3    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1825
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v3, v18

    move/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_4

    .line 1827
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$i$f$tailToHead$ui":I
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui":I
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .line 1828
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v13    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$i$f$tailToHead$ui":I
    .restart local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1830
    move-object/from16 v3, v18

    move/from16 v4, v23

    move-object/from16 v5, v24

    const/16 v2, 0x40

    goto/16 :goto_2

    .line 1798
    .end local v2    # "count$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$i$f$tailToHead$ui":I
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui":I
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1833
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$i$f$tailToHead$ui":I
    .restart local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    :goto_9
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v3, v18

    move/from16 v4, v23

    move-object/from16 v5, v24

    const/16 v2, 0x40

    goto/16 :goto_2

    .line 1835
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$i$f$tailToHead$ui":I
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui":I
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$i$f$tailToHead$ui":I
    .restart local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_a

    .line 269
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v9    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v11    # "stack$iv":Ljava/lang/Object;
    .end local v14    # "node$iv":Ljava/lang/Object;
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$i$f$tailToHead$ui":I
    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui":I
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v18, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    .line 274
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$i$f$tailToHead$ui":I
    .restart local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    if-eq v6, v0, :cond_f

    .line 275
    nop

    .line 1788
    .end local v6    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$a$-tailToHead$ui-NodeCoordinator$parentData$1":I
    :cond_f
    nop

    .line 1836
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object/from16 v3, v18

    move/from16 v4, v23

    const/16 v2, 0x40

    .end local v24    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1838
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$i$f$tailToHead$ui":I
    .restart local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v4    # "$i$f$tailToHead$ui":I
    :cond_10
    nop

    .line 276
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v4    # "$i$f$tailToHead$ui":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v2

    .line 278
    .end local v0    # "thisNode":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "data":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 7

    .line 287
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 1839
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_1

    .line 1840
    const/4 v2, 0x0

    .line 288
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$parentLayoutCoordinates$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 290
    .local v4, "node":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v4, :cond_0

    .line 291
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "append(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    const-string v5, " isAttached="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 296
    const-string v5, " modifier="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    const-string v5, " tail="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1840
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$parentLayoutCoordinates$1":I
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "node":Landroidx/compose/ui/node/LayoutNode;
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1842
    :cond_1
    nop

    .line 304
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 305
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public getPosition-nOcc-ac()J
    .locals 2

    .line 252
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-wide v0
.end method

.method public getProvidedAlignmentLines()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            ">;"
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "set":Ljava/util/Set;
    move-object v1, p0

    .line 217
    .local v1, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eqz v1, :cond_4

    .line 218
    iget-object v2, v1, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 219
    .local v2, "alignmentLines":Ljava/util/Map;
    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v3, v5

    :cond_1
    if-eqz v3, :cond_3

    .line 220
    if-nez v0, :cond_2

    .line 221
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Set;

    .line 223
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_3
    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .end local v2    # "alignmentLines":Ljava/util/Map;
    goto :goto_0

    .line 227
    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method protected final getRectCache()Landroidx/compose/ui/geometry/MutableRect;
    .locals 3

    .line 317
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/geometry/MutableRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>(FFFF)V

    move-object v1, v0

    .line 1797
    .local v1, "it":Landroidx/compose/ui/geometry/MutableRect;
    const/4 v2, 0x0

    .line 317
    .local v2, "$i$a$-also-NodeCoordinator$rectCache$1":I
    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    .end local v1    # "it":Landroidx/compose/ui/geometry/MutableRect;
    .end local v2    # "$i$a$-also-NodeCoordinator$rectCache$1":I
    :cond_0
    return-object v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 137
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getTail()Landroidx/compose/ui/Modifier$Node;
.end method

.method public final getWasLayerBlockInvoked$ui()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wasLayerBlockInvoked:Z

    return v0
.end method

.method public final getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getWrappedBy$ui()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 255
    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return v0
.end method

.method public final head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I

    .line 129
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    .local v0, "includeTail$iv":Z
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v2, p1

    .local v2, "mask$iv":I
    const/4 v3, 0x0

    .line 1712
    .local v3, "$i$f$visitNodes":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 1713
    .local v4, "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1714
    .local v5, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v5, :cond_3

    .line 1715
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_4

    .line 1716
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_2

    move-object v6, v5

    .local v6, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 130
    .local v7, "$i$a$-visitNodes-NodeCoordinator$head$1":I
    return-object v6

    .line 1717
    .end local v6    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$a$-visitNodes-NodeCoordinator$head$1":I
    :cond_2
    if-eq v5, v4, :cond_3

    .line 1718
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_1

    .line 1720
    :cond_3
    nop

    .line 132
    .end local v0    # "includeTail$iv":Z
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "mask$iv":I
    .end local v3    # "$i$f$visitNodes":I
    .end local v4    # "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hitTest-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 14
    .param p1, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p6, "isInLayer"    # Z

    .line 701
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface {p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->entityType-OLwlOKw()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 702
    .local v1, "head":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_3

    .line 705
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v0

    invoke-static {v6, v0}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 707
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {p0, v3, v4, v10, v11}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v0

    .line 706
    nop

    .line 708
    .local v0, "distanceFromEdge":F
    nop

    .line 709
    move v10, v0

    .local v10, "$this$fastIsFinite$iv":F
    const/4 v11, 0x0

    .line 2049
    .local v11, "$i$f$fastIsFinite":I
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    and-int/2addr v7, v12

    if-ge v7, v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    .line 709
    .end local v10    # "$this$fastIsFinite$iv":F
    .end local v11    # "$i$f$fastIsFinite":I
    :goto_0
    if-eqz v8, :cond_2

    .line 710
    invoke-virtual {v5, v0, v9}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    nop

    .line 713
    nop

    .line 714
    nop

    .line 715
    nop

    .line 716
    nop

    .line 717
    nop

    .line 718
    nop

    .line 712
    const/4 v7, 0x0

    move-object v2, p1

    move v8, v0

    move-object v0, p0

    .end local v0    # "distanceFromEdge":F
    .local v8, "distanceFromEdge":F
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .end local v8    # "distanceFromEdge":F
    goto/16 :goto_4

    .line 710
    .restart local v0    # "distanceFromEdge":F
    :cond_1
    move v8, v0

    .end local v0    # "distanceFromEdge":F
    .restart local v8    # "distanceFromEdge":F
    goto/16 :goto_4

    .line 709
    .end local v8    # "distanceFromEdge":F
    .restart local v0    # "distanceFromEdge":F
    :cond_2
    move v8, v0

    .end local v0    # "distanceFromEdge":F
    .restart local v8    # "distanceFromEdge":F
    goto/16 :goto_4

    .line 722
    .end local v8    # "distanceFromEdge":F
    :cond_3
    if-nez v1, :cond_4

    .line 723
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    goto/16 :goto_4

    .line 724
    :cond_4
    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->isPointerInBounds-k-4lQ0M(J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 726
    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-5ShdDok(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    goto :goto_4

    .line 729
    :cond_5
    move-object/from16 v5, p4

    move/from16 v6, p5

    sget-object v10, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v10

    invoke-static {v6, v10}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_6

    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    .line 731
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v10

    invoke-virtual {p0, v3, v4, v10, v11}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v10

    .line 729
    :goto_1
    nop

    .line 728
    nop

    .line 734
    .local v10, "distanceFromEdge":F
    move v11, v10

    .local v11, "$this$fastIsFinite$iv":F
    const/4 v12, 0x0

    .line 2050
    .local v12, "$i$f$fastIsFinite":I
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    and-int/2addr v7, v13

    if-ge v7, v2, :cond_7

    move v2, v8

    goto :goto_2

    :cond_7
    move v2, v9

    .line 734
    .end local v11    # "$this$fastIsFinite$iv":F
    .end local v12    # "$i$f$fastIsFinite":I
    :goto_2
    if-eqz v2, :cond_8

    .line 735
    move/from16 v7, p6

    invoke-virtual {v5, v10, v7}, Landroidx/compose/ui/node/HitTestResult;->isHitInMinimumTouchTargetBetter(FZ)Z

    move-result v2

    if-eqz v2, :cond_9

    move v9, v8

    goto :goto_3

    .line 734
    :cond_8
    move/from16 v7, p6

    .line 735
    :cond_9
    nop

    .line 733
    :goto_3
    nop

    .line 737
    .local v9, "isHitInMinimumTouchTargetBetter":Z
    nop

    .line 738
    nop

    .line 739
    nop

    .line 740
    nop

    .line 741
    nop

    .line 742
    nop

    .line 743
    nop

    .line 744
    nop

    .line 737
    move-object v0, p0

    move-object v2, p1

    move v8, v10

    .end local v10    # "distanceFromEdge":F
    .restart local v8    # "distanceFromEdge":F
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 747
    .end local v8    # "distanceFromEdge":F
    .end local v9    # "isHitInMinimumTouchTargetBetter":Z
    :cond_a
    :goto_4
    return-void
.end method

.method public hitTestChild-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 9
    .param p1, "hitTestSource"    # Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p6, "isInLayer"    # Z

    .line 944
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 945
    .local v0, "wrapped":Landroidx/compose/ui/node/NodeCoordinator;
    if-eqz v0, :cond_0

    .line 946
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-wide v1, p2

    .end local p2    # "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk$default(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide p2

    .line 947
    move-wide v7, v1

    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    .local v7, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    .local p2, "positionInWrapped":J
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "hitTestSource":Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .end local p2    # "positionInWrapped":J
    .end local p4    # "hitTestResult":Landroidx/compose/ui/node/HitTestResult;
    .end local p5    # "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0":I
    .end local p6    # "isInLayer":Z
    .local v1, "hitTestSource":Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .local v2, "positionInWrapped":J
    .local v4, "hitTestResult":Landroidx/compose/ui/node/HitTestResult;
    .local v5, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0":I
    .local v6, "isInLayer":Z
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    goto :goto_0

    .line 945
    .end local v1    # "hitTestSource":Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .end local v2    # "positionInWrapped":J
    .end local v4    # "hitTestResult":Landroidx/compose/ui/node/HitTestResult;
    .end local v5    # "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0":I
    .end local v6    # "isInLayer":Z
    .end local v7    # "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    .restart local p1    # "hitTestSource":Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .local p2, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    .restart local p4    # "hitTestResult":Landroidx/compose/ui/node/HitTestResult;
    .restart local p5    # "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0":I
    .restart local p6    # "isInLayer":Z
    :cond_0
    move-object v1, p1

    move-wide v7, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 949
    .end local p1    # "hitTestSource":Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .end local p2    # "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    .end local p4    # "hitTestResult":Landroidx/compose/ui/node/HitTestResult;
    .end local p5    # "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0":I
    .end local p6    # "isInLayer":Z
    .restart local v1    # "hitTestSource":Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    .restart local v4    # "hitTestResult":Landroidx/compose/ui/node/HitTestResult;
    .restart local v5    # "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0":I
    .restart local v6    # "isInLayer":Z
    .restart local v7    # "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0":J
    :goto_0
    return-void
.end method

.method public invalidateLayer()V
    .locals 2

    .line 1363
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1364
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    .line 1365
    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 1369
    :cond_1
    :goto_0
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    return v0
.end method

.method protected final isPointerInBounds-k-4lQ0M(J)Z
    .locals 9
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J

    .line 1356
    move-wide v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 2212
    .local v2, "$i$f$getX-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 2213
    .local v5, "$i$f$unpackFloat1":I
    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v6, v6

    .local v6, "bits$iv$iv$iv":I
    const/4 v7, 0x0

    .line 2214
    .local v7, "$i$f$floatFromBits":I
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 2213
    .end local v6    # "bits$iv$iv$iv":I
    .end local v7    # "$i$f$floatFromBits":I
    nop

    .line 2212
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat1":I
    nop

    .line 1356
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getX-impl":I
    nop

    .line 1357
    .local v6, "x":F
    nop

    .restart local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 2215
    .local v2, "$i$f$getY-impl":I
    nop

    .restart local v3    # "value$iv$iv":J
    const/4 v5, 0x0

    .line 2216
    .local v5, "$i$f$unpackFloat2":I
    const-wide v7, 0xffffffffL

    and-long/2addr v7, v3

    long-to-int v7, v7

    .local v7, "bits$iv$iv$iv":I
    const/4 v8, 0x0

    .line 2217
    .local v8, "$i$f$floatFromBits":I
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 2216
    .end local v7    # "bits$iv$iv$iv":I
    .end local v8    # "$i$f$floatFromBits":I
    nop

    .line 2215
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackFloat2":I
    nop

    .line 1357
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$getY-impl":I
    nop

    .line 1358
    .local v7, "y":F
    const/4 v0, 0x0

    cmpl-float v1, v6, v0

    if-ltz v1, :cond_0

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTransparent()Z
    .locals 2

    .line 150
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 675
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 11
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "clipBounds"    # Z

    .line 1112
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 2172
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 2173
    const/4 v2, 0x0

    .line 1112
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$localBoundingBoxOf$1":I
    nop

    .line 2173
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$localBoundingBoxOf$1":I
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2175
    :cond_0
    nop

    .line 1113
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    .restart local v0    # "value$iv":Z
    const/4 v1, 0x0

    .line 2176
    .restart local v1    # "$i$f$checkPrecondition":I
    if-nez v0, :cond_1

    .line 2177
    const/4 v2, 0x0

    .line 1114
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$localBoundingBoxOf$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LayoutCoordinates "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not attached!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2177
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$localBoundingBoxOf$2":I
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2179
    :cond_1
    nop

    .line 1116
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 1117
    .local v0, "srcCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 1118
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 1120
    .local v1, "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    move-result-object v3

    .line 1121
    .local v3, "bounds":Landroidx/compose/ui/geometry/MutableRect;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 1122
    invoke-virtual {v3, v2}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 1123
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v4

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 2180
    .local v2, "$i$f$getWidth-impl":I
    move-wide v6, v4

    .local v6, "value$iv$iv":J
    const/4 v8, 0x0

    .line 2181
    .local v8, "$i$f$unpackInt1":I
    const/16 v9, 0x20

    shr-long v9, v6, v9

    long-to-int v6, v9

    .line 2180
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt1":I
    nop

    .line 1123
    .end local v2    # "$i$f$getWidth-impl":I
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v2, v6

    invoke-virtual {v3, v2}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 1124
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v4

    .restart local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 2182
    .local v2, "$i$f$getHeight-impl":I
    move-wide v6, v4

    .restart local v6    # "value$iv$iv":J
    const/4 v8, 0x0

    .line 2183
    .local v8, "$i$f$unpackInt2":I
    const-wide v9, 0xffffffffL

    and-long/2addr v9, v6

    long-to-int v6, v9

    .line 2182
    .end local v6    # "value$iv$iv":J
    .end local v8    # "$i$f$unpackInt2":I
    nop

    .line 1124
    .end local v2    # "$i$f$getHeight-impl":I
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v2, v6

    invoke-virtual {v3, v2}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 1126
    move-object v2, v0

    .line 1127
    .local v2, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v2, v1, :cond_3

    .line 1128
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v4, p2

    .end local p2    # "clipBounds":Z
    .local v4, "clipBounds":Z
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui$default(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;ZZILjava/lang/Object;)V

    .line 1129
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1130
    sget-object p2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    return-object p2

    .line 1133
    :cond_2
    iget-object p2, v2, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p2

    move p2, v4

    goto :goto_0

    .line 1136
    .end local v4    # "clipBounds":Z
    .restart local p2    # "clipBounds":Z
    :cond_3
    move v4, p2

    .end local p2    # "clipBounds":Z
    .restart local v4    # "clipBounds":Z
    invoke-direct {p0, v1, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 1137
    invoke-static {v3}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    return-object p2
.end method

.method public localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 2
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToSource$0"    # J

    .line 1019
    nop

    .line 1020
    nop

    .line 1021
    nop

    .line 1022
    nop

    .line 1019
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v0

    .line 1023
    return-wide v0
.end method

.method public localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J
    .locals 9
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToSource$0"    # J
    .param p4, "includeMotionFrameOfReference"    # Z

    .line 1030
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v0, :cond_0

    .line 1031
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->getCoordinator()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 1032
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    .line 1033
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1034
    move-wide v2, p2

    .local v2, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v4, 0x0

    .line 2164
    .local v4, "$i$f$unaryMinus-F1C5BW0":I
    const-wide v5, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long v7, v2, v5

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    .line 1035
    .end local v2    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v4    # "$i$f$unaryMinus-F1C5BW0":I
    nop

    .line 1032
    invoke-virtual {v0, v1, v2, v3, p4}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v0

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v2, 0x0

    .line 2165
    .local v2, "$i$f$unaryMinus-F1C5BW0":I
    xor-long v3, v0, v5

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 1032
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v2    # "$i$f$unaryMinus-F1C5BW0":I
    return-wide v0

    .line 1039
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 1040
    .local v0, "nodeCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 1041
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 1043
    .local v1, "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    move-wide v2, p2

    .line 1044
    .local v2, "position":J
    move-object v4, v0

    .line 1045
    .local v4, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v4, v1, :cond_1

    .line 1046
    invoke-virtual {v4, v2, v3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-8S9VItk(JZ)J

    move-result-wide v2

    .line 1047
    iget-object v5, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_0

    .line 1050
    :cond_1
    invoke-direct {p0, v1, v2, v3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-S_NoaFU(Landroidx/compose/ui/node/NodeCoordinator;JZ)J

    move-result-wide v5

    return-wide v5
.end method

.method public localToRoot-MK-Hz9U(J)J
    .locals 9
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToLocal$0"    # J

    .line 1168
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 2184
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 2185
    const/4 v2, 0x0

    .line 1168
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$localToRoot$1":I
    nop

    .line 2185
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$localToRoot$1":I
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2187
    :cond_0
    nop

    .line 1169
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 1170
    move-object v0, p0

    .line 1171
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    .line 1172
    .end local v0    # "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .local v3, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    .local v4, "position":J
    :goto_0
    if-eqz v3, :cond_2

    .line 1173
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isRectManagerOffsetUsageFromLayoutCoordinatesEnabled:Z

    if-eqz v0, :cond_1

    .line 1174
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 1175
    .local v0, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 1176
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOuterCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    if-ne v3, v1, :cond_1

    .line 1177
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getHasPositionalLayerTransformationsInOffsetFromRoot$ui()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/spatial/RectManager;->getOffsetFromRectListFor-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    move-result-wide v1

    .line 1179
    nop

    .line 1181
    .local v1, "offsetFromRectList":J
    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/unit/IntOffset$Companion;->getMax-nOcc-ac()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1182
    invoke-static {v4, v5, v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide v6

    return-wide v6

    .line 1186
    .end local v0    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v1    # "offsetFromRectList":J
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->toParentPosition-8S9VItk$default(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v4

    .line 1187
    iget-object v3, v3, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    .line 1189
    :cond_2
    return-wide v4
.end method

.method public localToScreen-MK-Hz9U(J)J
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToLocal$0"    # J

    .line 991
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 2156
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 2157
    const/4 v2, 0x0

    .line 991
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$localToScreen$1":I
    nop

    .line 2157
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$localToScreen$1":I
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2159
    :cond_0
    nop

    .line 992
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    .line 993
    .local v0, "positionInRoot":J
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    .line 994
    .local v2, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/node/Owner;->localToScreen-MK-Hz9U(J)J

    move-result-wide v3

    return-wide v3
.end method

.method public localToWindow-MK-Hz9U(J)J
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToLocal$0"    # J

    .line 1007
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    .line 1008
    .local v0, "positionInRoot":J
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    .line 1009
    .local v2, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/node/Owner;->calculatePositionInWindow-MK-Hz9U(J)J

    move-result-wide v3

    return-wide v3
.end method

.method public final onCoordinatesUsed$ui()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDelegate$ui()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->onCoordinatesUsed()V

    .line 283
    return-void
.end method

.method public onLayoutModifierNodeChanged()V
    .locals 1

    .line 1376
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    .line 1377
    :cond_0
    return-void
.end method

.method public final onLayoutNodeDetach()V
    .locals 1

    .line 1251
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->releaseLayer()V

    .line 1252
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onUnplaced()V

    .line 1255
    :cond_0
    return-void
.end method

.method protected onMeasureResultChanged(II)V
    .locals 31
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 236
    .local v1, "layer":Landroidx/compose/ui/node/OwnedLayer;
    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v1, :cond_0

    .line 237
    move/from16 v5, p2

    .local v5, "height$iv":I
    move/from16 v6, p1

    .local v6, "width$iv":I
    const/4 v7, 0x0

    .line 1723
    .local v7, "$i$f$IntSize":I
    move v8, v5

    .local v8, "val2$iv$iv":I
    move v9, v6

    .local v9, "val1$iv$iv":I
    const/4 v10, 0x0

    .line 1724
    .local v10, "$i$f$packInts":I
    int-to-long v11, v9

    shl-long/2addr v11, v4

    int-to-long v13, v8

    and-long/2addr v13, v2

    or-long v8, v11, v13

    .line 1723
    .end local v8    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v5

    .line 237
    .end local v5    # "height$iv":I
    .end local v6    # "width$iv":I
    .end local v7    # "$i$f$IntSize":I
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    iget-object v5, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 244
    :cond_1
    :goto_0
    move/from16 v5, p2

    .restart local v5    # "height$iv":I
    move/from16 v6, p1

    .restart local v6    # "width$iv":I
    const/4 v7, 0x0

    .line 1725
    .restart local v7    # "$i$f$IntSize":I
    move v8, v5

    .restart local v8    # "val2$iv$iv":I
    move v9, v6

    .restart local v9    # "val1$iv$iv":I
    const/4 v10, 0x0

    .line 1726
    .restart local v10    # "$i$f$packInts":I
    int-to-long v11, v9

    shl-long/2addr v11, v4

    int-to-long v13, v8

    and-long/2addr v2, v13

    or-long/2addr v2, v11

    .line 1725
    .end local v8    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v2

    .line 244
    .end local v5    # "height$iv":I
    .end local v6    # "width$iv":I
    .end local v7    # "$i$f$IntSize":I
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->setMeasuredSize-ozmzZPI(J)V

    .line 245
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 246
    invoke-direct {v0, v3}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)V

    .line 248
    :cond_2
    const/4 v2, 0x0

    .line 1727
    .local v2, "$i$f$getDraw-OLwlOKw":I
    const/4 v4, 0x4

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 248
    .end local v2    # "$i$f$getDraw-OLwlOKw":I
    move-object/from16 v4, p0

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v4, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v5, 0x0

    .line 1728
    .local v5, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v6

    .local v6, "includeTail$iv$iv":Z
    move v7, v2

    .local v7, "mask$iv$iv":I
    move-object v8, v4

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v9, 0x0

    .line 1729
    .local v9, "$i$f$visitNodes":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-nez v10, :cond_4

    move-object/from16 v25, v1

    move/from16 v29, v2

    goto/16 :goto_c

    .line 1730
    .local v10, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    :goto_1
    invoke-static {v8, v6}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1731
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v11, :cond_14

    .line 1732
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_13

    .line 1733
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_12

    move-object v12, v11

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1728
    .local v13, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move v14, v2

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1734
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 1735
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v3, v18

    .line 1736
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v3, :cond_11

    .line 1737
    instance-of v0, v3, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v0, :cond_5

    .line 1738
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/DrawModifierNode;

    .local v0, "it":Landroidx/compose/ui/node/DrawModifierNode;
    const/16 v19, 0x0

    .line 248
    .local v19, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasureResultChanged$1":I
    invoke-interface {v0}, Landroidx/compose/ui/node/DrawModifierNode;->onMeasureResultChanged()V

    .line 1738
    .end local v0    # "it":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v19    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasureResultChanged$1":I
    move-object/from16 v25, v1

    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1739
    :cond_5
    move v0, v14

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v19, v3

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1740
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v0

    move/from16 v22, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v21, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    .line 1739
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_4
    if-eqz v19, :cond_f

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_f

    .line 1741
    const/4 v0, 0x0

    .line 1742
    .local v0, "count$iv$iv":I
    move-object/from16 v20, v3

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1743
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1744
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v22, :cond_e

    .line 1745
    move-object/from16 v23, v22

    .local v23, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1746
    .local v24, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v25, v14

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1740
    .local v27, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v25

    if-eqz v28, :cond_7

    const/16 v25, 0x1

    goto :goto_6

    :cond_7
    const/16 v25, 0x0

    .line 1746
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v25, :cond_d

    .line 1747
    add-int/lit8 v0, v0, 0x1

    .line 1748
    move-object/from16 v25, v1

    const/4 v1, 0x1

    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .local v25, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-ne v0, v1, :cond_8

    .line 1749
    move-object/from16 v3, v23

    move/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v2, v23

    const/4 v3, 0x0

    goto :goto_9

    .line 1753
    :cond_8
    if-nez v17, :cond_9

    const/4 v1, 0x0

    .line 1754
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1755
    move/from16 v26, v0

    .end local v0    # "count$iv$iv":I
    .local v26, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v27, 0x0

    .line 1756
    .local v27, "$i$f$MutableVector":I
    move/from16 v28, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v28, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v29, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v29, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v30, v3

    const/4 v3, 0x0

    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .local v30, "node$iv$iv":Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1754
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v27    # "$i$f$MutableVector":I
    goto :goto_7

    .line 1753
    .end local v26    # "count$iv$iv":I
    .end local v28    # "$i$f$mutableVectorOf":I
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_9
    move/from16 v26, v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v3, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v26    # "count$iv$iv":I
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v17

    :goto_7
    nop

    .line 1757
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v30

    .line 1758
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_b

    .line 1759
    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v30, v2

    .line 1762
    :cond_b
    if-eqz v1, :cond_c

    move-object/from16 v2, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v2, v23

    .line 1765
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v17, v1

    move/from16 v0, v26

    goto :goto_9

    .line 1746
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v26    # "count$iv$iv":I
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv":I
    .local v1, "layer":Landroidx/compose/ui/node/OwnedLayer;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v25, v1

    move/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v2, v23

    const/4 v3, 0x0

    .line 1765
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 1745
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1766
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v1, v25

    move/from16 v2, v29

    move-object/from16 v3, v30

    goto :goto_5

    .line 1768
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_e
    move-object/from16 v25, v1

    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v3, 0x0

    .line 1769
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1771
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v29

    move-object/from16 v3, v30

    goto/16 :goto_3

    .line 1739
    .end local v0    # "count$iv$iv":I
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_f
    move-object/from16 v25, v1

    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v3, 0x0

    .line 1774
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    :cond_10
    :goto_a
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v1, v25

    move/from16 v2, v29

    move-object/from16 v0, p0

    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    goto/16 :goto_3

    .line 1776
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_11
    move-object/from16 v25, v1

    move/from16 v29, v2

    move-object/from16 v30, v3

    const/4 v3, 0x0

    .line 1728
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_b

    .line 1733
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    move-object/from16 v25, v1

    move/from16 v29, v2

    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_b
    nop

    .line 1777
    if-eq v11, v10, :cond_15

    .line 1778
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v29

    goto/16 :goto_2

    .line 1732
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_13
    move-object/from16 v25, v1

    move/from16 v29, v2

    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_c

    .line 1731
    .end local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_14
    move-object/from16 v25, v1

    move/from16 v29, v2

    .line 1780
    .end local v1    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "layer":Landroidx/compose/ui/node/OwnedLayer;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_15
    nop

    .line 1784
    .end local v6    # "includeTail$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes":I
    .end local v10    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    nop

    .line 249
    .end local v4    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui()Landroidx/compose/ui/node/Owner;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 250
    :cond_16
    return-void
.end method

.method public final onMeasured()V
    .locals 36

    .line 344
    const/4 v0, 0x0

    .line 1847
    .local v0, "$i$f$getOnRemeasured-OLwlOKw":I
    const/16 v1, 0x80

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 344
    .end local v0    # "$i$f$getOnRemeasured-OLwlOKw":I
    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->hasNode-H91voCI(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 345
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v3, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v4, 0x0

    .line 1848
    .local v4, "$i$f$withoutReadObservation":I
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    .line 1849
    .local v5, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 1850
    .local v6, "observer$iv":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v7

    .line 1851
    .local v7, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1852
    const/4 v0, 0x0

    .line 346
    .local v0, "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    const/4 v8, 0x0

    .line 1853
    .local v8, "$i$f$getOnRemeasured-OLwlOKw":I
    :try_start_0
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 346
    .end local v8    # "$i$f$getOnRemeasured-OLwlOKw":I
    nop

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v9, 0x0

    .line 1854
    .local v9, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v10

    .local v10, "includeTail$iv$iv":Z
    move v11, v1

    .local v11, "mask$iv$iv":I
    move-object v12, v8

    .local v12, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v13, 0x0

    .line 1855
    .local v13, "$i$f$visitNodes":I
    if-eqz v10, :cond_1

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    if-nez v14, :cond_2

    move/from16 v22, v0

    move/from16 v23, v1

    move-object/from16 v25, v8

    move/from16 v26, v9

    goto/16 :goto_c

    .line 1856
    .local v14, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2
    :goto_1
    invoke-static {v12, v10}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 1857
    .local v15, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v15, :cond_12

    .line 1858
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v16

    and-int v16, v16, v11

    if-eqz v16, :cond_11

    .line 1859
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v11

    if-eqz v16, :cond_10

    move-object/from16 v16, v15

    .local v16, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1854
    .local v17, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move/from16 v18, v1

    .local v18, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v19, v16

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1860
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 1861
    .local v21, "stack$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v35, v22

    move/from16 v22, v0

    move-object/from16 v0, v35

    .line 1862
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v22, "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    :goto_3
    if-eqz v0, :cond_f

    .line 1863
    move/from16 v23, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    instance-of v1, v0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v1, :cond_3

    .line 1864
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .local v1, "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    const/16 v24, 0x0

    .line 346
    .local v24, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasured$1$1":I
    move-object/from16 v25, v8

    move/from16 v26, v9

    .end local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes-aLcG6gQ":I
    .local v25, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v26, "$i$f$visitNodes-aLcG6gQ":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v8

    invoke-interface {v1, v8, v9}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onRemeasured-ozmzZPI(J)V

    .line 1864
    .end local v1    # "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    .end local v24    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onMeasured$1$1":I
    goto/16 :goto_a

    .line 1865
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v9    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_3
    move-object/from16 v25, v8

    move/from16 v26, v9

    .end local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    move/from16 v1, v18

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v8, v0

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 1866
    .local v9, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v1

    move/from16 v27, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v1, 0x1

    if-eqz v24, :cond_4

    move v8, v1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 1865
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$isKind-H91voCI$ui":I
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_4
    if-eqz v8, :cond_e

    instance-of v8, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_e

    .line 1867
    const/4 v8, 0x0

    .line 1868
    .local v8, "count$iv$iv":I
    move-object v9, v0

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .local v9, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v24, 0x0

    .line 1869
    .local v24, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    .line 1870
    .local v27, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v27, :cond_c

    .line 1871
    move-object/from16 v28, v27

    .local v28, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 1872
    .local v29, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v30, v18

    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v31, v28

    .local v31, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 1866
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v30

    if-eqz v33, :cond_5

    move/from16 v30, v1

    goto :goto_6

    :cond_5
    const/16 v30, 0x0

    .line 1872
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v30, :cond_b

    .line 1873
    add-int/lit8 v8, v8, 0x1

    .line 1874
    if-ne v8, v1, :cond_6

    .line 1875
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    goto :goto_9

    .line 1879
    :cond_6
    if-nez v21, :cond_7

    const/16 v30, 0x0

    .line 1880
    .local v30, "$i$f$mutableVectorOf":I
    nop

    .line 1881
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v32, 0x0

    .line 1882
    .local v32, "$i$f$MutableVector":I
    move-object/from16 v33, v0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v33, "node$iv$iv":Ljava/lang/Object;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v34, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v34, "capacity$iv$iv$iv$iv":I
    invoke-direct {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1880
    .end local v32    # "$i$f$MutableVector":I
    .end local v34    # "capacity$iv$iv$iv$iv":I
    goto :goto_7

    .line 1879
    .end local v30    # "$i$f$mutableVectorOf":I
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_7
    move-object/from16 v33, v0

    const/4 v1, 0x0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v33    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v21

    :goto_7
    nop

    .line 1883
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v33

    .line 1884
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_9

    .line 1885
    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1886
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v33, v21

    .line 1888
    :cond_9
    if-eqz v0, :cond_a

    move-object/from16 v1, v28

    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v1, v28

    .line 1891
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v21, v0

    move-object/from16 v0, v33

    goto :goto_9

    .line 1872
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object/from16 v33, v0

    move-object/from16 v1, v28

    .line 1891
    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    nop

    .line 1871
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1892
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v27, v1

    const/4 v1, 0x1

    move-object/from16 v2, p0

    goto :goto_5

    .line 1894
    :cond_c
    move-object/from16 v33, v0

    .line 1895
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v27    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v33    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_d

    .line 1897
    move-object/from16 v2, p0

    move/from16 v1, v23

    move-object/from16 v8, v25

    move/from16 v9, v26

    move-object/from16 v0, v33

    goto/16 :goto_3

    .line 1895
    :cond_d
    move-object/from16 v0, v33

    .line 1900
    .end local v8    # "count$iv$iv":I
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_e
    :goto_a
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object v0, v1

    move-object/from16 v2, p0

    move/from16 v1, v23

    move-object/from16 v8, v25

    move/from16 v9, v26

    goto/16 :goto_3

    .line 1902
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v8, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v9, "$i$f$visitNodes-aLcG6gQ":I
    :cond_f
    move/from16 v23, v1

    move-object/from16 v25, v8

    move/from16 v26, v9

    .line 1854
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v18    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    nop

    .end local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_b

    .line 1859
    .end local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .local v0, "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v9    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_10
    move/from16 v22, v0

    move/from16 v23, v1

    move-object/from16 v25, v8

    move/from16 v26, v9

    .end local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_b
    nop

    .line 1903
    if-eq v15, v14, :cond_13

    .line 1904
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v15, v0

    move-object/from16 v2, p0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v8, v25

    move/from16 v9, v26

    goto/16 :goto_2

    .line 1858
    .end local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v9    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_11
    move/from16 v22, v0

    move/from16 v23, v1

    move-object/from16 v25, v8

    move/from16 v26, v9

    .end local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    goto :goto_c

    .line 1857
    .end local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v9    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_12
    move/from16 v22, v0

    move/from16 v23, v1

    move-object/from16 v25, v8

    move/from16 v26, v9

    .line 1906
    .end local v0    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v9    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v26    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_13
    nop

    .line 1910
    .end local v10    # "includeTail$iv$iv":Z
    .end local v11    # "mask$iv$iv":I
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v13    # "$i$f$visitNodes":I
    .end local v14    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    nop

    .line 347
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v26    # "$i$f$visitNodes-aLcG6gQ":I
    nop

    .end local v22    # "$i$a$-withoutReadObservation-NodeCoordinator$onMeasured$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    nop

    .line 1911
    invoke-virtual {v3, v5, v7, v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1852
    goto :goto_d

    .line 1911
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v5, v7, v6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    .line 349
    .end local v3    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v4    # "$i$f$withoutReadObservation":I
    .end local v5    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v6    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v7    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :cond_14
    :goto_d
    return-void
.end method

.method public final onPlaced()V
    .locals 29

    .line 493
    const/4 v0, 0x0

    .line 1976
    .local v0, "$i$f$getOnPlaced-OLwlOKw":I
    const/high16 v1, 0x400000

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 493
    .end local v0    # "$i$f$getOnPlaced-OLwlOKw":I
    nop

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v2, 0x0

    .line 1977
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v3

    .local v3, "includeTail$iv$iv":Z
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v5, v0

    .local v5, "mask$iv$iv":I
    const/4 v6, 0x0

    .line 1978
    .local v6, "$i$f$visitNodes":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    if-nez v7, :cond_1

    move/from16 v16, v0

    move-object/from16 v18, v1

    move/from16 v27, v2

    goto/16 :goto_b

    .line 1979
    .local v7, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v4, v3}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1980
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v8, :cond_11

    .line 1981
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_10

    .line 1982
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_f

    move-object v9, v8

    .local v9, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 1977
    .local v10, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move v11, v0

    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v12, v9

    .local v12, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 1983
    .local v13, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v14, 0x0

    .line 1984
    .local v14, "stack$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "node$iv$iv":Ljava/lang/Object;
    move-object v15, v12

    .line 1985
    :goto_2
    if-eqz v15, :cond_e

    .line 1986
    move/from16 v16, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    instance-of v0, v15, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v0, :cond_2

    .line 1987
    move-object v0, v15

    check-cast v0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .local v0, "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    const/16 v17, 0x0

    .line 493
    .local v17, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onPlaced$1":I
    move-object/from16 v18, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v18, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 1987
    .end local v0    # "it":Landroidx/compose/ui/node/LayoutAwareModifierNode;
    .end local v17    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onPlaced$1":I
    move/from16 v27, v2

    goto/16 :goto_9

    .line 1988
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_2
    move-object/from16 v18, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v0, v11

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v15

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1989
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v0

    move/from16 v20, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/4 v0, 0x1

    if-eqz v19, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 1988
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_3
    if-eqz v1, :cond_c

    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_c

    .line 1990
    const/4 v1, 0x0

    .line 1991
    .local v1, "count$iv$iv":I
    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/node/DelegatingNode;

    .local v17, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 1992
    .local v19, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1993
    .local v20, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v20, :cond_b

    .line 1994
    move-object/from16 v21, v20

    .local v21, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1995
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v23, v11

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v24, v21

    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1989
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v23

    if-eqz v26, :cond_4

    move/from16 v23, v0

    goto :goto_5

    :cond_4
    const/16 v23, 0x0

    .line 1995
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v23, :cond_a

    .line 1996
    add-int/lit8 v1, v1, 0x1

    .line 1997
    if-ne v1, v0, :cond_5

    .line 1998
    move-object/from16 v15, v21

    move/from16 v27, v2

    move-object/from16 v2, v21

    const/4 v0, 0x0

    goto :goto_8

    .line 2002
    :cond_5
    if-nez v14, :cond_6

    const/16 v23, 0x0

    .line 2003
    .local v23, "$i$f$mutableVectorOf":I
    nop

    .line 2004
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v25, 0x0

    .line 2005
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

    .line 2003
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 2002
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

    .line 2006
    move-object v1, v15

    .line 2007
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_8

    .line 2008
    if-eqz v14, :cond_7

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2009
    :cond_7
    const/4 v2, 0x0

    move-object v15, v2

    .line 2011
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

    .line 2014
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move/from16 v1, v26

    goto :goto_8

    .line 1995
    .end local v26    # "count$iv$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .local v1, "count$iv$iv":I
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    .restart local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v27, v2

    move-object/from16 v2, v21

    const/4 v0, 0x0

    .line 2014
    .end local v21    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_8
    nop

    .line 1994
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2015
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move/from16 v2, v27

    const/4 v0, 0x1

    goto :goto_4

    .line 2017
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .local v2, "$i$f$visitNodes-aLcG6gQ":I
    :cond_b
    move/from16 v27, v2

    .line 2018
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v20    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    .line 2020
    move/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v27

    goto/16 :goto_2

    .line 1988
    .end local v1    # "count$iv$iv":I
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_c
    move/from16 v27, v2

    .line 2023
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_d
    :goto_9
    invoke-static {v14}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v27

    goto/16 :goto_2

    .line 2025
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_e
    move/from16 v16, v0

    move-object/from16 v18, v1

    move/from16 v27, v2

    .line 1977
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v12    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v14    # "stack$iv$iv":Ljava/lang/Object;
    .end local v15    # "node$iv$iv":Ljava/lang/Object;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    nop

    .end local v9    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_a

    .line 1982
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_f
    move/from16 v16, v0

    move-object/from16 v18, v1

    move/from16 v27, v2

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :goto_a
    nop

    .line 2026
    if-eq v8, v7, :cond_12

    .line 2027
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v27

    goto/16 :goto_1

    .line 1981
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_10
    move/from16 v16, v0

    move-object/from16 v18, v1

    move/from16 v27, v2

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    goto :goto_b

    .line 1980
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v2    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_11
    move/from16 v16, v0

    move-object/from16 v18, v1

    move/from16 v27, v2

    .line 2029
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v2    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v27    # "$i$f$visitNodes-aLcG6gQ":I
    :cond_12
    nop

    .line 2033
    .end local v3    # "includeTail$iv$iv":Z
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$i$f$visitNodes":I
    .end local v7    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    nop

    .line 494
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v18    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v27    # "$i$f$visitNodes-aLcG6gQ":I
    return-void
.end method

.method public final onRelease()V
    .locals 4

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    .line 1269
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1270
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->releaseLayer()V

    .line 1271
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->onCoordinatorPositionChanged$ui()V

    .line 1274
    :cond_0
    return-void
.end method

.method public final onUnplaced()V
    .locals 30

    .line 352
    const/4 v0, 0x0

    .line 1912
    .local v0, "$i$f$getUnplaced-OLwlOKw":I
    const/high16 v1, 0x100000

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 352
    .end local v0    # "$i$f$getUnplaced-OLwlOKw":I
    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->hasNode-H91voCI(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 353
    const/4 v0, 0x0

    .line 1913
    .restart local v0    # "$i$f$getUnplaced-OLwlOKw":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 353
    .end local v0    # "$i$f$getUnplaced-OLwlOKw":I
    nop

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    const/4 v3, 0x0

    .line 1914
    .local v3, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v4

    .local v4, "includeTail$iv$iv":Z
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move v6, v0

    .local v6, "mask$iv$iv":I
    const/4 v7, 0x0

    .line 1915
    .local v7, "$i$f$visitNodes":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    if-nez v8, :cond_1

    move/from16 v16, v0

    move-object/from16 v17, v1

    goto/16 :goto_c

    .line 1916
    .local v8, "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v5, v4}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 1917
    .local v9, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v9, :cond_11

    .line 1918
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_10

    .line 1919
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_f

    move-object v10, v9

    .local v10, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 1914
    .local v11, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    move v12, v0

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v13, v10

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1920
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 1921
    .local v15, "stack$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v29, v16

    move/from16 v16, v0

    move-object/from16 v0, v29

    .line 1922
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_2
    if-eqz v0, :cond_e

    .line 1923
    move-object/from16 v17, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v17, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    instance-of v1, v0, Landroidx/compose/ui/node/UnplacedAwareModifierNode;

    if-eqz v1, :cond_2

    .line 1924
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/UnplacedAwareModifierNode;

    .local v1, "it":Landroidx/compose/ui/node/UnplacedAwareModifierNode;
    const/16 v18, 0x0

    .line 353
    .local v18, "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onUnplaced$1":I
    invoke-interface {v1}, Landroidx/compose/ui/node/UnplacedAwareModifierNode;->onUnplaced()V

    .line 1924
    .end local v1    # "it":Landroidx/compose/ui/node/UnplacedAwareModifierNode;
    .end local v18    # "$i$a$-visitNodes-aLcG6gQ-NodeCoordinator$onUnplaced$1":I
    goto/16 :goto_a

    .line 1925
    :cond_2
    move v1, v12

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v18, v0

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 1926
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v1

    move/from16 v21, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v20, :cond_3

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/16 v18, 0x0

    .line 1925
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_3
    if-eqz v18, :cond_d

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_d

    .line 1927
    const/4 v1, 0x0

    .line 1928
    .local v1, "count$iv$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1929
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1930
    .local v21, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v21, :cond_b

    .line 1931
    move-object/from16 v22, v21

    .local v22, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1932
    .local v23, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v24, v12

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v22

    .local v25, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1926
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v24

    if-eqz v27, :cond_4

    const/16 v24, 0x1

    goto :goto_5

    :cond_4
    const/16 v24, 0x0

    .line 1932
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v24, :cond_a

    .line 1933
    add-int/lit8 v1, v1, 0x1

    .line 1934
    move-object/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v24, "node$iv$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_5

    .line 1935
    move-object/from16 v0, v22

    move-object v2, v0

    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 1939
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    :cond_5
    if-nez v15, :cond_6

    const/4 v0, 0x0

    .line 1940
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1941
    move/from16 v25, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v25, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 1942
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v1

    .end local v1    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1940
    .end local v26    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 1939
    .end local v25    # "$i$f$mutableVectorOf":I
    .end local v27    # "count$iv$iv":I
    .restart local v1    # "count$iv$iv":I
    :cond_6
    move/from16 v27, v1

    const/4 v0, 0x0

    .end local v1    # "count$iv$iv":I
    .restart local v27    # "count$iv$iv":I
    move-object v1, v15

    :goto_6
    move-object v15, v1

    .line 1943
    move-object/from16 v1, v24

    .line 1944
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_8

    .line 1945
    if-eqz v15, :cond_7

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1946
    :cond_7
    const/4 v2, 0x0

    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    goto :goto_7

    .line 1944
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    :cond_8
    move-object/from16 v2, v24

    .line 1948
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_7
    if-eqz v15, :cond_9

    move-object/from16 v0, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v0, v22

    .line 1951
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move/from16 v1, v27

    goto :goto_9

    .line 1932
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v27    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v1, "count$iv$iv":I
    .restart local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v24, v0

    move-object/from16 v0, v22

    .end local v22    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v24

    .line 1951
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 1931
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1952
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object v0, v2

    move-object/from16 v2, p0

    goto :goto_4

    .line 1954
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :cond_b
    move-object/from16 v24, v0

    .line 1955
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v19    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v21    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v1, v0, :cond_c

    .line 1957
    move-object/from16 v2, p0

    move-object/from16 v1, v17

    move-object/from16 v0, v24

    goto/16 :goto_2

    .line 1955
    :cond_c
    move-object/from16 v0, v24

    .line 1960
    .end local v1    # "count$iv$iv":I
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_d
    :goto_a
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v2, p0

    move-object/from16 v1, v17

    goto/16 :goto_2

    .line 1962
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_e
    move-object/from16 v17, v1

    .line 1914
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    nop

    .end local v10    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1$iv":I
    goto :goto_b

    .line 1919
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_f
    move/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_b
    nop

    .line 1963
    if-eq v9, v8, :cond_12

    .line 1964
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move-object/from16 v2, p0

    move/from16 v0, v16

    move-object/from16 v1, v17

    goto/16 :goto_1

    .line 1918
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_10
    move/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    goto :goto_c

    .line 1917
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_11
    move/from16 v16, v0

    move-object/from16 v17, v1

    .line 1966
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_12
    nop

    .line 1970
    .end local v4    # "includeTail$iv$iv":Z
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "$i$f$visitNodes":I
    .end local v8    # "stopNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    nop

    .line 355
    .end local v3    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    :cond_13
    return-void
.end method

.method public performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "graphicsLayer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 489
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->draw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 490
    :cond_0
    return-void
.end method

.method protected final performingMeasure-K40F9xA(JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/layout/Placeable;
    .locals 2
    .param p1, "$v$c$androidx-compose-ui-unit-Constraints$-constraints$0"    # J
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;)",
            "Landroidx/compose/ui/layout/Placeable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    .local v0, "$i$f$performingMeasure-K40F9xA":I
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$setMeasurementConstraints-BRTryo0(Landroidx/compose/ui/node/NodeCoordinator;J)V

    .line 340
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    return-object v1
.end method

.method protected placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-position$0"    # J
    .param p3, "zIndex"    # F
    .param p4, "layer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 372
    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->forcePlaceWithLookaheadOffset:Z

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadDelegate;->getPosition-nOcc-ac()J

    move-result-wide v1

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    .line 375
    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 377
    :goto_0
    return-void
.end method

.method protected placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-position$0"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 364
    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->forcePlaceWithLookaheadOffset:Z

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadDelegate;->getPosition-nOcc-ac()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    .line 367
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 369
    :goto_0
    return-void
.end method

.method public final placeSelfApparentToRealOffset-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-position$0"    # J
    .param p3, "zIndex"    # F
    .param p4, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .param p5, "layer"    # Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ")V"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getApparentToRealOffset-nOcc-ac()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v3

    move-object v2, p0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p3    # "zIndex":F
    .end local p4    # "layerBlock":Lkotlin/jvm/functions/Function1;
    .end local p5    # "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .local v5, "zIndex":F
    .local v6, "layerBlock":Lkotlin/jvm/functions/Function1;
    .local v7, "layer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 462
    return-void
.end method

.method public final rectInParent$ui(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 22
    .param p1, "bounds"    # Landroidx/compose/ui/geometry/MutableRect;
    .param p2, "clipBounds"    # Z
    .param p3, "clipToMinimumTouchTargetSize"    # Z

    .line 1286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1287
    .local v2, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v2, :cond_3

    .line 1288
    iget-boolean v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v3, :cond_2

    .line 1289
    const/16 v5, 0x20

    if-eqz p3, :cond_0

    .line 1290
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v6

    .line 1291
    .local v6, "minTouch":J
    move-wide v8, v6

    .local v8, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v10, 0x0

    .line 2192
    .local v10, "$i$f$getWidth-impl":I
    move-wide v11, v8

    .local v11, "value$iv$iv":J
    const/4 v13, 0x0

    .line 2193
    .local v13, "$i$f$unpackFloat1":I
    shr-long v14, v11, v5

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2194
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2193
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2192
    .end local v11    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackFloat1":I
    nop

    .line 1291
    .end local v8    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v10    # "$i$f$getWidth-impl":I
    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v14, v8

    .line 1292
    .local v14, "horz":F
    move-wide v9, v6

    .local v9, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v11, 0x0

    .line 2195
    .local v11, "$i$f$getHeight-impl":I
    move-wide v12, v9

    .local v12, "value$iv$iv":J
    const/4 v15, 0x0

    .line 2196
    .local v15, "$i$f$unpackFloat2":I
    const-wide v16, 0xffffffffL

    and-long v3, v12, v16

    long-to-int v3, v3

    .local v3, "bits$iv$iv$iv":I
    const/4 v4, 0x0

    .line 2197
    .local v4, "$i$f$floatFromBits":I
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 2196
    .end local v3    # "bits$iv$iv$iv":I
    .end local v4    # "$i$f$floatFromBits":I
    nop

    .line 2195
    .end local v12    # "value$iv$iv":J
    .end local v15    # "$i$f$unpackFloat2":I
    nop

    .line 1292
    .end local v9    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v11    # "$i$f$getHeight-impl":I
    div-float/2addr v3, v8

    .line 1293
    .local v3, "vert":F
    nop

    .line 1294
    neg-float v4, v14

    .line 1295
    neg-float v8, v3

    .line 1296
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v9

    .local v9, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v11, 0x0

    .line 2198
    .local v11, "$i$f$getWidth-impl":I
    move-wide v12, v9

    .restart local v12    # "value$iv$iv":J
    const/4 v15, 0x0

    .line 2199
    .local v15, "$i$f$unpackInt1":I
    move-wide/from16 v18, v6

    .end local v6    # "minTouch":J
    .local v18, "minTouch":J
    shr-long v5, v12, v5

    long-to-int v5, v5

    .line 2198
    .end local v12    # "value$iv$iv":J
    .end local v15    # "$i$f$unpackInt1":I
    nop

    .line 1296
    .end local v9    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v11    # "$i$f$getWidth-impl":I
    int-to-float v5, v5

    add-float/2addr v5, v14

    .line 1297
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v6

    .local v6, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v9, 0x0

    .line 2200
    .local v9, "$i$f$getHeight-impl":I
    move-wide v10, v6

    .local v10, "value$iv$iv":J
    const/4 v12, 0x0

    .line 2201
    .local v12, "$i$f$unpackInt2":I
    move-wide/from16 v20, v6

    .end local v6    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .local v20, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    and-long v6, v10, v16

    long-to-int v6, v6

    .line 2200
    .end local v10    # "value$iv$iv":J
    .end local v12    # "$i$f$unpackInt2":I
    nop

    .line 1297
    .end local v9    # "$i$f$getHeight-impl":I
    .end local v20    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    int-to-float v6, v6

    add-float/2addr v6, v3

    .line 1293
    invoke-virtual {v1, v4, v8, v5, v6}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .end local v3    # "vert":F
    .end local v14    # "horz":F
    .end local v18    # "minTouch":J
    goto :goto_0

    .line 1299
    :cond_0
    const-wide v16, 0xffffffffL

    if-eqz p2, :cond_1

    .line 1300
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v3

    .local v3, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 2202
    .local v6, "$i$f$getWidth-impl":I
    move-wide v7, v3

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 2203
    .local v9, "$i$f$unpackInt1":I
    shr-long v10, v7, v5

    long-to-int v5, v10

    .line 2202
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt1":I
    nop

    .line 1300
    .end local v3    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getWidth-impl":I
    int-to-float v3, v5

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getSize-YbymL2g()J

    move-result-wide v4

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 2204
    .local v6, "$i$f$getHeight-impl":I
    move-wide v7, v4

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 2205
    .local v9, "$i$f$unpackInt2":I
    and-long v10, v7, v16

    long-to-int v7, v10

    .line 2204
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt2":I
    nop

    .line 1300
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getHeight-impl":I
    int-to-float v4, v7

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    .line 1302
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1303
    return-void

    .line 1306
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 1309
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    .line 1310
    .local v3, "x":I
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v4

    int-to-float v5, v3

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 1311
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v4

    int-to-float v5, v3

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 1313
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    .line 1314
    .local v4, "y":I
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v5

    int-to-float v6, v4

    add-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 1315
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v5

    int-to-float v6, v4

    add-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 1316
    return-void
.end method

.method public final releaseLayer()V
    .locals 4

    .line 442
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 446
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock$default(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    .line 451
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/node/LayoutNode;->requestRelayout$ui$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 453
    :cond_1
    return-void
.end method

.method public replace$ui()V
    .locals 5

    .line 161
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 162
    .local v0, "explicitLayer":Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    iget v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    iget v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    .line 167
    :goto_0
    return-void
.end method

.method public screenToLocal-MK-Hz9U(J)J
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToScreen$0"    # J

    .line 983
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 2152
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 2153
    const/4 v2, 0x0

    .line 983
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$screenToLocal$1":I
    nop

    .line 2153
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$screenToLocal$1":I
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2155
    :cond_0
    nop

    .line 984
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .line 985
    .local v0, "owner":Landroidx/compose/ui/node/Owner;
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/Owner;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v1

    .line 986
    .local v1, "positionInRoot":J
    move-object v3, p0

    check-cast v3, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    .line 987
    .local v3, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual {p0, v3, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v4

    return-wide v4
.end method

.method public final setForceMeasureWithLookaheadConstraints$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 73
    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->forceMeasureWithLookaheadConstraints:Z

    return-void
.end method

.method public final setForcePlaceWithLookaheadOffset$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 72
    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->forcePlaceWithLookaheadOffset:Z

    return-void
.end method

.method public final setLastClip$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 331
    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastClip:Z

    return-void
.end method

.method public final setLastShape$ui(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/graphics/Shape;

    .line 329
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method protected abstract setLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)V
.end method

.method public setMeasureResult$ui(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 10
    .param p1, "value"    # Landroidx/compose/ui/layout/MeasureResult;

    .line 179
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 180
    .local v0, "old":Landroidx/compose/ui/layout/MeasureResult;
    if-eq p1, v0, :cond_6

    .line 181
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    .line 182
    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 183
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->onMeasureResultChanged(II)V

    .line 187
    :cond_1
    nop

    .line 188
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/collection/MutableObjectIntMap;->isNotEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 190
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/NodeCoordinatorKt;->access$compareEquals(Landroidx/collection/MutableObjectIntMap;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 192
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    .line 196
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    if-nez v1, :cond_4

    .line 197
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    move-result-object v1

    move-object v2, v1

    .local v2, "it":Landroidx/collection/MutableObjectIntMap;
    const/4 v3, 0x0

    .line 198
    .local v3, "$i$a$-also-NodeCoordinator$measureResult$oldLines$1":I
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    .line 199
    nop

    .line 197
    .end local v2    # "it":Landroidx/collection/MutableObjectIntMap;
    .end local v3    # "$i$a$-also-NodeCoordinator$measureResult$oldLines$1":I
    nop

    .line 196
    :cond_4
    nop

    .line 195
    nop

    .line 200
    .local v1, "oldLines":Landroidx/collection/MutableObjectIntMap;
    invoke-virtual {v1}, Landroidx/collection/MutableObjectIntMap;->clear()V

    .line 201
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 1721
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "element$iv":Ljava/util/Map$Entry;
    move-object v6, v5

    .local v6, "entry":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 201
    .local v7, "$i$a$-forEach-NodeCoordinator$measureResult$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    .line 1721
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "$i$a$-forEach-NodeCoordinator$measureResult$1":I
    nop

    .end local v5    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 1722
    :cond_5
    nop

    .line 204
    .end local v1    # "oldLines":Landroidx/collection/MutableObjectIntMap;
    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .end local v3    # "$i$f$forEach":I
    :cond_6
    return-void
.end method

.method protected setPosition--gyyYBs(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntOffset$-<set-?>$0"    # J

    .line 253
    iput-wide p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-void
.end method

.method public final setWasLayerBlockInvoked$ui(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 333
    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wasLayerBlockInvoked:Z

    return-void
.end method

.method public final setWrapped$ui(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 76
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final setWrappedBy$ui(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/NodeCoordinator;

    .line 77
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method protected final setZIndex(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 256
    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    return-void
.end method

.method public final shouldSharePointerInputWithSiblings()Z
    .locals 31

    .line 1415
    const/4 v0, 0x0

    .line 2232
    .local v0, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1415
    .end local v0    # "$i$f$getPointerInput-OLwlOKw":I
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 1417
    .local v0, "start":Landroidx/compose/ui/Modifier$Node;
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1421
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v5, 0x0

    .line 2233
    .local v5, "$i$f$getPointerInput-OLwlOKw":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 1421
    .end local v5    # "$i$f$getPointerInput-OLwlOKw":I
    nop

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v4, "$this$visitSelfAndLocalDescendants_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 2234
    .local v5, "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    const/4 v6, 0x1

    .local v6, "includeSelf$iv$iv":Z
    move v7, v1

    .local v7, "mask$iv$iv":I
    move-object v8, v4

    .local v8, "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 2235
    .local v9, "$i$f$visitLocalDescendants":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 2236
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_1

    .line 2237
    const/4 v12, 0x0

    .line 2235
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    nop

    .line 2237
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    const-string/jumbo v12, "visitLocalDescendants called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2239
    :cond_1
    nop

    .line 2240
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 2241
    .local v10, "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_12

    .line 2242
    move-object v11, v10

    .line 2243
    .local v11, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v11, :cond_11

    .line 2244
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_10

    .line 2245
    move-object v12, v11

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 2234
    .local v13, "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitSelfAndLocalDescendants$1$iv":I
    move v14, v1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 2246
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 2247
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v3, v18

    .line 2248
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_f

    .line 2249
    move-object/from16 v19, v0

    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .local v19, "start":Landroidx/compose/ui/Modifier$Node;
    instance-of v0, v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    move/from16 v20, v0

    const/4 v0, 0x1

    if-eqz v20, :cond_3

    .line 2250
    move-object/from16 v20, v3

    check-cast v20, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v20, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/16 v21, 0x0

    .line 1422
    .local v21, "$i$a$-visitSelfAndLocalDescendants-6rFNWt0-NodeCoordinator$shouldSharePointerInputWithSiblings$1":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/PointerInputModifierNode;->sharePointerInputWithSiblings()Z

    move-result v22

    if-eqz v22, :cond_2

    return v0

    .line 1423
    :cond_2
    nop

    .line 2250
    .end local v20    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v21    # "$i$a$-visitSelfAndLocalDescendants-6rFNWt0-NodeCoordinator$shouldSharePointerInputWithSiblings$1":I
    move/from16 v26, v1

    goto/16 :goto_8

    .line 2251
    :cond_3
    move/from16 v20, v14

    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v21, v3

    .local v21, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 2252
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v20

    if-eqz v23, :cond_4

    move/from16 v20, v0

    goto :goto_2

    :cond_4
    const/16 v20, 0x0

    .line 2251
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v21    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v20, :cond_d

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_d

    .line 2253
    const/4 v0, 0x0

    .line 2254
    .local v0, "count$iv$iv":I
    move-object/from16 v21, v3

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 2255
    .local v22, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 2256
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v23, :cond_c

    .line 2257
    move-object/from16 v24, v23

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 2258
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v14

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 2252
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_5

    const/16 v26, 0x1

    goto :goto_4

    :cond_5
    const/16 v26, 0x0

    .line 2258
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v26, :cond_b

    .line 2259
    add-int/lit8 v0, v0, 0x1

    .line 2260
    move/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-ne v0, v1, :cond_6

    .line 2261
    move-object/from16 v3, v24

    move-object/from16 v2, v24

    goto :goto_7

    .line 2265
    :cond_6
    if-nez v17, :cond_7

    const/4 v1, 0x0

    .line 2266
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 2267
    move/from16 v27, v0

    .end local v0    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 2268
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v30, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v30, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2266
    .end local v28    # "$i$f$MutableVector":I
    .end local v30    # "capacity$iv$iv$iv$iv":I
    goto :goto_5

    .line 2265
    .end local v27    # "count$iv$iv":I
    .end local v29    # "$i$f$mutableVectorOf":I
    .local v0, "count$iv$iv":I
    :cond_7
    move/from16 v27, v0

    .end local v0    # "count$iv$iv":I
    .restart local v27    # "count$iv$iv":I
    move-object/from16 v1, v17

    :goto_5
    nop

    .line 2269
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v0, v3

    .line 2270
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_9

    .line 2271
    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2272
    :cond_8
    const/4 v2, 0x0

    move-object v3, v2

    .line 2274
    :cond_9
    if-eqz v1, :cond_a

    move-object/from16 v2, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v2, v24

    .line 2277
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    move-object/from16 v17, v1

    move/from16 v0, v27

    goto :goto_7

    .line 2258
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "count$iv$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move/from16 v26, v1

    move-object/from16 v2, v24

    .line 2277
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_7
    nop

    .line 2257
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2278
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move-object/from16 v2, p0

    move/from16 v1, v26

    goto :goto_3

    .line 2280
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_c
    move/from16 v26, v1

    .line 2281
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v21    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2283
    move-object/from16 v2, p0

    move-object/from16 v0, v19

    move/from16 v1, v26

    goto/16 :goto_1

    .line 2251
    .end local v0    # "count$iv$iv":I
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_d
    move/from16 v26, v1

    .line 2286
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    :goto_8
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v0, v19

    move/from16 v1, v26

    goto/16 :goto_1

    .line 2288
    .end local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v19, v0

    move/from16 v26, v1

    .line 2234
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 2245
    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitSelfAndLocalDescendants$1$iv":I
    goto :goto_9

    .line 2244
    .end local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move-object/from16 v19, v0

    move/from16 v26, v1

    .line 2289
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v0, v19

    move/from16 v1, v26

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2291
    .end local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move-object/from16 v19, v0

    move/from16 v26, v1

    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_a

    .line 2241
    .end local v11    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    move-object/from16 v19, v0

    move/from16 v26, v1

    .line 2234
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v6    # "includeSelf$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitLocalDescendants":I
    .end local v10    # "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_a
    goto :goto_b

    .line 1417
    .end local v4    # "$this$visitSelfAndLocalDescendants_u2d6rFNWt0$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move-object/from16 v19, v0

    .line 1426
    .end local v0    # "start":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "start":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    const/16 v18, 0x0

    return v18
.end method

.method public toParentPosition-8S9VItk(JZ)J
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-position$0"    # J
    .param p3, "includeMotionFrameOfReference"    # Z

    .line 1208
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1209
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    .line 1210
    .local v1, "targetPosition":J
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isPlacedUnderMotionFrameOfReference()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1211
    move-wide v3, v1

    goto :goto_1

    .line 1213
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide v3

    .line 1210
    :goto_1
    return-wide v3
.end method

.method public final touchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 17

    .line 953
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    sget-object v1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1

    .line 957
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    .line 959
    .local v1, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getRectCache()Landroidx/compose/ui/geometry/MutableRect;

    move-result-object v2

    .line 960
    .local v2, "bounds":Landroidx/compose/ui/geometry/MutableRect;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide v3

    .line 961
    .local v3, "padding":J
    move-wide v5, v3

    .local v5, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v7, 0x0

    .line 2140
    .local v7, "$i$f$getWidth-impl":I
    move-wide v8, v5

    .local v8, "value$iv$iv":J
    const/4 v10, 0x0

    .line 2141
    .local v10, "$i$f$unpackFloat1":I
    const/16 v11, 0x20

    shr-long v12, v8, v11

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 2142
    .local v13, "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 2141
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 2140
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat1":I
    nop

    .line 961
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v7    # "$i$f$getWidth-impl":I
    neg-float v5, v12

    invoke-virtual {v2, v5}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 962
    move-wide v5, v3

    .restart local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v7, 0x0

    .line 2143
    .local v7, "$i$f$getHeight-impl":I
    move-wide v8, v5

    .restart local v8    # "value$iv$iv":J
    const/4 v10, 0x0

    .line 2144
    .local v10, "$i$f$unpackFloat2":I
    const-wide v12, 0xffffffffL

    and-long v14, v8, v12

    long-to-int v14, v14

    .local v14, "bits$iv$iv$iv":I
    const/4 v15, 0x0

    .line 2145
    .local v15, "$i$f$floatFromBits":I
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 2144
    .end local v14    # "bits$iv$iv$iv":I
    .end local v15    # "$i$f$floatFromBits":I
    nop

    .line 2143
    .end local v8    # "value$iv$iv":J
    .end local v10    # "$i$f$unpackFloat2":I
    nop

    .line 962
    .end local v5    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v7    # "$i$f$getHeight-impl":I
    neg-float v5, v14

    invoke-virtual {v2, v5}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 963
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    move-wide v6, v3

    .local v6, "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v8, 0x0

    .line 2146
    .local v8, "$i$f$getWidth-impl":I
    move-wide v9, v6

    .local v9, "value$iv$iv":J
    const/4 v14, 0x0

    .line 2147
    .local v14, "$i$f$unpackFloat1":I
    move-wide v15, v12

    shr-long v12, v9, v11

    long-to-int v11, v12

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 2148
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 2147
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 2146
    .end local v9    # "value$iv$iv":J
    .end local v14    # "$i$f$unpackFloat1":I
    nop

    .line 963
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v8    # "$i$f$getWidth-impl":I
    add-float/2addr v5, v11

    invoke-virtual {v2, v5}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 964
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    .restart local v6    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    const/4 v8, 0x0

    .line 2149
    .local v8, "$i$f$getHeight-impl":I
    nop

    .restart local v9    # "value$iv$iv":J
    const/4 v11, 0x0

    .line 2150
    .local v11, "$i$f$unpackFloat2":I
    and-long v12, v9, v15

    long-to-int v12, v12

    .local v12, "bits$iv$iv$iv":I
    const/4 v13, 0x0

    .line 2151
    .restart local v13    # "$i$f$floatFromBits":I
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 2150
    .end local v12    # "bits$iv$iv$iv":I
    .end local v13    # "$i$f$floatFromBits":I
    nop

    .line 2149
    .end local v9    # "value$iv$iv":J
    .end local v11    # "$i$f$unpackFloat2":I
    nop

    .line 964
    .end local v6    # "$v$c$androidx-compose-ui-geometry-Size$-this$0$iv":J
    .end local v8    # "$i$f$getHeight-impl":I
    add-float/2addr v5, v12

    invoke-virtual {v2, v5}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    .line 966
    move-object/from16 v5, p0

    .line 967
    .local v5, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    :goto_0
    if-eq v5, v1, :cond_2

    .line 968
    nop

    .line 969
    nop

    .line 970
    nop

    .line 971
    nop

    .line 968
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 973
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 974
    sget-object v6, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    return-object v6

    .line 977
    :cond_1
    iget-object v6, v5, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_0

    .line 979
    :cond_2
    invoke-static {v2}, Landroidx/compose/ui/geometry/MutableRectKt;->toRect(Landroidx/compose/ui/geometry/MutableRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    return-object v6
.end method

.method public transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V
    .locals 2
    .param p1, "sourceCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0"    # [F

    .line 1054
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .line 1055
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui()V

    .line 1056
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 1058
    .local v1, "commonAncestor":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-static {p2}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    .line 1060
    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 1062
    invoke-direct {p0, v1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->transformFromAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 1063
    return-void
.end method

.method public transformToScreen-58bKbWc([F)V
    .locals 13
    .param p1, "$v$c$androidx-compose-ui-graphics-Matrix$-matrix$0"    # [F

    .line 1066
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .line 1067
    .local v0, "owner":Landroidx/compose/ui/node/Owner;
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->toCoordinator(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 1068
    .local v1, "rootCoordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-direct {p0, v1, p1}, Landroidx/compose/ui/node/NodeCoordinator;->transformToAncestor-EL8BTi8(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 1069
    instance-of v2, v0, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    if-eqz v2, :cond_0

    .line 1072
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    invoke-interface {v2, p1}, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;->localToScreen-58bKbWc([F)V

    goto :goto_1

    .line 1075
    :cond_0
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionOnScreen(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v2

    .line 1076
    .local v2, "screenPosition":J
    move-wide v4, v2

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    const/4 v6, 0x0

    .line 2166
    .local v6, "$i$f$isSpecified-k-4lQ0M":I
    const-wide v7, 0x7fffffff7fffffffL

    and-long/2addr v7, v4

    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 1076
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isSpecified$0$iv":J
    .end local v6    # "$i$f$isSpecified-k-4lQ0M":I
    :goto_0
    if-eqz v7, :cond_2

    .line 1077
    move-wide v4, v2

    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 2167
    .local v6, "$i$f$getX-impl":I
    move-wide v7, v4

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 2168
    .local v9, "$i$f$unpackFloat1":I
    const/16 v10, 0x20

    shr-long v10, v7, v10

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 2169
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 2168
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 2167
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat1":I
    nop

    .line 1077
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    nop

    .restart local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 2170
    .local v6, "$i$f$getY-impl":I
    nop

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 2171
    .local v9, "$i$f$unpackFloat2":I
    const-wide v11, 0xffffffffL

    and-long/2addr v11, v7

    long-to-int v11, v11

    .local v11, "bits$iv$iv$iv":I
    const/4 v12, 0x0

    .line 2169
    .local v12, "$i$f$floatFromBits":I
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 2171
    .end local v11    # "bits$iv$iv$iv":I
    .end local v12    # "$i$f$floatFromBits":I
    nop

    .line 2170
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 1077
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getY-impl":I
    const/4 v4, 0x0

    invoke-static {p1, v10, v11, v4}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    .line 1080
    .end local v2    # "screenPosition":J
    :cond_2
    :goto_1
    return-void
.end method

.method public final updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V
    .locals 12
    .param p1, "layerBlock"    # Lkotlin/jvm/functions/Function1;
    .param p2, "forceUpdateLayerParameters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .local v2, "value$iv":Z
    :goto_1
    const/4 v3, 0x0

    .line 2034
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_2

    .line 2035
    const/4 v4, 0x0

    .line 537
    .local v4, "$i$a$-requirePrecondition-NodeCoordinator$updateLayerBlock$1":I
    nop

    .line 2035
    .end local v4    # "$i$a$-requirePrecondition-NodeCoordinator$updateLayerBlock$1":I
    const-string/jumbo v4, "layerBlock can\'t be provided when explicitLayer is provided"

    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 2037
    :cond_2
    nop

    .line 539
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 541
    .local v2, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    if-nez p2, :cond_4

    .line 542
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-ne v3, p1, :cond_4

    .line 543
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    .line 540
    :goto_3
    nop

    .line 545
    .local v3, "updateParameters":Z
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    .line 546
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 548
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    .line 549
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 550
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez v4, :cond_5

    .line 551
    nop

    .line 552
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v6

    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDrawBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    iget-object v8, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/node/Owner;->createLayer$default(Landroidx/compose/ui/node/Owner;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/layer/GraphicsLayer;ILjava/lang/Object;)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v4

    move-object v6, v4

    .local v6, "$this$updateLayerBlock_u24lambda_u241":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v7, 0x0

    .line 553
    .local v7, "$i$a$-apply-NodeCoordinator$updateLayerBlock$2":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasuredSize-YbymL2g()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    .line 554
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    .line 555
    nop

    .line 552
    .end local v6    # "$this$updateLayerBlock_u24lambda_u241":Landroidx/compose/ui/node/OwnedLayer;
    .end local v7    # "$i$a$-apply-NodeCoordinator$updateLayerBlock$2":I
    nop

    .line 551
    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 556
    invoke-static {p0, v0, v1, v5}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    .line 557
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui(Z)V

    .line 558
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    .line 559
    :cond_5
    if-eqz v3, :cond_a

    .line 560
    invoke-static {p0, v0, v1, v5}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters$default(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    goto :goto_4

    .line 563
    :cond_6
    iput-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    .line 564
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v4, :cond_9

    .local v4, "it":Landroidx/compose/ui/node/OwnedLayer;
    const/4 v6, 0x0

    .line 565
    .local v6, "$i$a$-let-NodeCoordinator$updateLayerBlock$3":I
    invoke-interface {v4}, Landroidx/compose/ui/node/OwnedLayer;->getUnderlyingMatrix-sQKQjiQ()[F

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/graphics/MatrixKt;->isIdentity-58bKbWc([F)Z

    move-result v7

    if-nez v7, :cond_7

    .line 566
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->onCoordinatorPositionChanged$ui()V

    .line 568
    :cond_7
    invoke-interface {v4}, Landroidx/compose/ui/node/OwnedLayer;->destroy()V

    .line 569
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->setInnerLayerCoordinatorIsDirty$ui(Z)V

    .line 570
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 571
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 572
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui()Landroidx/compose/ui/node/Owner;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1, v2}, Landroidx/compose/ui/node/Owner;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    .line 574
    :cond_8
    nop

    .line 564
    .end local v4    # "it":Landroidx/compose/ui/node/OwnedLayer;
    .end local v6    # "$i$a$-let-NodeCoordinator$updateLayerBlock$3":I
    nop

    .line 575
    :cond_9
    iput-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 576
    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    .line 578
    :cond_a
    :goto_4
    return-void
.end method

.method public final visitNodes(IZLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "mask"    # I
    .param p2, "includeTail"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    .local v0, "$i$f$visitNodes":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 111
    .local v1, "stopNode":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 112
    .local v2, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v3

    and-int/2addr v3, p1

    if-nez v3, :cond_2

    return-void

    .line 114
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    if-eq v2, v1, :cond_4

    .line 116
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    .line 118
    :cond_4
    return-void
.end method

.method public final synthetic visitNodes-aLcG6gQ(ILkotlin/jvm/functions/Function1;)V
    .locals 27
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$visitNodes-aLcG6gQ":I
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    .local v1, "includeTail$iv":Z
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    move/from16 v3, p1

    .local v3, "mask$iv":I
    const/4 v4, 0x0

    .line 1660
    .local v4, "$i$f$visitNodes":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v14, p2

    move/from16 v19, v0

    goto/16 :goto_a

    .line 1661
    .local v5, "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1
    :goto_0
    invoke-static {v2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->access$headNode(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1662
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v6, :cond_11

    .line 1663
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_10

    .line 1664
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_f

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$a$-visitNodes-NodeCoordinator$visitNodes$1":I
    move/from16 v9, p1

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v10, v7

    .local v10, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 1665
    .local v11, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v12, 0x0

    .line 1666
    .local v12, "stack$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "node$iv":Ljava/lang/Object;
    move-object v13, v10

    .line 1667
    :goto_2
    if-eqz v13, :cond_e

    .line 1668
    const/4 v14, 0x3

    const-string v15, "T"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v14, v13, Ljava/lang/Object;

    if-eqz v14, :cond_2

    .line 1669
    move-object/from16 v14, p2

    invoke-interface {v14, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_8

    .line 1670
    :cond_2
    move-object/from16 v14, p2

    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v16, v9

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v17, 0x0

    .line 1671
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v18

    and-int v18, v18, v16

    move/from16 v19, v0

    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .local v19, "$i$f$visitNodes-aLcG6gQ":I
    if-eqz v18, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 1670
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v15, :cond_c

    instance-of v15, v13, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_c

    .line 1672
    const/4 v15, 0x0

    .line 1673
    .local v15, "count$iv":I
    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/ui/node/DelegatingNode;

    .local v16, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v17, 0x0

    .line 1674
    .local v17, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 1675
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v18, :cond_b

    .line 1676
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1677
    .local v20, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v21, v9

    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v22, v0

    .local v22, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1671
    .local v23, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v21

    if-eqz v24, :cond_4

    const/16 v21, 0x1

    goto :goto_5

    :cond_4
    const/16 v21, 0x0

    .line 1677
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v22    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v21, :cond_9

    .line 1678
    add-int/lit8 v15, v15, 0x1

    .line 1679
    move/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "includeTail$iv":Z
    .local v21, "includeTail$iv":Z
    if-ne v15, v1, :cond_5

    .line 1680
    move-object v13, v0

    move-object/from16 v24, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    goto :goto_7

    .line 1684
    :cond_5
    move-object v1, v12

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 1685
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1686
    move/from16 v22, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v22, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 1687
    .local v23, "$i$f$MutableVector":I
    move-object/from16 v24, v2

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .local v24, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v25, v3

    .end local v3    # "mask$iv":I
    .local v25, "mask$iv":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v26, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1685
    .end local v23    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv":I
    nop

    .end local v22    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_6

    .line 1684
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_6
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    :goto_6
    move-object v12, v2

    .line 1688
    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1689
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1690
    move-object v3, v12

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1691
    :cond_7
    const/4 v3, 0x0

    move-object v13, v3

    .line 1693
    :cond_8
    move-object v3, v12

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1677
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .local v1, "includeTail$iv":Z
    .local v2, "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_9
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    .line 1696
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    :cond_a
    :goto_7
    nop

    .line 1676
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1697
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto :goto_4

    .line 1699
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_b
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1700
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v17    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    const/4 v1, 0x1

    if-ne v15, v1, :cond_d

    .line 1702
    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_2

    .line 1670
    .end local v15    # "count$iv":I
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_c
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1705
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    :cond_d
    :goto_8
    move-object v0, v12

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_2

    .line 1707
    .end local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .local v0, "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_e
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 121
    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v10    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v12    # "stack$iv":Ljava/lang/Object;
    .end local v13    # "node$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    nop

    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-visitNodes-NodeCoordinator$visitNodes$1":I
    goto :goto_9

    .line 1664
    .end local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .restart local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_f
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    :goto_9
    nop

    .line 1708
    if-eq v6, v5, :cond_12

    .line 1709
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_1

    .line 1663
    .end local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .restart local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_10
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    goto :goto_a

    .line 1662
    .end local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    .restart local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v1    # "includeTail$iv":Z
    .restart local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v3    # "mask$iv":I
    :cond_11
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 1711
    .end local v0    # "$i$f$visitNodes-aLcG6gQ":I
    .end local v1    # "includeTail$iv":Z
    .end local v2    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v3    # "mask$iv":I
    .restart local v19    # "$i$f$visitNodes-aLcG6gQ":I
    .restart local v21    # "includeTail$iv":Z
    .restart local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .restart local v25    # "mask$iv":I
    :cond_12
    nop

    .line 122
    .end local v4    # "$i$f$visitNodes":I
    .end local v5    # "stopNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "includeTail$iv":Z
    .end local v24    # "this_$iv":Landroidx/compose/ui/node/NodeCoordinator;
    .end local v25    # "mask$iv":I
    :goto_a
    return-void
.end method

.method public windowToLocal-MK-Hz9U(J)J
    .locals 5
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-relativeToWindow$0"    # J

    .line 998
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 2160
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 2161
    const/4 v2, 0x0

    .line 998
    .local v2, "$i$a$-checkPrecondition-NodeCoordinator$windowToLocal$1":I
    nop

    .line 2161
    .end local v2    # "$i$a$-checkPrecondition-NodeCoordinator$windowToLocal$1":I
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2163
    :cond_0
    nop

    .line 999
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 1001
    .local v0, "root":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/node/Owner;->calculateLocalPosition-MK-Hz9U(J)J

    move-result-wide v1

    .line 1002
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    .line 1001
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 1000
    nop

    .line 1003
    .local v1, "positionInRoot":J
    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    return-wide v3
.end method

.method protected final withPositionTranslation(Landroidx/compose/ui/graphics/Canvas;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1193
    .local v0, "$i$f$withPositionTranslation":I
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    int-to-float v1, v1

    .line 1194
    .local v1, "x":F
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getPosition-nOcc-ac()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    int-to-float v2, v2

    .line 1195
    .local v2, "y":F
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 1196
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    neg-float v3, v1

    neg-float v4, v2

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 1198
    return-void
.end method

.method protected final withinLayerBounds-k-4lQ0M(J)Z
    .locals 9
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J

    .line 1344
    move-wide v0, p1

    .local v0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$isFinite$0$iv":J
    const/4 v2, 0x0

    .line 2210
    .local v2, "$i$f$isFinite-k-4lQ0M":I
    const-wide v3, 0x7f8000007f800000L    # 1.404448428688076E306

    and-long v5, v0, v3

    xor-long/2addr v3, v5

    .line 2211
    .local v3, "v$iv":J
    const-wide v5, 0x100000001L

    sub-long v5, v3, v5

    const-wide v7, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v7

    .line 1344
    .end local v0    # "$v$c$androidx-compose-ui-geometry-Offset$-$this$isFinite$0$iv":J
    .end local v2    # "$i$f$isFinite-k-4lQ0M":I
    .end local v3    # "v$iv":J
    :goto_0
    if-nez v0, :cond_1

    .line 1345
    return v7

    .line 1347
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 1348
    .local v0, "layer":Landroidx/compose/ui/node/OwnedLayer;
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v1, :cond_3

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->isInLayer-k-4lQ0M(J)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :cond_3
    :goto_1
    return v6
.end method
