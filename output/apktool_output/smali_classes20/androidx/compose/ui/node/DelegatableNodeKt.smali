.class public final Landroidx/compose/ui/node/DelegatableNodeKt;
.super Ljava/lang/Object;
.source "DelegatableNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegatableNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 8 NodeKind.kt\nandroidx/compose/ui/node/NodeKind\n*L\n1#1,597:1\n214#1:631\n215#1,10:636\n214#1:654\n215#1,6:659\n556#1,6:665\n566#1,2:672\n568#1,8:677\n576#1,9:688\n585#1,8:700\n222#1,3:708\n207#1,8:711\n215#1,6:723\n556#1,6:729\n566#1,2:736\n568#1,8:741\n576#1,9:752\n585#1,8:764\n222#1,3:772\n227#1:775\n228#1,4:780\n556#1,6:784\n566#1,2:791\n568#1,8:796\n576#1,9:807\n585#1,8:819\n233#1,3:827\n95#1:830\n96#1,8:835\n556#1,6:843\n566#1,2:850\n568#1,8:855\n576#1,9:866\n585#1,8:878\n105#1,7:886\n95#1,9:893\n556#1,12:902\n568#1,8:917\n576#1,9:928\n585#1,8:940\n105#1,7:948\n95#1:955\n96#1,8:960\n556#1,6:970\n566#1,2:977\n568#1,8:982\n576#1,9:993\n585#1,8:1005\n105#1,7:1013\n256#1:1020\n95#1:1021\n96#1,8:1026\n556#1,6:1034\n566#1,2:1041\n568#1,8:1046\n576#1,9:1057\n585#1,8:1069\n105#1,7:1077\n256#1:1084\n95#1,9:1085\n556#1,12:1094\n568#1,8:1109\n576#1,9:1120\n585#1,8:1132\n105#1,7:1140\n256#1:1147\n95#1:1148\n96#1,8:1153\n556#1,6:1161\n566#1,2:1168\n568#1,8:1173\n576#1,9:1184\n585#1,8:1196\n105#1,7:1204\n256#1:1211\n95#1,9:1212\n556#1,12:1221\n568#1,8:1236\n576#1,9:1247\n585#1,8:1259\n105#1,7:1267\n252#1,5:1274\n95#1:1279\n96#1,8:1284\n556#1,6:1292\n566#1,2:1299\n568#1,8:1304\n576#1,9:1315\n585#1,8:1327\n105#1,7:1335\n153#1:1342\n154#1:1347\n155#1,3:1351\n158#1:1355\n159#1,9:1357\n556#1,6:1366\n566#1,2:1373\n568#1,17:1378\n585#1,8:1398\n168#1,6:1406\n153#1,2:1412\n155#1,3:1417\n158#1:1421\n159#1,9:1423\n556#1,12:1432\n568#1,17:1447\n585#1,8:1467\n168#1,6:1475\n556#1,6:1481\n566#1,2:1488\n568#1,8:1493\n576#1,9:1504\n585#1,8:1516\n153#1:1524\n154#1:1529\n155#1,3:1533\n158#1:1537\n159#1,9:1539\n556#1,6:1548\n566#1,2:1555\n568#1,8:1560\n576#1,9:1571\n585#1,8:1583\n168#1,6:1591\n556#1,6:1597\n566#1,2:1604\n568#1,8:1609\n576#1,9:1620\n585#1,8:1632\n153#1,2:1640\n155#1,3:1645\n158#1:1649\n159#1,9:1651\n556#1,6:1660\n566#1,2:1667\n568#1,8:1672\n576#1,9:1683\n585#1,8:1695\n168#1,6:1703\n184#1:1709\n185#1:1714\n186#1,3:1718\n189#1,6:1722\n556#1,6:1728\n566#1,2:1735\n568#1,8:1740\n576#1,9:1751\n585#1,8:1763\n195#1,8:1771\n184#1,2:1779\n186#1,9:1784\n556#1,12:1793\n568#1,8:1808\n576#1,9:1819\n585#1,8:1831\n195#1,8:1839\n184#1:1847\n185#1:1852\n186#1,3:1856\n189#1,6:1860\n556#1,6:1866\n566#1,2:1873\n568#1,8:1878\n576#1,9:1889\n585#1,8:1901\n195#1,8:1909\n184#1,2:1917\n186#1,9:1922\n556#1,12:1931\n568#1,8:1946\n576#1,9:1957\n585#1,8:1969\n195#1,8:1977\n87#1,9:2007\n96#1,8:2020\n105#1,7:2044\n57#2,4:598\n57#2,4:602\n57#2,4:614\n57#2,4:623\n57#2,4:632\n57#2,4:646\n57#2,4:650\n57#2,4:655\n57#2,4:719\n57#2,4:776\n57#2,4:831\n57#2,4:956\n57#2,4:1022\n57#2,4:1149\n57#2,4:1280\n57#2,4:1343\n57#2,4:1525\n57#2,4:1710\n57#2,4:1848\n78#2,5:1985\n78#2,5:1990\n57#2,4:1995\n57#2,4:2000\n57#2,4:2016\n448#3,8:606\n519#3:621\n44#3:622\n519#3:630\n519#3:1354\n44#3:1356\n519#3:1420\n44#3:1422\n519#3:1536\n44#3:1538\n519#3:1648\n44#3:1650\n519#3:1721\n519#3:1859\n516#3:2066\n1107#4:618\n1085#4,2:619\n1107#4:627\n1085#4,2:628\n1107#4:685\n1085#4,2:686\n1107#4:749\n1085#4,2:750\n1107#4:804\n1085#4,2:805\n1107#4:863\n1085#4,2:864\n1107#4:925\n1085#4,2:926\n1107#4:990\n1085#4,2:991\n1107#4:1054\n1085#4,2:1055\n1107#4:1117\n1085#4,2:1118\n1107#4:1181\n1085#4,2:1182\n1107#4:1244\n1085#4,2:1245\n1107#4:1312\n1085#4,2:1313\n1107#4:1348\n1085#4,2:1349\n1107#4:1414\n1085#4,2:1415\n1107#4:1501\n1085#4,2:1502\n1107#4:1530\n1085#4,2:1531\n1107#4:1568\n1085#4,2:1569\n1107#4:1617\n1085#4,2:1618\n1107#4:1642\n1085#4,2:1643\n1107#4:1680\n1085#4,2:1681\n1107#4:1715\n1085#4,2:1716\n1107#4:1748\n1085#4,2:1749\n1107#4:1781\n1085#4,2:1782\n1107#4:1816\n1085#4,2:1817\n1107#4:1853\n1085#4,2:1854\n1107#4:1886\n1085#4,2:1887\n1107#4:1919\n1085#4,2:1920\n1107#4:1954\n1085#4,2:1955\n1107#4:2060\n1085#4,2:2061\n247#5:671\n247#5:735\n247#5:790\n247#5:849\n247#5:968\n247#5:969\n247#5:976\n247#5:1040\n247#5:1167\n247#5:1298\n247#5:1372\n247#5:1487\n247#5:1554\n247#5:1603\n247#5:1666\n247#5:1734\n247#5:1872\n247#5:2029\n247#5:2037\n247#5:2052\n247#5:2054\n247#5:2055\n247#5:2059\n240#6,3:674\n243#6,3:697\n240#6,3:738\n243#6,3:761\n240#6,3:793\n243#6,3:816\n240#6,3:852\n243#6,3:875\n240#6,3:914\n243#6,3:937\n240#6,3:979\n243#6,3:1002\n240#6,3:1043\n243#6,3:1066\n240#6,3:1106\n243#6,3:1129\n240#6,3:1170\n243#6,3:1193\n240#6,3:1233\n243#6,3:1256\n240#6,3:1301\n243#6,3:1324\n240#6,3:1375\n243#6,3:1395\n240#6,3:1444\n243#6,3:1464\n240#6,3:1490\n243#6,3:1513\n240#6,3:1557\n243#6,3:1580\n240#6,3:1606\n243#6,3:1629\n240#6,3:1669\n243#6,3:1692\n240#6,3:1737\n243#6,3:1760\n240#6,3:1805\n243#6,3:1828\n240#6,3:1875\n243#6,3:1898\n240#6,3:1943\n243#6,3:1966\n240#6,6:2030\n240#6,6:2038\n240#6,3:2056\n243#6,3:2063\n84#7:1999\n168#7:2004\n100#7:2005\n168#7:2028\n100#7:2036\n84#7:2051\n84#7:2053\n56#8:2006\n*S KotlinDebug\n*F\n+ 1 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n*L\n207#1:631\n207#1:636,10\n240#1:654\n240#1:659,6\n240#1:665,6\n240#1:672,2\n240#1:677,8\n240#1:688,9\n240#1:700,8\n240#1:708,3\n245#1:711,8\n245#1:723,6\n245#1:729,6\n245#1:736,2\n245#1:741,8\n245#1:752,9\n245#1:764,8\n245#1:772,3\n250#1:775\n250#1:780,4\n250#1:784,6\n250#1:791,2\n250#1:796,8\n250#1:807,9\n250#1:819,8\n250#1:827,3\n256#1:830\n256#1:835,8\n256#1:843,6\n256#1:850,2\n256#1:855,8\n256#1:866,9\n256#1:878,8\n256#1:886,7\n256#1:893,9\n256#1:902,12\n256#1:917,8\n256#1:928,9\n256#1:940,8\n256#1:948,7\n264#1:955\n264#1:960,8\n267#1:970,6\n267#1:977,2\n267#1:982,8\n267#1:993,9\n267#1:1005,8\n264#1:1013,7\n277#1:1020\n277#1:1021\n277#1:1026,8\n277#1:1034,6\n277#1:1041,2\n277#1:1046,8\n277#1:1057,9\n277#1:1069,8\n277#1:1077,7\n277#1:1084\n277#1:1085,9\n277#1:1094,12\n277#1:1109,8\n277#1:1120,9\n277#1:1132,8\n277#1:1140,7\n289#1:1147\n289#1:1148\n289#1:1153,8\n289#1:1161,6\n289#1:1168,2\n289#1:1173,8\n289#1:1184,9\n289#1:1196,8\n289#1:1204,7\n289#1:1211\n289#1:1212,9\n289#1:1221,12\n289#1:1236,8\n289#1:1247,9\n289#1:1259,8\n289#1:1267,7\n297#1:1274,5\n297#1:1279\n297#1:1284,8\n297#1:1292,6\n297#1:1299,2\n297#1:1304,8\n297#1:1315,9\n297#1:1327,8\n297#1:1335,7\n307#1:1342\n307#1:1347\n307#1:1351,3\n307#1:1355\n307#1:1357,9\n307#1:1366,6\n307#1:1373,2\n307#1:1378,17\n307#1:1398,8\n307#1:1406,6\n307#1:1412,2\n307#1:1417,3\n307#1:1421\n307#1:1423,9\n307#1:1432,12\n307#1:1447,17\n307#1:1467,8\n307#1:1475,6\n314#1:1481,6\n314#1:1488,2\n314#1:1493,8\n314#1:1504,9\n314#1:1516,8\n315#1:1524\n315#1:1529\n315#1:1533,3\n315#1:1537\n315#1:1539,9\n315#1:1548,6\n315#1:1555,2\n315#1:1560,8\n315#1:1571,9\n315#1:1583,8\n315#1:1591,6\n314#1:1597,6\n314#1:1604,2\n314#1:1609,8\n314#1:1620,9\n314#1:1632,8\n315#1:1640,2\n315#1:1645,3\n315#1:1649\n315#1:1651,9\n315#1:1660,6\n315#1:1667,2\n315#1:1672,8\n315#1:1683,9\n315#1:1695,8\n315#1:1703,6\n323#1:1709\n323#1:1714\n323#1:1718,3\n323#1:1722,6\n324#1:1728,6\n324#1:1735,2\n324#1:1740,8\n324#1:1751,9\n324#1:1763,8\n323#1:1771,8\n323#1:1779,2\n323#1:1784,9\n324#1:1793,12\n324#1:1808,8\n324#1:1819,9\n324#1:1831,8\n323#1:1839,8\n333#1:1847\n333#1:1852\n333#1:1856,3\n333#1:1860,6\n334#1:1866,6\n334#1:1873,2\n334#1:1878,8\n334#1:1889,9\n334#1:1901,8\n333#1:1909,8\n333#1:1917,2\n333#1:1922,9\n334#1:1931,12\n334#1:1946,8\n334#1:1957,9\n334#1:1969,8\n333#1:1977,8\n469#1:2007,9\n469#1:2020,8\n469#1:2044,7\n95#1:598,4\n115#1:602,4\n153#1:614,4\n184#1:623,4\n207#1:632,4\n214#1:646,4\n227#1:650,4\n240#1:655,4\n245#1:719,4\n250#1:776,4\n256#1:831,4\n264#1:956,4\n277#1:1022,4\n289#1:1149,4\n297#1:1280,4\n307#1:1343,4\n315#1:1525,4\n323#1:1710,4\n333#1:1848,4\n348#1:1985,5\n356#1:1990,5\n390#1:1995,4\n394#1:2000,4\n469#1:2016,4\n145#1:606,8\n157#1:621\n158#1:622\n188#1:630\n307#1:1354\n307#1:1356\n307#1:1420\n307#1:1422\n315#1:1536\n315#1:1538\n315#1:1648\n315#1:1650\n323#1:1721\n333#1:1859\n595#1:2066\n154#1:618\n154#1:619,2\n185#1:627\n185#1:628,2\n240#1:685\n240#1:686,2\n245#1:749\n245#1:750,2\n250#1:804\n250#1:805,2\n256#1:863\n256#1:864,2\n256#1:925\n256#1:926,2\n267#1:990\n267#1:991,2\n277#1:1054\n277#1:1055,2\n277#1:1117\n277#1:1118,2\n289#1:1181\n289#1:1182,2\n289#1:1244\n289#1:1245,2\n297#1:1312\n297#1:1313,2\n307#1:1348\n307#1:1349,2\n307#1:1414\n307#1:1415,2\n314#1:1501\n314#1:1502,2\n315#1:1530\n315#1:1531,2\n315#1:1568\n315#1:1569,2\n314#1:1617\n314#1:1618,2\n315#1:1642\n315#1:1643,2\n315#1:1680\n315#1:1681,2\n323#1:1715\n323#1:1716,2\n324#1:1748\n324#1:1749,2\n323#1:1781\n323#1:1782,2\n324#1:1816\n324#1:1817,2\n333#1:1853\n333#1:1854,2\n334#1:1886\n334#1:1887,2\n333#1:1919\n333#1:1920,2\n334#1:1954\n334#1:1955,2\n575#1:2060\n575#1:2061,2\n240#1:671\n245#1:735\n250#1:790\n256#1:849\n265#1:968\n266#1:969\n267#1:976\n277#1:1040\n289#1:1167\n297#1:1298\n307#1:1372\n314#1:1487\n315#1:1554\n314#1:1603\n315#1:1666\n324#1:1734\n334#1:1872\n470#1:2029\n486#1:2037\n514#1:2052\n521#1:2054\n561#1:2055\n568#1:2059\n240#1:674,3\n240#1:697,3\n245#1:738,3\n245#1:761,3\n250#1:793,3\n250#1:816,3\n256#1:852,3\n256#1:875,3\n256#1:914,3\n256#1:937,3\n267#1:979,3\n267#1:1002,3\n277#1:1043,3\n277#1:1066,3\n277#1:1106,3\n277#1:1129,3\n289#1:1170,3\n289#1:1193,3\n289#1:1233,3\n289#1:1256,3\n297#1:1301,3\n297#1:1324,3\n307#1:1375,3\n307#1:1395,3\n307#1:1444,3\n307#1:1464,3\n314#1:1490,3\n314#1:1513,3\n315#1:1557,3\n315#1:1580,3\n314#1:1606,3\n314#1:1629,3\n315#1:1669,3\n315#1:1692,3\n324#1:1737,3\n324#1:1760,3\n324#1:1805,3\n324#1:1828,3\n334#1:1875,3\n334#1:1898,3\n334#1:1943,3\n334#1:1966,3\n475#1:2030,6\n491#1:2038,6\n567#1:2056,3\n567#1:2063,3\n393#1:1999\n469#1:2004\n469#1:2005\n470#1:2028\n486#1:2036\n514#1:2051\n521#1:2053\n469#1:2006\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a3\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u001a\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u000b*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0001H\u0002\u001a\"\u0010\u0011\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0001H\u0002\u001a1\u0010\u0013\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u001a1\u0010\u0014\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\nH\u0080\u0008\u001a)\u0010\u0015\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u001a3\u0010\u0015\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u001a)\u0010\u0016\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u001a>\u0010\u0017\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a>\u0010\u0015\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u0008\u001d\u0010\u001c\u001a>\u0010\u0016\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001c\u001aH\u0010\u0004\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u0008\u001f\u0010 \u001aJ\u0010!\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\n\u0010\"\u001a\u0006\u0012\u0002\u0008\u00030\u001a2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u0008#\u0010$\u001a<\u0010%\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010&\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0001H\u0080\u0008\u00a2\u0006\u0004\u0008\'\u0010(\u001a<\u0010)\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010*\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0001H\u0080\u0008\u00a2\u0006\u0004\u0008+\u0010,\u001a0\u0010\u000c\u001a\u0004\u0018\u0001H\u0018\"\n\u0008\u0000\u0010\u0018\u0018\u0001*\u00020-*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001aH\u0080\u0008\u00a2\u0006\u0004\u0008.\u0010/\u001aH\u0010\u0013\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u00080\u0010 \u001aH\u00101\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u00082\u0010 \u001aH\u0010\u0014\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00010\nH\u0080\u0008\u00a2\u0006\u0004\u00083\u0010 \u001aH\u00104\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u00085\u0010 \u001a\u001f\u00106\u001a\u00020\u0001*\u00020\u00022\n\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0000\u00a2\u0006\u0004\u00087\u00108\u001a\u001f\u00109\u001a\u00020:*\u00020\u00022\n\u0010;\u001a\u0006\u0012\u0002\u0008\u00030\u001aH\u0000\u00a2\u0006\u0004\u0008<\u0010=\u001a\u000c\u0010>\u001a\u00020\u000f*\u00020\u0002H\u0000\u001a\u000c\u0010?\u001a\u00020@*\u00020\u0002H\u0000\u001a\u000c\u0010A\u001a\u00020B*\u00020\u0002H\u0000\u001a\n\u0010C\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010D\u001a\u00020E*\u00020\u0002\u001a\n\u0010F\u001a\u00020G*\u00020\u0002\u001a\n\u0010H\u001a\u00020I*\u00020\u0002\u001a\n\u0010J\u001a\u00020K*\u00020\u0002\u001a\n\u0010L\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010M\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010N\u001a\u00020\u0005*\u00020\u0002\u001a\u0019\u0010O\u001a\u00020\u0005*\u00020\u00022\u0006\u0010P\u001a\u00020Q\u00a2\u0006\u0004\u0008R\u0010S\u001a\u000c\u0010T\u001a\u0004\u0018\u00010U*\u00020\u0002\u001a\u000e\u0010V\u001a\u0004\u0018\u00010W*\u00020\u000bH\u0000\u001a>\u0010X\u001a\u00020\u0005\"\u0006\u0008\u0000\u0010\u0018\u0018\u0001*\u00020\u000b2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u00020\u00050\nH\u0080\u0008\u00a2\u0006\u0004\u0008Y\u0010Z\u001a\u0016\u0010[\u001a\u0004\u0018\u00010\u000b*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eH\u0002\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\u00a8\u0006\\"
    }
    d2 = {
        "isDelegationRoot",
        "",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "(Landroidx/compose/ui/node/DelegatableNode;)Z",
        "visitAncestors",
        "",
        "mask",
        "",
        "includeSelf",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/Modifier$Node;",
        "nearestAncestor",
        "getChildren",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "zOrder",
        "addLayoutNodeChildren",
        "node",
        "visitChildren",
        "visitSubtreeIf",
        "visitLocalDescendants",
        "visitLocalAncestors",
        "visitSelfAndLocalDescendants",
        "T",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "visitSelfAndLocalDescendants-6rFNWt0",
        "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V",
        "visitLocalDescendants-6rFNWt0",
        "visitLocalAncestors-6rFNWt0",
        "visitAncestors-Y-YKmho",
        "(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V",
        "visitSelfAndAncestors",
        "untilType",
        "visitSelfAndAncestors-5BbP62I",
        "(Landroidx/compose/ui/node/DelegatableNode;IILkotlin/jvm/functions/Function1;)V",
        "ancestors",
        "",
        "ancestors-6rFNWt0",
        "(Landroidx/compose/ui/node/DelegatableNode;IZ)Ljava/util/List;",
        "setOfAncestors",
        "",
        "setOfAncestors-6rFNWt0",
        "(Landroidx/compose/ui/node/DelegatableNode;IZ)Ljava/util/Set;",
        "",
        "nearestAncestor-64DMado",
        "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;",
        "visitChildren-Y-YKmho",
        "visitSelfAndChildren",
        "visitSelfAndChildren-Y-YKmho",
        "visitSubtreeIf-Y-YKmho",
        "visitSubtree",
        "visitSubtree-Y-YKmho",
        "has",
        "has-64DMado",
        "(Landroidx/compose/ui/node/DelegatableNode;I)Z",
        "requireCoordinator",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "kind",
        "requireCoordinator-64DMado",
        "(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;",
        "requireLayoutNode",
        "requireSemanticsInfo",
        "Landroidx/compose/ui/semantics/SemanticsInfo;",
        "requireOwner",
        "Landroidx/compose/ui/node/Owner;",
        "requestAutofill",
        "requireDensity",
        "Landroidx/compose/ui/unit/Density;",
        "requireGraphicsContext",
        "Landroidx/compose/ui/graphics/GraphicsContext;",
        "requireLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "requireLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "invalidateSubtree",
        "invalidateMeasurementForSubtree",
        "invalidateDrawForSubtree",
        "dispatchOnScrollChanged",
        "delta",
        "Landroidx/compose/ui/geometry/Offset;",
        "dispatchOnScrollChanged-Uv8p0NA",
        "(Landroidx/compose/ui/node/DelegatableNode;J)V",
        "findNearestBeyondBoundsLayoutAncestor",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        "asLayoutModifierNode",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "dispatchForKind",
        "dispatchForKind-6rFNWt0",
        "(Landroidx/compose/ui/Modifier$Node;ILkotlin/jvm/functions/Function1;)V",
        "pop",
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "zOrder"    # Z

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    return-void
.end method

.method public static final synthetic access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/runtime/collection/MutableVector;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    return-object v0
.end method

.method private static final addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 7
    .param p0, "$this$addLayoutNodeChildren"    # Landroidx/compose/runtime/collection/MutableVector;
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;
    .param p2, "zOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;",
            "Landroidx/compose/ui/Modifier$Node;",
            "Z)V"
        }
    .end annotation

    .line 145
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->getChildren(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 606
    .local v1, "$i$f$forEachReversed":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 607
    .local v2, "i$iv":I
    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 608
    .local v3, "content$iv":[Ljava/lang/Object;
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 609
    :goto_0
    if-ltz v2, :cond_0

    .line 610
    aget-object v4, v3, v2

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .local v4, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v5, 0x0

    .line 145
    .local v5, "$i$a$-forEachReversed-DelegatableNodeKt$addLayoutNodeChildren$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 610
    .end local v4    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v5    # "$i$a$-forEachReversed-DelegatableNodeKt$addLayoutNodeChildren$1":I
    nop

    .line 611
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 613
    :cond_0
    nop

    .line 146
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEachReversed":I
    .end local v2    # "i$iv":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static final synthetic ancestors-6rFNWt0(Landroidx/compose/ui/node/DelegatableNode;IZ)Ljava/util/List;
    .locals 33
    .param p0, "$this$ancestors_u2d6rFNWt0"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 276
    .local v0, "$i$f$ancestors-6rFNWt0":I
    const/4 v1, 0x0

    .line 277
    .local v1, "result":Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "includeSelf$iv":Z
    move/from16 v3, p1

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 1020
    .local v5, "$i$f$visitAncestors-Y-YKmho":I
    move v6, v2

    .local v6, "includeSelf$iv$iv":Z
    move-object v7, v4

    .local v7, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v8, v3

    .local v8, "mask$iv$iv":I
    const/4 v9, 0x0

    .line 1021
    .local v9, "$i$f$visitAncestors":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 1022
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_0

    .line 1023
    const/4 v12, 0x0

    .line 1021
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 1023
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v12, "visitAncestors called on an unattached node"

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1025
    :cond_0
    nop

    .line 1026
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1027
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 1028
    .local v11, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v11, :cond_14

    .line 1029
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 1030
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v13

    and-int/2addr v13, v8

    if-eqz v13, :cond_12

    .line 1031
    :goto_2
    if-eqz v10, :cond_11

    .line 1032
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v8

    if-eqz v13, :cond_10

    .line 1033
    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1020
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1034
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1035
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v32, v19

    move/from16 v19, v0

    move-object/from16 v0, v32

    .line 1036
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v19, "$i$f$ancestors-6rFNWt0":I
    :goto_3
    if-eqz v0, :cond_f

    .line 1037
    move-object/from16 v20, v1

    .end local v1    # "result":Ljava/lang/Object;
    .local v20, "result":Ljava/lang/Object;
    const/4 v1, 0x3

    move/from16 v21, v2

    .end local v2    # "includeSelf$iv":Z
    .local v21, "includeSelf$iv":Z
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1038
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 278
    .local v2, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    if-nez v20, :cond_2

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v22

    check-cast v20, Ljava/util/List;

    .line 279
    :cond_2
    move/from16 v22, v2

    .end local v2    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    .local v22, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    move-object/from16 v2, v20

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    nop

    .line 1038
    .end local v1    # "it":Ljava/lang/Object;
    .end local v22    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    move/from16 v30, v3

    move-object/from16 v1, v20

    goto/16 :goto_a

    .line 1039
    :cond_3
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v2, v15

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/16 v22, 0x0

    .line 1040
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v2

    move-object/from16 v24, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v23, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 1039
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v2, :cond_e

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_e

    .line 1041
    const/4 v2, 0x0

    .line 1042
    .local v2, "count$iv$iv":I
    move-object/from16 v22, v0

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 1043
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 1044
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v24, :cond_c

    .line 1045
    move-object/from16 v1, v24

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1046
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v1

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1040
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_5

    const/16 v26, 0x1

    goto :goto_6

    :cond_5
    const/16 v26, 0x0

    .line 1046
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v26, :cond_b

    .line 1047
    add-int/lit8 v2, v2, 0x1

    .line 1048
    move-object/from16 v26, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v26, "node$iv$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_6

    .line 1049
    move-object v0, v1

    move/from16 v30, v3

    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 1053
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 1054
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1055
    move/from16 v27, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 1056
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v3

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1054
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    nop

    .end local v27    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_7

    .line 1053
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "count$iv$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_7
    move/from16 v29, v2

    move/from16 v30, v3

    move-object v2, v0

    const/4 v0, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v29    # "count$iv$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_7
    move-object/from16 v18, v2

    .line 1057
    move-object/from16 v2, v26

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1058
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_9

    .line 1059
    move-object/from16 v3, v18

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_8
    const/4 v3, 0x0

    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 1058
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    :cond_9
    move-object/from16 v3, v26

    .line 1062
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :goto_8
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1065
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object v0, v3

    move/from16 v2, v29

    goto :goto_9

    .line 1046
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_b
    move-object/from16 v26, v0

    move/from16 v30, v3

    .line 1065
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_9
    nop

    .line 1045
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1066
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move/from16 v3, v30

    goto :goto_5

    .line 1068
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_c
    move-object/from16 v26, v0

    move/from16 v30, v3

    .line 1069
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_d

    .line 1071
    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v0, v26

    move/from16 v3, v30

    goto/16 :goto_3

    .line 1069
    :cond_d
    move-object/from16 v1, v20

    move-object/from16 v0, v26

    goto :goto_a

    .line 1039
    .end local v2    # "count$iv$iv":I
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    move/from16 v30, v3

    .line 1074
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, v20

    .end local v20    # "result":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    :goto_a
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v2, v21

    move/from16 v3, v30

    goto/16 :goto_3

    .line 1076
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v30, v3

    .line 1020
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "result":Ljava/lang/Object;
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1033
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_b

    .line 1032
    .end local v19    # "$i$f$ancestors-6rFNWt0":I
    .end local v20    # "result":Ljava/lang/Object;
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "$i$f$ancestors-6rFNWt0":I
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v30, v3

    .line 1077
    .end local v0    # "$i$f$ancestors-6rFNWt0":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$i$f$ancestors-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v0, v19

    move/from16 v2, v21

    move/from16 v3, v30

    goto/16 :goto_2

    .line 1031
    .end local v19    # "$i$f$ancestors-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$i$f$ancestors-6rFNWt0":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v30, v3

    .end local v0    # "$i$f$ancestors-6rFNWt0":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$i$f$ancestors-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_c

    .line 1030
    .end local v19    # "$i$f$ancestors-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$i$f$ancestors-6rFNWt0":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v30, v3

    .line 1080
    .end local v0    # "$i$f$ancestors-6rFNWt0":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$i$f$ancestors-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_c
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 1081
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    :goto_d
    move-object v10, v0

    move/from16 v0, v19

    move/from16 v2, v21

    move/from16 v3, v30

    .end local v12    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 1083
    .end local v19    # "$i$f$ancestors-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$i$f$ancestors-6rFNWt0":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_14
    move/from16 v19, v0

    .line 1020
    .end local v0    # "$i$f$ancestors-6rFNWt0":I
    .end local v6    # "includeSelf$iv$iv":Z
    .end local v7    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v8    # "mask$iv$iv":I
    .end local v9    # "$i$f$visitAncestors":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v19    # "$i$f$ancestors-6rFNWt0":I
    nop

    .line 281
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitAncestors-Y-YKmho":I
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic ancestors-6rFNWt0$default(Landroidx/compose/ui/node/DelegatableNode;IZILjava/lang/Object;)Ljava/util/List;
    .locals 30
    .param p0, "$this$ancestors_u2d6rFNWt0_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "includeSelf"    # Z

    .line 272
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .end local p2    # "includeSelf":Z
    .local v0, "includeSelf":Z
    goto :goto_0

    .line 272
    .end local v0    # "includeSelf":Z
    .restart local p2    # "includeSelf":Z
    :cond_0
    move/from16 v0, p2

    .end local p2    # "includeSelf":Z
    .restart local v0    # "includeSelf":Z
    :goto_0
    const/4 v1, 0x0

    .line 276
    .local v1, "$i$f$ancestors-6rFNWt0":I
    const/4 v2, 0x0

    .line 277
    .local v2, "result":Ljava/lang/Object;
    move v3, v0

    .local v3, "includeSelf$iv":Z
    move/from16 v4, p1

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v5, p0

    .local v5, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v6, 0x0

    .line 1084
    .local v6, "$i$f$visitAncestors-Y-YKmho":I
    move v7, v3

    .local v7, "includeSelf$iv$iv":Z
    move-object v8, v5

    .local v8, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v9, v4

    .local v9, "mask$iv$iv":I
    const/4 v10, 0x0

    .line 1085
    .local v10, "$i$f$visitAncestors":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    .local v11, "value$iv$iv$iv":Z
    const/4 v12, 0x0

    .line 1022
    .local v12, "$i$f$checkPrecondition":I
    if-nez v11, :cond_1

    .line 1023
    const/4 v13, 0x0

    .line 1085
    .local v13, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 1023
    .end local v13    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v13, "visitAncestors called on an unattached node"

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    invoke-static {v13}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1025
    :cond_1
    nop

    .line 1086
    .end local v11    # "value$iv$iv$iv":Z
    .end local v12    # "$i$f$checkPrecondition":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1087
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    .line 1088
    .local v12, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_2
    if-eqz v12, :cond_15

    .line 1089
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1090
    .local v13, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v14, :cond_13

    .line 1091
    :goto_3
    if-eqz v11, :cond_12

    .line 1092
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v14, :cond_11

    .line 1093
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/Modifier$Node;

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1084
    .local v15, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move/from16 v16, v4

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1094
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 1095
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move/from16 p2, v0

    move-object/from16 v0, v20

    .line 1096
    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .restart local p2    # "includeSelf":Z
    :goto_4
    if-eqz v0, :cond_10

    .line 1097
    move/from16 p3, v1

    .end local v1    # "$i$f$ancestors-6rFNWt0":I
    .local p3, "$i$f$ancestors-6rFNWt0":I
    const/4 v1, 0x3

    move-object/from16 p4, v2

    .end local v2    # "result":Ljava/lang/Object;
    .local p4, "result":Ljava/lang/Object;
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1098
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 278
    .local v2, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    if-nez p4, :cond_3

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    check-cast v20, Ljava/util/List;

    .end local p4    # "result":Ljava/lang/Object;
    .local v20, "result":Ljava/lang/Object;
    goto :goto_5

    .end local v20    # "result":Ljava/lang/Object;
    .restart local p4    # "result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v20, p4

    .line 279
    .end local p4    # "result":Ljava/lang/Object;
    .restart local v20    # "result":Ljava/lang/Object;
    :goto_5
    move/from16 v21, v2

    .end local v2    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    .local v21, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    move-object/from16 v2, v20

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    nop

    .line 1098
    .end local v1    # "it":Ljava/lang/Object;
    .end local v21    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1":I
    move/from16 v28, v3

    move-object/from16 v2, v20

    goto/16 :goto_c

    .line 1099
    .end local v20    # "result":Ljava/lang/Object;
    .restart local p4    # "result":Ljava/lang/Object;
    :cond_4
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v2, v16

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/16 v20, 0x0

    .line 1040
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v2

    move-object/from16 v22, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v21, :cond_5

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 1099
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_f

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_f

    .line 1104
    const/4 v2, 0x0

    .line 1105
    .local v2, "count$iv$iv":I
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1106
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1107
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    if-eqz v22, :cond_d

    .line 1108
    move-object/from16 v1, v22

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1109
    .local v23, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v24, v16

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v1

    .local v25, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1040
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v24

    if-eqz v27, :cond_6

    const/16 v24, 0x1

    goto :goto_8

    :cond_6
    const/16 v24, 0x0

    .line 1109
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_8
    if-eqz v24, :cond_c

    .line 1110
    add-int/lit8 v2, v2, 0x1

    .line 1111
    move-object/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v24, "node$iv$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_7

    .line 1112
    move-object v0, v1

    move/from16 v28, v3

    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_b

    .line 1116
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1117
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1118
    move/from16 v25, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v25, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 1119
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v2

    .end local v2    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v3

    .end local v3    # "includeSelf$iv":Z
    .local v28, "includeSelf$iv":Z
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1117
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv$iv":I
    nop

    .end local v25    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_9

    .line 1116
    .end local v27    # "count$iv$iv":I
    .end local v28    # "includeSelf$iv":Z
    .restart local v2    # "count$iv$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_8
    move/from16 v27, v2

    move/from16 v28, v3

    move-object v2, v0

    const/4 v0, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v27    # "count$iv$iv":I
    .restart local v28    # "includeSelf$iv":Z
    :goto_9
    move-object/from16 v19, v2

    .line 1120
    move-object/from16 v2, v24

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1121
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_a

    .line 1122
    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1123
    :cond_9
    const/4 v3, 0x0

    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    goto :goto_a

    .line 1121
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v3, v24

    .line 1125
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :goto_a
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1128
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object v0, v3

    move/from16 v2, v27

    goto :goto_b

    .line 1109
    .end local v27    # "count$iv$iv":I
    .end local v28    # "includeSelf$iv":Z
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .local v3, "includeSelf$iv":Z
    :cond_c
    move-object/from16 v24, v0

    move/from16 v28, v3

    .line 1128
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    :goto_b
    nop

    .line 1108
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1129
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move/from16 v3, v28

    goto :goto_7

    .line 1131
    .end local v28    # "includeSelf$iv":Z
    .restart local v3    # "includeSelf$iv":Z
    :cond_d
    move-object/from16 v24, v0

    move/from16 v28, v3

    .line 1132
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "includeSelf$iv":Z
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v28    # "includeSelf$iv":Z
    const/4 v0, 0x1

    if-ne v2, v0, :cond_e

    .line 1134
    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v0, v24

    move/from16 v3, v28

    goto/16 :goto_4

    .line 1132
    :cond_e
    move-object/from16 v2, p4

    move-object/from16 v0, v24

    goto :goto_c

    .line 1099
    .end local v2    # "count$iv$iv":I
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .end local v28    # "includeSelf$iv":Z
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "includeSelf$iv":Z
    :cond_f
    move/from16 v28, v3

    .line 1137
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    move-object/from16 v2, p4

    .end local p4    # "result":Ljava/lang/Object;
    .local v2, "result":Ljava/lang/Object;
    :goto_c
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v1, p3

    move/from16 v3, v28

    goto/16 :goto_4

    .line 1139
    .end local v28    # "includeSelf$iv":Z
    .end local p3    # "$i$f$ancestors-6rFNWt0":I
    .local v1, "$i$f$ancestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_10
    move/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 v28, v3

    .line 1084
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$ancestors-6rFNWt0":I
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "includeSelf$iv":Z
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v28    # "includeSelf$iv":Z
    .restart local p3    # "$i$f$ancestors-6rFNWt0":I
    .restart local p4    # "result":Ljava/lang/Object;
    nop

    .line 1093
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_d

    .line 1092
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$ancestors-6rFNWt0":I
    .end local p4    # "result":Ljava/lang/Object;
    .local v0, "includeSelf":Z
    .restart local v1    # "$i$f$ancestors-6rFNWt0":I
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "includeSelf$iv":Z
    :cond_11
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 v28, v3

    .line 1140
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$ancestors-6rFNWt0":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    .restart local p2    # "includeSelf":Z
    .restart local p3    # "$i$f$ancestors-6rFNWt0":I
    :goto_d
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v3, v28

    goto/16 :goto_3

    .line 1091
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$ancestors-6rFNWt0":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$ancestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_12
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 v28, v3

    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$ancestors-6rFNWt0":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    .restart local p2    # "includeSelf":Z
    .restart local p3    # "$i$f$ancestors-6rFNWt0":I
    goto :goto_e

    .line 1090
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$ancestors-6rFNWt0":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$ancestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_13
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 v28, v3

    .line 1143
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$ancestors-6rFNWt0":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    .restart local p2    # "includeSelf":Z
    .restart local p3    # "$i$f$ancestors-6rFNWt0":I
    :goto_e
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    .line 1144
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    :goto_f
    move-object v11, v0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v3, v28

    .end local v13    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_2

    .line 1146
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$ancestors-6rFNWt0":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$ancestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_15
    move/from16 p2, v0

    .line 1084
    .end local v0    # "includeSelf":Z
    .end local v7    # "includeSelf$iv$iv":Z
    .end local v8    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "mask$iv$iv":I
    .end local v10    # "$i$f$visitAncestors":I
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local p2    # "includeSelf":Z
    nop

    .line 281
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "$i$f$visitAncestors-Y-YKmho":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;
    .locals 9
    .param p0, "$this$asLayoutModifierNode"    # Landroidx/compose/ui/Modifier$Node;

    .line 514
    const/4 v0, 0x0

    .line 2051
    .local v0, "$i$f$getLayout-OLwlOKw":I
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 514
    .end local v0    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 2052
    .local v3, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    .line 514
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v2    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    .line 515
    :cond_1
    instance-of v0, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/LayoutModifierNode;

    return-object v0

    .line 516
    :cond_2
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_6

    .line 517
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 518
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    if-eqz v0, :cond_6

    .line 519
    instance-of v3, v0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v3, :cond_3

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    return-object v1

    .line 521
    :cond_3
    instance-of v3, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 2053
    .local v3, "$i$f$getLayout-OLwlOKw":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 521
    .end local v3    # "$i$f$getLayout-OLwlOKw":I
    nop

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v4, v0

    .local v4, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 2054
    .local v7, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v6

    .line 521
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v4    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v3, :cond_5

    .line 531
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_3

    .line 533
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 520
    :goto_3
    move-object v0, v3

    goto :goto_1

    .line 537
    .end local v0    # "node":Landroidx/compose/ui/Modifier$Node;
    :cond_6
    return-object v2
.end method

.method public static final synthetic dispatchForKind-6rFNWt0(Landroidx/compose/ui/Modifier$Node;ILkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p0, "$this$dispatchForKind_u2d6rFNWt0"    # Landroidx/compose/ui/Modifier$Node;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/Modifier$Node;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 556
    .local v0, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v1, 0x0

    .line 557
    .local v1, "stack":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "node":Ljava/lang/Object;
    move-object/from16 v2, p0

    .line 558
    :goto_0
    if-eqz v2, :cond_a

    .line 559
    const/4 v3, 0x3

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v3, v2, Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 560
    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 561
    :cond_0
    move-object/from16 v3, p2

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .local v4, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v5, p1

    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v6, 0x0

    .line 2055
    .local v6, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v7

    and-int/2addr v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    move v4, v9

    goto :goto_1

    :cond_1
    move v4, v8

    .line 561
    .end local v4    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v6    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v4, :cond_9

    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_9

    .line 566
    const/4 v4, 0x0

    .line 567
    .local v4, "count":I
    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .local v5, "this_$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v6, 0x0

    .line 2056
    .local v6, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 2057
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v7, :cond_8

    .line 2058
    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "next":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 568
    .local v11, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1":I
    move/from16 v12, p1

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v13, v10

    .local v13, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 2059
    .local v14, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v15

    and-int/2addr v15, v12

    if-eqz v15, :cond_2

    move v12, v9

    goto :goto_3

    :cond_2
    move v12, v8

    .line 568
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v13    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v12, :cond_7

    .line 569
    add-int/lit8 v4, v4, 0x1

    .line 570
    if-ne v4, v9, :cond_3

    .line 571
    move-object v2, v10

    goto :goto_4

    .line 575
    :cond_3
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v12, :cond_4

    const/4 v12, 0x0

    .line 2060
    .local v12, "$i$f$mutableVectorOf":I
    nop

    .line 2061
    const/16 v13, 0x10

    .local v13, "capacity$iv$iv":I
    const/4 v14, 0x0

    .line 2062
    .local v14, "$i$f$MutableVector":I
    new-instance v15, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v13, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v15, v9, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2060
    .end local v13    # "capacity$iv$iv":I
    .end local v14    # "$i$f$MutableVector":I
    nop

    .end local v12    # "$i$f$mutableVectorOf":I
    move-object v9, v15

    check-cast v9, Landroidx/compose/runtime/collection/MutableVector;

    move-object v12, v15

    .line 575
    :cond_4
    move-object v1, v12

    .line 576
    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 577
    .local v9, "theNode":Landroidx/compose/ui/Modifier$Node;
    if-eqz v9, :cond_6

    .line 578
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v12, :cond_5

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_5
    const/4 v2, 0x0

    .line 581
    :cond_6
    move-object v12, v1

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v12, :cond_7

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v9    # "theNode":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    :goto_4
    nop

    .line 2058
    .end local v10    # "next":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1":I
    nop

    .line 2063
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    const/4 v9, 0x1

    goto :goto_2

    .line 2065
    :cond_8
    nop

    .line 585
    .end local v5    # "this_$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v6    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 587
    goto/16 :goto_0

    .line 590
    .end local v4    # "count":I
    :cond_9
    :goto_5
    move-object v4, v1

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_0

    .line 592
    :cond_a
    move-object/from16 v3, p2

    return-void
.end method

.method public static final dispatchOnScrollChanged-Uv8p0NA(Landroidx/compose/ui/node/DelegatableNode;J)V
    .locals 1
    .param p0, "$this$dispatchOnScrollChanged_u2dUv8p0NA"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-delta$0"    # J

    .line 464
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/Owner;->dispatchOnScrollChanged-k-4lQ0M(J)V

    return-void
.end method

.method public static final findNearestBeyondBoundsLayoutAncestor(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 19
    .param p0, "$this$findNearestBeyondBoundsLayoutAncestor"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 469
    const/4 v0, 0x0

    .line 2004
    .local v0, "$i$f$getBeyondBoundsLayout-OLwlOKw":I
    const/high16 v1, 0x800000

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 469
    .end local v0    # "$i$f$getBeyondBoundsLayout-OLwlOKw":I
    const/4 v2, 0x0

    .line 2005
    .local v2, "$i$f$getLocals-OLwlOKw":I
    const/16 v3, 0x20

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 469
    .end local v2    # "$i$f$getLocals-OLwlOKw":I
    nop

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-this$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-other$0$iv":I
    const/4 v4, 0x0

    .line 2006
    .local v4, "$i$f$or-H91voCI":I
    or-int/2addr v0, v2

    .line 469
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-this$0$iv":I
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-other$0$iv":I
    .end local v4    # "$i$f$or-H91voCI":I
    nop

    .local v0, "mask$iv":I
    move-object/from16 v2, p0

    .line 2007
    .local v2, "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 2009
    const/4 v4, 0x0

    .line 2007
    .local v4, "includeSelf$iv":Z
    const/4 v5, 0x0

    .line 2015
    .local v5, "$i$f$visitAncestors":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 2016
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_0

    .line 2017
    const/4 v8, 0x0

    .line 2015
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    nop

    .line 2017
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    const-string/jumbo v8, "visitAncestors called on an unattached node"

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2019
    :cond_0
    nop

    .line 2020
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 2021
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 2022
    .local v7, "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v7, :cond_12

    .line 2023
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 2024
    .local v9, "head$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_10

    .line 2025
    :goto_1
    if-eqz v6, :cond_f

    .line 2026
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_e

    .line 2027
    move-object v10, v6

    .local v10, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 470
    .local v11, "$i$a$-visitAncestors$default-DelegatableNodeKt$findNearestBeyondBoundsLayoutAncestor$1":I
    const/4 v12, 0x0

    .line 2028
    .local v12, "$i$f$getBeyondBoundsLayout-OLwlOKw":I
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v12

    .line 470
    .end local v12    # "$i$f$getBeyondBoundsLayout-OLwlOKw":I
    nop

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v13, v10

    .local v13, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 2029
    .local v14, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v15

    and-int/2addr v15, v12

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v15, :cond_1

    move/from16 v12, v16

    goto :goto_2

    :cond_1
    move/from16 v12, v17

    .line 470
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v13    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v12, :cond_7

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "beyondBoundsNode":Ljava/lang/Object;
    instance-of v3, v10, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    if-eqz v3, :cond_2

    .line 473
    move-object v1, v10

    const/16 v18, 0x0

    goto :goto_5

    .line 474
    :cond_2
    instance-of v3, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_5

    .line 475
    move-object v3, v10

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .local v3, "this_$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v12, 0x0

    .line 2030
    .local v12, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 2031
    .local v13, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v13, :cond_4

    .line 2032
    move-object v14, v13

    .local v14, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 476
    .local v15, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$findNearestBeyondBoundsLayoutAncestor$1$1":I
    const/16 v18, 0x0

    instance-of v8, v14, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    if-eqz v8, :cond_3

    .line 477
    move-object v1, v14

    .line 478
    goto :goto_4

    .line 480
    :cond_3
    nop

    .line 2032
    .end local v14    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$findNearestBeyondBoundsLayoutAncestor$1$1":I
    :goto_4
    nop

    .line 2033
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_3

    .line 2035
    :cond_4
    const/16 v18, 0x0

    goto :goto_5

    .line 474
    .end local v3    # "this_$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v12    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v13    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_5
    const/16 v18, 0x0

    .line 483
    :goto_5
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;->getBeyondBoundsLayout()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, v18

    :goto_6
    return-object v8

    .line 486
    .end local v1    # "beyondBoundsNode":Ljava/lang/Object;
    :cond_7
    const/16 v18, 0x0

    const/4 v8, 0x0

    .line 2036
    .local v8, "$i$f$getLocals-OLwlOKw":I
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 486
    .end local v8    # "$i$f$getLocals-OLwlOKw":I
    nop

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v12, v10

    .local v12, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 2037
    .local v13, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v8

    if-eqz v14, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v16, v17

    .line 486
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v12    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v16, :cond_d

    .line 487
    const/4 v8, 0x0

    .line 488
    .local v8, "modifierLocalNode":Ljava/lang/Object;
    instance-of v12, v10, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v12, :cond_9

    .line 489
    move-object v8, v10

    goto :goto_a

    .line 490
    :cond_9
    instance-of v12, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_c

    .line 491
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .local v12, "this_$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v13, 0x0

    .line 2038
    .local v13, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .line 2039
    .local v14, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    if-eqz v14, :cond_b

    .line 2040
    move-object v15, v14

    .local v15, "it":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 492
    .local v16, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$findNearestBeyondBoundsLayoutAncestor$1$2":I
    instance-of v1, v15, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v1, :cond_a

    .line 493
    move-object v8, v15

    .line 494
    goto :goto_9

    .line 496
    :cond_a
    nop

    .line 2040
    .end local v15    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$findNearestBeyondBoundsLayoutAncestor$1$2":I
    :goto_9
    nop

    .line 2041
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    const/high16 v1, 0x800000

    goto :goto_8

    .line 2043
    :cond_b
    nop

    .line 498
    .end local v12    # "this_$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v13    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v14    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    :goto_a
    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 499
    .local v1, "localNode":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    nop

    .line 500
    if-eqz v1, :cond_d

    .line 501
    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v12

    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v12, v13}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 503
    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v3

    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v3, v12}, Landroidx/compose/ui/modifier/ModifierLocalMap;->get$ui(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/BeyondBoundsLayout;

    return-object v3

    .line 505
    .end local v1    # "localNode":Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
    .end local v8    # "modifierLocalNode":Ljava/lang/Object;
    :cond_d
    nop

    .line 2027
    .end local v10    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-visitAncestors$default-DelegatableNodeKt$findNearestBeyondBoundsLayoutAncestor$1":I
    goto :goto_b

    .line 2026
    :cond_e
    const/16 v18, 0x0

    .line 2044
    :goto_b
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    const/high16 v1, 0x800000

    goto/16 :goto_1

    .line 2025
    :cond_f
    const/16 v18, 0x0

    goto :goto_c

    .line 2024
    :cond_10
    const/16 v18, 0x0

    .line 2047
    :goto_c
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 2048
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_d

    :cond_11
    move-object/from16 v8, v18

    :goto_d
    move-object v6, v8

    const/high16 v1, 0x800000

    .end local v9    # "head$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 2050
    :cond_12
    const/16 v18, 0x0

    .line 507
    .end local v0    # "mask$iv":I
    .end local v2    # "$this$visitAncestors_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "includeSelf$iv":Z
    .end local v5    # "$i$f$visitAncestors":I
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    return-object v18
.end method

.method private static final getChildren(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .param p0, "$this$getChildren"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "zOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Z)",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0
.end method

.method public static final has-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Z
    .locals 1
    .param p0, "$this$has_u2d64DMado"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I

    .line 339
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final invalidateDrawForSubtree(Landroidx/compose/ui/node/DelegatableNode;)V
    .locals 4
    .param p0, "$this$invalidateDrawForSubtree"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 449
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateDrawForSubtree$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 452
    :cond_0
    return-void
.end method

.method public static final invalidateMeasurementForSubtree(Landroidx/compose/ui/node/DelegatableNode;)V
    .locals 1
    .param p0, "$this$invalidateMeasurementForSubtree"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 429
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurementForSubtree()V

    .line 432
    :cond_0
    return-void
.end method

.method public static final invalidateSubtree(Landroidx/compose/ui/node/DelegatableNode;)V
    .locals 4
    .param p0, "$this$invalidateSubtree"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 408
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->invalidateSubtree$default(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 411
    :cond_0
    return-void
.end method

.method public static final isDelegationRoot(Landroidx/compose/ui/node/DelegatableNode;)Z
    .locals 1
    .param p0, "$this$isDelegationRoot"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 79
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final nearestAncestor(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;
    .locals 5
    .param p0, "$this$nearestAncestor"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I

    .line 115
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 602
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 603
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$a$-checkPrecondition-DelegatableNodeKt$nearestAncestor$1":I
    nop

    .line 603
    .end local v2    # "$i$a$-checkPrecondition-DelegatableNodeKt$nearestAncestor$1":I
    const-string/jumbo v2, "nearestAncestor called on an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 605
    :cond_0
    nop

    .line 116
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 117
    .local v0, "node":Landroidx/compose/ui/Modifier$Node;
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 118
    .local v1, "layout":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 120
    .local v3, "head":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 121
    :goto_1
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    .line 123
    return-object v0

    .line 125
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    :cond_3
    move-object v0, v2

    .end local v3    # "head":Landroidx/compose/ui/Modifier$Node;
    goto :goto_0

    .line 131
    :cond_4
    return-object v2
.end method

.method public static final synthetic nearestAncestor-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;
    .locals 32
    .param p0, "$this$nearestAncestor_u2d64DMado"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    .local v0, "$i$f$nearestAncestor-64DMado":I
    move/from16 v1, p1

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v2, p0

    .line 1274
    .local v2, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1276
    const/4 v3, 0x0

    .line 1274
    .local v3, "includeSelf$iv":Z
    const/4 v4, 0x0

    .line 1278
    .local v4, "$i$f$visitAncestors-Y-YKmho":I
    move v5, v3

    .local v5, "includeSelf$iv$iv":Z
    move v6, v1

    .local v6, "mask$iv$iv":I
    move-object v7, v2

    .local v7, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v8, 0x0

    .line 1279
    .local v8, "$i$f$visitAncestors":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    .local v9, "value$iv$iv$iv":Z
    const/4 v10, 0x0

    .line 1280
    .local v10, "$i$f$checkPrecondition":I
    if-nez v9, :cond_0

    .line 1281
    const/4 v11, 0x0

    .line 1279
    .local v11, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 1281
    .end local v11    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v11, "visitAncestors called on an unattached node"

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1283
    :cond_0
    nop

    .line 1284
    .end local v9    # "value$iv$iv$iv":Z
    .end local v10    # "$i$f$checkPrecondition":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 1285
    .local v9, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    .line 1286
    .local v10, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v10, :cond_12

    .line 1287
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 1288
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_10

    .line 1289
    :goto_1
    if-eqz v9, :cond_f

    .line 1290
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_e

    .line 1291
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1278
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move v15, v1

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1292
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1293
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v11, v19

    const/16 v19, 0x0

    .line 1294
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v11, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v11, :cond_d

    .line 1295
    move/from16 v20, v0

    .end local v0    # "$i$f$nearestAncestor-64DMado":I
    .local v20, "$i$f$nearestAncestor-64DMado":I
    const/4 v0, 0x3

    move/from16 v21, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v11, Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1296
    move-object v0, v11

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 298
    .local v1, "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2":I
    return-object v0

    .line 1297
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2":I
    :cond_1
    move-object v0, v11

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v1, v15

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/16 v22, 0x0

    .line 1298
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v1

    move-object/from16 v24, v0

    .end local v0    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v23, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 1297
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v1, :cond_b

    instance-of v1, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    .line 1299
    const/4 v1, 0x0

    .line 1300
    .local v1, "count$iv$iv":I
    move-object/from16 v22, v11

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 1301
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 1302
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v24, :cond_a

    .line 1303
    move-object/from16 v0, v24

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1304
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v0

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1298
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_3

    const/16 v26, 0x1

    goto :goto_5

    :cond_3
    const/16 v26, 0x0

    .line 1304
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v26, :cond_9

    .line 1305
    add-int/lit8 v1, v1, 0x1

    .line 1306
    move-object/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v26, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    if-ne v1, v2, :cond_4

    .line 1307
    move-object v11, v0

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    goto :goto_7

    .line 1311
    :cond_4
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 1312
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1313
    move/from16 v27, v1

    .end local v1    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 1314
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v3

    .end local v3    # "includeSelf$iv":Z
    .local v30, "includeSelf$iv":Z
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .local v31, "$i$f$visitAncestors-Y-YKmho":I
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1312
    .end local v1    # "capacity$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    nop

    .end local v29    # "$i$f$mutableVectorOf":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_6

    .line 1311
    .end local v27    # "count$iv$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v1, "count$iv$iv":I
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_5
    move/from16 v27, v1

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "count$iv$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_6
    move-object/from16 v18, v2

    .line 1315
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1316
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 1317
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1318
    :cond_6
    const/4 v2, 0x0

    move-object v11, v2

    .line 1320
    :cond_7
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1323
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move/from16 v1, v27

    goto :goto_7

    .line 1304
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "count$iv$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v1, "count$iv$iv":I
    .local v2, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_9
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .line 1323
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_7
    nop

    .line 1303
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1324
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_4

    .line 1326
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_a
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    .line 1327
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 1329
    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_2

    .line 1297
    .end local v1    # "count$iv$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_b
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    .line 1332
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_c
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_2

    .line 1334
    .end local v20    # "$i$f$nearestAncestor-64DMado":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v0, "$i$f$nearestAncestor-64DMado":I
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_d
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    .line 1278
    .end local v0    # "$i$f$nearestAncestor-64DMado":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v11    # "node$iv$iv":Ljava/lang/Object;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$nearestAncestor-64DMado":I
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 1291
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_8

    .line 1290
    .end local v20    # "$i$f$nearestAncestor-64DMado":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_e
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/16 v19, 0x0

    .line 1335
    .end local v0    # "$i$f$nearestAncestor-64DMado":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v20    # "$i$f$nearestAncestor-64DMado":I
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_1

    .line 1289
    .end local v20    # "$i$f$nearestAncestor-64DMado":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_f
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/16 v19, 0x0

    .end local v0    # "$i$f$nearestAncestor-64DMado":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v20    # "$i$f$nearestAncestor-64DMado":I
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    goto :goto_9

    .line 1288
    .end local v20    # "$i$f$nearestAncestor-64DMado":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_10
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/16 v19, 0x0

    .line 1338
    .end local v0    # "$i$f$nearestAncestor-64DMado":I
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v20    # "$i$f$nearestAncestor-64DMado":I
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    .line 1339
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_a

    :cond_11
    move-object/from16 v11, v19

    :goto_a
    move-object v9, v11

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    .end local v12    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1341
    .end local v20    # "$i$f$nearestAncestor-64DMado":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "includeSelf$iv":Z
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_12
    const/16 v19, 0x0

    .line 1278
    .end local v5    # "includeSelf$iv$iv":Z
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v8    # "$i$f$visitAncestors":I
    .end local v9    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 300
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    return-object v19
.end method

.method private static final pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    .locals 4
    .param p0, "$this$pop"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/Modifier$Node;",
            ">;)",
            "Landroidx/compose/ui/Modifier$Node;"
        }
    .end annotation

    .line 595
    if-eqz p0, :cond_2

    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 2066
    .local v1, "$i$f$isEmpty":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 595
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$isEmpty":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public static final requestAutofill(Landroidx/compose/ui/node/DelegatableNode;)V
    .locals 1
    .param p0, "$this$requestAutofill"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 363
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->requestAutofill$ui()V

    return-void
.end method

.method public static final requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 2
    .param p0, "$this$requireCoordinator_u2d64DMado"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0"    # I

    .line 342
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 343
    .local v0, "coordinator":Landroidx/compose/ui/node/NodeCoordinator;
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getWrapped$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static final requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;
    .locals 1
    .param p0, "$this$requireDensity"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 369
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    return-object v0
.end method

.method public static final requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;
    .locals 1
    .param p0, "$this$requireGraphicsContext"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 372
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v0

    return-object v0
.end method

.method public static final requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4
    .param p0, "$this$requireLayoutCoordinates"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 390
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 1995
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 1996
    const/4 v2, 0x0

    .line 391
    .local v2, "$i$a$-checkPrecondition-DelegatableNodeKt$requireLayoutCoordinates$1":I
    nop

    .line 1996
    .end local v2    # "$i$a$-checkPrecondition-DelegatableNodeKt$requireLayoutCoordinates$1":I
    const-string v2, "Cannot get LayoutCoordinates, Modifier.Node is not attached."

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1998
    :cond_0
    nop

    .line 393
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    const/4 v0, 0x0

    .line 1999
    .local v0, "$i$f$getLayout-OLwlOKw":I
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 393
    .end local v0    # "$i$f$getLayout-OLwlOKw":I
    invoke-static {p0, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 394
    .local v0, "coordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 2000
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_1

    .line 2001
    const/4 v3, 0x0

    .line 394
    .local v3, "$i$a$-checkPrecondition-DelegatableNodeKt$requireLayoutCoordinates$2":I
    nop

    .line 2001
    .end local v3    # "$i$a$-checkPrecondition-DelegatableNodeKt$requireLayoutCoordinates$2":I
    const-string v3, "LayoutCoordinates is not attached."

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2003
    :cond_1
    nop

    .line 395
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    return-object v0
.end method

.method public static final requireLayoutDirection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .param p0, "$this$requireLayoutDirection"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 378
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public static final requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;
    .locals 3
    .param p0, "$this$requireLayoutNode"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 348
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1985
    .local v1, "$i$f$checkPreconditionNotNull":I
    if-eqz v0, :cond_0

    .line 1989
    nop

    .line 351
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$checkPreconditionNotNull":I
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    return-object v0

    .line 1986
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$checkPreconditionNotNull":I
    :cond_0
    const/4 v2, 0x0

    .line 349
    .local v2, "$i$a$-checkPreconditionNotNull-DelegatableNodeKt$requireLayoutNode$1":I
    nop

    .line 1986
    .end local v2    # "$i$a$-checkPreconditionNotNull-DelegatableNodeKt$requireLayoutNode$1":I
    const-string v2, "Cannot obtain node coordinator. Is the Modifier.Node attached?"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public static final requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;
    .locals 3
    .param p0, "$this$requireOwner"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 356
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui()Landroidx/compose/ui/node/Owner;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1990
    .local v1, "$i$f$checkPreconditionNotNull":I
    if-eqz v0, :cond_0

    .line 1994
    nop

    .line 356
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$checkPreconditionNotNull":I
    return-object v0

    .line 1991
    .restart local v0    # "value$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$checkPreconditionNotNull":I
    :cond_0
    const/4 v2, 0x0

    .line 356
    .local v2, "$i$a$-checkPreconditionNotNull-DelegatableNodeKt$requireOwner$1":I
    nop

    .line 1991
    .end local v2    # "$i$a$-checkPreconditionNotNull-DelegatableNodeKt$requireOwner$1":I
    const-string v2, "This node does not have an owner."

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method public static final requireSemanticsInfo(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/semantics/SemanticsInfo;
    .locals 1
    .param p0, "$this$requireSemanticsInfo"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 353
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsInfo;

    return-object v0
.end method

.method public static final synthetic setOfAncestors-6rFNWt0(Landroidx/compose/ui/node/DelegatableNode;IZ)Ljava/util/Set;
    .locals 33
    .param p0, "$this$setOfAncestors_u2d6rFNWt0"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 288
    .local v0, "$i$f$setOfAncestors-6rFNWt0":I
    const/4 v1, 0x0

    .line 289
    .local v1, "result":Ljava/lang/Object;
    move/from16 v2, p2

    .local v2, "includeSelf$iv":Z
    move/from16 v3, p1

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 1147
    .local v5, "$i$f$visitAncestors-Y-YKmho":I
    move v6, v2

    .local v6, "includeSelf$iv$iv":Z
    move-object v7, v4

    .local v7, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v8, v3

    .local v8, "mask$iv$iv":I
    const/4 v9, 0x0

    .line 1148
    .local v9, "$i$f$visitAncestors":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 1149
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_0

    .line 1150
    const/4 v12, 0x0

    .line 1148
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 1150
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v12, "visitAncestors called on an unattached node"

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1152
    :cond_0
    nop

    .line 1153
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1154
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 1155
    .local v11, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v11, :cond_14

    .line 1156
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 1157
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v13

    and-int/2addr v13, v8

    if-eqz v13, :cond_12

    .line 1158
    :goto_2
    if-eqz v10, :cond_11

    .line 1159
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v8

    if-eqz v13, :cond_10

    .line 1160
    move-object v13, v10

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1147
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1161
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1162
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v32, v19

    move/from16 v19, v0

    move-object/from16 v0, v32

    .line 1163
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v19, "$i$f$setOfAncestors-6rFNWt0":I
    :goto_3
    if-eqz v0, :cond_f

    .line 1164
    move-object/from16 v20, v1

    .end local v1    # "result":Ljava/lang/Object;
    .local v20, "result":Ljava/lang/Object;
    const/4 v1, 0x3

    move/from16 v21, v2

    .end local v2    # "includeSelf$iv":Z
    .local v21, "includeSelf$iv":Z
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1165
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 290
    .local v2, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    if-nez v20, :cond_2

    new-instance v22, Ljava/util/LinkedHashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v20, v22

    check-cast v20, Ljava/util/Set;

    .line 291
    :cond_2
    move/from16 v22, v2

    .end local v2    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    .local v22, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    move-object/from16 v2, v20

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    nop

    .line 1165
    .end local v1    # "it":Ljava/lang/Object;
    .end local v22    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    move/from16 v30, v3

    move-object/from16 v1, v20

    goto/16 :goto_a

    .line 1166
    :cond_3
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v2, v15

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/16 v22, 0x0

    .line 1167
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v2

    move-object/from16 v24, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v24, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v23, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 1166
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v2, :cond_e

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_e

    .line 1168
    const/4 v2, 0x0

    .line 1169
    .local v2, "count$iv$iv":I
    move-object/from16 v22, v0

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 1170
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 1171
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v24, :cond_c

    .line 1172
    move-object/from16 v1, v24

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1173
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v1

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1167
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_5

    const/16 v26, 0x1

    goto :goto_6

    :cond_5
    const/16 v26, 0x0

    .line 1173
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v26, :cond_b

    .line 1174
    add-int/lit8 v2, v2, 0x1

    .line 1175
    move-object/from16 v26, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v26, "node$iv$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_6

    .line 1176
    move-object v0, v1

    move/from16 v30, v3

    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 1180
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 1181
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1182
    move/from16 v27, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 1183
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v3

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1181
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    nop

    .end local v27    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_7

    .line 1180
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "count$iv$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_7
    move/from16 v29, v2

    move/from16 v30, v3

    move-object v2, v0

    const/4 v0, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v29    # "count$iv$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_7
    move-object/from16 v18, v2

    .line 1184
    move-object/from16 v2, v26

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1185
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_9

    .line 1186
    move-object/from16 v3, v18

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_8
    const/4 v3, 0x0

    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 1185
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    :cond_9
    move-object/from16 v3, v26

    .line 1189
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :goto_8
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1192
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object v0, v3

    move/from16 v2, v29

    goto :goto_9

    .line 1173
    .end local v29    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_b
    move-object/from16 v26, v0

    move/from16 v30, v3

    .line 1192
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_9
    nop

    .line 1172
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1193
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move/from16 v3, v30

    goto :goto_5

    .line 1195
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_c
    move-object/from16 v26, v0

    move/from16 v30, v3

    .line 1196
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "node$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_d

    .line 1198
    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v0, v26

    move/from16 v3, v30

    goto/16 :goto_3

    .line 1196
    :cond_d
    move-object/from16 v1, v20

    move-object/from16 v0, v26

    goto :goto_a

    .line 1166
    .end local v2    # "count$iv$iv":I
    .end local v26    # "node$iv$iv":Ljava/lang/Object;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    move/from16 v30, v3

    .line 1201
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, v20

    .end local v20    # "result":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    :goto_a
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v2, v21

    move/from16 v3, v30

    goto/16 :goto_3

    .line 1203
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v30, v3

    .line 1147
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "result":Ljava/lang/Object;
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1160
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_b

    .line 1159
    .end local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v20    # "result":Ljava/lang/Object;
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v30, v3

    .line 1204
    .end local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v0, v19

    move/from16 v2, v21

    move/from16 v3, v30

    goto/16 :goto_2

    .line 1158
    .end local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v30, v3

    .end local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_c

    .line 1157
    .end local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v30, v3

    .line 1207
    .end local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_c
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v11

    .line 1208
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    :goto_d
    move-object v10, v0

    move/from16 v0, v19

    move/from16 v2, v21

    move/from16 v3, v30

    .end local v12    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 1210
    .end local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_14
    move/from16 v19, v0

    .line 1147
    .end local v0    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v6    # "includeSelf$iv$iv":Z
    .end local v7    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v8    # "mask$iv$iv":I
    .end local v9    # "$i$f$visitAncestors":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v19    # "$i$f$setOfAncestors-6rFNWt0":I
    nop

    .line 293
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitAncestors-Y-YKmho":I
    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic setOfAncestors-6rFNWt0$default(Landroidx/compose/ui/node/DelegatableNode;IZILjava/lang/Object;)Ljava/util/Set;
    .locals 30
    .param p0, "$this$setOfAncestors_u2d6rFNWt0_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "includeSelf"    # Z

    .line 284
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .end local p2    # "includeSelf":Z
    .local v0, "includeSelf":Z
    goto :goto_0

    .line 284
    .end local v0    # "includeSelf":Z
    .restart local p2    # "includeSelf":Z
    :cond_0
    move/from16 v0, p2

    .end local p2    # "includeSelf":Z
    .restart local v0    # "includeSelf":Z
    :goto_0
    const/4 v1, 0x0

    .line 288
    .local v1, "$i$f$setOfAncestors-6rFNWt0":I
    const/4 v2, 0x0

    .line 289
    .local v2, "result":Ljava/lang/Object;
    move v3, v0

    .local v3, "includeSelf$iv":Z
    move/from16 v4, p1

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v5, p0

    .local v5, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v6, 0x0

    .line 1211
    .local v6, "$i$f$visitAncestors-Y-YKmho":I
    move v7, v3

    .local v7, "includeSelf$iv$iv":Z
    move-object v8, v5

    .local v8, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v9, v4

    .local v9, "mask$iv$iv":I
    const/4 v10, 0x0

    .line 1212
    .local v10, "$i$f$visitAncestors":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v11

    .local v11, "value$iv$iv$iv":Z
    const/4 v12, 0x0

    .line 1149
    .local v12, "$i$f$checkPrecondition":I
    if-nez v11, :cond_1

    .line 1150
    const/4 v13, 0x0

    .line 1212
    .local v13, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 1150
    .end local v13    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v13, "visitAncestors called on an unattached node"

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    invoke-static {v13}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1152
    :cond_1
    nop

    .line 1213
    .end local v11    # "value$iv$iv$iv":Z
    .end local v12    # "$i$f$checkPrecondition":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1214
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    .line 1215
    .local v12, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_2
    if-eqz v12, :cond_15

    .line 1216
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1217
    .local v13, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v14, :cond_13

    .line 1218
    :goto_3
    if-eqz v11, :cond_12

    .line 1219
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v14, :cond_11

    .line 1220
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/Modifier$Node;

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1211
    .local v15, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move/from16 v16, v4

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1221
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 1222
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move/from16 p2, v0

    move-object/from16 v0, v20

    .line 1223
    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .restart local p2    # "includeSelf":Z
    :goto_4
    if-eqz v0, :cond_10

    .line 1224
    move/from16 p3, v1

    .end local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .local p3, "$i$f$setOfAncestors-6rFNWt0":I
    const/4 v1, 0x3

    move-object/from16 p4, v2

    .end local v2    # "result":Ljava/lang/Object;
    .local p4, "result":Ljava/lang/Object;
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1225
    move-object v1, v0

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 290
    .local v2, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    if-nez p4, :cond_3

    new-instance v20, Ljava/util/LinkedHashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v20, Ljava/util/Set;

    .end local p4    # "result":Ljava/lang/Object;
    .local v20, "result":Ljava/lang/Object;
    goto :goto_5

    .end local v20    # "result":Ljava/lang/Object;
    .restart local p4    # "result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v20, p4

    .line 291
    .end local p4    # "result":Ljava/lang/Object;
    .restart local v20    # "result":Ljava/lang/Object;
    :goto_5
    move/from16 v21, v2

    .end local v2    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    .local v21, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    move-object/from16 v2, v20

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    nop

    .line 1225
    .end local v1    # "it":Ljava/lang/Object;
    .end local v21    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$setOfAncestors$1":I
    move/from16 v28, v3

    move-object/from16 v2, v20

    goto/16 :goto_c

    .line 1226
    .end local v20    # "result":Ljava/lang/Object;
    .restart local p4    # "result":Ljava/lang/Object;
    :cond_4
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v2, v16

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/16 v20, 0x0

    .line 1167
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v2

    move-object/from16 v22, v1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v21, :cond_5

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    .line 1226
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v2, :cond_f

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_f

    .line 1231
    const/4 v2, 0x0

    .line 1232
    .local v2, "count$iv$iv":I
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1233
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1234
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    if-eqz v22, :cond_d

    .line 1235
    move-object/from16 v1, v22

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1236
    .local v23, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v24, v16

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v1

    .local v25, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1167
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v24

    if-eqz v27, :cond_6

    const/16 v24, 0x1

    goto :goto_8

    :cond_6
    const/16 v24, 0x0

    .line 1236
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_8
    if-eqz v24, :cond_c

    .line 1237
    add-int/lit8 v2, v2, 0x1

    .line 1238
    move-object/from16 v24, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v24, "node$iv$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_7

    .line 1239
    move-object v0, v1

    move/from16 v28, v3

    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_b

    .line 1243
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1244
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1245
    move/from16 v25, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v25, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v26, 0x0

    .line 1246
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v2

    .end local v2    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v3

    .end local v3    # "includeSelf$iv":Z
    .local v28, "includeSelf$iv":Z
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1244
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv$iv":I
    nop

    .end local v25    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_9

    .line 1243
    .end local v27    # "count$iv$iv":I
    .end local v28    # "includeSelf$iv":Z
    .restart local v2    # "count$iv$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_8
    move/from16 v27, v2

    move/from16 v28, v3

    move-object v2, v0

    const/4 v0, 0x0

    .end local v2    # "count$iv$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v27    # "count$iv$iv":I
    .restart local v28    # "includeSelf$iv":Z
    :goto_9
    move-object/from16 v19, v2

    .line 1247
    move-object/from16 v2, v24

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1248
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_a

    .line 1249
    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_9
    const/4 v3, 0x0

    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    goto :goto_a

    .line 1248
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v3, v24

    .line 1252
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :goto_a
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object v0, v3

    move/from16 v2, v27

    goto :goto_b

    .line 1236
    .end local v27    # "count$iv$iv":I
    .end local v28    # "includeSelf$iv":Z
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .local v3, "includeSelf$iv":Z
    :cond_c
    move-object/from16 v24, v0

    move/from16 v28, v3

    .line 1255
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    :goto_b
    nop

    .line 1235
    .end local v1    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1256
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move/from16 v3, v28

    goto :goto_7

    .line 1258
    .end local v28    # "includeSelf$iv":Z
    .restart local v3    # "includeSelf$iv":Z
    :cond_d
    move-object/from16 v24, v0

    move/from16 v28, v3

    .line 1259
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "includeSelf$iv":Z
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "node$iv$iv":Ljava/lang/Object;
    .restart local v28    # "includeSelf$iv":Z
    const/4 v0, 0x1

    if-ne v2, v0, :cond_e

    .line 1261
    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v0, v24

    move/from16 v3, v28

    goto/16 :goto_4

    .line 1259
    :cond_e
    move-object/from16 v2, p4

    move-object/from16 v0, v24

    goto :goto_c

    .line 1226
    .end local v2    # "count$iv$iv":I
    .end local v24    # "node$iv$iv":Ljava/lang/Object;
    .end local v28    # "includeSelf$iv":Z
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "includeSelf$iv":Z
    :cond_f
    move/from16 v28, v3

    .line 1264
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    move-object/from16 v2, p4

    .end local p4    # "result":Ljava/lang/Object;
    .local v2, "result":Ljava/lang/Object;
    :goto_c
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v1, p3

    move/from16 v3, v28

    goto/16 :goto_4

    .line 1266
    .end local v28    # "includeSelf$iv":Z
    .end local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    .local v1, "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_10
    move/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 v28, v3

    .line 1211
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "includeSelf$iv":Z
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v28    # "includeSelf$iv":Z
    .restart local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local p4    # "result":Ljava/lang/Object;
    nop

    .line 1220
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_d

    .line 1219
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local p4    # "result":Ljava/lang/Object;
    .local v0, "includeSelf":Z
    .restart local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "includeSelf$iv":Z
    :cond_11
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 v28, v3

    .line 1267
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    .restart local p2    # "includeSelf":Z
    .restart local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    :goto_d
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v3, v28

    goto/16 :goto_3

    .line 1218
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_12
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 v28, v3

    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    .restart local p2    # "includeSelf":Z
    .restart local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    goto :goto_e

    .line 1217
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_13
    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 v28, v3

    .line 1270
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v28    # "includeSelf$iv":Z
    .restart local p2    # "includeSelf":Z
    .restart local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    :goto_e
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    .line 1271
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    :goto_f
    move-object v11, v0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v3, v28

    .end local v13    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_2

    .line 1273
    .end local v28    # "includeSelf$iv":Z
    .end local p2    # "includeSelf":Z
    .end local p3    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$setOfAncestors-6rFNWt0":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_15
    move/from16 p2, v0

    .line 1211
    .end local v0    # "includeSelf":Z
    .end local v7    # "includeSelf$iv$iv":Z
    .end local v8    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "mask$iv$iv":I
    .end local v10    # "$i$f$visitAncestors":I
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local p2    # "includeSelf":Z
    nop

    .line 293
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "$i$f$visitAncestors-Y-YKmho":I
    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static final visitAncestors(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0, "$this$visitAncestors"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "includeSelf"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$visitAncestors":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 598
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 599
    const/4 v3, 0x0

    .line 95
    .local v3, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1":I
    nop

    .line 599
    .end local v3    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1":I
    const-string/jumbo v3, "visitAncestors called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 601
    :cond_0
    nop

    .line 96
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 97
    .local v1, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 98
    .local v2, "layout":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v2, :cond_5

    .line 99
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .line 100
    .local v3, "head":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_3

    .line 101
    :goto_2
    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 103
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    move-object v1, v4

    .end local v3    # "head":Landroidx/compose/ui/Modifier$Node;
    goto :goto_1

    .line 111
    :cond_5
    return-void
.end method

.method public static synthetic visitAncestors$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 3
    .param p0, "$this$visitAncestors_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "includeSelf"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 87
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 89
    const/4 p2, 0x0

    .line 87
    :cond_0
    const/4 p4, 0x0

    .line 95
    .local p4, "$i$f$visitAncestors":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p5

    .local p5, "value$iv":Z
    const/4 v0, 0x0

    .line 598
    .local v0, "$i$f$checkPrecondition":I
    if-nez p5, :cond_1

    .line 599
    const/4 v1, 0x0

    .line 95
    .local v1, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1":I
    nop

    .line 599
    .end local v1    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1":I
    const-string/jumbo v1, "visitAncestors called on an unattached node"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 601
    :cond_1
    nop

    .line 96
    .end local v0    # "$i$f$checkPrecondition":I
    .end local p5    # "value$iv":Z
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p5

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object p5

    .line 97
    .local p5, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 98
    .local v0, "layout":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 100
    .local v1, "head":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_4

    .line 101
    :goto_2
    if-eqz p5, :cond_4

    .line 102
    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_3

    .line 103
    invoke-interface {p3, p5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_3
    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object p5

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    move-object p5, v2

    .end local v1    # "head":Landroidx/compose/ui/Modifier$Node;
    goto :goto_1

    .line 111
    :cond_6
    return-void
.end method

.method public static final synthetic visitAncestors-Y-YKmho(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 27
    .param p0, "$this$visitAncestors_u2dY_u2dYKmho"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "includeSelf"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    .local v0, "$i$f$visitAncestors-Y-YKmho":I
    move/from16 v1, p2

    .local v1, "includeSelf$iv":Z
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 830
    .local v4, "$i$f$visitAncestors":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 831
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_0

    .line 832
    const/4 v7, 0x0

    .line 830
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    nop

    .line 832
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    const-string/jumbo v7, "visitAncestors called on an unattached node"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 834
    :cond_0
    nop

    .line 835
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 836
    .local v5, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    .line 837
    .local v6, "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v6, :cond_13

    .line 838
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 839
    .local v7, "head$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_11

    .line 840
    :goto_2
    if-eqz v5, :cond_10

    .line 841
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_f

    .line 842
    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .local v8, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 256
    .local v9, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2":I
    move/from16 v10, p1

    .local v10, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v11, v8

    .local v11, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 843
    .local v12, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v13, 0x0

    .line 844
    .local v13, "stack$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "node$iv":Ljava/lang/Object;
    move-object v14, v11

    .line 845
    :goto_3
    if-eqz v14, :cond_e

    .line 846
    const/4 v15, 0x3

    move/from16 v16, v0

    .end local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .local v16, "$i$f$visitAncestors-Y-YKmho":I
    const-string v0, "T"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v14, Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 847
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    goto/16 :goto_9

    .line 848
    :cond_2
    move-object/from16 v0, p3

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v17, v10

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v18, 0x0

    .line 849
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v17

    if-eqz v19, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    .line 848
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v15, :cond_c

    instance-of v15, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_c

    .line 850
    const/4 v15, 0x0

    .line 851
    .local v15, "count$iv":I
    move-object/from16 v17, v14

    check-cast v17, Landroidx/compose/ui/node/DelegatingNode;

    .local v17, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v18, 0x0

    .line 852
    .local v18, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 853
    .local v19, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v19, :cond_b

    .line 854
    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 855
    .local v20, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v21, v10

    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v22, v0

    .local v22, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 849
    .local v23, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v21

    if-eqz v24, :cond_4

    const/16 v21, 0x1

    goto :goto_6

    :cond_4
    const/16 v21, 0x0

    .line 855
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v22    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v21, :cond_9

    .line 856
    add-int/lit8 v15, v15, 0x1

    .line 857
    move/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "includeSelf$iv":Z
    .local v21, "includeSelf$iv":Z
    if-ne v15, v1, :cond_5

    .line 858
    move-object v14, v0

    move/from16 v24, v2

    move-object/from16 v25, v3

    const/4 v1, 0x0

    goto :goto_8

    .line 862
    :cond_5
    move-object v1, v13

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 863
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 864
    move/from16 v22, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v22, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 865
    .local v23, "$i$f$MutableVector":I
    move/from16 v24, v2

    .end local v2    # "mask$iv":I
    .local v24, "mask$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v25, v3

    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v25, "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v26, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 863
    .end local v23    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv":I
    nop

    .end local v22    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_7

    .line 862
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_6
    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_7
    move-object v13, v2

    .line 866
    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 867
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 868
    move-object v3, v13

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_7
    const/4 v3, 0x0

    move-object v14, v3

    .line 871
    :cond_8
    move-object v3, v13

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 855
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "includeSelf$iv":Z
    .local v2, "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_9
    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    const/4 v1, 0x0

    .line 874
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_a
    :goto_8
    nop

    .line 854
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 875
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    move/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_5

    .line 877
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    .line 878
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v18    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v19    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v1, 0x1

    if-ne v15, v1, :cond_d

    .line 880
    move/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_3

    .line 848
    .end local v15    # "count$iv":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    .line 883
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    :goto_9
    move-object v0, v13

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_3

    .line 885
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v0, "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move/from16 v16, v0

    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    .line 256
    .end local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v11    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v13    # "stack$iv":Ljava/lang/Object;
    .end local v14    # "node$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 842
    .end local v8    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2":I
    goto :goto_a

    .line 841
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move/from16 v16, v0

    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    .line 886
    .end local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_2

    .line 840
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move/from16 v16, v0

    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    .end local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_b

    .line 839
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move/from16 v16, v0

    move/from16 v21, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    .line 889
    .end local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_b
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    .line 890
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    move/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    .end local v7    # "head$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 892
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    nop

    .line 256
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitAncestors":I
    .end local v5    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    return-void
.end method

.method public static synthetic visitAncestors-Y-YKmho$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 26
    .param p0, "$this$visitAncestors_u2dY_u2dYKmho_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "includeSelf"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 252
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .end local p2    # "includeSelf":Z
    .local v0, "includeSelf":Z
    goto :goto_0

    .line 252
    .end local v0    # "includeSelf":Z
    .restart local p2    # "includeSelf":Z
    :cond_0
    move/from16 v0, p2

    .end local p2    # "includeSelf":Z
    .restart local v0    # "includeSelf":Z
    :goto_0
    const/4 v1, 0x0

    .line 256
    .local v1, "$i$f$visitAncestors-Y-YKmho":I
    move v2, v0

    .local v2, "includeSelf$iv":Z
    move/from16 v3, p1

    .local v3, "mask$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 893
    .local v5, "$i$f$visitAncestors":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 831
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_1

    .line 832
    const/4 v8, 0x0

    .line 893
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    nop

    .line 832
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    const-string/jumbo v8, "visitAncestors called on an unattached node"

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 834
    :cond_1
    nop

    .line 894
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 895
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 896
    .local v7, "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_2
    if-eqz v7, :cond_14

    .line 897
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 898
    .local v8, "head$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v9, :cond_12

    .line 899
    :goto_3
    if-eqz v6, :cond_11

    .line 900
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v9, :cond_10

    .line 901
    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 256
    .local v10, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2":I
    move/from16 v11, p1

    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v12, v9

    .local v12, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 902
    .local v13, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v14, 0x0

    .line 903
    .local v14, "stack$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "node$iv":Ljava/lang/Object;
    move-object v15, v12

    .line 904
    :goto_4
    if-eqz v15, :cond_f

    .line 905
    move/from16 p2, v0

    .end local v0    # "includeSelf":Z
    .restart local p2    # "includeSelf":Z
    const/4 v0, 0x3

    move/from16 p4, v1

    .end local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .local p4, "$i$f$visitAncestors-Y-YKmho":I
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v15, Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 906
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    goto/16 :goto_a

    .line 907
    :cond_3
    move-object/from16 v0, p3

    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v16, v11

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v17, 0x0

    .line 849
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v18

    and-int v18, v18, v16

    if-eqz v18, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 907
    .end local v1    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v1, :cond_d

    instance-of v1, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_d

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "count$iv":I
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/node/DelegatingNode;

    .local v16, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v17, 0x0

    .line 914
    .local v17, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 915
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v18, :cond_c

    .line 916
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 917
    .local v19, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v20, v11

    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v21, v0

    .local v21, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 849
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v20

    if-eqz v23, :cond_5

    const/16 v20, 0x1

    goto :goto_7

    :cond_5
    const/16 v20, 0x0

    .line 917
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v20, :cond_b

    .line 918
    add-int/lit8 v1, v1, 0x1

    .line 919
    move/from16 v20, v2

    const/4 v2, 0x1

    .end local v2    # "includeSelf$iv":Z
    .local v20, "includeSelf$iv":Z
    if-ne v1, v2, :cond_6

    .line 920
    move-object v15, v0

    move/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v4, 0x0

    goto :goto_9

    .line 924
    :cond_6
    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    .line 925
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 926
    move/from16 v21, v1

    .end local v1    # "count$iv":I
    .local v21, "count$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v22, 0x0

    .line 927
    .local v22, "$i$f$MutableVector":I
    move/from16 v23, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v23, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v24, v3

    .end local v3    # "mask$iv":I
    .local v24, "mask$iv":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v25, "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 925
    .end local v1    # "capacity$iv$iv$iv":I
    .end local v22    # "$i$f$MutableVector":I
    nop

    .end local v23    # "$i$f$mutableVectorOf":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_8

    .line 924
    .end local v21    # "count$iv":I
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "count$iv":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_7
    move/from16 v21, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "count$iv":I
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    move-object v14, v2

    .line 928
    move-object v1, v15

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 929
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_9

    .line 930
    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_8
    const/4 v2, 0x0

    move-object v15, v2

    .line 933
    :cond_9
    move-object v2, v14

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 936
    .end local v1    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v1, v21

    goto :goto_9

    .line 917
    .end local v20    # "includeSelf$iv":Z
    .end local v21    # "count$iv":I
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "count$iv":I
    .local v2, "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    const/4 v4, 0x0

    .line 936
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_9
    nop

    .line 916
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 937
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_6

    .line 939
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 940
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v17    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 942
    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_4

    .line 907
    .end local v1    # "count$iv":I
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 945
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    :goto_a
    move-object v0, v14

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_4

    .line 947
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p2    # "includeSelf":Z
    .end local p4    # "$i$f$visitAncestors-Y-YKmho":I
    .local v0, "includeSelf":Z
    .local v1, "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move/from16 p2, v0

    move/from16 p4, v1

    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 256
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v12    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v14    # "stack$iv":Ljava/lang/Object;
    .end local v15    # "node$iv":Ljava/lang/Object;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p2    # "includeSelf":Z
    .restart local p4    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 901
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2":I
    goto :goto_b

    .line 900
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p2    # "includeSelf":Z
    .end local p4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move/from16 p2, v0

    move/from16 p4, v1

    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 948
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p2    # "includeSelf":Z
    .restart local p4    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_b
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_3

    .line 899
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p2    # "includeSelf":Z
    .end local p4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move/from16 p2, v0

    move/from16 p4, v1

    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p2    # "includeSelf":Z
    .restart local p4    # "$i$f$visitAncestors-Y-YKmho":I
    goto :goto_c

    .line 898
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p2    # "includeSelf":Z
    .end local p4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_12
    move/from16 p2, v0

    move/from16 p4, v1

    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    .line 951
    .end local v0    # "includeSelf":Z
    .end local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v20    # "includeSelf$iv":Z
    .restart local v24    # "mask$iv":I
    .restart local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p2    # "includeSelf":Z
    .restart local p4    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_c
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 952
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    :goto_d
    move-object v6, v0

    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v4, v25

    .end local v8    # "head$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_2

    .line 954
    .end local v20    # "includeSelf$iv":Z
    .end local v24    # "mask$iv":I
    .end local v25    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p2    # "includeSelf":Z
    .end local p4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "includeSelf":Z
    .restart local v1    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_14
    nop

    .line 256
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitAncestors":I
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    return-void
.end method

.method public static final visitChildren(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0, "$this$visitChildren"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    .local v0, "$i$f$visitChildren":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 614
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 615
    const/4 v3, 0x0

    .line 153
    .local v3, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1":I
    nop

    .line 615
    .end local v3    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1":I
    const-string/jumbo v3, "visitChildren called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 617
    :cond_0
    nop

    .line 154
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    const/4 v1, 0x0

    .line 618
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 619
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv":I
    const/4 v3, 0x0

    .line 620
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 618
    .end local v2    # "capacity$iv$iv":I
    .end local v3    # "$i$f$MutableVector":I
    nop

    .line 154
    .end local v1    # "$i$f$mutableVectorOf":I
    nop

    .line 155
    .local v4, "branches":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 156
    .local v1, "child":Landroidx/compose/ui/Modifier$Node;
    if-nez v1, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-static {v4, v2, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    :goto_0
    move-object v2, v4

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 621
    .local v3, "$i$f$isNotEmpty":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v6

    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v2, :cond_6

    .line 158
    move-object v2, v4

    .restart local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 622
    .local v3, "$i$f$getLastIndex":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    sub-int/2addr v5, v7

    .line 158
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$getLastIndex":I
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 159
    .local v2, "branch":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v3

    and-int/2addr v3, p1

    if-nez v3, :cond_4

    .line 160
    invoke-static {v4, v2, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 162
    goto :goto_0

    .line 164
    :cond_4
    move-object v3, v2

    .line 165
    .local v3, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_5

    .line 167
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    goto :goto_0

    .line 170
    :cond_5
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_2

    .line 173
    .end local v2    # "branch":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "node":Landroidx/compose/ui/Modifier$Node;
    :cond_6
    return-void
.end method

.method public static final synthetic visitChildren-Y-YKmho(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 29
    .param p0, "$this$visitChildren_u2dY_u2dYKmho"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    .local v0, "$i$f$visitChildren-Y-YKmho":I
    move/from16 v1, p2

    .local v1, "zOrder$iv":Z
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 1342
    .local v4, "$i$f$visitChildren":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 1343
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_0

    .line 1344
    const/4 v7, 0x0

    .line 1342
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    nop

    .line 1344
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    const-string/jumbo v7, "visitChildren called on an unattached node"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1346
    :cond_0
    nop

    .line 1347
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    const/4 v5, 0x0

    .line 1348
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1349
    const/16 v6, 0x10

    .local v6, "capacity$iv$iv$iv":I
    const/4 v7, 0x0

    .line 1350
    .local v7, "$i$f$MutableVector":I
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v6, [Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1348
    .end local v6    # "capacity$iv$iv$iv":I
    .end local v7    # "$i$f$MutableVector":I
    nop

    .line 1347
    .end local v5    # "$i$f$mutableVectorOf":I
    nop

    .line 1351
    .local v8, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1352
    .local v5, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v5, :cond_1

    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1353
    :goto_0
    move-object v6, v8

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v7, 0x0

    .line 1354
    .local v7, "$i$f$isNotEmpty":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    move v6, v11

    goto :goto_1

    :cond_2
    move v6, v10

    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v6, :cond_13

    .line 1355
    move-object v6, v8

    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v7, 0x0

    .line 1356
    .local v7, "$i$f$getLastIndex":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    sub-int/2addr v9, v11

    .line 1355
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "$i$f$getLastIndex":I
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 1357
    .local v6, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v7

    and-int/2addr v7, v2

    if-nez v7, :cond_3

    .line 1358
    invoke-static {v8, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 1360
    goto :goto_0

    .line 1362
    :cond_3
    move-object v7, v6

    .line 1363
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v7, :cond_12

    .line 1364
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_11

    .line 1365
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 307
    .local v12, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2":I
    move/from16 v13, p1

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v9

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1366
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 1367
    .local v16, "stack$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v10, v17

    .line 1368
    .end local v17    # "node$iv":Ljava/lang/Object;
    .local v10, "node$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v10, :cond_10

    .line 1369
    const/4 v11, 0x3

    move/from16 v18, v0

    .end local v0    # "$i$f$visitChildren-Y-YKmho":I
    .local v18, "$i$f$visitChildren-Y-YKmho":I
    const-string v0, "T"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v10, Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1370
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_9

    .line 1371
    :cond_4
    move-object/from16 v0, p3

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v19, v13

    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v20, 0x0

    .line 1372
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v19

    if-eqz v21, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 1371
    .end local v11    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v11, :cond_e

    instance-of v11, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_e

    .line 1373
    const/4 v11, 0x0

    .line 1374
    .local v11, "count$iv":I
    move-object/from16 v19, v10

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1375
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1376
    .local v21, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v21, :cond_d

    .line 1377
    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1378
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v23, v13

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v24, v0

    .local v24, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1372
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v23

    if-eqz v26, :cond_6

    const/16 v23, 0x1

    goto :goto_6

    :cond_6
    const/16 v23, 0x0

    .line 1378
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v23, :cond_b

    .line 1379
    add-int/lit8 v11, v11, 0x1

    .line 1380
    move/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "zOrder$iv":Z
    .local v23, "zOrder$iv":Z
    if-ne v11, v1, :cond_7

    .line 1381
    move-object v10, v0

    move/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v1, 0x0

    goto :goto_8

    .line 1385
    :cond_7
    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 1348
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1349
    move/from16 v24, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v24, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1350
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v2

    .end local v2    # "mask$iv":I
    .local v26, "mask$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v27, v3

    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v27, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1348
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv":I
    nop

    .end local v24    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_7

    .line 1385
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_8
    move/from16 v26, v2

    move-object/from16 v27, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_7
    move-object/from16 v16, v2

    .line 1386
    move-object v2, v10

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1387
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_a

    .line 1388
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_9
    const/4 v3, 0x0

    move-object v10, v3

    .line 1391
    :cond_a
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1378
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "zOrder$iv":Z
    .local v2, "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v1, 0x0

    .line 1394
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    :goto_8
    nop

    .line 1377
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1395
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v0, p3

    move/from16 v1, v23

    move/from16 v2, v26

    move-object/from16 v3, v27

    goto/16 :goto_5

    .line 1397
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v1, 0x0

    .line 1398
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v19    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v21    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x1

    if-ne v11, v0, :cond_f

    .line 1400
    move v11, v0

    move/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    move-object/from16 v3, v27

    goto/16 :goto_3

    .line 1371
    .end local v11    # "count$iv":I
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1403
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    :goto_9
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v0

    move/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    move-object/from16 v3, v27

    goto/16 :goto_3

    .line 1405
    .end local v18    # "$i$f$visitChildren-Y-YKmho":I
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v0, "$i$f$visitChildren-Y-YKmho":I
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move/from16 v18, v0

    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v1, 0x0

    .line 307
    .end local v0    # "$i$f$visitChildren-Y-YKmho":I
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "node$iv":Ljava/lang/Object;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v23    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1365
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2":I
    nop

    .line 1406
    move v10, v1

    move/from16 v1, v23

    goto/16 :goto_0

    .line 1408
    .end local v18    # "$i$f$visitChildren-Y-YKmho":I
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move/from16 v18, v0

    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    move v1, v10

    move v0, v11

    .end local v0    # "$i$f$visitChildren-Y-YKmho":I
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v18    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v23    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move/from16 v0, v18

    move/from16 v1, v23

    goto/16 :goto_2

    .line 1363
    .end local v18    # "$i$f$visitChildren-Y-YKmho":I
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_12
    move/from16 v18, v0

    move/from16 v23, v1

    move/from16 v26, v2

    move-object/from16 v27, v3

    move v1, v10

    .end local v0    # "$i$f$visitChildren-Y-YKmho":I
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v18    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v23    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v1, v23

    goto/16 :goto_0

    .line 1411
    .end local v6    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$visitChildren-Y-YKmho":I
    .end local v23    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local v27    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    nop

    .line 307
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitChildren":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static synthetic visitChildren-Y-YKmho$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 28
    .param p0, "$this$visitChildren_u2dY_u2dYKmho_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 303
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    .end local p2    # "zOrder":Z
    .local v0, "zOrder":Z
    goto :goto_0

    .line 303
    .end local v0    # "zOrder":Z
    .restart local p2    # "zOrder":Z
    :cond_0
    move/from16 v0, p2

    .end local p2    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    :goto_0
    const/4 v1, 0x0

    .line 307
    .local v1, "$i$f$visitChildren-Y-YKmho":I
    move v2, v0

    .local v2, "zOrder$iv":Z
    move/from16 v3, p1

    .local v3, "mask$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 1412
    .local v5, "$i$f$visitChildren":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 1343
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_1

    .line 1344
    const/4 v8, 0x0

    .line 1412
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    nop

    .line 1344
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    const-string/jumbo v8, "visitChildren called on an unattached node"

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1346
    :cond_1
    nop

    .line 1413
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    const/4 v6, 0x0

    .line 1414
    .local v6, "$i$f$mutableVectorOf":I
    nop

    .line 1415
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv":I
    const/4 v8, 0x0

    .line 1416
    .local v8, "$i$f$MutableVector":I
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v7, [Landroidx/compose/ui/Modifier$Node;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1414
    .end local v7    # "capacity$iv$iv$iv":I
    .end local v8    # "$i$f$MutableVector":I
    nop

    .line 1413
    .end local v6    # "$i$f$mutableVectorOf":I
    nop

    .line 1417
    .local v9, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1418
    .local v6, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v6, :cond_2

    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-static {v9, v7, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1419
    :goto_1
    move-object v7, v9

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 1420
    .local v8, "$i$f$isNotEmpty":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    move v7, v12

    goto :goto_2

    :cond_3
    move v7, v11

    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$isNotEmpty":I
    :goto_2
    if-eqz v7, :cond_14

    .line 1421
    move-object v7, v9

    .restart local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 1422
    .local v8, "$i$f$getLastIndex":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    sub-int/2addr v10, v12

    .line 1421
    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$getLastIndex":I
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 1423
    .local v7, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v8, :cond_4

    .line 1424
    invoke-static {v9, v7, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 1426
    goto :goto_1

    .line 1428
    :cond_4
    move-object v8, v7

    .line 1429
    .local v8, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v8, :cond_13

    .line 1430
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v3

    if-eqz v10, :cond_12

    .line 1431
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 307
    .local v13, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2":I
    move/from16 v14, p1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v15, v10

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1432
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 1433
    .local v17, "stack$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v11, v18

    .line 1434
    .end local v18    # "node$iv":Ljava/lang/Object;
    .local v11, "node$iv":Ljava/lang/Object;
    :goto_4
    if-eqz v11, :cond_11

    .line 1435
    const/4 v12, 0x3

    move/from16 p5, v0

    .end local v0    # "zOrder":Z
    .local p5, "zOrder":Z
    const-string v0, "T"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v11, Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 1436
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_a

    .line 1437
    :cond_5
    move-object/from16 v0, p3

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v18, v14

    .local v18, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v19, 0x0

    .line 1372
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v18

    if-eqz v20, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 1437
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v12, :cond_f

    instance-of v12, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_f

    .line 1442
    const/4 v12, 0x0

    .line 1443
    .local v12, "count$iv":I
    move-object/from16 v18, v11

    check-cast v18, Landroidx/compose/ui/node/DelegatingNode;

    .local v18, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 1444
    .local v19, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1445
    .local v20, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v20, :cond_e

    .line 1446
    move-object/from16 v0, v20

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1447
    .local v21, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v22, v14

    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v23, v0

    .local v23, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1372
    .local v24, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v25

    and-int v25, v25, v22

    if-eqz v25, :cond_7

    const/16 v22, 0x1

    goto :goto_7

    :cond_7
    const/16 v22, 0x0

    .line 1447
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v22, :cond_c

    .line 1448
    add-int/lit8 v12, v12, 0x1

    .line 1449
    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .local v22, "$i$f$visitChildren-Y-YKmho":I
    if-ne v12, v1, :cond_8

    .line 1450
    move-object v11, v0

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v1, 0x0

    goto :goto_9

    .line 1454
    :cond_8
    move-object/from16 v1, v17

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    .line 1414
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1415
    move/from16 v23, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v23, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v24, 0x0

    .line 1416
    .local v24, "$i$f$MutableVector":I
    move/from16 v25, v2

    .end local v2    # "zOrder$iv":Z
    .local v25, "zOrder$iv":Z
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v26, v3

    .end local v3    # "mask$iv":I
    .local v26, "mask$iv":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v27, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1414
    .end local v24    # "$i$f$MutableVector":I
    .end local v27    # "capacity$iv$iv$iv":I
    nop

    .end local v23    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_8

    .line 1454
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_9
    move/from16 v25, v2

    move/from16 v26, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    :goto_8
    move-object/from16 v17, v2

    .line 1455
    move-object v2, v11

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1456
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_b

    .line 1457
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1458
    :cond_a
    const/4 v3, 0x0

    move-object v11, v3

    .line 1460
    :cond_b
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1447
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .local v1, "$i$f$visitChildren-Y-YKmho":I
    .local v2, "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_c
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v1, 0x0

    .line 1463
    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .restart local v22    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    :cond_d
    :goto_9
    nop

    .line 1446
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1464
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move-object/from16 v0, p3

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    goto/16 :goto_6

    .line 1466
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .restart local v1    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_e
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v1, 0x0

    .line 1467
    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .end local v18    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v20    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_10

    .line 1469
    move v12, v0

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v0, p5

    goto/16 :goto_4

    .line 1437
    .end local v12    # "count$iv":I
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .restart local v1    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_f
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1472
    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .restart local v22    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    :cond_10
    :goto_a
    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v0

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v0, p5

    goto/16 :goto_4

    .line 1474
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local p5    # "zOrder":Z
    .local v0, "zOrder":Z
    .restart local v1    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_11
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    const/4 v1, 0x0

    .line 307
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .end local v11    # "node$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local p5    # "zOrder":Z
    nop

    .line 1431
    .end local v10    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2":I
    nop

    .line 1475
    move v11, v1

    move/from16 v1, v22

    goto/16 :goto_1

    .line 1477
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_12
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move v1, v11

    move v0, v12

    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .restart local v22    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local p5    # "zOrder":Z
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v1, v22

    move/from16 v0, p5

    goto/16 :goto_3

    .line 1429
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_13
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move v1, v11

    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitChildren-Y-YKmho":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .restart local v22    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v25    # "zOrder$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local p5    # "zOrder":Z
    move/from16 v1, v22

    goto/16 :goto_1

    .line 1480
    .end local v7    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$visitChildren-Y-YKmho":I
    .end local v25    # "zOrder$iv":Z
    .end local v26    # "mask$iv":I
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitChildren-Y-YKmho":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "mask$iv":I
    :cond_14
    nop

    .line 307
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitChildren":I
    .end local v6    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static final visitLocalAncestors(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$visitLocalAncestors"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    .local v0, "$i$f$visitLocalAncestors":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 650
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 651
    const/4 v3, 0x0

    .line 227
    .local v3, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalAncestors$1":I
    nop

    .line 651
    .end local v3    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalAncestors$1":I
    const-string/jumbo v3, "visitLocalAncestors called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 653
    :cond_0
    nop

    .line 228
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 229
    .local v1, "next":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 231
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_2
    return-void
.end method

.method public static final synthetic visitLocalAncestors-6rFNWt0(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V
    .locals 25
    .param p0, "$this$visitLocalAncestors_u2d6rFNWt0"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 250
    .local v0, "$i$f$visitLocalAncestors-6rFNWt0":I
    move/from16 v1, p1

    .local v1, "mask$iv":I
    move-object/from16 v2, p0

    .local v2, "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v3, 0x0

    .line 775
    .local v3, "$i$f$visitLocalAncestors":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v4

    .local v4, "value$iv$iv":Z
    const/4 v5, 0x0

    .line 776
    .local v5, "$i$f$checkPrecondition":I
    if-nez v4, :cond_0

    .line 777
    const/4 v6, 0x0

    .line 775
    .local v6, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalAncestors$1$iv":I
    nop

    .line 777
    .end local v6    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalAncestors$1$iv":I
    const-string/jumbo v6, "visitLocalAncestors called on an unattached node"

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 779
    :cond_0
    nop

    .line 780
    .end local v4    # "value$iv$iv":Z
    .end local v5    # "$i$f$checkPrecondition":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 781
    .local v4, "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v4, :cond_f

    .line 782
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_e

    .line 783
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .local v5, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v6, 0x0

    .line 250
    .local v6, "$i$a$-visitLocalAncestors-DelegatableNodeKt$visitLocalAncestors$2":I
    move/from16 v7, p1

    .local v7, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v8, v5

    .local v8, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 784
    .local v9, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v10, 0x0

    .line 785
    .local v10, "stack$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "node$iv":Ljava/lang/Object;
    move-object v11, v8

    .line 786
    :goto_1
    if-eqz v11, :cond_d

    .line 787
    const/4 v12, 0x3

    const-string v13, "T"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v12, v11, Ljava/lang/Object;

    if-eqz v12, :cond_1

    .line 788
    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    goto/16 :goto_7

    .line 789
    :cond_1
    move-object/from16 v12, p2

    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v14, v7

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v15, 0x0

    .line 790
    .local v15, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v14

    move/from16 v17, v0

    .end local v0    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .local v17, "$i$f$visitLocalAncestors-6rFNWt0":I
    if-eqz v16, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 789
    .end local v13    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v13, :cond_b

    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_b

    .line 791
    const/4 v13, 0x0

    .line 792
    .local v13, "count$iv":I
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/node/DelegatingNode;

    .local v14, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v15, 0x0

    .line 793
    .local v15, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v14}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 794
    .local v16, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v16, :cond_a

    .line 795
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 796
    .local v18, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v19, v7

    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v20, v0

    .local v20, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 790
    .local v21, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v19

    if-eqz v22, :cond_3

    const/16 v19, 0x1

    goto :goto_4

    :cond_3
    const/16 v19, 0x0

    .line 796
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v19, :cond_8

    .line 797
    add-int/lit8 v13, v13, 0x1

    .line 798
    move/from16 v19, v1

    const/4 v1, 0x1

    .end local v1    # "mask$iv":I
    .local v19, "mask$iv":I
    if-ne v13, v1, :cond_4

    .line 799
    move-object v11, v0

    move-object/from16 v22, v2

    move/from16 v23, v3

    const/4 v1, 0x0

    goto :goto_6

    .line 803
    :cond_4
    move-object v1, v10

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 804
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 805
    move/from16 v20, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v20, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v21, 0x0

    .line 806
    .local v21, "$i$f$MutableVector":I
    move-object/from16 v22, v2

    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v22, "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v23, v3

    .end local v3    # "$i$f$visitLocalAncestors":I
    .local v23, "$i$f$visitLocalAncestors":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v24, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v24, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 804
    .end local v21    # "$i$f$MutableVector":I
    .end local v24    # "capacity$iv$iv$iv":I
    nop

    .end local v20    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 803
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .restart local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_5
    move-object/from16 v22, v2

    move/from16 v23, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .restart local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$i$f$visitLocalAncestors":I
    :goto_5
    move-object v10, v2

    .line 807
    move-object v2, v11

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 808
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 809
    move-object v3, v10

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_6
    const/4 v3, 0x0

    move-object v11, v3

    .line 812
    :cond_7
    move-object v3, v10

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 796
    .end local v19    # "mask$iv":I
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .local v1, "mask$iv":I
    .local v2, "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_8
    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    const/4 v1, 0x0

    .line 815
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .restart local v19    # "mask$iv":I
    .restart local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$i$f$visitLocalAncestors":I
    :cond_9
    :goto_6
    nop

    .line 795
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 816
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    goto :goto_3

    .line 818
    .end local v19    # "mask$iv":I
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_a
    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 819
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v15    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v16    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "mask$iv":I
    .restart local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$i$f$visitLocalAncestors":I
    const/4 v1, 0x1

    if-ne v13, v1, :cond_c

    .line 821
    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    goto/16 :goto_1

    .line 789
    .end local v13    # "count$iv":I
    .end local v19    # "mask$iv":I
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_b
    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 824
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .restart local v19    # "mask$iv":I
    .restart local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$i$f$visitLocalAncestors":I
    :cond_c
    :goto_7
    move-object v0, v10

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    goto/16 :goto_1

    .line 826
    .end local v17    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .end local v19    # "mask$iv":I
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .local v0, "$i$f$visitLocalAncestors-6rFNWt0":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_d
    move-object/from16 v12, p2

    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 250
    .end local v0    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .end local v7    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v8    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "stack$iv":Ljava/lang/Object;
    .end local v11    # "node$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .restart local v19    # "mask$iv":I
    .restart local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$i$f$visitLocalAncestors":I
    nop

    .line 783
    .end local v5    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "$i$a$-visitLocalAncestors-DelegatableNodeKt$visitLocalAncestors$2":I
    goto :goto_8

    .line 782
    .end local v17    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .end local v19    # "mask$iv":I
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .restart local v0    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_e
    move-object/from16 v12, p2

    move/from16 v17, v0

    move/from16 v19, v1

    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 827
    .end local v0    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .restart local v17    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .restart local v19    # "mask$iv":I
    .restart local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v23    # "$i$f$visitLocalAncestors":I
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    goto/16 :goto_0

    .line 829
    .end local v17    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .end local v19    # "mask$iv":I
    .end local v22    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$i$f$visitLocalAncestors":I
    .restart local v0    # "$i$f$visitLocalAncestors-6rFNWt0":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalAncestors":I
    :cond_f
    nop

    .line 250
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalAncestors":I
    .end local v4    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    return-void
.end method

.method public static final visitLocalDescendants(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0, "$this$visitLocalDescendants"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    .local v0, "$i$f$visitLocalDescendants":I
    const/4 v1, 0x0

    .local v1, "includeSelf$iv":Z
    move-object v2, p0

    .local v2, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v3, p1

    .local v3, "mask$iv":I
    const/4 v4, 0x0

    .line 631
    .local v4, "$i$f$visitLocalDescendants":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 632
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_0

    .line 633
    const/4 v7, 0x0

    .line 631
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv":I
    nop

    .line 633
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv":I
    const-string/jumbo v7, "visitLocalDescendants called on an unattached node"

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 635
    :cond_0
    nop

    .line 636
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 637
    .local v5, "self$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    .line 638
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 639
    .local v6, "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_2

    .line 640
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_1

    .line 641
    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_0

    .line 645
    :cond_2
    nop

    .line 207
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .end local v4    # "$i$f$visitLocalDescendants":I
    .end local v5    # "self$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_3
    return-void
.end method

.method public static final visitLocalDescendants(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$visitLocalDescendants"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "includeSelf"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    .local v0, "$i$f$visitLocalDescendants":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 646
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 647
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1":I
    nop

    .line 647
    .end local v3    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1":I
    const-string/jumbo v3, "visitLocalDescendants called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 649
    :cond_0
    nop

    .line 215
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 216
    .local v1, "self":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v2

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    return-void

    .line 217
    :cond_1
    if-eqz p2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 218
    .local v2, "next":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v2, :cond_4

    .line 219
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    .line 220
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_0

    .line 224
    :cond_4
    return-void
.end method

.method public static synthetic visitLocalDescendants$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 2
    .param p0, "$this$visitLocalDescendants_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "includeSelf"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 209
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 211
    const/4 p2, 0x0

    .line 209
    :cond_0
    const/4 p4, 0x0

    .line 214
    .local p4, "$i$f$visitLocalDescendants":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p5

    .local p5, "value$iv":Z
    const/4 v0, 0x0

    .line 646
    .local v0, "$i$f$checkPrecondition":I
    if-nez p5, :cond_1

    .line 647
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1":I
    nop

    .line 647
    .end local v1    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1":I
    const-string/jumbo v1, "visitLocalDescendants called on an unattached node"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 649
    :cond_1
    nop

    .line 215
    .end local v0    # "$i$f$checkPrecondition":I
    .end local p5    # "value$iv":Z
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p5

    .line 216
    .local p5, "self":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    return-void

    .line 217
    :cond_2
    if-eqz p2, :cond_3

    move-object v0, p5

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 218
    .local v0, "next":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v0, :cond_5

    .line 219
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 220
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_5
    return-void
.end method

.method public static final synthetic visitLocalDescendants-6rFNWt0(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V
    .locals 30
    .param p0, "$this$visitLocalDescendants_u2d6rFNWt0"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    .local v0, "$i$f$visitLocalDescendants-6rFNWt0":I
    move/from16 v1, p1

    .local v1, "mask$iv":I
    move-object/from16 v2, p0

    .local v2, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v3, 0x0

    .line 711
    .local v3, "$i$f$visitLocalDescendants":I
    const/4 v4, 0x0

    .local v4, "includeSelf$iv$iv":Z
    move v5, v1

    .local v5, "mask$iv$iv":I
    move-object v6, v2

    .local v6, "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v7, 0x0

    .line 718
    .local v7, "$i$f$visitLocalDescendants":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    .local v8, "value$iv$iv$iv":Z
    const/4 v9, 0x0

    .line 719
    .local v9, "$i$f$checkPrecondition":I
    if-nez v8, :cond_0

    .line 720
    const/4 v10, 0x0

    .line 718
    .local v10, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    nop

    .line 720
    .end local v10    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    const-string/jumbo v10, "visitLocalDescendants called on an unattached node"

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-static {v10}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 722
    :cond_0
    nop

    .line 723
    .end local v8    # "value$iv$iv$iv":Z
    .end local v9    # "$i$f$checkPrecondition":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 724
    .local v8, "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v9

    and-int/2addr v9, v5

    if-eqz v9, :cond_10

    .line 725
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 726
    .local v9, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v9, :cond_f

    .line 727
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v5

    if-eqz v10, :cond_e

    .line 728
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 245
    .local v11, "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitLocalDescendants$2":I
    move/from16 v12, p1

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v13, v10

    .local v13, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 729
    .local v14, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v15, 0x0

    .line 730
    .local v15, "stack$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "node$iv":Ljava/lang/Object;
    move-object/from16 v16, v13

    move-object/from16 v29, v16

    move/from16 v16, v0

    move-object/from16 v0, v29

    .line 731
    .local v0, "node$iv":Ljava/lang/Object;
    .local v16, "$i$f$visitLocalDescendants-6rFNWt0":I
    :goto_1
    if-eqz v0, :cond_d

    .line 732
    move/from16 v17, v1

    .end local v1    # "mask$iv":I
    .local v17, "mask$iv":I
    const/4 v1, 0x3

    move-object/from16 v18, v2

    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v18, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v1, v0, Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 733
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v27, v3

    goto/16 :goto_8

    .line 734
    :cond_1
    move-object/from16 v1, p2

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .local v2, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v19, v12

    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v20, 0x0

    .line 735
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v19

    if-eqz v21, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 734
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v2, :cond_c

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_c

    .line 736
    const/4 v2, 0x0

    .line 737
    .local v2, "count$iv":I
    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 738
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 739
    .local v21, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v21, :cond_a

    .line 740
    move-object/from16 v1, v21

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 741
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v23, v12

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v24, v1

    .local v24, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 735
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v23

    if-eqz v26, :cond_3

    const/16 v23, 0x1

    goto :goto_4

    :cond_3
    const/16 v23, 0x0

    .line 741
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v23, :cond_9

    .line 742
    add-int/lit8 v2, v2, 0x1

    .line 743
    move-object/from16 v23, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv":Ljava/lang/Object;
    .local v23, "node$iv":Ljava/lang/Object;
    if-ne v2, v0, :cond_4

    .line 744
    move-object v0, v1

    move/from16 v27, v3

    .end local v23    # "node$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv":Ljava/lang/Object;
    goto :goto_7

    .line 748
    .end local v0    # "node$iv":Ljava/lang/Object;
    .restart local v23    # "node$iv":Ljava/lang/Object;
    :cond_4
    move-object v0, v15

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 749
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 750
    move/from16 v24, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v24, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v25, 0x0

    .line 751
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v2

    .end local v2    # "count$iv":I
    .local v26, "count$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v3

    .end local v3    # "$i$f$visitLocalDescendants":I
    .local v27, "$i$f$visitLocalDescendants":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 749
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv":I
    nop

    .end local v24    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 748
    .end local v26    # "count$iv":I
    .end local v27    # "$i$f$visitLocalDescendants":I
    .restart local v2    # "count$iv":I
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_5
    move/from16 v26, v2

    move/from16 v27, v3

    move-object v2, v0

    const/4 v0, 0x0

    .end local v2    # "count$iv":I
    .end local v3    # "$i$f$visitLocalDescendants":I
    .restart local v26    # "count$iv":I
    .restart local v27    # "$i$f$visitLocalDescendants":I
    :goto_5
    move-object v15, v2

    .line 752
    move-object/from16 v2, v23

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 753
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 754
    move-object v3, v15

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_6
    const/4 v3, 0x0

    .end local v23    # "node$iv":Ljava/lang/Object;
    .local v3, "node$iv":Ljava/lang/Object;
    goto :goto_6

    .line 753
    .end local v3    # "node$iv":Ljava/lang/Object;
    .restart local v23    # "node$iv":Ljava/lang/Object;
    :cond_7
    move-object/from16 v3, v23

    .line 757
    .end local v23    # "node$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv":Ljava/lang/Object;
    :goto_6
    move-object v0, v15

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 760
    .end local v2    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object v0, v3

    move/from16 v2, v26

    goto :goto_7

    .line 741
    .end local v26    # "count$iv":I
    .end local v27    # "$i$f$visitLocalDescendants":I
    .local v0, "node$iv":Ljava/lang/Object;
    .local v2, "count$iv":I
    .local v3, "$i$f$visitLocalDescendants":I
    :cond_9
    move-object/from16 v23, v0

    move/from16 v27, v3

    .line 760
    .end local v3    # "$i$f$visitLocalDescendants":I
    .restart local v27    # "$i$f$visitLocalDescendants":I
    :goto_7
    nop

    .line 740
    .end local v1    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 761
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move/from16 v3, v27

    goto :goto_3

    .line 763
    .end local v27    # "$i$f$visitLocalDescendants":I
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_a
    move-object/from16 v23, v0

    move/from16 v27, v3

    .line 764
    .end local v0    # "node$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$visitLocalDescendants":I
    .end local v19    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v21    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "node$iv":Ljava/lang/Object;
    .restart local v27    # "$i$f$visitLocalDescendants":I
    const/4 v0, 0x1

    if-ne v2, v0, :cond_b

    .line 766
    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v0, v23

    move/from16 v3, v27

    goto/16 :goto_1

    .line 764
    :cond_b
    move-object/from16 v0, v23

    goto :goto_8

    .line 734
    .end local v2    # "count$iv":I
    .end local v23    # "node$iv":Ljava/lang/Object;
    .end local v27    # "$i$f$visitLocalDescendants":I
    .restart local v0    # "node$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_c
    move/from16 v27, v3

    .line 769
    .end local v3    # "$i$f$visitLocalDescendants":I
    .restart local v27    # "$i$f$visitLocalDescendants":I
    :goto_8
    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v27

    goto/16 :goto_1

    .line 771
    .end local v17    # "mask$iv":I
    .end local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitLocalDescendants":I
    .local v1, "mask$iv":I
    .local v2, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_d
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, v3

    .line 245
    .end local v0    # "node$iv":Ljava/lang/Object;
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalDescendants":I
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v13    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v15    # "stack$iv":Ljava/lang/Object;
    .restart local v17    # "mask$iv":I
    .restart local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitLocalDescendants":I
    nop

    .line 728
    .end local v10    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitLocalDescendants$2":I
    goto :goto_9

    .line 727
    .end local v16    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v17    # "mask$iv":I
    .end local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitLocalDescendants":I
    .local v0, "$i$f$visitLocalDescendants-6rFNWt0":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_e
    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, v3

    .line 772
    .end local v0    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalDescendants":I
    .restart local v16    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .restart local v17    # "mask$iv":I
    .restart local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitLocalDescendants":I
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v27

    goto/16 :goto_0

    .line 774
    .end local v16    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v17    # "mask$iv":I
    .end local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitLocalDescendants":I
    .restart local v0    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_f
    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, v3

    .end local v0    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalDescendants":I
    .restart local v16    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .restart local v17    # "mask$iv":I
    .restart local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitLocalDescendants":I
    goto :goto_a

    .line 724
    .end local v9    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v17    # "mask$iv":I
    .end local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitLocalDescendants":I
    .restart local v0    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .restart local v1    # "mask$iv":I
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$visitLocalDescendants":I
    :cond_10
    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, v3

    .line 711
    .end local v0    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .end local v1    # "mask$iv":I
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$visitLocalDescendants":I
    .end local v4    # "includeSelf$iv$iv":Z
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitLocalDescendants":I
    .end local v8    # "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$i$f$visitLocalDescendants-6rFNWt0":I
    .restart local v17    # "mask$iv":I
    .restart local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitLocalDescendants":I
    :goto_a
    nop

    .line 245
    .end local v17    # "mask$iv":I
    .end local v18    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitLocalDescendants":I
    return-void
.end method

.method public static final synthetic visitSelfAndAncestors-5BbP62I(Landroidx/compose/ui/node/DelegatableNode;IILkotlin/jvm/functions/Function1;)V
    .locals 29
    .param p0, "$this$visitSelfAndAncestors_u2d5BbP62I"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "$v$c$androidx-compose-ui-node-NodeKind$-untilType$0"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    .local v0, "$i$f$visitSelfAndAncestors-5BbP62I":I
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 264
    .local v1, "self":Landroidx/compose/ui/Modifier$Node;
    or-int v2, p1, p2

    .local v2, "mask$iv":I
    const/4 v3, 0x1

    .local v3, "includeSelf$iv":Z
    move-object/from16 v4, p0

    .local v4, "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 955
    .local v5, "$i$f$visitAncestors":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 956
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_0

    .line 957
    const/4 v8, 0x0

    .line 955
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    nop

    .line 957
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv":I
    const-string/jumbo v8, "visitAncestors called on an unattached node"

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 959
    :cond_0
    nop

    .line 960
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 961
    .local v6, "node$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 962
    .local v7, "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v7, :cond_16

    .line 963
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 964
    .local v8, "head$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_14

    .line 965
    :goto_1
    if-eqz v6, :cond_13

    .line 966
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_12

    .line 967
    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v10, 0x0

    .line 265
    .local v10, "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1":I
    if-eq v9, v1, :cond_2

    move/from16 v13, p2

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v9

    .local v14, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 968
    .local v15, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v13

    if-eqz v16, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    .line 265
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v13, :cond_2

    return-void

    .line 266
    :cond_2
    move/from16 v13, p1

    .restart local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v9

    .restart local v14    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 969
    .restart local v15    # "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v13

    if-eqz v16, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 266
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v13, :cond_11

    .line 267
    move/from16 v13, p1

    .restart local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v9

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 970
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 971
    .local v16, "stack$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v11, v17

    .line 972
    .end local v17    # "node$iv":Ljava/lang/Object;
    .local v11, "node$iv":Ljava/lang/Object;
    :goto_4
    if-eqz v11, :cond_10

    .line 973
    const/4 v12, 0x3

    move/from16 v18, v0

    .end local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .local v18, "$i$f$visitSelfAndAncestors-5BbP62I":I
    const-string v0, "T"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v11, Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 974
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_a

    .line 975
    :cond_4
    move-object/from16 v0, p3

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v19, v13

    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v20, 0x0

    .line 976
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v19

    if-eqz v21, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    .line 975
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v12, :cond_e

    instance-of v12, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_e

    .line 977
    const/4 v12, 0x0

    .line 978
    .local v12, "count$iv":I
    move-object/from16 v19, v11

    check-cast v19, Landroidx/compose/ui/node/DelegatingNode;

    .local v19, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 979
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 980
    .local v21, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v21, :cond_d

    .line 981
    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 982
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v23, v13

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v24, v0

    .local v24, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 976
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v23

    if-eqz v26, :cond_6

    const/16 v23, 0x1

    goto :goto_7

    :cond_6
    const/16 v23, 0x0

    .line 982
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v23, :cond_b

    .line 983
    add-int/lit8 v12, v12, 0x1

    .line 984
    move-object/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .local v23, "self":Landroidx/compose/ui/Modifier$Node;
    if-ne v12, v1, :cond_7

    .line 985
    move-object v11, v0

    move/from16 v26, v2

    move/from16 v27, v3

    const/4 v1, 0x0

    goto :goto_9

    .line 989
    :cond_7
    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 990
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 991
    move/from16 v24, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v24, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v25, 0x0

    .line 992
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v2

    .end local v2    # "mask$iv":I
    .local v26, "mask$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v3

    .end local v3    # "includeSelf$iv":Z
    .local v27, "includeSelf$iv":Z
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v28, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v28, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 990
    .end local v25    # "$i$f$MutableVector":I
    .end local v28    # "capacity$iv$iv$iv":I
    nop

    .end local v24    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_8

    .line 989
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_8
    move/from16 v26, v2

    move/from16 v27, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    :goto_8
    move-object/from16 v16, v2

    .line 993
    move-object v2, v11

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 994
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_a

    .line 995
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_9
    const/4 v3, 0x0

    move-object v11, v3

    .line 998
    :cond_a
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 982
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .local v1, "self":Landroidx/compose/ui/Modifier$Node;
    .local v2, "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_b
    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    const/4 v1, 0x0

    .line 1001
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    :cond_c
    :goto_9
    nop

    .line 981
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1002
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    goto/16 :goto_6

    .line 1004
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_d
    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    const/4 v1, 0x0

    .line 1005
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v19    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v21    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    const/4 v0, 0x1

    if-ne v12, v0, :cond_f

    .line 1007
    move/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    goto/16 :goto_4

    .line 975
    .end local v12    # "count$iv":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_e
    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1010
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    :cond_f
    :goto_a
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    goto/16 :goto_4

    .line 1012
    .end local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .local v0, "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_10
    move/from16 v18, v0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .end local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    goto :goto_b

    .line 266
    .end local v11    # "node$iv":Ljava/lang/Object;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_11
    move/from16 v18, v0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .line 269
    .end local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    :goto_b
    nop

    .line 967
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$i$a$-visitAncestors-DelegatableNodeKt$visitSelfAndAncestors$1":I
    goto :goto_c

    .line 966
    .end local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_12
    move/from16 v18, v0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .line 1013
    .end local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    :goto_c
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    goto/16 :goto_1

    .line 965
    .end local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_13
    move/from16 v18, v0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .end local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    goto :goto_d

    .line 964
    .end local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_14
    move/from16 v18, v0

    move-object/from16 v23, v1

    move/from16 v26, v2

    move/from16 v27, v3

    .line 1016
    .end local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .restart local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "mask$iv":I
    .restart local v27    # "includeSelf$iv":Z
    :goto_d
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    .line 1017
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    move-object v6, v0

    move/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    .end local v8    # "head$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1019
    .end local v18    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .end local v23    # "self":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "mask$iv":I
    .end local v27    # "includeSelf$iv":Z
    .restart local v0    # "$i$f$visitSelfAndAncestors-5BbP62I":I
    .restart local v1    # "self":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "includeSelf$iv":Z
    :cond_16
    nop

    .line 270
    .end local v2    # "mask$iv":I
    .end local v3    # "includeSelf$iv":Z
    .end local v4    # "$this$visitAncestors$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitAncestors":I
    .end local v6    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "layout$iv":Landroidx/compose/ui/node/LayoutNode;
    return-void
.end method

.method public static final synthetic visitSelfAndChildren-Y-YKmho(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 31
    .param p0, "$this$visitSelfAndChildren_u2dY_u2dYKmho"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    .line 314
    .local v1, "$i$f$visitSelfAndChildren-Y-YKmho":I
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .local v2, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v3, p1

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v4, 0x0

    .line 1481
    .local v4, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v5, 0x0

    .line 1482
    .local v5, "stack$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "node$iv":Ljava/lang/Object;
    move-object v6, v2

    .line 1483
    :goto_0
    const-string v7, "T"

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_c

    .line 1484
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v7, v6, Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 1485
    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v18, v1

    move-object/from16 v19, v2

    goto/16 :goto_6

    .line 1486
    :cond_0
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v8, v3

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v11, 0x0

    .line 1487
    .local v11, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v8

    if-eqz v12, :cond_1

    move v7, v10

    goto :goto_1

    :cond_1
    move v7, v9

    .line 1486
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v11    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v7, :cond_a

    instance-of v7, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_a

    .line 1488
    const/4 v7, 0x0

    .line 1489
    .local v7, "count$iv":I
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v11, 0x0

    .line 1490
    .local v11, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 1491
    .local v12, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v12, :cond_9

    .line 1492
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1493
    .local v14, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1487
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v18

    and-int v18, v18, v15

    if-eqz v18, :cond_2

    move v15, v10

    goto :goto_3

    :cond_2
    move v15, v9

    .line 1493
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v15, :cond_7

    .line 1494
    add-int/lit8 v7, v7, 0x1

    .line 1495
    if-ne v7, v10, :cond_3

    .line 1496
    move-object v6, v13

    move/from16 v18, v1

    move-object/from16 v19, v2

    goto :goto_5

    .line 1500
    :cond_3
    move-object v15, v5

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v15, :cond_4

    const/4 v15, 0x0

    .line 1501
    .local v15, "$i$f$mutableVectorOf":I
    nop

    .line 1502
    const/16 v10, 0x10

    .local v10, "capacity$iv$iv$iv":I
    const/16 v17, 0x0

    .line 1503
    .local v17, "$i$f$MutableVector":I
    move/from16 v18, v1

    .end local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local v18, "$i$f$visitSelfAndChildren-Y-YKmho":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v19, v2

    .end local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    new-array v2, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v2, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1501
    .end local v10    # "capacity$iv$iv$iv":I
    .end local v17    # "$i$f$MutableVector":I
    nop

    .end local v15    # "$i$f$mutableVectorOf":I
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object v15, v1

    goto :goto_4

    .line 1500
    .end local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    move/from16 v18, v1

    move-object/from16 v19, v2

    .end local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    move-object v5, v15

    .line 1504
    move-object v1, v6

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1505
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_6

    .line 1506
    move-object v2, v5

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1507
    :cond_5
    const/4 v2, 0x0

    move-object v6, v2

    .line 1509
    :cond_6
    move-object v2, v5

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1493
    .end local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move/from16 v18, v1

    move-object/from16 v19, v2

    .line 1512
    .end local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    :goto_5
    nop

    .line 1492
    .end local v13    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1513
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move/from16 v1, v18

    move-object/from16 v2, v19

    const/4 v10, 0x1

    goto :goto_2

    .line 1515
    .end local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move/from16 v18, v1

    move-object/from16 v19, v2

    .line 1516
    .end local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v11    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v12    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v1, 0x1

    if-ne v7, v1, :cond_b

    .line 1518
    move/from16 v1, v18

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 1486
    .end local v7    # "count$iv":I
    .end local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v18, v1

    move-object/from16 v19, v2

    .line 1521
    .end local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    :goto_6
    move-object v1, v5

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v1, v18

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 1523
    .end local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move/from16 v18, v1

    move-object/from16 v19, v2

    .line 315
    .end local v1    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v2    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v4    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v5    # "stack$iv":Ljava/lang/Object;
    .end local v6    # "node$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    move/from16 v1, p2

    .local v1, "zOrder$iv":Z
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 1524
    .local v4, "$i$f$visitChildren":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 1525
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_d

    .line 1526
    const/4 v10, 0x0

    .line 1524
    .local v10, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    nop

    .line 1526
    .end local v10    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    const-string/jumbo v10, "visitChildren called on an unattached node"

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-static {v10}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1528
    :cond_d
    nop

    .line 1529
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    const/4 v5, 0x0

    .line 1530
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1531
    const/16 v6, 0x10

    .local v6, "capacity$iv$iv$iv":I
    const/4 v10, 0x0

    .line 1532
    .local v10, "$i$f$MutableVector":I
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v12, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1530
    .end local v6    # "capacity$iv$iv$iv":I
    .end local v10    # "$i$f$MutableVector":I
    nop

    .line 1529
    .end local v5    # "$i$f$mutableVectorOf":I
    nop

    .line 1533
    .local v11, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1534
    .local v5, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v5, :cond_e

    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-static {v11, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1535
    :goto_7
    move-object v6, v11

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 1536
    .local v10, "$i$f$isNotEmpty":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    if-eqz v12, :cond_f

    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    move v6, v9

    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$isNotEmpty":I
    :goto_8
    if-eqz v6, :cond_20

    .line 1537
    move-object v6, v11

    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 1538
    .local v10, "$i$f$getLastIndex":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    const/16 v16, 0x1

    add-int/lit8 v12, v12, -0x1

    .line 1537
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$getLastIndex":I
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 1539
    .local v6, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v2

    if-nez v10, :cond_10

    .line 1540
    invoke-static {v11, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 1542
    goto :goto_7

    .line 1544
    :cond_10
    move-object v10, v6

    .line 1545
    .local v10, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    if-eqz v10, :cond_1f

    .line 1546
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v2

    if-eqz v12, :cond_1e

    .line 1547
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 315
    .local v13, "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1":I
    move/from16 v14, p1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1548
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 1549
    .local v19, "stack$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv":Ljava/lang/Object;
    move-object/from16 v20, v15

    move-object/from16 v9, v20

    .line 1550
    .end local v20    # "node$iv":Ljava/lang/Object;
    .local v9, "node$iv":Ljava/lang/Object;
    :goto_a
    if-eqz v9, :cond_1d

    .line 1551
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v8, v9, Ljava/lang/Object;

    if-eqz v8, :cond_11

    .line 1552
    invoke-interface {v0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_10

    .line 1553
    :cond_11
    move-object v8, v9

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v21, v14

    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v22, 0x0

    .line 1554
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v21

    if-eqz v23, :cond_12

    const/4 v8, 0x1

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    .line 1553
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_b
    if-eqz v8, :cond_1b

    instance-of v8, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_1b

    .line 1555
    const/4 v8, 0x0

    .line 1556
    .local v8, "count$iv":I
    move-object/from16 v21, v9

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 1557
    .local v22, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 1558
    .local v23, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    if-eqz v23, :cond_1a

    .line 1559
    move-object/from16 v0, v23

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1560
    .local v24, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v25, v14

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v26, v0

    .local v26, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1554
    .local v27, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v25

    if-eqz v28, :cond_13

    const/16 v25, 0x1

    goto :goto_d

    :cond_13
    const/16 v25, 0x0

    .line 1560
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v26    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui":I
    :goto_d
    if-eqz v25, :cond_18

    .line 1561
    add-int/lit8 v8, v8, 0x1

    .line 1562
    move/from16 v25, v1

    const/4 v1, 0x1

    .end local v1    # "zOrder$iv":Z
    .local v25, "zOrder$iv":Z
    if-ne v8, v1, :cond_14

    .line 1563
    move-object v9, v0

    move/from16 v28, v2

    move-object/from16 v29, v3

    const/4 v1, 0x0

    goto :goto_f

    .line 1567
    :cond_14
    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    .line 1568
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1569
    move/from16 v26, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v27, 0x0

    .line 1570
    .local v27, "$i$f$MutableVector":I
    move/from16 v28, v2

    .end local v2    # "mask$iv":I
    .local v28, "mask$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v29, v3

    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v29, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v30, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v30, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1568
    .end local v27    # "$i$f$MutableVector":I
    .end local v30    # "capacity$iv$iv$iv":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_e

    .line 1567
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_15
    move/from16 v28, v2

    move-object/from16 v29, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_e
    move-object/from16 v19, v2

    .line 1571
    move-object v2, v9

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1572
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_17

    .line 1573
    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_16

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1574
    :cond_16
    const/4 v3, 0x0

    move-object v9, v3

    .line 1576
    :cond_17
    move-object/from16 v3, v19

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_19

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1560
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "zOrder$iv":Z
    .local v2, "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_18
    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    const/4 v1, 0x0

    .line 1579
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "zOrder$iv":Z
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_19
    :goto_f
    nop

    .line 1559
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1580
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move-object/from16 v0, p3

    move/from16 v1, v25

    move/from16 v2, v28

    move-object/from16 v3, v29

    goto/16 :goto_c

    .line 1582
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1a
    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    const/4 v1, 0x0

    .line 1583
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v23    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "zOrder$iv":Z
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1c

    .line 1585
    move-object/from16 v0, p3

    move/from16 v1, v25

    move/from16 v2, v28

    move-object/from16 v3, v29

    const/4 v8, 0x3

    goto/16 :goto_a

    .line 1553
    .end local v8    # "count$iv":I
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1b
    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1588
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "zOrder$iv":Z
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1c
    :goto_10
    move-object/from16 v2, v19

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move-object/from16 v0, p3

    move/from16 v1, v25

    move/from16 v2, v28

    move-object/from16 v3, v29

    const/4 v8, 0x3

    goto/16 :goto_a

    .line 1590
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1d
    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "node$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv":Ljava/lang/Object;
    .restart local v25    # "zOrder$iv":Z
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1547
    .end local v12    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1":I
    nop

    .line 1591
    move-object/from16 v0, p3

    move v9, v1

    move/from16 v1, v25

    const/4 v8, 0x3

    goto/16 :goto_7

    .line 1593
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1e
    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    move v1, v9

    const/4 v0, 0x1

    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "zOrder$iv":Z
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p3

    move/from16 v1, v25

    const/4 v8, 0x3

    goto/16 :goto_9

    .line 1545
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1f
    move/from16 v25, v1

    move/from16 v28, v2

    move-object/from16 v29, v3

    move v1, v9

    const/4 v0, 0x1

    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "zOrder$iv":Z
    .restart local v28    # "mask$iv":I
    .restart local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v0, p3

    move/from16 v1, v25

    const/4 v8, 0x3

    goto/16 :goto_7

    .line 1596
    .end local v6    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "zOrder$iv":Z
    .end local v28    # "mask$iv":I
    .end local v29    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_20
    nop

    .line 316
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitChildren":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static synthetic visitSelfAndChildren-Y-YKmho$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 30
    .param p0, "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 309
    move-object/from16 v0, p3

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    .line 311
    const/4 v1, 0x0

    .end local p2    # "zOrder":Z
    .local v1, "zOrder":Z
    goto :goto_0

    .line 309
    .end local v1    # "zOrder":Z
    .restart local p2    # "zOrder":Z
    :cond_0
    move/from16 v1, p2

    .end local p2    # "zOrder":Z
    .restart local v1    # "zOrder":Z
    :goto_0
    const/4 v2, 0x0

    .line 314
    .local v2, "$i$f$visitSelfAndChildren-Y-YKmho":I
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    .local v3, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v4, p1

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v5, 0x0

    .line 1597
    .local v5, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v6, 0x0

    .line 1598
    .local v6, "stack$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "node$iv":Ljava/lang/Object;
    move-object v7, v3

    .line 1599
    :goto_1
    const-string v8, "T"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_d

    .line 1600
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v8, v7, Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 1601
    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 p4, v1

    move/from16 p5, v2

    goto/16 :goto_7

    .line 1602
    :cond_1
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v9, v4

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v12, 0x0

    .line 1603
    .local v12, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_2

    move v8, v11

    goto :goto_2

    :cond_2
    move v8, v10

    .line 1602
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v12    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v8, :cond_b

    instance-of v8, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_b

    .line 1604
    const/4 v8, 0x0

    .line 1605
    .local v8, "count$iv":I
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .local v9, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v12, 0x0

    .line 1606
    .local v12, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1607
    .local v13, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v13, :cond_a

    .line 1608
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/Modifier$Node;

    .local v14, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1609
    .local v15, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v16, v4

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1603
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_3

    move/from16 v16, v11

    goto :goto_4

    :cond_3
    move/from16 v16, v10

    .line 1609
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v16, :cond_8

    .line 1610
    add-int/lit8 v8, v8, 0x1

    .line 1611
    if-ne v8, v11, :cond_4

    .line 1612
    move-object v7, v14

    move/from16 p4, v1

    move/from16 p5, v2

    goto :goto_6

    .line 1616
    :cond_4
    move-object/from16 v16, v6

    check-cast v16, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v16, :cond_5

    const/16 v16, 0x0

    .line 1617
    .local v16, "$i$f$mutableVectorOf":I
    nop

    .line 1618
    const/16 v11, 0x10

    .local v11, "capacity$iv$iv$iv":I
    const/16 v17, 0x0

    .line 1619
    .local v17, "$i$f$MutableVector":I
    move/from16 p4, v1

    .end local v1    # "zOrder":Z
    .local p4, "zOrder":Z
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 p5, v2

    .end local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local p5, "$i$f$visitSelfAndChildren-Y-YKmho":I
    new-array v2, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v2, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1617
    .end local v11    # "capacity$iv$iv$iv":I
    .end local v17    # "$i$f$MutableVector":I
    nop

    .end local v16    # "$i$f$mutableVectorOf":I
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v16, v1

    goto :goto_5

    .line 1616
    .end local p4    # "zOrder":Z
    .end local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v1    # "zOrder":Z
    .restart local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_5
    move/from16 p4, v1

    move/from16 p5, v2

    .end local v1    # "zOrder":Z
    .end local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local p4    # "zOrder":Z
    .restart local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :goto_5
    move-object/from16 v6, v16

    .line 1620
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 1621
    .local v1, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 1622
    move-object v2, v6

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_6
    const/4 v2, 0x0

    move-object v7, v2

    .line 1625
    :cond_7
    move-object v2, v6

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1609
    .end local p4    # "zOrder":Z
    .end local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local v1, "zOrder":Z
    .restart local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_8
    move/from16 p4, v1

    move/from16 p5, v2

    .line 1628
    .end local v1    # "zOrder":Z
    .end local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local p4    # "zOrder":Z
    .restart local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_9
    :goto_6
    nop

    .line 1608
    .end local v14    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1629
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v11, 0x1

    goto :goto_3

    .line 1631
    .end local p4    # "zOrder":Z
    .end local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v1    # "zOrder":Z
    .restart local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_a
    move/from16 p4, v1

    move/from16 p5, v2

    .line 1632
    .end local v1    # "zOrder":Z
    .end local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v9    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v12    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v13    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local p4    # "zOrder":Z
    .restart local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    const/4 v1, 0x1

    if-ne v8, v1, :cond_c

    .line 1634
    move/from16 v1, p4

    move/from16 v2, p5

    goto/16 :goto_1

    .line 1602
    .end local v8    # "count$iv":I
    .end local p4    # "zOrder":Z
    .end local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v1    # "zOrder":Z
    .restart local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_b
    move/from16 p4, v1

    move/from16 p5, v2

    .line 1637
    .end local v1    # "zOrder":Z
    .end local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local p4    # "zOrder":Z
    .restart local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_c
    :goto_7
    move-object v1, v6

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move/from16 v1, p4

    move/from16 v2, p5

    goto/16 :goto_1

    .line 1639
    .end local p4    # "zOrder":Z
    .end local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v1    # "zOrder":Z
    .restart local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_d
    move/from16 p4, v1

    move/from16 p5, v2

    .line 315
    .end local v1    # "zOrder":Z
    .end local v2    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v3    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v5    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v6    # "stack$iv":Ljava/lang/Object;
    .end local v7    # "node$iv":Ljava/lang/Object;
    .restart local p4    # "zOrder":Z
    .restart local p5    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    nop

    .local v1, "zOrder$iv":Z
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 1640
    .local v4, "$i$f$visitChildren":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 1525
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_e

    .line 1526
    const/4 v7, 0x0

    .line 1640
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    nop

    .line 1526
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv":I
    const-string/jumbo v7, "visitChildren called on an unattached node"

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1528
    :cond_e
    nop

    .line 1641
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    const/4 v5, 0x0

    .line 1642
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1643
    const/16 v6, 0x10

    .local v6, "capacity$iv$iv$iv":I
    const/4 v7, 0x0

    .line 1644
    .local v7, "$i$f$MutableVector":I
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v11, v12, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1642
    .end local v6    # "capacity$iv$iv$iv":I
    .end local v7    # "$i$f$MutableVector":I
    nop

    .line 1641
    .end local v5    # "$i$f$mutableVectorOf":I
    nop

    .line 1645
    .local v11, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1646
    .local v5, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v5, :cond_f

    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-static {v11, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_8

    :cond_f
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1647
    :goto_8
    move-object v6, v11

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v7, 0x0

    .line 1648
    .local v7, "$i$f$isNotEmpty":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    if-eqz v12, :cond_10

    const/4 v6, 0x1

    goto :goto_9

    :cond_10
    move v6, v10

    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "$i$f$isNotEmpty":I
    :goto_9
    if-eqz v6, :cond_21

    .line 1649
    move-object v6, v11

    .restart local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v7, 0x0

    .line 1650
    .local v7, "$i$f$getLastIndex":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 1649
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "$i$f$getLastIndex":I
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 1651
    .local v6, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v7

    and-int/2addr v7, v2

    if-nez v7, :cond_11

    .line 1652
    invoke-static {v11, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 1654
    goto :goto_8

    .line 1656
    :cond_11
    move-object v7, v6

    .line 1657
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    if-eqz v7, :cond_20

    .line 1658
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v2

    if-eqz v12, :cond_1f

    .line 1659
    move-object v12, v7

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 315
    .local v13, "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1":I
    move/from16 v14, p1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1660
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 1661
    .local v17, "stack$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v10, v18

    .line 1662
    .end local v18    # "node$iv":Ljava/lang/Object;
    .local v10, "node$iv":Ljava/lang/Object;
    :goto_b
    if-eqz v10, :cond_1e

    .line 1663
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v9, v10, Ljava/lang/Object;

    if-eqz v9, :cond_12

    .line 1664
    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto/16 :goto_11

    .line 1665
    :cond_12
    move-object v9, v10

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v20, v14

    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v21, 0x0

    .line 1666
    .local v21, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v20

    if-eqz v22, :cond_13

    const/4 v9, 0x1

    goto :goto_c

    :cond_13
    const/4 v9, 0x0

    .line 1665
    .end local v9    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$isKind-H91voCI$ui":I
    :goto_c
    if-eqz v9, :cond_1c

    instance-of v9, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_1c

    .line 1667
    const/4 v9, 0x0

    .line 1668
    .local v9, "count$iv":I
    move-object/from16 v20, v10

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1669
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1670
    .local v22, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_d
    if-eqz v22, :cond_1b

    .line 1671
    move-object/from16 v0, v22

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1672
    .local v23, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v24, v14

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v25, v0

    .local v25, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1666
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v24

    if-eqz v27, :cond_14

    const/16 v24, 0x1

    goto :goto_e

    :cond_14
    const/16 v24, 0x0

    .line 1672
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_e
    if-eqz v24, :cond_19

    .line 1673
    add-int/lit8 v9, v9, 0x1

    .line 1674
    move/from16 v24, v1

    const/4 v1, 0x1

    .end local v1    # "zOrder$iv":Z
    .local v24, "zOrder$iv":Z
    if-ne v9, v1, :cond_15

    .line 1675
    move-object v10, v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    const/4 v1, 0x0

    goto :goto_10

    .line 1679
    :cond_15
    move-object/from16 v1, v17

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    .line 1680
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1681
    move/from16 v25, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v25, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v26, 0x0

    .line 1682
    .local v26, "$i$f$MutableVector":I
    move/from16 v27, v2

    .end local v2    # "mask$iv":I
    .local v27, "mask$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v28, v3

    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v28, "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1680
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv":I
    nop

    .end local v25    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_f

    .line 1679
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_16
    move/from16 v27, v2

    move-object/from16 v28, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_f
    move-object/from16 v17, v2

    .line 1683
    move-object v2, v10

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 1684
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_18

    .line 1685
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_17
    const/4 v3, 0x0

    move-object v10, v3

    .line 1688
    :cond_18
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_1a

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1672
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "zOrder$iv":Z
    .local v2, "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_19
    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    const/4 v1, 0x0

    .line 1691
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "zOrder$iv":Z
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1a
    :goto_10
    nop

    .line 1671
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1692
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v27

    move-object/from16 v3, v28

    goto/16 :goto_d

    .line 1694
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1b
    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    const/4 v1, 0x0

    .line 1695
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v20    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "zOrder$iv":Z
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1d

    .line 1697
    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v27

    move-object/from16 v3, v28

    const/4 v9, 0x3

    goto/16 :goto_b

    .line 1665
    .end local v9    # "count$iv":I
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1c
    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1700
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "zOrder$iv":Z
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1d
    :goto_11
    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v27

    move-object/from16 v3, v28

    const/4 v9, 0x3

    goto/16 :goto_b

    .line 1702
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1e
    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "node$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv":Ljava/lang/Object;
    .restart local v24    # "zOrder$iv":Z
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1659
    .end local v12    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1":I
    nop

    .line 1703
    move-object/from16 v0, p3

    move v10, v1

    move/from16 v1, v24

    const/4 v9, 0x3

    goto/16 :goto_8

    .line 1705
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1f
    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    move v1, v10

    const/4 v0, 0x1

    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "zOrder$iv":Z
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move-object/from16 v0, p3

    move/from16 v1, v24

    const/4 v9, 0x3

    goto/16 :goto_a

    .line 1657
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_20
    move/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    move v1, v10

    const/4 v0, 0x1

    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "zOrder$iv":Z
    .restart local v27    # "mask$iv":I
    .restart local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v0, p3

    move/from16 v1, v24

    const/4 v9, 0x3

    goto/16 :goto_8

    .line 1708
    .end local v6    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "zOrder$iv":Z
    .end local v27    # "mask$iv":I
    .end local v28    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "zOrder$iv":Z
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_21
    nop

    .line 316
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitChildren$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitChildren":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static final synthetic visitSelfAndLocalDescendants-6rFNWt0(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V
    .locals 27
    .param p0, "$this$visitSelfAndLocalDescendants_u2d6rFNWt0"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 240
    .local v0, "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    const/4 v1, 0x1

    .local v1, "includeSelf$iv":Z
    move-object/from16 v2, p0

    .local v2, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v3, p1

    .local v3, "mask$iv":I
    const/4 v4, 0x0

    .line 654
    .local v4, "$i$f$visitLocalDescendants":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 655
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_0

    .line 656
    const/4 v7, 0x0

    .line 654
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv":I
    nop

    .line 656
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv":I
    const-string/jumbo v7, "visitLocalDescendants called on an unattached node"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 658
    :cond_0
    nop

    .line 659
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 660
    .local v5, "self$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_10

    .line 661
    move-object v6, v5

    .line 662
    .local v6, "next$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v6, :cond_f

    .line 663
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_e

    .line 664
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v8, 0x0

    .line 240
    .local v8, "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitSelfAndLocalDescendants$1":I
    move/from16 v9, p1

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v10, v7

    .local v10, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 665
    .local v11, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v12, 0x0

    .line 666
    .local v12, "stack$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "node$iv":Ljava/lang/Object;
    move-object v13, v10

    .line 667
    :goto_1
    if-eqz v13, :cond_d

    .line 668
    const/4 v14, 0x3

    const-string v15, "T"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v14, v13, Ljava/lang/Object;

    if-eqz v14, :cond_1

    .line 669
    move-object/from16 v14, p2

    invoke-interface {v14, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_7

    .line 670
    :cond_1
    move-object/from16 v14, p2

    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .local v15, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v16, v9

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v17, 0x0

    .line 671
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v18

    and-int v18, v18, v16

    move/from16 v19, v0

    .end local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .local v19, "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    if-eqz v18, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 670
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    :goto_2
    if-eqz v15, :cond_b

    instance-of v15, v13, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_b

    .line 672
    const/4 v15, 0x0

    .line 673
    .local v15, "count$iv":I
    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/ui/node/DelegatingNode;

    .local v16, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v17, 0x0

    .line 674
    .local v17, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 675
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v18, :cond_a

    .line 676
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 677
    .local v20, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v21, v9

    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v22, v0

    .local v22, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 671
    .local v23, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v21

    if-eqz v24, :cond_3

    const/16 v21, 0x1

    goto :goto_4

    :cond_3
    const/16 v21, 0x0

    .line 677
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v22    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v21, :cond_8

    .line 678
    add-int/lit8 v15, v15, 0x1

    .line 679
    move/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "includeSelf$iv":Z
    .local v21, "includeSelf$iv":Z
    if-ne v15, v1, :cond_4

    .line 680
    move-object v13, v0

    move-object/from16 v24, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    goto :goto_6

    .line 684
    :cond_4
    move-object v1, v12

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 685
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 686
    move/from16 v22, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v22, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v23, 0x0

    .line 687
    .local v23, "$i$f$MutableVector":I
    move-object/from16 v24, v2

    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v24, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
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

    .line 685
    .end local v23    # "$i$f$MutableVector":I
    .end local v26    # "capacity$iv$iv$iv":I
    nop

    .end local v22    # "$i$f$mutableVectorOf":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_5

    .line 684
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_5
    move-object/from16 v24, v2

    move/from16 v25, v3

    move-object v2, v1

    const/4 v1, 0x0

    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    :goto_5
    move-object v12, v2

    .line 688
    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 689
    .local v2, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_7

    .line 690
    move-object v3, v12

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_6
    const/4 v3, 0x0

    move-object v13, v3

    .line 693
    :cond_7
    move-object v3, v12

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 677
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .local v1, "includeSelf$iv":Z
    .local v2, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_8
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    const/4 v1, 0x0

    .line 696
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    :cond_9
    :goto_6
    nop

    .line 676
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 697
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto :goto_3

    .line 699
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_a
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 700
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v17    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    const/4 v1, 0x1

    if-ne v15, v1, :cond_c

    .line 702
    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_1

    .line 670
    .end local v15    # "count$iv":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_b
    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 705
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    :cond_c
    :goto_7
    move-object v0, v12

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_1

    .line 707
    .end local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .local v0, "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_d
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 240
    .end local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v10    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v12    # "stack$iv":Ljava/lang/Object;
    .end local v13    # "node$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    nop

    .line 664
    .end local v7    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$i$a$-visitLocalDescendants-DelegatableNodeKt$visitSelfAndLocalDescendants$1":I
    goto :goto_8

    .line 663
    .end local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .restart local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_e
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 708
    .end local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .restart local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    :goto_8
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_0

    .line 710
    .end local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .restart local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_f
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .end local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .restart local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    goto :goto_9

    .line 660
    .end local v6    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v21    # "includeSelf$iv":Z
    .end local v24    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "mask$iv":I
    .restart local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    :cond_10
    move-object/from16 v14, p2

    move/from16 v19, v0

    move/from16 v21, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    .line 240
    .end local v0    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "mask$iv":I
    .end local v4    # "$i$f$visitLocalDescendants":I
    .end local v5    # "self$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$i$f$visitSelfAndLocalDescendants-6rFNWt0":I
    :goto_9
    return-void
.end method

.method public static final synthetic visitSubtree-Y-YKmho(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 30
    .param p0, "$this$visitSubtree_u2dY_u2dYKmho"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 333
    .local v0, "$i$f$visitSubtree-Y-YKmho":I
    move/from16 v1, p2

    .local v1, "zOrder$iv":Z
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 1847
    .local v4, "$i$f$visitSubtreeIf":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 1848
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_0

    .line 1849
    const/4 v7, 0x0

    .line 1847
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    nop

    .line 1849
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    const-string/jumbo v7, "visitSubtreeIf called on an unattached node"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1851
    :cond_0
    nop

    .line 1852
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    const/4 v5, 0x0

    .line 1853
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1854
    const/16 v6, 0x10

    .local v6, "capacity$iv$iv$iv":I
    const/4 v7, 0x0

    .line 1855
    .local v7, "$i$f$MutableVector":I
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v6, [Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1853
    .end local v6    # "capacity$iv$iv$iv":I
    .end local v7    # "$i$f$MutableVector":I
    nop

    .line 1852
    .end local v5    # "$i$f$mutableVectorOf":I
    nop

    .line 1856
    .local v8, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1857
    .local v5, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v5, :cond_1

    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1858
    :goto_0
    move-object v6, v8

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v7, 0x0

    .line 1859
    .local v7, "$i$f$isNotEmpty":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    move v6, v11

    goto :goto_1

    :cond_2
    move v6, v10

    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v6, :cond_14

    .line 1860
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 1861
    .local v6, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_13

    .line 1862
    move-object v7, v6

    .line 1863
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1864
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_11

    .line 1865
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 334
    .local v12, "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1":I
    move/from16 v13, p1

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v9

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1866
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 1867
    .local v16, "stack$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v10, v17

    .line 1868
    .end local v17    # "node$iv":Ljava/lang/Object;
    .local v10, "node$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v10, :cond_f

    .line 1869
    const/4 v11, 0x3

    move/from16 v19, v0

    .end local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .local v19, "$i$f$visitSubtree-Y-YKmho":I
    const-string v0, "T"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v10, Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1870
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1871
    :cond_3
    move-object/from16 v0, p3

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .local v11, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v20, v13

    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v21, 0x0

    .line 1872
    .local v21, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v20

    if-eqz v22, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 1871
    .end local v11    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v11, :cond_d

    instance-of v11, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_d

    .line 1873
    const/4 v11, 0x0

    .line 1874
    .local v11, "count$iv":I
    move-object/from16 v20, v10

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1875
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1876
    .local v22, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v22, :cond_c

    .line 1877
    move-object/from16 v0, v22

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1878
    .local v23, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v24, v13

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v25, v0

    .local v25, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1872
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v24

    if-eqz v27, :cond_5

    const/16 v24, 0x1

    goto :goto_6

    :cond_5
    const/16 v24, 0x0

    .line 1878
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v25    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v24, :cond_a

    .line 1879
    add-int/lit8 v11, v11, 0x1

    .line 1880
    move/from16 v24, v2

    const/4 v2, 0x1

    .end local v2    # "mask$iv":I
    .local v24, "mask$iv":I
    if-ne v11, v2, :cond_6

    .line 1881
    move-object v10, v0

    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v2, 0x0

    goto :goto_8

    .line 1885
    :cond_6
    move-object/from16 v2, v16

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    .line 1886
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1887
    move/from16 v25, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v25, "$i$f$mutableVectorOf":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv":I
    const/16 v26, 0x0

    .line 1888
    .local v26, "$i$f$MutableVector":I
    move-object/from16 v27, v3

    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v27, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v28, v4

    .end local v4    # "$i$f$visitSubtreeIf":I
    .local v28, "$i$f$visitSubtreeIf":I
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v29, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv":I
    .local v29, "capacity$iv$iv$iv":I
    invoke-direct {v3, v4, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1886
    .end local v26    # "$i$f$MutableVector":I
    .end local v29    # "capacity$iv$iv$iv":I
    nop

    .end local v25    # "$i$f$mutableVectorOf":I
    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_7

    .line 1885
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_7
    move-object/from16 v27, v3

    move/from16 v28, v4

    move-object v3, v2

    const/4 v2, 0x0

    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    :goto_7
    move-object/from16 v16, v3

    .line 1889
    move-object v3, v10

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 1890
    .local v3, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_9

    .line 1891
    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1892
    :cond_8
    const/4 v4, 0x0

    move-object v10, v4

    .line 1894
    :cond_9
    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1878
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .local v2, "mask$iv":I
    .local v3, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_a
    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v2, 0x0

    .line 1897
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    :cond_b
    :goto_8
    nop

    .line 1877
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1898
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v0, p3

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    goto/16 :goto_5

    .line 1900
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_c
    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v2, 0x0

    .line 1901
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v20    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v22    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_e

    .line 1903
    move/from16 v0, v19

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1871
    .end local v11    # "count$iv":I
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_d
    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v2, 0x0

    .line 1906
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    :cond_e
    :goto_9
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v0, v19

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1908
    .end local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .local v0, "$i$f$visitSubtree-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_f
    move/from16 v19, v0

    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v2, 0x0

    .line 335
    .end local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v10    # "node$iv":Ljava/lang/Object;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv":Ljava/lang/Object;
    .restart local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    nop

    .line 1865
    .end local v9    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1":I
    const/16 v18, 0x1

    move/from16 v0, v18

    .line 1909
    .local v0, "diveDeeper$iv":Z
    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    move v10, v2

    move/from16 v0, v19

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    goto/16 :goto_0

    .line 1864
    .end local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .local v0, "$i$f$visitSubtree-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_11
    move/from16 v19, v0

    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    move v2, v10

    move/from16 v18, v11

    .line 1911
    .end local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .restart local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    :goto_a
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v10, v2

    move/from16 v11, v18

    move/from16 v0, v19

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    goto/16 :goto_2

    .line 1863
    .end local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .restart local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_12
    move/from16 v19, v0

    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    move v2, v10

    .end local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .restart local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    goto :goto_b

    .line 1861
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .restart local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_13
    move/from16 v19, v0

    move/from16 v24, v2

    move-object/from16 v27, v3

    move/from16 v28, v4

    move v2, v10

    .line 1914
    .end local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .restart local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v24    # "mask$iv":I
    .restart local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$f$visitSubtreeIf":I
    :goto_b
    invoke-static {v8, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move v10, v2

    move/from16 v0, v19

    move/from16 v2, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    .end local v6    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1916
    .end local v19    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v24    # "mask$iv":I
    .end local v27    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "$i$f$visitSubtreeIf":I
    .restart local v0    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    :cond_14
    nop

    .line 336
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static synthetic visitSubtree-Y-YKmho$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 28
    .param p0, "$this$visitSubtree_u2dY_u2dYKmho_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 328
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .end local p2    # "zOrder":Z
    .local v0, "zOrder":Z
    goto :goto_0

    .line 328
    .end local v0    # "zOrder":Z
    .restart local p2    # "zOrder":Z
    :cond_0
    move/from16 v0, p2

    .end local p2    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    :goto_0
    const/4 v1, 0x0

    .line 333
    .local v1, "$i$f$visitSubtree-Y-YKmho":I
    move v2, v0

    .local v2, "zOrder$iv":Z
    move/from16 v3, p1

    .local v3, "mask$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 1917
    .local v5, "$i$f$visitSubtreeIf":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 1848
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_1

    .line 1849
    const/4 v8, 0x0

    .line 1917
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    nop

    .line 1849
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    const-string/jumbo v8, "visitSubtreeIf called on an unattached node"

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1851
    :cond_1
    nop

    .line 1918
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    const/4 v6, 0x0

    .line 1919
    .local v6, "$i$f$mutableVectorOf":I
    nop

    .line 1920
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv":I
    const/4 v8, 0x0

    .line 1921
    .local v8, "$i$f$MutableVector":I
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v7, [Landroidx/compose/ui/Modifier$Node;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1919
    .end local v7    # "capacity$iv$iv$iv":I
    .end local v8    # "$i$f$MutableVector":I
    nop

    .line 1918
    .end local v6    # "$i$f$mutableVectorOf":I
    nop

    .line 1922
    .local v9, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1923
    .local v6, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v6, :cond_2

    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-static {v9, v7, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1924
    :goto_1
    move-object v7, v9

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 1859
    .local v8, "$i$f$isNotEmpty":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    move v7, v12

    goto :goto_2

    :cond_3
    move v7, v11

    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$isNotEmpty":I
    :goto_2
    if-eqz v7, :cond_15

    .line 1925
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    sub-int/2addr v7, v12

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 1926
    .local v7, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_14

    .line 1927
    move-object v8, v7

    .line 1928
    .local v8, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1929
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v3

    if-eqz v10, :cond_12

    .line 1930
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "it":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 334
    .local v13, "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1":I
    move/from16 v14, p1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v15, v10

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1931
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 1932
    .local v17, "stack$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v11, v18

    .line 1933
    .end local v18    # "node$iv":Ljava/lang/Object;
    .local v11, "node$iv":Ljava/lang/Object;
    :goto_4
    if-eqz v11, :cond_10

    .line 1934
    const/4 v12, 0x3

    move/from16 p5, v0

    .end local v0    # "zOrder":Z
    .local p5, "zOrder":Z
    const-string v0, "T"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v11, Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1935
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x0

    goto/16 :goto_a

    .line 1936
    :cond_4
    move-object/from16 v0, p3

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v18, v14

    .local v18, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v19, 0x0

    .line 1872
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v18

    if-eqz v20, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    .line 1936
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v12, :cond_e

    instance-of v12, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v12, :cond_e

    .line 1941
    const/4 v12, 0x0

    .line 1942
    .local v12, "count$iv":I
    move-object/from16 v18, v11

    check-cast v18, Landroidx/compose/ui/node/DelegatingNode;

    .local v18, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 1943
    .local v19, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1944
    .local v20, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v20, :cond_d

    .line 1945
    move-object/from16 v0, v20

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1946
    .local v21, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v22, v14

    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v23, v0

    .local v23, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1872
    .local v24, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v25

    and-int v25, v25, v22

    if-eqz v25, :cond_6

    const/16 v22, 0x1

    goto :goto_7

    :cond_6
    const/16 v22, 0x0

    .line 1946
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v22, :cond_b

    .line 1947
    add-int/lit8 v12, v12, 0x1

    .line 1948
    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .local v22, "$i$f$visitSubtree-Y-YKmho":I
    if-ne v12, v1, :cond_7

    .line 1949
    move-object v11, v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x0

    goto :goto_9

    .line 1953
    :cond_7
    move-object/from16 v1, v17

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 1954
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1955
    move/from16 v23, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v23, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv":I
    const/16 v24, 0x0

    .line 1956
    .local v24, "$i$f$MutableVector":I
    move/from16 v25, v3

    .end local v3    # "mask$iv":I
    .local v25, "mask$iv":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v26, v4

    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v26, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v4, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv":I
    .local v27, "capacity$iv$iv$iv":I
    invoke-direct {v3, v4, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1954
    .end local v24    # "$i$f$MutableVector":I
    .end local v27    # "capacity$iv$iv$iv":I
    nop

    .end local v23    # "$i$f$mutableVectorOf":I
    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_8

    .line 1953
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_8
    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object v3, v1

    const/4 v1, 0x0

    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    move-object/from16 v17, v3

    .line 1957
    move-object v3, v11

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 1958
    .local v3, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_a

    .line 1959
    move-object/from16 v4, v17

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1960
    :cond_9
    const/4 v4, 0x0

    move-object v11, v4

    .line 1962
    :cond_a
    move-object/from16 v4, v17

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1946
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$i$f$visitSubtree-Y-YKmho":I
    .local v3, "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x0

    .line 1965
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    :goto_9
    nop

    .line 1945
    .end local v0    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1966
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move-object/from16 v0, p3

    move/from16 v1, v22

    move/from16 v3, v25

    move-object/from16 v4, v26

    goto/16 :goto_6

    .line 1968
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x0

    .line 1969
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v18    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v20    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x1

    if-ne v12, v0, :cond_f

    .line 1971
    move/from16 v0, p5

    move/from16 v1, v22

    move/from16 v3, v25

    move-object/from16 v4, v26

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 1936
    .end local v12    # "count$iv":I
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x0

    .line 1974
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    :goto_a
    move-object/from16 v0, v17

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, p5

    move/from16 v1, v22

    move/from16 v3, v25

    move-object/from16 v4, v26

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 1976
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p5    # "zOrder":Z
    .local v0, "zOrder":Z
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x0

    .line 335
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "node$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p5    # "zOrder":Z
    nop

    .line 1930
    .end local v10    # "it":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1":I
    const/4 v0, 0x1

    move v3, v0

    .line 1977
    .local v3, "diveDeeper$iv":Z
    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    move/from16 v0, p5

    move v11, v1

    move/from16 v1, v22

    move/from16 v3, v25

    move-object/from16 v4, v26

    goto/16 :goto_1

    .line 1929
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .local v3, "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_12
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    move v1, v11

    move v0, v12

    .line 1979
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p5    # "zOrder":Z
    :goto_b
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v12, v0

    move v11, v1

    move/from16 v1, v22

    move/from16 v3, v25

    move-object/from16 v4, v26

    move/from16 v0, p5

    goto/16 :goto_3

    .line 1928
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    move v1, v11

    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p5    # "zOrder":Z
    goto :goto_c

    .line 1926
    .end local v8    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_14
    move/from16 p5, v0

    move/from16 v22, v1

    move/from16 v25, v3

    move-object/from16 v26, v4

    move v1, v11

    .line 1982
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v25    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local p5    # "zOrder":Z
    :goto_c
    invoke-static {v9, v7, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move/from16 v0, p5

    move v11, v1

    move/from16 v1, v22

    move/from16 v3, v25

    move-object/from16 v4, v26

    .end local v7    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 1984
    .end local v22    # "$i$f$visitSubtree-Y-YKmho":I
    .end local v25    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtree-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_15
    nop

    .line 336
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .end local v6    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static final visitSubtreeIf(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p0, "$this$visitSubtreeIf"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "mask"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Node;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    .local v0, "$i$f$visitSubtreeIf":I
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 623
    .local v2, "$i$f$checkPrecondition":I
    if-nez v1, :cond_0

    .line 624
    const/4 v3, 0x0

    .line 184
    .local v3, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1":I
    nop

    .line 624
    .end local v3    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1":I
    const-string/jumbo v3, "visitSubtreeIf called on an unattached node"

    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 626
    :cond_0
    nop

    .line 185
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$checkPrecondition":I
    const/4 v1, 0x0

    .line 627
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 628
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv":I
    const/4 v3, 0x0

    .line 629
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 627
    .end local v2    # "capacity$iv$iv":I
    .end local v3    # "$i$f$MutableVector":I
    nop

    .line 185
    .end local v1    # "$i$f$mutableVectorOf":I
    nop

    .line 186
    .local v4, "branches":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 187
    .local v1, "child":Landroidx/compose/ui/Modifier$Node;
    if-nez v1, :cond_1

    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-static {v4, v2, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_2
    :goto_0
    move-object v2, v4

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 630
    .local v3, "$i$f$isNotEmpty":I
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    move v2, v7

    goto :goto_1

    :cond_3
    move v2, v6

    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v2, :cond_6

    .line 189
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 190
    .local v2, "branch":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_5

    .line 191
    move-object v3, v2

    .line 192
    .local v3, "node":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_4

    .line 194
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 195
    .local v5, "diveDeeper":Z
    if-eqz v5, :cond_2

    .line 197
    .end local v5    # "diveDeeper":Z
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_2

    .line 200
    .end local v3    # "node":Landroidx/compose/ui/Modifier$Node;
    :cond_5
    invoke-static {v4, v2, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .end local v2    # "branch":Landroidx/compose/ui/Modifier$Node;
    goto :goto_0

    .line 202
    :cond_6
    return-void
.end method

.method public static final synthetic visitSubtreeIf-Y-YKmho(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V
    .locals 29
    .param p0, "$this$visitSubtreeIf_u2dY_u2dYKmho"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 323
    .local v0, "$i$f$visitSubtreeIf-Y-YKmho":I
    move/from16 v1, p2

    .local v1, "zOrder$iv":Z
    move/from16 v2, p1

    .local v2, "mask$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 1709
    .local v4, "$i$f$visitSubtreeIf":I
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v5

    .local v5, "value$iv$iv":Z
    const/4 v6, 0x0

    .line 1710
    .local v6, "$i$f$checkPrecondition":I
    if-nez v5, :cond_0

    .line 1711
    const/4 v7, 0x0

    .line 1709
    .local v7, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    nop

    .line 1711
    .end local v7    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    const-string/jumbo v7, "visitSubtreeIf called on an unattached node"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1713
    :cond_0
    nop

    .line 1714
    .end local v5    # "value$iv$iv":Z
    .end local v6    # "$i$f$checkPrecondition":I
    const/4 v5, 0x0

    .line 1715
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1716
    const/16 v6, 0x10

    .local v6, "capacity$iv$iv$iv":I
    const/4 v7, 0x0

    .line 1717
    .local v7, "$i$f$MutableVector":I
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v6, [Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1715
    .end local v6    # "capacity$iv$iv$iv":I
    .end local v7    # "$i$f$MutableVector":I
    nop

    .line 1714
    .end local v5    # "$i$f$mutableVectorOf":I
    nop

    .line 1718
    .local v8, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 1719
    .local v5, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v5, :cond_1

    invoke-interface {v3}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1720
    :goto_0
    move-object v6, v8

    .local v6, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v7, 0x0

    .line 1721
    .local v7, "$i$f$isNotEmpty":I
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    move v6, v11

    goto :goto_1

    :cond_2
    move v6, v10

    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v7    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v6, :cond_15

    .line 1722
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 1723
    .local v6, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_14

    .line 1724
    move-object v7, v6

    .line 1725
    .local v7, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1726
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_12

    .line 1727
    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 324
    .local v12, "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtreeIf$2":I
    move/from16 v13, p1

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v9

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1728
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 1729
    .local v16, "stack$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v10, v17

    .line 1730
    .end local v17    # "node$iv":Ljava/lang/Object;
    .local v10, "node$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v10, :cond_10

    .line 1731
    const/4 v11, 0x3

    move/from16 v18, v0

    .end local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .local v18, "$i$f$visitSubtreeIf-Y-YKmho":I
    const-string v0, "T"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v10, Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1732
    move-object v0, v10

    .local v0, "it":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 324
    .local v11, "$i$a$-dispatchForKind-6rFNWt0-DelegatableNodeKt$visitSubtreeIf$2$1":I
    move/from16 v19, v2

    move-object/from16 v2, p3

    .end local v2    # "mask$iv":I
    .local v19, "mask$iv":I
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x0

    goto/16 :goto_a

    .line 1732
    .end local v0    # "it":Ljava/lang/Object;
    .end local v11    # "$i$a$-dispatchForKind-6rFNWt0-DelegatableNodeKt$visitSubtreeIf$2$1":I
    :cond_3
    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1733
    .end local v19    # "mask$iv":I
    .restart local v2    # "mask$iv":I
    :cond_4
    move/from16 v19, v2

    move-object/from16 v2, p3

    .end local v2    # "mask$iv":I
    .restart local v19    # "mask$iv":I
    move-object v0, v10

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v11, v13

    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v20, 0x0

    .line 1734
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v11

    if-eqz v21, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 1733
    .end local v0    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v0, :cond_e

    instance-of v0, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_e

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "count$iv":I
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .local v11, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v20, 0x0

    .line 1737
    .local v20, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1738
    .local v21, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v21, :cond_d

    .line 1739
    move-object/from16 v2, v21

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .local v2, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1740
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v23, v13

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v24, v2

    .local v24, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1734
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v23

    if-eqz v26, :cond_6

    const/16 v23, 0x1

    goto :goto_6

    :cond_6
    const/16 v23, 0x0

    .line 1740
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v24    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v23, :cond_c

    .line 1741
    add-int/lit8 v0, v0, 0x1

    .line 1742
    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v23, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    if-ne v0, v3, :cond_7

    .line 1743
    move-object v10, v2

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v5, 0x0

    goto :goto_8

    .line 1747
    :cond_7
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    .line 1748
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1749
    move/from16 v24, v0

    .end local v0    # "count$iv":I
    .local v24, "count$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v25, 0x0

    .line 1750
    .local v25, "$i$f$MutableVector":I
    move/from16 v26, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v26, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v4

    .end local v4    # "$i$f$visitSubtreeIf":I
    .local v27, "$i$f$visitSubtreeIf":I
    new-array v4, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .local v28, "child$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1748
    .end local v0    # "capacity$iv$iv$iv":I
    .end local v25    # "$i$f$MutableVector":I
    nop

    .end local v26    # "$i$f$mutableVectorOf":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_7

    .line 1747
    .end local v24    # "count$iv":I
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "count$iv":I
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move/from16 v24, v0

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v5, 0x0

    .end local v0    # "count$iv":I
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "count$iv":I
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v16, v3

    .line 1751
    move-object v0, v10

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 1752
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_a

    .line 1753
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1754
    :cond_9
    const/4 v3, 0x0

    move-object v10, v3

    .line 1756
    :cond_a
    move-object/from16 v3, v16

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1759
    .end local v0    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move/from16 v0, v24

    goto :goto_8

    .line 1740
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "count$iv":I
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "count$iv":I
    .local v3, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v5, 0x0

    .line 1759
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    nop

    .line 1739
    .end local v2    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1760
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    move/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_5

    .line 1762
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v5, 0x0

    .line 1763
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v20    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v21    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    .line 1765
    move v11, v3

    move/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v3, v23

    move/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_3

    .line 1733
    .end local v0    # "count$iv":I
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1768
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_f
    :goto_9
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move v11, v3

    move/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v3, v23

    move/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_3

    .line 1770
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v19    # "mask$iv":I
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "$i$f$visitSubtreeIf-Y-YKmho":I
    .local v2, "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_10
    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move v3, v11

    const/4 v5, 0x0

    .line 325
    .end local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "node$iv":Ljava/lang/Object;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v19    # "mask$iv":I
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v17, v3

    .line 1727
    .end local v9    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtreeIf$2":I
    :goto_a
    nop

    .line 1771
    .local v17, "diveDeeper$iv":Z
    if-eqz v17, :cond_11

    goto :goto_b

    :cond_11
    move v10, v5

    move/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v3, v23

    move/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_0

    .line 1726
    .end local v17    # "diveDeeper$iv":Z
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v19    # "mask$iv":I
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_12
    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move v5, v10

    move v3, v11

    .line 1773
    .end local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v19    # "mask$iv":I
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_b
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    move v11, v3

    move v10, v5

    move/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v3, v23

    move/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_2

    .line 1725
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v19    # "mask$iv":I
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move v5, v10

    .end local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v19    # "mask$iv":I
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    goto :goto_c

    .line 1723
    .end local v7    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v19    # "mask$iv":I
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_14
    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v23, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move v5, v10

    .line 1776
    .end local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v19    # "mask$iv":I
    .restart local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    invoke-static {v8, v6, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move v10, v5

    move/from16 v0, v18

    move/from16 v2, v19

    move-object/from16 v3, v23

    move/from16 v4, v27

    move-object/from16 v5, v28

    .end local v6    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1778
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v19    # "mask$iv":I
    .end local v23    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local v28    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v2    # "mask$iv":I
    .restart local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$i$f$visitSubtreeIf":I
    .restart local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_15
    nop

    .line 326
    .end local v1    # "zOrder$iv":Z
    .end local v2    # "mask$iv":I
    .end local v3    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitSubtreeIf":I
    .end local v5    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method

.method public static synthetic visitSubtreeIf-Y-YKmho$default(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 28
    .param p0, "$this$visitSubtreeIf_u2dY_u2dYKmho_u24default"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p2, "zOrder"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;

    .line 318
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    .end local p2    # "zOrder":Z
    .local v0, "zOrder":Z
    goto :goto_0

    .line 318
    .end local v0    # "zOrder":Z
    .restart local p2    # "zOrder":Z
    :cond_0
    move/from16 v0, p2

    .end local p2    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    :goto_0
    const/4 v1, 0x0

    .line 323
    .local v1, "$i$f$visitSubtreeIf-Y-YKmho":I
    move v2, v0

    .local v2, "zOrder$iv":Z
    move/from16 v3, p1

    .local v3, "mask$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 1779
    .local v5, "$i$f$visitSubtreeIf":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv":Z
    const/4 v7, 0x0

    .line 1710
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_1

    .line 1711
    const/4 v8, 0x0

    .line 1779
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    nop

    .line 1711
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv":I
    const-string/jumbo v8, "visitSubtreeIf called on an unattached node"

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1713
    :cond_1
    nop

    .line 1780
    .end local v6    # "value$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    const/4 v6, 0x0

    .line 1781
    .local v6, "$i$f$mutableVectorOf":I
    nop

    .line 1782
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv":I
    const/4 v8, 0x0

    .line 1783
    .local v8, "$i$f$MutableVector":I
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v7, [Landroidx/compose/ui/Modifier$Node;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1781
    .end local v7    # "capacity$iv$iv$iv":I
    .end local v8    # "$i$f$MutableVector":I
    nop

    .line 1780
    .end local v6    # "$i$f$mutableVectorOf":I
    nop

    .line 1784
    .local v9, "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 1785
    .local v6, "child$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v6, :cond_2

    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-static {v9, v7, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1786
    :goto_1
    move-object v7, v9

    .local v7, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 1721
    .local v8, "$i$f$isNotEmpty":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    move v7, v12

    goto :goto_2

    :cond_3
    move v7, v11

    .end local v7    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$isNotEmpty":I
    :goto_2
    if-eqz v7, :cond_16

    .line 1787
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    sub-int/2addr v7, v12

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 1788
    .local v7, "branch$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_15

    .line 1789
    move-object v8, v7

    .line 1790
    .local v8, "node$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1791
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v3

    if-eqz v10, :cond_13

    .line 1792
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .local v10, "node":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 324
    .local v13, "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtreeIf$2":I
    move/from16 v14, p1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v15, v10

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1793
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 1794
    .local v17, "stack$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v11, v18

    .line 1795
    .end local v18    # "node$iv":Ljava/lang/Object;
    .local v11, "node$iv":Ljava/lang/Object;
    :goto_4
    if-eqz v11, :cond_11

    .line 1796
    const/4 v12, 0x3

    move/from16 p5, v0

    .end local v0    # "zOrder":Z
    .local p5, "zOrder":Z
    const-string v0, "T"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v11, Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 1797
    move-object v0, v11

    .local v0, "it":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 324
    .local v12, "$i$a$-dispatchForKind-6rFNWt0-DelegatableNodeKt$visitSubtreeIf$2$1":I
    move/from16 v18, v1

    move-object/from16 v1, p3

    .end local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .local v18, "$i$f$visitSubtreeIf-Y-YKmho":I
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_4

    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1797
    .end local v0    # "it":Ljava/lang/Object;
    .end local v12    # "$i$a$-dispatchForKind-6rFNWt0-DelegatableNodeKt$visitSubtreeIf$2$1":I
    :cond_4
    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1798
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    :cond_5
    move/from16 v18, v1

    move-object/from16 v1, p3

    .end local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    move-object v0, v11

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v12, v14

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/16 v19, 0x0

    .line 1734
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v12

    if-eqz v20, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 1798
    .end local v0    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v0, :cond_f

    instance-of v0, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_f

    .line 1803
    const/4 v0, 0x0

    .line 1804
    .local v0, "count$iv":I
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .local v12, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v19, 0x0

    .line 1805
    .local v19, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1806
    .local v20, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v20, :cond_e

    .line 1807
    move-object/from16 v1, v20

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .local v1, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1808
    .local v21, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move/from16 v22, v14

    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v23, v1

    .local v23, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1734
    .local v24, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v25

    and-int v25, v25, v22

    if-eqz v25, :cond_7

    const/16 v22, 0x1

    goto :goto_7

    :cond_7
    const/16 v22, 0x0

    .line 1808
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v23    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v22, :cond_d

    .line 1809
    add-int/lit8 v0, v0, 0x1

    .line 1810
    move/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "mask$iv":I
    .local v22, "mask$iv":I
    if-ne v0, v3, :cond_8

    .line 1811
    move-object v11, v1

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    goto :goto_9

    .line 1815
    :cond_8
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    .line 1816
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1817
    move/from16 v23, v0

    .end local v0    # "count$iv":I
    .local v23, "count$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v24, 0x0

    .line 1818
    .local v24, "$i$f$MutableVector":I
    move/from16 v25, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v25, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v26, v4

    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v26, "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v4, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$visitSubtreeIf":I
    .local v27, "$i$f$visitSubtreeIf":I
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1816
    .end local v0    # "capacity$iv$iv$iv":I
    .end local v24    # "$i$f$MutableVector":I
    nop

    .end local v25    # "$i$f$mutableVectorOf":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_8

    .line 1815
    .end local v23    # "count$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .local v0, "count$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_9
    move/from16 v23, v0

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    .end local v0    # "count$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .restart local v23    # "count$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    :goto_8
    move-object/from16 v17, v3

    .line 1819
    move-object v0, v11

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 1820
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_b

    .line 1821
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1822
    :cond_a
    const/4 v3, 0x0

    move-object v11, v3

    .line 1824
    :cond_b
    move-object/from16 v3, v17

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1827
    .end local v0    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move/from16 v0, v23

    goto :goto_9

    .line 1808
    .end local v22    # "mask$iv":I
    .end local v23    # "count$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .local v0, "count$iv":I
    .local v3, "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_d
    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    .line 1827
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    :goto_9
    nop

    .line 1807
    .end local v1    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1828
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    move-object/from16 v1, p3

    move/from16 v3, v22

    move-object/from16 v4, v26

    move/from16 v5, v27

    goto/16 :goto_6

    .line 1830
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_e
    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    .line 1831
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .end local v12    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v19    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v20    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    .line 1833
    move/from16 v0, p5

    move v12, v3

    move/from16 v1, v18

    move/from16 v3, v22

    move-object/from16 v4, v26

    move/from16 v5, v27

    goto/16 :goto_4

    .line 1798
    .end local v0    # "count$iv":I
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_f
    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1836
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    :cond_10
    :goto_a
    move-object/from16 v0, v17

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move/from16 v0, p5

    move v12, v3

    move/from16 v1, v18

    move/from16 v3, v22

    move-object/from16 v4, v26

    move/from16 v5, v27

    goto/16 :goto_4

    .line 1838
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local p5    # "zOrder":Z
    .local v0, "zOrder":Z
    .local v1, "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_11
    move/from16 p5, v0

    move/from16 v18, v1

    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    move v3, v12

    const/4 v5, 0x0

    .line 325
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .end local v11    # "node$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local p5    # "zOrder":Z
    move v0, v3

    .line 1792
    .end local v10    # "node":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtreeIf$2":I
    :goto_b
    nop

    .line 1839
    .local v0, "diveDeeper$iv":Z
    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    move/from16 v0, p5

    move v11, v5

    move/from16 v1, v18

    move/from16 v3, v22

    move-object/from16 v4, v26

    move/from16 v5, v27

    goto/16 :goto_1

    .line 1791
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local p5    # "zOrder":Z
    .local v0, "zOrder":Z
    .restart local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_13
    move/from16 p5, v0

    move/from16 v18, v1

    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    move v5, v11

    move v3, v12

    .line 1841
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local p5    # "zOrder":Z
    :goto_c
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v0, p5

    move v12, v3

    move v11, v5

    move/from16 v1, v18

    move/from16 v3, v22

    move-object/from16 v4, v26

    move/from16 v5, v27

    goto/16 :goto_3

    .line 1790
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_14
    move/from16 p5, v0

    move/from16 v18, v1

    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    move v5, v11

    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local p5    # "zOrder":Z
    goto :goto_d

    .line 1788
    .end local v8    # "node$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_15
    move/from16 p5, v0

    move/from16 v18, v1

    move/from16 v22, v3

    move-object/from16 v26, v4

    move/from16 v27, v5

    move v5, v11

    .line 1844
    .end local v0    # "zOrder":Z
    .end local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .restart local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v22    # "mask$iv":I
    .restart local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "$i$f$visitSubtreeIf":I
    .restart local p5    # "zOrder":Z
    :goto_d
    invoke-static {v9, v7, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move/from16 v0, p5

    move v11, v5

    move/from16 v1, v18

    move/from16 v3, v22

    move-object/from16 v4, v26

    move/from16 v5, v27

    .end local v7    # "branch$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 1846
    .end local v18    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .end local v22    # "mask$iv":I
    .end local v26    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "$i$f$visitSubtreeIf":I
    .end local p5    # "zOrder":Z
    .restart local v0    # "zOrder":Z
    .restart local v1    # "$i$f$visitSubtreeIf-Y-YKmho":I
    .restart local v3    # "mask$iv":I
    .restart local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "$i$f$visitSubtreeIf":I
    :cond_16
    nop

    .line 326
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "mask$iv":I
    .end local v4    # "$this$visitSubtreeIf$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitSubtreeIf":I
    .end local v6    # "child$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "branches$iv":Landroidx/compose/runtime/collection/MutableVector;
    return-void
.end method
