.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "FocusOwnerImpl.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusOwnerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 8 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 11 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n+ 12 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 13 ObjectList.kt\nandroidx/collection/ObjectList\n+ 14 NodeKind.kt\nandroidx/compose/ui/node/NodeKind\n*L\n1#1,634:1\n523#1:812\n524#1:832\n526#1:878\n512#1:952\n513#1:1027\n514#1:1033\n515#1,2:1080\n517#1:1128\n518#1:1134\n523#1:1136\n524#1:1156\n526#1:1202\n512#1:1204\n513#1:1279\n514#1:1285\n515#1,2:1332\n517#1:1380\n518#1:1386\n523#1:1388\n524#1:1408\n526#1:1454\n512#1:1456\n513#1:1531\n514#1:1537\n515#1,2:1584\n517#1:1632\n518#1:1638\n523#1:1640\n524#1:1660\n526#1:1706\n523#1:1805\n524#1:1825\n526#1:1871\n120#2:635\n120#2:720\n132#2:811\n132#2:879\n132#2:951\n144#2:1135\n144#2:1203\n136#2:1387\n136#2:1455\n160#2:1639\n160#2:1707\n160#2:1804\n160#2:1872\n120#2:2186\n120#2:2263\n120#2:2350\n132#2:2351\n120#2:2371\n252#3,5:636\n95#3:641\n96#3,8:646\n556#3,6:654\n566#3,2:661\n568#3,8:666\n576#3,9:677\n585#3,8:689\n105#3,7:697\n303#3,5:721\n153#3:726\n154#3:731\n155#3,3:735\n158#3:739\n159#3,9:741\n556#3,5:750\n561#3:760\n566#3,2:762\n568#3,17:767\n585#3,8:787\n168#3,6:795\n256#3:813\n95#3:814\n96#3,8:819\n556#3,5:827\n561#3:833\n566#3,2:835\n568#3,8:840\n576#3,9:851\n585#3,8:863\n105#3,7:871\n297#3:880\n252#3,5:881\n95#3:886\n96#3,8:891\n556#3,5:899\n298#3:904\n561#3:905\n566#3,2:907\n568#3,8:912\n576#3,9:923\n585#3,8:935\n105#3,7:943\n300#3:950\n272#3,6:953\n256#3:959\n95#3:960\n96#3,8:965\n556#3,5:973\n278#3,3:978\n561#3:981\n566#3,2:983\n568#3,8:988\n576#3,9:999\n585#3,8:1011\n105#3,7:1019\n281#3:1026\n556#3,12:1034\n568#3,8:1049\n576#3,9:1060\n585#3,8:1072\n556#3,12:1082\n568#3,8:1097\n576#3,9:1108\n585#3,8:1120\n256#3:1137\n95#3:1138\n96#3,8:1143\n556#3,5:1151\n561#3:1157\n566#3,2:1159\n568#3,8:1164\n576#3,9:1175\n585#3,8:1187\n105#3,7:1195\n272#3,6:1205\n256#3:1211\n95#3:1212\n96#3,8:1217\n556#3,5:1225\n278#3,3:1230\n561#3:1233\n566#3,2:1235\n568#3,8:1240\n576#3,9:1251\n585#3,8:1263\n105#3,7:1271\n281#3:1278\n556#3,12:1286\n568#3,8:1301\n576#3,9:1312\n585#3,8:1324\n556#3,12:1334\n568#3,8:1349\n576#3,9:1360\n585#3,8:1372\n256#3:1389\n95#3:1390\n96#3,8:1395\n556#3,5:1403\n561#3:1409\n566#3,2:1411\n568#3,8:1416\n576#3,9:1427\n585#3,8:1439\n105#3,7:1447\n272#3,6:1457\n256#3:1463\n95#3:1464\n96#3,8:1469\n556#3,5:1477\n278#3,3:1482\n561#3:1485\n566#3,2:1487\n568#3,8:1492\n576#3,9:1503\n585#3,8:1515\n105#3,7:1523\n281#3:1530\n556#3,12:1538\n568#3,8:1553\n576#3,9:1564\n585#3,8:1576\n556#3,12:1586\n568#3,8:1601\n576#3,9:1612\n585#3,8:1624\n256#3:1641\n95#3:1642\n96#3,8:1647\n556#3,5:1655\n561#3:1661\n566#3,2:1663\n568#3,8:1668\n576#3,9:1679\n585#3,8:1691\n105#3,7:1699\n272#3,6:1708\n256#3:1714\n95#3:1715\n96#3,8:1720\n556#3,5:1728\n278#3,3:1733\n561#3:1736\n566#3,2:1738\n568#3,8:1743\n576#3,9:1754\n585#3,8:1766\n105#3,7:1774\n281#3:1781\n256#3:1806\n95#3:1807\n96#3,8:1812\n556#3,5:1820\n561#3:1826\n566#3,2:1828\n568#3,8:1833\n576#3,9:1844\n585#3,8:1856\n105#3,7:1864\n272#3,6:1873\n256#3:1879\n95#3:1880\n96#3,8:1885\n556#3,5:1893\n278#3,3:1898\n561#3:1901\n566#3,2:1903\n568#3,8:1908\n576#3,9:1919\n585#3,8:1931\n105#3,7:1939\n281#3:1946\n272#3,6:1952\n256#3:1958\n95#3:1959\n96#3,8:1964\n556#3,5:1972\n278#3,3:1977\n561#3:1980\n566#3,2:1982\n568#3,8:1987\n576#3,9:1998\n585#3,8:2010\n105#3,7:2018\n281#3:2025\n556#3,6:2031\n566#3,2:2038\n568#3,8:2043\n576#3,9:2054\n585#3,8:2066\n556#3,6:2074\n566#3,2:2081\n568#3,8:2086\n576#3,9:2097\n585#3,8:2109\n256#3:2122\n95#3:2123\n96#3,8:2128\n556#3,6:2136\n566#3,2:2143\n568#3,8:2148\n576#3,9:2159\n585#3,8:2171\n105#3,7:2179\n328#3,6:2187\n184#3:2193\n185#3:2198\n186#3,3:2202\n189#3,6:2206\n334#3:2212\n556#3,6:2213\n566#3,2:2220\n568#3,17:2225\n585#3,8:2245\n335#3:2253\n195#3,8:2254\n336#3:2262\n328#3,6:2264\n184#3:2270\n185#3:2275\n186#3,3:2279\n189#3,6:2283\n334#3:2289\n556#3,6:2290\n566#3,2:2297\n568#3,17:2302\n585#3,8:2322\n335#3:2330\n195#3,8:2331\n336#3:2339\n207#3,8:2353\n215#3,6:2365\n222#3,3:2373\n57#4,4:642\n57#4,4:727\n57#4,4:815\n57#4,4:887\n57#4,4:961\n57#4,4:1139\n57#4,4:1213\n57#4,4:1391\n57#4,4:1465\n57#4,4:1643\n57#4,4:1716\n57#4,4:1808\n57#4,4:1881\n57#4,4:1960\n57#4,4:2124\n57#4,4:2194\n57#4,4:2271\n103#4,4:2346\n57#4,4:2361\n247#5:660\n247#5:761\n247#5:834\n247#5:906\n247#5:982\n247#5:1158\n247#5:1234\n247#5:1410\n247#5:1486\n247#5:1662\n247#5:1737\n247#5:1827\n247#5:1902\n247#5:1981\n247#5:2037\n247#5:2080\n247#5:2142\n247#5:2219\n247#5:2296\n247#5:2372\n240#6,3:663\n243#6,3:686\n240#6,3:764\n243#6,3:784\n240#6,3:837\n243#6,3:860\n240#6,3:909\n243#6,3:932\n240#6,3:985\n243#6,3:1008\n240#6,3:1046\n243#6,3:1069\n240#6,3:1094\n243#6,3:1117\n240#6,3:1161\n243#6,3:1184\n240#6,3:1237\n243#6,3:1260\n240#6,3:1298\n243#6,3:1321\n240#6,3:1346\n243#6,3:1369\n240#6,3:1413\n243#6,3:1436\n240#6,3:1489\n243#6,3:1512\n240#6,3:1550\n243#6,3:1573\n240#6,3:1598\n243#6,3:1621\n240#6,3:1665\n243#6,3:1688\n240#6,3:1740\n243#6,3:1763\n240#6,3:1830\n243#6,3:1853\n240#6,3:1905\n243#6,3:1928\n240#6,3:1984\n243#6,3:2007\n240#6,3:2040\n243#6,3:2063\n240#6,3:2083\n243#6,3:2106\n240#6,3:2145\n243#6,3:2168\n240#6,3:2222\n243#6,3:2242\n240#6,3:2299\n243#6,3:2319\n1107#7:674\n1085#7,2:675\n1107#7:732\n1085#7,2:733\n1107#7:848\n1085#7,2:849\n1107#7:920\n1085#7,2:921\n1107#7:996\n1085#7,2:997\n1107#7:1057\n1085#7,2:1058\n1107#7:1105\n1085#7,2:1106\n1107#7:1172\n1085#7,2:1173\n1107#7:1248\n1085#7,2:1249\n1107#7:1309\n1085#7,2:1310\n1107#7:1357\n1085#7,2:1358\n1107#7:1424\n1085#7,2:1425\n1107#7:1500\n1085#7,2:1501\n1107#7:1561\n1085#7,2:1562\n1107#7:1609\n1085#7,2:1610\n1107#7:1676\n1085#7,2:1677\n1107#7:1751\n1085#7,2:1752\n1107#7:1841\n1085#7,2:1842\n1107#7:1916\n1085#7,2:1917\n1107#7:1995\n1085#7,2:1996\n1107#7:2051\n1085#7,2:2052\n1107#7:2094\n1085#7,2:2095\n1107#7:2156\n1085#7,2:2157\n1107#7:2199\n1085#7,2:2200\n1107#7:2276\n1085#7,2:2277\n272#8:704\n273#8,2:706\n275#8,5:709\n280#8:719\n281#8,5:755\n286#8:801\n287#8:805\n1#9:705\n1#9:2376\n516#10:708\n424#10,5:714\n519#10:738\n44#10:740\n429#10,3:802\n519#10:2205\n519#10:2282\n27#11,5:806\n53#12,5:1028\n35#12,5:1129\n53#12,5:1280\n35#12,5:1381\n53#12,5:1532\n35#12,5:1633\n53#12,5:1782\n35#12,5:1787\n53#12,5:1792\n103#12:1797\n35#12,5:1798\n104#12:1803\n35#12,5:1947\n53#12,5:2026\n35#12,5:2117\n287#13,6:2340\n56#14:2352\n*S KotlinDebug\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n*L\n378#1:812\n378#1:832\n378#1:878\n381#1:952\n381#1:1027\n381#1:1033\n381#1:1080,2\n381#1:1128\n381#1:1134\n404#1:1136\n404#1:1156\n404#1:1202\n406#1:1204\n406#1:1279\n406#1:1285\n406#1:1332,2\n406#1:1380\n406#1:1386\n429#1:1388\n429#1:1408\n429#1:1454\n431#1:1456\n431#1:1531\n431#1:1537\n431#1:1584,2\n431#1:1632\n431#1:1638\n451#1:1640\n451#1:1660\n451#1:1706\n479#1:1805\n479#1:1825\n479#1:1871\n241#1:635\n349#1:720\n378#1:811\n379#1:879\n382#1:951\n404#1:1135\n407#1:1203\n429#1:1387\n432#1:1455\n451#1:1639\n454#1:1707\n479#1:1804\n482#1:1872\n537#1:2186\n548#1:2263\n591#1:2350\n591#1:2351\n592#1:2371\n241#1:636,5\n241#1:641\n241#1:646,8\n241#1:654,6\n241#1:661,2\n241#1:666,8\n241#1:677,9\n241#1:689,8\n241#1:697,7\n349#1:721,5\n349#1:726\n349#1:731\n349#1:735,3\n349#1:739\n349#1:741,9\n349#1:750,5\n349#1:760\n349#1:762,2\n349#1:767,17\n349#1:787,8\n349#1:795,6\n378#1:813\n378#1:814\n378#1:819,8\n378#1:827,5\n378#1:833\n378#1:835,2\n378#1:840,8\n378#1:851,9\n378#1:863,8\n378#1:871,7\n379#1:880\n379#1:881,5\n379#1:886\n379#1:891,8\n379#1:899,5\n379#1:904\n379#1:905\n379#1:907,2\n379#1:912,8\n379#1:923,9\n379#1:935,8\n379#1:943,7\n379#1:950\n381#1:953,6\n381#1:959\n381#1:960\n381#1:965,8\n381#1:973,5\n381#1:978,3\n381#1:981\n381#1:983,2\n381#1:988,8\n381#1:999,9\n381#1:1011,8\n381#1:1019,7\n381#1:1026\n381#1:1034,12\n381#1:1049,8\n381#1:1060,9\n381#1:1072,8\n381#1:1082,12\n381#1:1097,8\n381#1:1108,9\n381#1:1120,8\n404#1:1137\n404#1:1138\n404#1:1143,8\n404#1:1151,5\n404#1:1157\n404#1:1159,2\n404#1:1164,8\n404#1:1175,9\n404#1:1187,8\n404#1:1195,7\n406#1:1205,6\n406#1:1211\n406#1:1212\n406#1:1217,8\n406#1:1225,5\n406#1:1230,3\n406#1:1233\n406#1:1235,2\n406#1:1240,8\n406#1:1251,9\n406#1:1263,8\n406#1:1271,7\n406#1:1278\n406#1:1286,12\n406#1:1301,8\n406#1:1312,9\n406#1:1324,8\n406#1:1334,12\n406#1:1349,8\n406#1:1360,9\n406#1:1372,8\n429#1:1389\n429#1:1390\n429#1:1395,8\n429#1:1403,5\n429#1:1409\n429#1:1411,2\n429#1:1416,8\n429#1:1427,9\n429#1:1439,8\n429#1:1447,7\n431#1:1457,6\n431#1:1463\n431#1:1464\n431#1:1469,8\n431#1:1477,5\n431#1:1482,3\n431#1:1485\n431#1:1487,2\n431#1:1492,8\n431#1:1503,9\n431#1:1515,8\n431#1:1523,7\n431#1:1530\n431#1:1538,12\n431#1:1553,8\n431#1:1564,9\n431#1:1576,8\n431#1:1586,12\n431#1:1601,8\n431#1:1612,9\n431#1:1624,8\n451#1:1641\n451#1:1642\n451#1:1647,8\n451#1:1655,5\n451#1:1661\n451#1:1663,2\n451#1:1668,8\n451#1:1679,9\n451#1:1691,8\n451#1:1699,7\n454#1:1708,6\n454#1:1714\n454#1:1715\n454#1:1720,8\n454#1:1728,5\n454#1:1733,3\n454#1:1736\n454#1:1738,2\n454#1:1743,8\n454#1:1754,9\n454#1:1766,8\n454#1:1774,7\n454#1:1781\n479#1:1806\n479#1:1807\n479#1:1812,8\n479#1:1820,5\n479#1:1826\n479#1:1828,2\n479#1:1833,8\n479#1:1844,9\n479#1:1856,8\n479#1:1864,7\n482#1:1873,6\n482#1:1879\n482#1:1880\n482#1:1885,8\n482#1:1893,5\n482#1:1898,3\n482#1:1901\n482#1:1903,2\n482#1:1908,8\n482#1:1919,9\n482#1:1931,8\n482#1:1939,7\n482#1:1946\n512#1:1952,6\n512#1:1958\n512#1:1959\n512#1:1964,8\n512#1:1972,5\n512#1:1977,3\n512#1:1980\n512#1:1982,2\n512#1:1987,8\n512#1:1998,9\n512#1:2010,8\n512#1:2018,7\n512#1:2025\n514#1:2031,6\n514#1:2038,2\n514#1:2043,8\n514#1:2054,9\n514#1:2066,8\n516#1:2074,6\n516#1:2081,2\n516#1:2086,8\n516#1:2097,9\n516#1:2109,8\n523#1:2122\n523#1:2123\n523#1:2128,8\n523#1:2136,6\n523#1:2143,2\n523#1:2148,8\n523#1:2159,9\n523#1:2171,8\n523#1:2179,7\n537#1:2187,6\n537#1:2193\n537#1:2198\n537#1:2202,3\n537#1:2206,6\n537#1:2212\n537#1:2213,6\n537#1:2220,2\n537#1:2225,17\n537#1:2245,8\n537#1:2253\n537#1:2254,8\n537#1:2262\n548#1:2264,6\n548#1:2270\n548#1:2275\n548#1:2279,3\n548#1:2283,6\n548#1:2289\n548#1:2290,6\n548#1:2297,2\n548#1:2302,17\n548#1:2322,8\n548#1:2330\n548#1:2331,8\n548#1:2339\n591#1:2353,8\n591#1:2365,6\n591#1:2373,3\n241#1:642,4\n349#1:727,4\n378#1:815,4\n379#1:887,4\n381#1:961,4\n404#1:1139,4\n406#1:1213,4\n429#1:1391,4\n431#1:1465,4\n451#1:1643,4\n454#1:1716,4\n479#1:1808,4\n482#1:1881,4\n512#1:1960,4\n523#1:2124,4\n537#1:2194,4\n548#1:2271,4\n583#1:2346,4\n591#1:2361,4\n241#1:660\n349#1:761\n378#1:834\n379#1:906\n381#1:982\n404#1:1158\n406#1:1234\n429#1:1410\n431#1:1486\n451#1:1662\n454#1:1737\n479#1:1827\n482#1:1902\n512#1:1981\n514#1:2037\n516#1:2080\n523#1:2142\n537#1:2219\n548#1:2296\n592#1:2372\n241#1:663,3\n241#1:686,3\n349#1:764,3\n349#1:784,3\n378#1:837,3\n378#1:860,3\n379#1:909,3\n379#1:932,3\n381#1:985,3\n381#1:1008,3\n381#1:1046,3\n381#1:1069,3\n381#1:1094,3\n381#1:1117,3\n404#1:1161,3\n404#1:1184,3\n406#1:1237,3\n406#1:1260,3\n406#1:1298,3\n406#1:1321,3\n406#1:1346,3\n406#1:1369,3\n429#1:1413,3\n429#1:1436,3\n431#1:1489,3\n431#1:1512,3\n431#1:1550,3\n431#1:1573,3\n431#1:1598,3\n431#1:1621,3\n451#1:1665,3\n451#1:1688,3\n454#1:1740,3\n454#1:1763,3\n479#1:1830,3\n479#1:1853,3\n482#1:1905,3\n482#1:1928,3\n512#1:1984,3\n512#1:2007,3\n514#1:2040,3\n514#1:2063,3\n516#1:2083,3\n516#1:2106,3\n523#1:2145,3\n523#1:2168,3\n537#1:2222,3\n537#1:2242,3\n548#1:2299,3\n548#1:2319,3\n241#1:674\n241#1:675,2\n349#1:732\n349#1:733,2\n378#1:848\n378#1:849,2\n379#1:920\n379#1:921,2\n381#1:996\n381#1:997,2\n381#1:1057\n381#1:1058,2\n381#1:1105\n381#1:1106,2\n404#1:1172\n404#1:1173,2\n406#1:1248\n406#1:1249,2\n406#1:1309\n406#1:1310,2\n406#1:1357\n406#1:1358,2\n429#1:1424\n429#1:1425,2\n431#1:1500\n431#1:1501,2\n431#1:1561\n431#1:1562,2\n431#1:1609\n431#1:1610,2\n451#1:1676\n451#1:1677,2\n454#1:1751\n454#1:1752,2\n479#1:1841\n479#1:1842,2\n482#1:1916\n482#1:1917,2\n512#1:1995\n512#1:1996,2\n514#1:2051\n514#1:2052,2\n516#1:2094\n516#1:2095,2\n523#1:2156\n523#1:2157,2\n537#1:2199\n537#1:2200,2\n548#1:2276\n548#1:2277,2\n349#1:704\n349#1:706,2\n349#1:709,5\n349#1:719\n349#1:755,5\n349#1:801\n349#1:805\n349#1:705\n349#1:708\n349#1:714,5\n349#1:738\n349#1:740\n349#1:802,3\n537#1:2205\n548#1:2282\n367#1:806,5\n381#1:1028,5\n381#1:1129,5\n406#1:1280,5\n406#1:1381,5\n431#1:1532,5\n431#1:1633,5\n457#1:1782,5\n464#1:1787,5\n467#1:1792,5\n473#1:1797\n473#1:1798,5\n473#1:1803\n486#1:1947,5\n513#1:2026,5\n517#1:2117,5\n577#1:2340,6\n591#1:2352\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0002\u0008\u001aJ!\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020!H\u0016J\u0010\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020\u0015H\u0016J/\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010(\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001a\u0010#\u001a\u00020\u00152\u0008\u0008\u0002\u0010+\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u0015H\u0002J\u0017\u0010,\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008-\u0010*J\u001f\u0010,\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008/\u00100J7\u00101\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u00102\u001a\u0004\u0018\u00010\u00192\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001504H\u0016\u00a2\u0006\u0004\u00085\u00106J%\u00107\u001a\u00020\u00152\u0006\u00108\u001a\u0002092\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00150;H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010>\u001a\u00020\u00152\u0006\u00108\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u001e\u0010A\u001a\u00020\u00152\u0006\u0010B\u001a\u00020C2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00150;H\u0016J\u0010\u0010D\u001a\u00020\u00152\u0006\u0010B\u001a\u00020EH\u0016J\u0008\u0010F\u001a\u00020!H\u0016J\u0008\u0010G\u001a\u00020!H\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020\tH\u0016J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020JH\u0016J\u0008\u0010K\u001a\u00020!H\u0016Jd\u0010L\u001a\u00020!\"\n\u0008\u0000\u0010M\u0018\u0001*\u00020N*\u00020N2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HM0P2\u0012\u0010Q\u001a\u000e\u0012\u0004\u0012\u0002HM\u0012\u0004\u0012\u00020!042\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020!0;2\u0012\u0010S\u001a\u000e\u0012\u0004\u0012\u0002HM\u0012\u0004\u0012\u00020!04H\u0082\u0008\u00a2\u0006\u0004\u0008T\u0010UJ0\u0010V\u001a\u0004\u0018\u0001HM\"\n\u0008\u0000\u0010M\u0018\u0001*\u00020W*\u00020N2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HM0PH\u0082\u0008\u00a2\u0006\u0004\u0008X\u0010YJ\n\u0010Z\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010[\u001a\u00020\u0015H\u0016J\u0008\u0010\\\u001a\u00020\u0015H\u0016J\n\u0010]\u001a\u0004\u0018\u00010\tH\u0002J\u000e\u0010o\u001a\u0004\u0018\u00010p*\u00020NH\u0002J\u0017\u0010q\u001a\u00020\u00152\u0006\u00108\u001a\u000209H\u0002\u00a2\u0006\u0004\u0008r\u0010@R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010^\u001a\u00020_8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010aR\u001a\u0010b\u001a\u0008\u0012\u0004\u0012\u00020d0cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010fR*\u0010h\u001a\u0004\u0018\u00010\t2\u0008\u0010g\u001a\u0004\u0018\u00010\t8V@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010\u000b\"\u0004\u0008j\u0010\rR$\u0010k\u001a\u00020\u00152\u0006\u0010g\u001a\u00020\u0015@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010n\u00a8\u0006s"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusOwnerImpl;",
        "Landroidx/compose/ui/focus/FocusOwner;",
        "platformFocusOwner",
        "Landroidx/compose/ui/focus/PlatformFocusOwner;",
        "owner",
        "Landroidx/compose/ui/node/Owner;",
        "<init>",
        "(Landroidx/compose/ui/focus/PlatformFocusOwner;Landroidx/compose/ui/node/Owner;)V",
        "rootFocusNode",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "getRootFocusNode$ui",
        "()Landroidx/compose/ui/focus/FocusTargetNode;",
        "setRootFocusNode$ui",
        "(Landroidx/compose/ui/focus/FocusTargetNode;)V",
        "focusInvalidationManager",
        "Landroidx/compose/ui/focus/FocusInvalidationManager;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "requestOwnerFocus",
        "",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "previouslyFocusedRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "requestOwnerFocus-7o62pno",
        "keysCurrentlyDown",
        "Landroidx/collection/MutableLongSet;",
        "takeFocus",
        "takeFocus-aToIllA",
        "(ILandroidx/compose/ui/geometry/Rect;)Z",
        "releaseFocus",
        "",
        "clearOwnerFocus",
        "clearFocus",
        "force",
        "refreshFocusEvents",
        "clearFocus-I7lrPNg",
        "(ZZZI)Z",
        "resetFocus",
        "resetFocus-3ESFkO8",
        "(I)Z",
        "forced",
        "moveFocus",
        "moveFocus-3ESFkO8",
        "wrapAroundForOneDimensionalFocus",
        "moveFocus-aToIllA",
        "(IZ)Z",
        "focusSearch",
        "focusedRect",
        "onFound",
        "Lkotlin/Function1;",
        "focusSearch-ULY8qGw",
        "(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;",
        "dispatchKeyEvent",
        "keyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "onFocusedItem",
        "Lkotlin/Function0;",
        "dispatchKeyEvent-YhN2O0w",
        "(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z",
        "dispatchInterceptedSoftKeyboardEvent",
        "dispatchInterceptedSoftKeyboardEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "dispatchRotaryEvent",
        "event",
        "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
        "dispatchIndirectPointerEvent",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;",
        "dispatchIndirectPointerCancel",
        "focusTargetAvailable",
        "scheduleInvalidation",
        "node",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "scheduleInvalidationForOwner",
        "traverseAncestorsIncludingSelf",
        "T",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "onPreVisit",
        "onVisit",
        "onPostVisit",
        "traverseAncestorsIncludingSelf-QFhIj7k",
        "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "nearestAncestorIncludingSelf",
        "",
        "nearestAncestorIncludingSelf-64DMado",
        "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;",
        "getFocusRect",
        "hasFocusableContent",
        "hasNonInteropFocusableContent",
        "findFocusTargetNode",
        "rootState",
        "Landroidx/compose/ui/focus/FocusState;",
        "getRootState",
        "()Landroidx/compose/ui/focus/FocusState;",
        "listeners",
        "Landroidx/collection/MutableObjectList;",
        "Landroidx/compose/ui/focus/FocusListener;",
        "getListeners",
        "()Landroidx/collection/MutableObjectList;",
        "value",
        "activeFocusTargetNode",
        "getActiveFocusTargetNode",
        "setActiveFocusTargetNode",
        "isFocusCaptured",
        "()Z",
        "setFocusCaptured",
        "(Z)V",
        "lastLocalKeyInputNode",
        "Landroidx/compose/ui/Modifier$Node;",
        "validateKeyEvent",
        "validateKeyEvent-ZmokQxo",
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


# instance fields
.field private activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

.field private final focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field private isFocusCaptured:Z

.field private keysCurrentlyDown:Landroidx/collection/MutableLongSet;

.field private final listeners:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/ui/focus/FocusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final owner:Landroidx/compose/ui/node/Owner;

.field private final platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

.field private rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/PlatformFocusOwner;Landroidx/compose/ui/node/Owner;)V
    .locals 7
    .param p1, "platformFocusOwner"    # Landroidx/compose/ui/focus/PlatformFocusOwner;
    .param p2, "owner"    # Landroidx/compose/ui/node/Owner;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    .line 72
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->owner:Landroidx/compose/ui/node/Owner;

    .line 76
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode;

    sget-object v1, Landroidx/compose/ui/focus/Focusability;->Companion:Landroidx/compose/ui/focus/Focusability$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/Focusability$Companion;->getNever-LCbbffg()I

    move-result v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 78
    new-instance v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusOwner;

    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->owner:Landroidx/compose/ui/node/Owner;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Landroidx/compose/ui/focus/FocusOwner;Landroidx/compose/ui/node/Owner;)V

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 86
    new-instance v0, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    .line 568
    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->listeners:Landroidx/collection/MutableObjectList;

    .line 70
    return-void
.end method

.method private final clearFocus(ZZ)Z
    .locals 34
    .param p1, "forced"    # Z
    .param p2, "refreshFocusEvents"    # Z

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 231
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->isFocusCaptured()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 232
    return v2

    .line 234
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    .line 235
    .local v0, "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 236
    if-eqz p2, :cond_16

    if-eqz v0, :cond_16

    .line 237
    nop

    .line 238
    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusOwnerImpl;->isFocusCaptured()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    goto :goto_0

    :cond_2
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    :goto_0
    check-cast v5, Landroidx/compose/ui/focus/FocusState;

    .line 239
    sget-object v6, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v6, Landroidx/compose/ui/focus/FocusState;

    .line 237
    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 241
    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v6, 0x0

    .line 635
    .local v6, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v7, 0x400

    invoke-static {v7}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 241
    .end local v6    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 636
    .local v5, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 638
    const/4 v7, 0x0

    .line 636
    .local v7, "includeSelf$iv":Z
    const/4 v8, 0x0

    .line 640
    .local v8, "$i$f$visitAncestors-Y-YKmho":I
    move v9, v7

    .local v9, "includeSelf$iv$iv":Z
    move-object v10, v5

    .local v10, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v11, v6

    .local v11, "mask$iv$iv":I
    const/4 v12, 0x0

    .line 641
    .local v12, "$i$f$visitAncestors":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v13

    .local v13, "value$iv$iv$iv":Z
    const/4 v14, 0x0

    .line 642
    .local v14, "$i$f$checkPrecondition":I
    if-nez v13, :cond_3

    .line 643
    const/4 v15, 0x0

    .line 641
    .local v15, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 643
    .end local v15    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v15, "visitAncestors called on an unattached node"

    invoke-static {v15}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 645
    :cond_3
    nop

    .line 646
    .end local v13    # "value$iv$iv$iv":Z
    .end local v14    # "$i$f$checkPrecondition":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 647
    .local v13, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v14

    .line 648
    .local v14, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v14, :cond_15

    .line 649
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 650
    .local v15, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v16

    and-int v16, v16, v11

    if-eqz v16, :cond_13

    .line 651
    :goto_2
    if-eqz v13, :cond_12

    .line 652
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v11

    if-eqz v16, :cond_11

    .line 653
    move-object/from16 v16, v13

    .local v16, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 640
    .local v17, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move/from16 v18, v6

    .local v18, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v19, v16

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 654
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 655
    .local v21, "stack$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v3, v22

    .line 656
    .end local v22    # "node$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v3, :cond_10

    .line 657
    instance-of v2, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v2, :cond_4

    .line 658
    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v2, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v23, 0x0

    .line 242
    .local v23, "$i$a$-visitAncestors-Y-YKmho$default-FocusOwnerImpl$clearFocus$1":I
    sget-object v24, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    move-object/from16 v1, v24

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    sget-object v24, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    move-object/from16 v26, v0

    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v26, "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object/from16 v0, v24

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 243
    nop

    .line 658
    .end local v2    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v23    # "$i$a$-visitAncestors-Y-YKmho$default-FocusOwnerImpl$clearFocus$1":I
    move-object/from16 v33, v3

    const/4 v3, 0x0

    goto/16 :goto_a

    .line 659
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_4
    move-object/from16 v26, v0

    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    move/from16 v0, v18

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v3

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 660
    .local v2, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v0

    if-eqz v23, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 659
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v0, :cond_e

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_e

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "count$iv$iv":I
    move-object v1, v3

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v2, 0x0

    .line 663
    .local v2, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 664
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v23, :cond_d

    .line 665
    move-object/from16 v24, v23

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 666
    .local v27, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v28, v18

    .local v28, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v29, v24

    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 660
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v28

    if-eqz v31, :cond_6

    const/16 v28, 0x1

    goto :goto_6

    :cond_6
    const/16 v28, 0x0

    .line 666
    .end local v28    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v28, :cond_c

    .line 667
    add-int/lit8 v0, v0, 0x1

    .line 668
    move-object/from16 v28, v1

    const/4 v1, 0x1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_7

    .line 669
    move-object/from16 v3, v24

    move/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v2, v24

    const/4 v3, 0x0

    goto :goto_9

    .line 673
    :cond_7
    if-nez v21, :cond_8

    const/4 v1, 0x0

    .line 674
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 675
    move/from16 v29, v0

    .end local v0    # "count$iv$iv":I
    .local v29, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v30, 0x0

    .line 676
    .local v30, "$i$f$MutableVector":I
    move/from16 v31, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v31, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v32, v2

    .end local v2    # "$i$f$forEachImmediateDelegate$ui":I
    .local v32, "$i$f$forEachImmediateDelegate$ui":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v33, v3

    const/4 v3, 0x0

    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .local v33, "node$iv$iv":Ljava/lang/Object;
    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 674
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v30    # "$i$f$MutableVector":I
    goto :goto_7

    .line 673
    .end local v29    # "count$iv$iv":I
    .end local v31    # "$i$f$mutableVectorOf":I
    .end local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv":I
    .restart local v2    # "$i$f$forEachImmediateDelegate$ui":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_8
    move/from16 v29, v0

    move/from16 v32, v2

    move-object/from16 v33, v3

    const/4 v3, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v2    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v29    # "count$iv$iv":I
    .restart local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .restart local v33    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v21

    :goto_7
    nop

    .line 677
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v33

    .line 678
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_a

    .line 679
    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v33, v2

    .line 682
    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v2, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object/from16 v2, v24

    .line 685
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v21, v1

    move/from16 v0, v29

    goto :goto_9

    .line 666
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v29    # "count$iv$iv":I
    .end local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv":I
    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "$i$f$forEachImmediateDelegate$ui":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v28, v1

    move/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v2, v24

    const/4 v3, 0x0

    .line 685
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .restart local v33    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 665
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 686
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move-object/from16 v1, v28

    move/from16 v2, v32

    move-object/from16 v3, v33

    goto :goto_5

    .line 688
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "$i$f$forEachImmediateDelegate$ui":I
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_d
    move-object/from16 v28, v1

    move/from16 v32, v2

    move-object/from16 v33, v3

    const/4 v3, 0x0

    .line 689
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v2    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v33    # "node$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 691
    move v2, v3

    move-object/from16 v0, v26

    move-object/from16 v3, v33

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 659
    .end local v0    # "count$iv$iv":I
    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_e
    move-object/from16 v33, v3

    const/4 v3, 0x0

    .line 694
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .restart local v33    # "node$iv$iv":Ljava/lang/Object;
    :cond_f
    :goto_a
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move v2, v3

    const/4 v1, 0x1

    move-object v3, v0

    move-object/from16 v0, v26

    .end local v33    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    goto/16 :goto_3

    .line 696
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v0, "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "node$iv$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v26, v0

    move-object/from16 v33, v3

    move v3, v2

    .line 640
    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v3    # "node$iv$iv":Ljava/lang/Object;
    .end local v18    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    nop

    .line 653
    .end local v16    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_b

    .line 652
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_11
    move-object/from16 v26, v0

    move v3, v2

    .line 697
    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v2, v3

    move-object/from16 v0, v26

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 651
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_12
    move-object/from16 v26, v0

    move v3, v2

    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_c

    .line 650
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_13
    move-object/from16 v26, v0

    move v3, v2

    .line 700
    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_c
    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v14

    .line 701
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :goto_d
    move-object v13, v0

    move v2, v3

    move-object/from16 v0, v26

    const/4 v1, 0x1

    const/4 v3, 0x0

    .end local v15    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 703
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_15
    move-object/from16 v26, v0

    .line 640
    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v9    # "includeSelf$iv$iv":Z
    .end local v10    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "mask$iv$iv":I
    .end local v12    # "$i$f$visitAncestors":I
    .end local v13    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_e

    .line 236
    .end local v5    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v7    # "includeSelf$iv":Z
    .end local v8    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_16
    move-object/from16 v26, v0

    .line 245
    .end local v0    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v26    # "previousActiveFocusTargetNode":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_e
    const/16 v25, 0x1

    return v25
.end method

.method static synthetic clearFocus$default(Landroidx/compose/ui/focus/FocusOwnerImpl;ZZILjava/lang/Object;)Z
    .locals 0

    .line 229
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(ZZ)Z

    move-result p0

    return p0
.end method

.method private final findFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    .line 562
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    return-object v0
.end method

.method private final lastLocalKeyInputNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;
    .locals 17
    .param p1, "$this$lastLocalKeyInputNode"    # Landroidx/compose/ui/node/DelegatableNode;

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "focusedKeyInputNode":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2350
    .local v1, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 591
    .end local v1    # "$i$f$getFocusTarget-OLwlOKw":I
    const/4 v3, 0x0

    .line 2351
    .local v3, "$i$f$getKeyInput-OLwlOKw":I
    const/16 v4, 0x2000

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 591
    .end local v3    # "$i$f$getKeyInput-OLwlOKw":I
    nop

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-this$0$iv":I
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-other$0$iv":I
    const/4 v4, 0x0

    .line 2352
    .local v4, "$i$f$or-H91voCI":I
    or-int/2addr v1, v3

    .line 591
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-this$0$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-other$0$iv":I
    .end local v4    # "$i$f$or-H91voCI":I
    nop

    .local v1, "mask$iv":I
    move-object/from16 v3, p1

    .local v3, "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x0

    .line 2353
    .local v4, "$i$f$visitLocalDescendants":I
    const/4 v5, 0x0

    .local v5, "includeSelf$iv$iv":Z
    move-object v6, v3

    .local v6, "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v7, v1

    .local v7, "mask$iv$iv":I
    const/4 v8, 0x0

    .line 2360
    .local v8, "$i$f$visitLocalDescendants":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    .local v9, "value$iv$iv$iv":Z
    const/4 v10, 0x0

    .line 2361
    .local v10, "$i$f$checkPrecondition":I
    if-nez v9, :cond_0

    .line 2362
    const/4 v11, 0x0

    .line 2360
    .local v11, "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    nop

    .line 2362
    .end local v11    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitLocalDescendants$1$iv$iv":I
    const-string/jumbo v11, "visitLocalDescendants called on an unattached node"

    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2364
    :cond_0
    nop

    .line 2365
    .end local v9    # "value$iv$iv$iv":Z
    .end local v10    # "$i$f$checkPrecondition":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 2366
    .local v9, "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v7

    if-eqz v10, :cond_5

    .line 2367
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 2368
    .local v10, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_4

    .line 2369
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_3

    .line 2370
    move-object v11, v10

    .local v11, "modifierNode":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 592
    .local v12, "$i$a$-visitLocalDescendants-FocusOwnerImpl$lastLocalKeyInputNode$1":I
    const/4 v13, 0x0

    .line 2371
    .local v13, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v13

    .line 592
    .end local v13    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v14, v11

    .local v14, "this_$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 2372
    .local v15, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v13

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 592
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v14    # "this_$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v16, :cond_2

    return-object v0

    .line 594
    :cond_2
    move-object v0, v11

    .line 595
    nop

    .line 2370
    .end local v11    # "modifierNode":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitLocalDescendants-FocusOwnerImpl$lastLocalKeyInputNode$1":I
    nop

    .line 2373
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_0

    .line 2375
    :cond_4
    nop

    .line 2353
    .end local v5    # "includeSelf$iv$iv":Z
    .end local v6    # "$this$visitLocalDescendants$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$i$f$visitLocalDescendants":I
    .end local v9    # "self$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_5
    nop

    .line 596
    .end local v1    # "mask$iv":I
    .end local v3    # "$this$visitLocalDescendants$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$i$f$visitLocalDescendants":I
    return-object v0
.end method

.method private final synthetic nearestAncestorIncludingSelf-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;
    .locals 32
    .param p1, "$this$nearestAncestorIncludingSelf_u2d64DMado"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
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

    .line 523
    .local v0, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v1, 0x1

    .local v1, "includeSelf$iv":Z
    move-object/from16 v2, p1

    .local v2, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v3, p2

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 2122
    .local v4, "$i$f$visitAncestors-Y-YKmho":I
    move v5, v1

    .local v5, "includeSelf$iv$iv":Z
    move-object v6, v2

    .local v6, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v7, v3

    .local v7, "mask$iv$iv":I
    const/4 v8, 0x0

    .line 2123
    .local v8, "$i$f$visitAncestors":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    .local v9, "value$iv$iv$iv":Z
    const/4 v10, 0x0

    .line 2124
    .local v10, "$i$f$checkPrecondition":I
    if-nez v9, :cond_0

    .line 2125
    const/4 v11, 0x0

    .line 2123
    .local v11, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 2125
    .end local v11    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v11, "visitAncestors called on an unattached node"

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2127
    :cond_0
    nop

    .line 2128
    .end local v9    # "value$iv$iv$iv":Z
    .end local v10    # "$i$f$checkPrecondition":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 2129
    .local v9, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    .line 2130
    .local v10, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v10, :cond_12

    .line 2131
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 2132
    .local v12, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_10

    .line 2133
    :goto_1
    if-eqz v9, :cond_f

    .line 2134
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_e

    .line 2135
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 2122
    .local v14, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move v15, v3

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 2136
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 2137
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v11, v19

    const/16 v19, 0x0

    .line 2138
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v11, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v11, :cond_d

    .line 2139
    move/from16 v20, v0

    .end local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .local v20, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v0, 0x3

    move/from16 v21, v1

    .end local v1    # "includeSelf$iv":Z
    .local v21, "includeSelf$iv":Z
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, v11, Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2140
    move-object v0, v11

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 524
    .local v1, "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1":I
    return-object v0

    .line 2141
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1":I
    :cond_1
    move-object v0, v11

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v1, v15

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    const/16 v22, 0x0

    .line 2142
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

    .line 2141
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    .end local v24    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3
    if-eqz v1, :cond_b

    instance-of v1, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    .line 2143
    const/4 v1, 0x0

    .line 2144
    .local v1, "count$iv$iv":I
    move-object/from16 v22, v11

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 2145
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 2146
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v24, :cond_a

    .line 2147
    move-object/from16 v0, v24

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 2148
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v0

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 2142
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_3

    const/16 v26, 0x1

    goto :goto_5

    :cond_3
    const/16 v26, 0x0

    .line 2148
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v26, :cond_9

    .line 2149
    add-int/lit8 v1, v1, 0x1

    .line 2150
    move-object/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v26, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    if-ne v1, v2, :cond_4

    .line 2151
    move-object v11, v0

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    goto :goto_7

    .line 2155
    :cond_4
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 2156
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 2157
    move/from16 v27, v1

    .end local v1    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 2158
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v3

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .local v31, "$i$f$visitAncestors-Y-YKmho":I
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2156
    .end local v1    # "capacity$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    nop

    .end local v29    # "$i$f$mutableVectorOf":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_6

    .line 2155
    .end local v27    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v1, "count$iv$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_5
    move/from16 v27, v1

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "count$iv$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_6
    move-object/from16 v18, v2

    .line 2159
    move-object v1, v11

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 2160
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 2161
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2162
    :cond_6
    const/4 v2, 0x0

    move-object v11, v2

    .line 2164
    :cond_7
    move-object/from16 v2, v18

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2167
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move/from16 v1, v27

    goto :goto_7

    .line 2148
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "count$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v1, "count$iv$iv":I
    .local v2, "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_9
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    .line 2167
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_7
    nop

    .line 2147
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2168
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_4

    .line 2170
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_a
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    .line 2171
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 2173
    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_2

    .line 2141
    .end local v1    # "count$iv$iv":I
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_b
    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    .line 2176
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
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

    .line 2178
    .end local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v21    # "includeSelf$iv":Z
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v0, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .local v1, "includeSelf$iv":Z
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_d
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    .line 2122
    .end local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v11    # "node$iv$iv":Ljava/lang/Object;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 2135
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_8

    .line 2134
    .end local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v21    # "includeSelf$iv":Z
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_e
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/16 v19, 0x0

    .line 2179
    .end local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
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

    .line 2133
    .end local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v21    # "includeSelf$iv":Z
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_f
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/16 v19, 0x0

    .end local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    goto :goto_9

    .line 2132
    .end local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v21    # "includeSelf$iv":Z
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_10
    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v30, v3

    move/from16 v31, v4

    const/16 v19, 0x0

    .line 2182
    .end local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v21    # "includeSelf$iv":Z
    .restart local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v10

    .line 2183
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

    .line 2185
    .end local v20    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v21    # "includeSelf$iv":Z
    .end local v26    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .restart local v1    # "includeSelf$iv":Z
    .restart local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_12
    const/16 v19, 0x0

    .line 2122
    .end local v5    # "includeSelf$iv$iv":Z
    .end local v6    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$i$f$visitAncestors":I
    .end local v9    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 526
    .end local v1    # "includeSelf$iv":Z
    .end local v2    # "$this$visitAncestors_u2dY_u2dYKmho$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$i$f$visitAncestors-Y-YKmho":I
    return-object v19
.end method

.method private final synthetic traverseAncestorsIncludingSelf-QFhIj7k(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 40
    .param p1, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0"    # I
    .param p3, "onPreVisit"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onVisit"    # Lkotlin/jvm/functions/Function0;
    .param p5, "onPostVisit"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/compose/ui/node/DelegatableNode;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    const/4 v2, 0x0

    .line 512
    .local v2, "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    move/from16 v3, p2

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v4, p1

    .line 1952
    .local v4, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1954
    const/4 v5, 0x0

    .line 1952
    .local v5, "includeSelf$iv":Z
    const/4 v6, 0x0

    .line 1956
    .local v6, "$i$f$ancestors-6rFNWt0":I
    const/4 v7, 0x0

    .line 1957
    .local v7, "result$iv":Ljava/lang/Object;
    move v8, v5

    .local v8, "includeSelf$iv$iv":Z
    move v9, v3

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v10, v4

    .local v10, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v11, 0x0

    .line 1958
    .local v11, "$i$f$visitAncestors-Y-YKmho":I
    move v12, v8

    .local v12, "includeSelf$iv$iv$iv":Z
    move-object v13, v10

    .local v13, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v14, v9

    .local v14, "mask$iv$iv$iv":I
    const/4 v15, 0x0

    .line 1959
    .local v15, "$i$f$visitAncestors":I
    invoke-interface {v13}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v16

    .local v16, "value$iv$iv$iv$iv":Z
    const/16 v17, 0x0

    .line 1960
    .local v17, "$i$f$checkPrecondition":I
    if-nez v16, :cond_0

    .line 1961
    const/16 v18, 0x0

    .line 1959
    .local v18, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1961
    .end local v18    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    const-string/jumbo v18, "visitAncestors called on an unattached node"

    move-object/from16 v19, v18

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1963
    :cond_0
    nop

    .line 1964
    .end local v16    # "value$iv$iv$iv$iv":Z
    .end local v17    # "$i$f$checkPrecondition":I
    invoke-interface {v13}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 1965
    .local v16, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v17

    .line 1966
    .local v17, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    move/from16 v18, v2

    .end local v2    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .local v18, "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    const-string v2, "T"

    move/from16 v19, v3

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-eqz v17, :cond_13

    .line 1967
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1968
    .local v20, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v21

    and-int v21, v21, v14

    if-eqz v21, :cond_11

    .line 1969
    :goto_1
    if-eqz v16, :cond_10

    .line 1970
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v14

    if-eqz v21, :cond_f

    .line 1971
    move-object/from16 v21, v16

    check-cast v21, Landroidx/compose/ui/Modifier$Node;

    .local v21, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1958
    .local v22, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v23, v9

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v24, v21

    .local v24, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1972
    .local v25, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v26, 0x0

    .line 1973
    .local v26, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v27, v24

    move-object/from16 v3, v27

    .line 1974
    .end local v27    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v3, :cond_e

    .line 1975
    move-object/from16 v28, v4

    const/4 v4, 0x3

    .end local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v28, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v3, Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1976
    move-object v4, v3

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 1977
    .local v29, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv":I
    if-nez v7, :cond_1

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v30

    check-cast v7, Ljava/util/List;

    .line 1978
    :cond_1
    move/from16 v30, v5

    .end local v5    # "includeSelf$iv":Z
    .local v30, "includeSelf$iv":Z
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    nop

    .line 1976
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v29    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv":I
    move/from16 v38, v6

    goto/16 :goto_8

    .line 1980
    .end local v30    # "includeSelf$iv":Z
    .restart local v5    # "includeSelf$iv":Z
    :cond_2
    move/from16 v30, v5

    .end local v5    # "includeSelf$iv":Z
    .restart local v30    # "includeSelf$iv":Z
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .local v4, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v5, v23

    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 1981
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v5

    if-eqz v31, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 1980
    .end local v4    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v4, :cond_d

    instance-of v4, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_d

    .line 1982
    const/4 v4, 0x0

    .line 1983
    .local v4, "count$iv$iv$iv":I
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .local v5, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v29, 0x0

    .line 1984
    .local v29, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    .line 1985
    .local v31, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v31, :cond_b

    .line 1986
    move-object/from16 v32, v3

    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v32, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, v31

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 1987
    .local v33, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v34, v23

    .local v34, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v35, v3

    .local v35, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1981
    .local v36, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v37

    and-int v37, v37, v34

    if-eqz v37, :cond_4

    const/16 v34, 0x1

    goto :goto_5

    :cond_4
    const/16 v34, 0x0

    .line 1987
    .end local v34    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v34, :cond_a

    .line 1988
    add-int/lit8 v4, v4, 0x1

    .line 1989
    move-object/from16 v34, v5

    const/4 v5, 0x1

    .end local v5    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v34, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v4, v5, :cond_5

    .line 1990
    move-object v5, v3

    move-object/from16 v32, v5

    move/from16 v38, v6

    .end local v32    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v5, "node$iv$iv$iv":Ljava/lang/Object;
    goto :goto_7

    .line 1994
    .end local v5    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v32    # "node$iv$iv$iv":Ljava/lang/Object;
    :cond_5
    move-object/from16 v5, v26

    check-cast v5, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v5, :cond_6

    const/4 v5, 0x0

    .line 1995
    .local v5, "$i$f$mutableVectorOf":I
    nop

    .line 1996
    move/from16 v35, v4

    .end local v4    # "count$iv$iv$iv":I
    .local v35, "count$iv$iv$iv":I
    const/16 v4, 0x10

    .local v4, "capacity$iv$iv$iv$iv$iv":I
    const/16 v36, 0x0

    .line 1997
    .local v36, "$i$f$MutableVector":I
    move/from16 v37, v5

    .end local v5    # "$i$f$mutableVectorOf":I
    .local v37, "$i$f$mutableVectorOf":I
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v38, v6

    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .local v38, "$i$f$ancestors-6rFNWt0":I
    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v39, v4

    const/4 v4, 0x0

    .end local v4    # "capacity$iv$iv$iv$iv$iv":I
    .local v39, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v5, v6, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1995
    .end local v36    # "$i$f$MutableVector":I
    .end local v39    # "capacity$iv$iv$iv$iv$iv":I
    nop

    .end local v37    # "$i$f$mutableVectorOf":I
    move-object v4, v5

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    goto :goto_6

    .line 1994
    .end local v35    # "count$iv$iv$iv":I
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .local v4, "count$iv$iv$iv":I
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_6
    move/from16 v35, v4

    move/from16 v38, v6

    .end local v4    # "count$iv$iv$iv":I
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .restart local v35    # "count$iv$iv$iv":I
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    :goto_6
    move-object/from16 v26, v5

    .line 1998
    move-object/from16 v4, v32

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1999
    .local v4, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v4, :cond_8

    .line 2000
    move-object/from16 v5, v26

    check-cast v5, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2001
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v32, v5

    .line 2003
    :cond_8
    move-object/from16 v5, v26

    check-cast v5, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2006
    .end local v4    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move/from16 v4, v35

    goto :goto_7

    .line 1987
    .end local v34    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v35    # "count$iv$iv$iv":I
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .local v4, "count$iv$iv$iv":I
    .local v5, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_a
    move-object/from16 v34, v5

    move/from16 v38, v6

    .line 2006
    .end local v5    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .restart local v34    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    :goto_7
    nop

    .line 1986
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 2007
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    move-object/from16 v3, v32

    move-object/from16 v5, v34

    move/from16 v6, v38

    goto/16 :goto_4

    .line 2009
    .end local v32    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v34    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v5    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_b
    move-object/from16 v32, v3

    move-object/from16 v34, v5

    move/from16 v38, v6

    .line 2010
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v5    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .end local v29    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v31    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 2012
    move-object/from16 v4, v28

    move/from16 v5, v30

    move-object/from16 v3, v32

    move/from16 v6, v38

    goto/16 :goto_2

    .line 2010
    :cond_c
    move-object/from16 v3, v32

    goto :goto_8

    .line 1980
    .end local v4    # "count$iv$iv$iv":I
    .end local v32    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .restart local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_d
    move/from16 v38, v6

    .line 2015
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    :goto_8
    move-object/from16 v4, v26

    check-cast v4, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v4, v28

    move/from16 v5, v30

    move/from16 v6, v38

    goto/16 :goto_2

    .line 2017
    .end local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .local v4, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v5, "includeSelf$iv":Z
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_e
    move-object/from16 v28, v4

    move/from16 v30, v5

    move/from16 v38, v6

    .line 1958
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "includeSelf$iv":Z
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v24    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    nop

    .line 1971
    .end local v21    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 1970
    .end local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .restart local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "includeSelf$iv":Z
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_f
    move-object/from16 v28, v4

    move/from16 v30, v5

    move/from16 v38, v6

    .line 2018
    .end local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "includeSelf$iv":Z
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .restart local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    move-object/from16 v4, v28

    move/from16 v5, v30

    move/from16 v6, v38

    goto/16 :goto_1

    .line 1969
    .end local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .restart local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "includeSelf$iv":Z
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_10
    move-object/from16 v28, v4

    move/from16 v30, v5

    move/from16 v38, v6

    .end local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "includeSelf$iv":Z
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .restart local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    goto :goto_a

    .line 1968
    .end local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .restart local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "includeSelf$iv":Z
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_11
    move-object/from16 v28, v4

    move/from16 v30, v5

    move/from16 v38, v6

    .line 2021
    .end local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "includeSelf$iv":Z
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .restart local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    :goto_a
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v17

    .line 2022
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    :goto_b
    move-object/from16 v16, v2

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v28

    move/from16 v5, v30

    move/from16 v6, v38

    .end local v20    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 2024
    .end local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    .restart local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v5    # "includeSelf$iv":Z
    .restart local v6    # "$i$f$ancestors-6rFNWt0":I
    :cond_13
    move-object/from16 v28, v4

    move/from16 v30, v5

    move/from16 v38, v6

    .line 1958
    .end local v4    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "includeSelf$iv":Z
    .end local v6    # "$i$f$ancestors-6rFNWt0":I
    .end local v12    # "includeSelf$iv$iv$iv":Z
    .end local v13    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v14    # "mask$iv$iv$iv":I
    .end local v15    # "$i$f$visitAncestors":I
    .end local v16    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "includeSelf$iv":Z
    .restart local v38    # "$i$f$ancestors-6rFNWt0":I
    nop

    .line 2025
    .end local v8    # "includeSelf$iv$iv":Z
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v10    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$i$f$visitAncestors-Y-YKmho":I
    move-object v3, v7

    check-cast v3, Ljava/util/List;

    .line 512
    .end local v7    # "result$iv":Ljava/lang/Object;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v28    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "includeSelf$iv":Z
    .end local v38    # "$i$f$ancestors-6rFNWt0":I
    nop

    .line 513
    .local v3, "ancestors":Ljava/util/List;
    if-eqz v3, :cond_16

    move-object v4, v3

    .local v4, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 2026
    .local v5, "$i$f$fastForEachReversed":I
    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_15

    :cond_14
    move v7, v6

    .local v7, "index$iv":I
    add-int/lit8 v6, v6, -0x1

    .line 2027
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2028
    .local v8, "item$iv":Ljava/lang/Object;
    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    .end local v8    # "item$iv":Ljava/lang/Object;
    if-gez v6, :cond_14

    .line 2030
    .end local v7    # "index$iv":I
    :cond_15
    nop

    .line 514
    .end local v4    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEachReversed":I
    :cond_16
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .local v4, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v5, p2

    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v6, 0x0

    .line 2031
    .local v6, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v7, 0x0

    .line 2032
    .local v7, "stack$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "node$iv":Ljava/lang/Object;
    move-object v8, v4

    .line 2033
    :goto_c
    if-eqz v8, :cond_23

    .line 2034
    const/4 v9, 0x3

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v9, v8, Ljava/lang/Object;

    if-eqz v9, :cond_17

    .line 2035
    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_12

    .line 2036
    :cond_17
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .local v9, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v10, v5

    .local v10, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v11, 0x0

    .line 2037
    .local v11, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v10

    if-eqz v12, :cond_18

    const/4 v9, 0x1

    goto :goto_d

    :cond_18
    const/4 v9, 0x0

    .line 2036
    .end local v9    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v11    # "$i$f$isKind-H91voCI$ui":I
    :goto_d
    if-eqz v9, :cond_21

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_21

    .line 2038
    const/4 v9, 0x0

    .line 2039
    .local v9, "count$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v11, 0x0

    .line 2040
    .local v11, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 2041
    .local v12, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_e
    if-eqz v12, :cond_20

    .line 2042
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .local v13, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 2043
    .local v14, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move v15, v5

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 2037
    .local v17, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v15

    if-eqz v19, :cond_19

    const/4 v15, 0x1

    goto :goto_f

    :cond_19
    const/4 v15, 0x0

    .line 2043
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$isKind-H91voCI$ui":I
    :goto_f
    if-eqz v15, :cond_1e

    .line 2044
    add-int/lit8 v9, v9, 0x1

    .line 2045
    const/4 v15, 0x1

    if-ne v9, v15, :cond_1a

    .line 2046
    move-object v8, v13

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto :goto_11

    .line 2050
    :cond_1a
    move-object v15, v7

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v15, :cond_1b

    const/4 v15, 0x0

    .line 2051
    .local v15, "$i$f$mutableVectorOf":I
    nop

    .line 2052
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv":I
    const/16 v16, 0x0

    .line 2053
    .local v16, "$i$f$MutableVector":I
    move-object/from16 v17, v3

    .end local v3    # "ancestors":Ljava/util/List;
    .local v17, "ancestors":Ljava/util/List;
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v19, v4

    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    new-array v4, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv":I
    .local v20, "capacity$iv$iv$iv":I
    invoke-direct {v3, v4, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2051
    .end local v16    # "$i$f$MutableVector":I
    .end local v20    # "capacity$iv$iv$iv":I
    nop

    .end local v15    # "$i$f$mutableVectorOf":I
    move-object v0, v3

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    move-object v15, v3

    goto :goto_10

    .line 2050
    .end local v17    # "ancestors":Ljava/util/List;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "ancestors":Ljava/util/List;
    .restart local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1b
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .end local v3    # "ancestors":Ljava/util/List;
    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "ancestors":Ljava/util/List;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_10
    move-object v7, v15

    .line 2054
    move-object v0, v8

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 2055
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_1d

    .line 2056
    move-object v3, v7

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_1c

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2057
    :cond_1c
    const/4 v3, 0x0

    move-object v8, v3

    .line 2059
    :cond_1d
    move-object v3, v7

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2043
    .end local v0    # "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "ancestors":Ljava/util/List;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "ancestors":Ljava/util/List;
    .restart local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1e
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 2062
    .end local v3    # "ancestors":Ljava/util/List;
    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "ancestors":Ljava/util/List;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1f
    :goto_11
    nop

    .line 2042
    .end local v13    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 2063
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v0, p3

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto :goto_e

    .line 2065
    .end local v17    # "ancestors":Ljava/util/List;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "ancestors":Ljava/util/List;
    .restart local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_20
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 2066
    .end local v3    # "ancestors":Ljava/util/List;
    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v11    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v12    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "ancestors":Ljava/util/List;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x1

    if-ne v9, v15, :cond_22

    .line 2068
    move-object/from16 v0, p3

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto/16 :goto_c

    .line 2036
    .end local v9    # "count$iv":I
    .end local v17    # "ancestors":Ljava/util/List;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "ancestors":Ljava/util/List;
    .restart local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_21
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 2071
    .end local v3    # "ancestors":Ljava/util/List;
    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "ancestors":Ljava/util/List;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_22
    :goto_12
    move-object v0, v7

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, p3

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    goto/16 :goto_c

    .line 2073
    .end local v17    # "ancestors":Ljava/util/List;
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "ancestors":Ljava/util/List;
    .restart local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_23
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 515
    .end local v3    # "ancestors":Ljava/util/List;
    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v6    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v7    # "stack$iv":Ljava/lang/Object;
    .end local v8    # "node$iv":Ljava/lang/Object;
    .restart local v17    # "ancestors":Ljava/util/List;
    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 516
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v3, p2

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v4, 0x0

    .line 2074
    .local v4, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v5, 0x0

    .line 2075
    .local v5, "stack$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "node$iv":Ljava/lang/Object;
    move-object v6, v0

    .line 2076
    :goto_13
    if-eqz v6, :cond_30

    .line 2077
    const/4 v9, 0x3

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v7, v6, Ljava/lang/Object;

    if-eqz v7, :cond_24

    .line 2078
    invoke-interface {v1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/4 v15, 0x1

    goto/16 :goto_19

    .line 2079
    :cond_24
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .local v7, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v8, v3

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v10, 0x0

    .line 2080
    .local v10, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v11

    and-int/2addr v11, v8

    if-eqz v11, :cond_25

    const/4 v7, 0x1

    goto :goto_14

    :cond_25
    const/4 v7, 0x0

    .line 2079
    .end local v7    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v10    # "$i$f$isKind-H91voCI$ui":I
    :goto_14
    if-eqz v7, :cond_2e

    instance-of v7, v6, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_2e

    .line 2081
    const/4 v7, 0x0

    .line 2082
    .local v7, "count$iv":I
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v10, 0x0

    .line 2083
    .local v10, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 2084
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    if-eqz v11, :cond_2d

    .line 2085
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .local v12, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 2086
    .local v13, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move v14, v3

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v15, v12

    .local v15, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 2080
    .local v16, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v14

    if-eqz v19, :cond_26

    const/4 v14, 0x1

    goto :goto_16

    :cond_26
    const/4 v14, 0x0

    .line 2086
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v15    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$isKind-H91voCI$ui":I
    :goto_16
    if-eqz v14, :cond_2b

    .line 2087
    add-int/lit8 v7, v7, 0x1

    .line 2088
    const/4 v15, 0x1

    if-ne v7, v15, :cond_27

    .line 2089
    move-object v6, v12

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    goto :goto_18

    .line 2093
    :cond_27
    move-object v14, v5

    check-cast v14, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v14, :cond_28

    const/4 v14, 0x0

    .line 2094
    .local v14, "$i$f$mutableVectorOf":I
    nop

    .line 2095
    const/16 v15, 0x10

    .local v15, "capacity$iv$iv$iv":I
    const/16 v16, 0x0

    .line 2096
    .local v16, "$i$f$MutableVector":I
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v19, v0

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    new-array v0, v15, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v9, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2094
    .end local v15    # "capacity$iv$iv$iv":I
    .end local v16    # "$i$f$MutableVector":I
    nop

    .end local v14    # "$i$f$mutableVectorOf":I
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    move-object v14, v9

    goto :goto_17

    .line 2093
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_28
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_17
    move-object v5, v14

    .line 2097
    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 2098
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_2a

    .line 2099
    move-object v9, v5

    check-cast v9, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v9, :cond_29

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2100
    :cond_29
    const/4 v6, 0x0

    .line 2102
    :cond_2a
    move-object v9, v5

    check-cast v9, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v9, :cond_2c

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 2086
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2b
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .line 2105
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2c
    :goto_18
    nop

    .line 2085
    .end local v12    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 2106
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    const/4 v9, 0x3

    goto :goto_15

    .line 2108
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2d
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .line 2109
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v10    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x1

    if-ne v7, v15, :cond_2f

    .line 2111
    move-object/from16 v0, v19

    move-object/from16 v2, v20

    goto/16 :goto_13

    .line 2079
    .end local v7    # "count$iv":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2e
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/4 v15, 0x1

    .line 2114
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_2f
    :goto_19
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    goto/16 :goto_13

    .line 2116
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_30
    move-object/from16 v19, v0

    .line 517
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v4    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v5    # "stack$iv":Ljava/lang/Object;
    .end local v6    # "node$iv":Ljava/lang/Object;
    if-eqz v17, :cond_32

    move-object/from16 v0, v17

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2117
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_1a
    if-ge v3, v4, :cond_31

    .line 2118
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2119
    .local v5, "item$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    .end local v5    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2121
    .end local v3    # "index$iv":I
    :cond_31
    nop

    .line 518
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :cond_32
    return-void
.end method

.method private final validateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "$v$c$androidx-compose-ui-input-key-KeyEvent$-keyEvent$0"    # Landroid/view/KeyEvent;

    .line 601
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    .line 602
    .local v0, "keyCode":J
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result v2

    .line 603
    sget-object v3, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 606
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-nez v2, :cond_0

    .line 607
    new-instance v2, Landroidx/collection/MutableLongSet;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroidx/collection/MutableLongSet;-><init>(I)V

    move-object v3, v2

    .line 2376
    .local v3, "it":Landroidx/collection/MutableLongSet;
    const/4 v5, 0x0

    .line 607
    .local v5, "$i$a$-also-FocusOwnerImpl$validateKeyEvent$keysCurrentlyDown$1":I
    iput-object v3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    .line 606
    .end local v3    # "it":Landroidx/collection/MutableLongSet;
    .end local v5    # "$i$a$-also-FocusOwnerImpl$validateKeyEvent$keysCurrentlyDown$1":I
    :cond_0
    nop

    .line 605
    nop

    .line 608
    .local v2, "keysCurrentlyDown":Landroidx/collection/MutableLongSet;
    invoke-virtual {v2, v0, v1}, Landroidx/collection/MutableLongSet;->plusAssign(J)V

    .end local v2    # "keysCurrentlyDown":Landroidx/collection/MutableLongSet;
    goto :goto_1

    .line 610
    :cond_1
    sget-object v3, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 611
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Landroidx/collection/MutableLongSet;->contains(J)Z

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    if-nez v2, :cond_3

    .line 613
    return v3

    .line 615
    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, v1}, Landroidx/collection/MutableLongSet;->remove(J)Z

    .line 619
    :cond_4
    :goto_1
    return v4
.end method


# virtual methods
.method public clearFocus(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 176
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(ZZZI)Z

    .line 177
    return-void
.end method

.method public clearFocus-I7lrPNg(ZZZI)Z
    .locals 2
    .param p1, "force"    # Z
    .param p2, "refreshFocusEvents"    # Z
    .param p3, "clearOwnerFocus"    # Z
    .param p4, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 186
    if-nez p1, :cond_0

    .line 188
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0, p4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/CustomDestinationResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 192
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(ZZ)Z

    move-result v0

    goto :goto_0

    .line 191
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(ZZ)Z

    move-result v0

    .line 186
    :goto_0
    nop

    .line 185
    nop

    .line 198
    .local v0, "clearedFocusSuccessfully":Z
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 199
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 201
    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearOwnerFocus()V
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    invoke-interface {v0}, Landroidx/compose/ui/focus/PlatformFocusOwner;->clearOwnerFocus()V

    .line 164
    return-void
.end method

.method public dispatchIndirectPointerCancel()V
    .locals 41

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    const/high16 v2, 0x200000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_13

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v6, 0x0

    .line 1804
    .local v6, "$i$f$getIndirectPointerInput-OLwlOKw":I
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 479
    .end local v6    # "$i$f$getIndirectPointerInput-OLwlOKw":I
    nop

    .local v0, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v7, p0

    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v7, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v8, 0x0

    .line 1805
    .local v8, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v9, 0x1

    .local v9, "includeSelf$iv$iv":Z
    move v10, v6

    .local v10, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v11, v0

    .local v11, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v12, 0x0

    .line 1806
    .local v12, "$i$f$visitAncestors-Y-YKmho":I
    move v13, v9

    .local v13, "includeSelf$iv$iv$iv":Z
    move v14, v10

    .local v14, "mask$iv$iv$iv":I
    move-object v15, v11

    .local v15, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v16, 0x0

    .line 1807
    .local v16, "$i$f$visitAncestors":I
    invoke-interface {v15}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v17

    .local v17, "value$iv$iv$iv$iv":Z
    const/16 v18, 0x0

    .line 1808
    .local v18, "$i$f$checkPrecondition":I
    if-nez v17, :cond_0

    .line 1809
    const/16 v19, 0x0

    .line 1807
    .local v19, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1809
    .end local v19    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1811
    :cond_0
    nop

    .line 1812
    .end local v17    # "value$iv$iv$iv$iv":Z
    .end local v18    # "$i$f$checkPrecondition":I
    invoke-interface {v15}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    .line 1813
    .local v17, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v18

    .line 1814
    .local v18, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v18, :cond_12

    .line 1815
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1816
    .local v19, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v20

    and-int v20, v20, v14

    if-eqz v20, :cond_10

    .line 1817
    :goto_1
    if-eqz v17, :cond_f

    .line 1818
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v14

    if-eqz v20, :cond_e

    .line 1819
    move-object/from16 v20, v17

    .local v20, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1806
    .local v21, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v22, v10

    .local v22, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v23, v20

    .local v23, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1820
    .local v24, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v25, 0x0

    .line 1821
    .local v25, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .local v26, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v26, v23

    move-object/from16 v40, v26

    move/from16 v26, v2

    move-object/from16 v2, v40

    .line 1822
    .end local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_d

    .line 1823
    instance-of v3, v2, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    if-eqz v3, :cond_1

    .line 1824
    move-object v3, v2

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 1825
    .local v27, "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    move-object/from16 v36, v1

    goto/16 :goto_c

    .line 1826
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v27    # "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    :cond_1
    move/from16 v3, v22

    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v27, v2

    .local v27, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 1827
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v3

    if-eqz v29, :cond_2

    move v3, v5

    goto :goto_3

    :cond_2
    move v3, v4

    .line 1826
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v3, :cond_b

    instance-of v3, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_b

    .line 1828
    const/4 v3, 0x0

    .line 1829
    .local v3, "count$iv$iv$iv":I
    move-object/from16 v27, v2

    check-cast v27, Landroidx/compose/ui/node/DelegatingNode;

    .local v27, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v28, 0x0

    .line 1830
    .local v28, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v29

    .line 1831
    .local v29, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v29, :cond_a

    .line 1832
    move-object/from16 v30, v29

    .local v30, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v31, 0x0

    .line 1833
    .local v31, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v32, v22

    .local v32, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v33, v30

    .local v33, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v34, 0x0

    .line 1827
    .local v34, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v35

    and-int v35, v35, v32

    if-eqz v35, :cond_3

    move/from16 v32, v5

    goto :goto_5

    :cond_3
    move/from16 v32, v4

    .line 1833
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v33    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v32, :cond_9

    .line 1834
    add-int/lit8 v3, v3, 0x1

    .line 1835
    if-ne v3, v5, :cond_4

    .line 1836
    move-object/from16 v2, v30

    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move-object/from16 v5, v30

    goto :goto_8

    .line 1840
    :cond_4
    if-nez v25, :cond_5

    const/16 v32, 0x0

    .line 1841
    .local v32, "$i$f$mutableVectorOf":I
    nop

    .line 1842
    const/16 v5, 0x10

    .local v5, "capacity$iv$iv$iv$iv$iv":I
    const/16 v34, 0x0

    .line 1843
    .local v34, "$i$f$MutableVector":I
    move-object/from16 v35, v0

    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v35, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v36, v1

    new-array v1, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v1, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1841
    .end local v5    # "capacity$iv$iv$iv$iv$iv":I
    .end local v34    # "$i$f$MutableVector":I
    goto :goto_6

    .line 1840
    .end local v32    # "$i$f$mutableVectorOf":I
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_5
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v0, v25

    :goto_6
    nop

    .line 1844
    .end local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v1, v2

    .line 1845
    .local v1, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 1846
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1847
    :cond_6
    const/4 v2, 0x0

    .line 1849
    :cond_7
    if-eqz v0, :cond_8

    move-object/from16 v5, v30

    .end local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v5, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v5    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v5, v30

    .line 1852
    .end local v1    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v25, v0

    goto :goto_8

    .line 1833
    .end local v5    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v0, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move-object/from16 v5, v30

    .line 1852
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    nop

    .line 1832
    .end local v5    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 1853
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v29

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const/4 v5, 0x1

    goto :goto_4

    .line 1855
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_a
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .line 1856
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v27    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v28    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v29    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x1

    if-ne v3, v0, :cond_c

    .line 1858
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1826
    .end local v3    # "count$iv$iv$iv":I
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .line 1861
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1863
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .line 1806
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v23    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1819
    .end local v20    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 1818
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move/from16 v26, v2

    .line 1864
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_9
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    move/from16 v2, v26

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1817
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move/from16 v26, v2

    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_a

    .line 1816
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move/from16 v26, v2

    .line 1867
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_a
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v18

    .line 1868
    if-eqz v18, :cond_11

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    :goto_b
    move-object/from16 v17, v0

    move/from16 v2, v26

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const/4 v5, 0x1

    .end local v19    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1870
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_12
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move/from16 v26, v2

    .line 1806
    .end local v0    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "includeSelf$iv$iv$iv":Z
    .end local v14    # "mask$iv$iv$iv":I
    .end local v15    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v16    # "$i$f$visitAncestors":I
    .end local v17    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1871
    .end local v9    # "includeSelf$iv$iv":Z
    .end local v10    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v11    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v12    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v3, 0x0

    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v7    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v8    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v35    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_c
    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    goto :goto_d

    .line 479
    :cond_13
    move-object/from16 v36, v1

    move/from16 v26, v2

    const/4 v3, 0x0

    .line 478
    :goto_d
    nop

    .line 481
    .local v3, "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    if-eqz v3, :cond_29

    move-object v0, v3

    .local v0, "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v1, 0x0

    .line 482
    .local v1, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v5, 0x0

    .line 1872
    .local v5, "$i$f$getIndirectPointerInput-OLwlOKw":I
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v5

    .line 482
    .end local v5    # "$i$f$getIndirectPointerInput-OLwlOKw":I
    nop

    .line 1873
    .local v2, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1875
    const/4 v6, 0x0

    .line 1873
    .local v6, "includeSelf$iv":Z
    const/4 v7, 0x0

    .line 1877
    .local v7, "$i$f$ancestors-6rFNWt0":I
    const/4 v8, 0x0

    .line 1878
    .local v8, "result$iv":Ljava/lang/Object;
    move v9, v6

    .restart local v9    # "includeSelf$iv$iv":Z
    move v10, v5

    .restart local v10    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v11, v2

    .restart local v11    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v12, 0x0

    .line 1879
    .restart local v12    # "$i$f$visitAncestors-Y-YKmho":I
    move v13, v9

    .restart local v13    # "includeSelf$iv$iv$iv":Z
    move v14, v10

    .restart local v14    # "mask$iv$iv$iv":I
    move-object v15, v11

    .restart local v15    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v16, 0x0

    .line 1880
    .restart local v16    # "$i$f$visitAncestors":I
    invoke-interface {v15}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v17

    .local v17, "value$iv$iv$iv$iv":Z
    const/16 v18, 0x0

    .line 1881
    .local v18, "$i$f$checkPrecondition":I
    if-nez v17, :cond_14

    .line 1882
    const/16 v19, 0x0

    .line 1880
    .local v19, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1882
    .end local v19    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static/range {v36 .. v36}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1884
    :cond_14
    nop

    .line 1885
    .end local v17    # "value$iv$iv$iv$iv":Z
    .end local v18    # "$i$f$checkPrecondition":I
    invoke-interface {v15}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    .line 1886
    .local v17, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v18

    .line 1887
    .local v18, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_e
    if-eqz v18, :cond_27

    .line 1888
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1889
    .local v19, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v20

    and-int v20, v20, v14

    if-eqz v20, :cond_25

    .line 1890
    :goto_f
    if-eqz v17, :cond_24

    .line 1891
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v14

    if-eqz v20, :cond_23

    .line 1892
    move-object/from16 v20, v17

    .restart local v20    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 1879
    .restart local v21    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v22, v10

    .restart local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v23, v20

    .restart local v23    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1893
    .restart local v24    # "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v25, 0x0

    .line 1894
    .restart local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .restart local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v26, v23

    move-object/from16 v4, v26

    .line 1895
    .end local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v4, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_10
    if-eqz v4, :cond_22

    .line 1896
    move-object/from16 v27, v0

    .end local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .local v27, "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    instance-of v0, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    if-eqz v0, :cond_16

    .line 1897
    move-object v0, v4

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 1898
    .local v28, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv":I
    if-nez v8, :cond_15

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v29

    check-cast v8, Ljava/util/List;

    .line 1899
    :cond_15
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1900
    nop

    .line 1897
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v28    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv":I
    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_17

    .line 1901
    :cond_16
    move/from16 v0, v22

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v28, v4

    .local v28, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 1902
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v0

    if-eqz v30, :cond_17

    const/4 v0, 0x1

    goto :goto_11

    :cond_17
    const/4 v0, 0x0

    .line 1901
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_11
    if-eqz v0, :cond_20

    instance-of v0, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_20

    .line 1903
    const/4 v0, 0x0

    .line 1904
    .local v0, "count$iv$iv$iv":I
    move-object/from16 v28, v4

    check-cast v28, Landroidx/compose/ui/node/DelegatingNode;

    .local v28, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v29, 0x0

    .line 1905
    .local v29, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v30

    .line 1906
    .local v30, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_12
    if-eqz v30, :cond_1f

    .line 1907
    move-object/from16 v31, v30

    .local v31, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 1908
    .local v32, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v34, v22

    .local v34, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v35, v31

    .local v35, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1902
    .local v36, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v37

    and-int v37, v37, v34

    if-eqz v37, :cond_18

    const/16 v34, 0x1

    goto :goto_13

    :cond_18
    const/16 v34, 0x0

    .line 1908
    .end local v34    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$f$isKind-H91voCI$ui":I
    :goto_13
    if-eqz v34, :cond_1e

    .line 1909
    add-int/lit8 v0, v0, 0x1

    .line 1910
    move/from16 v34, v1

    const/4 v1, 0x1

    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .local v34, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    if-ne v0, v1, :cond_19

    .line 1911
    move-object/from16 v4, v31

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v2, v31

    const/4 v3, 0x0

    goto :goto_16

    .line 1915
    :cond_19
    if-nez v25, :cond_1a

    const/4 v1, 0x0

    .line 1916
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1917
    move/from16 v35, v0

    .end local v0    # "count$iv$iv$iv":I
    .local v35, "count$iv$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv$iv":I
    const/16 v36, 0x0

    .line 1918
    .local v36, "$i$f$MutableVector":I
    move/from16 v37, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v37, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v38, v2

    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v38, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v39, v3

    const/4 v3, 0x0

    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .local v39, "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1916
    .end local v0    # "capacity$iv$iv$iv$iv$iv":I
    .end local v36    # "$i$f$MutableVector":I
    goto :goto_14

    .line 1915
    .end local v35    # "count$iv$iv$iv":I
    .end local v37    # "$i$f$mutableVectorOf":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .local v0, "count$iv$iv$iv":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_1a
    move/from16 v35, v0

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    const/4 v3, 0x0

    .end local v0    # "count$iv$iv$iv":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v35    # "count$iv$iv$iv":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    move-object/from16 v1, v25

    :goto_14
    nop

    .line 1919
    .end local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v0, v4

    .line 1920
    .local v0, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_1c

    .line 1921
    if-eqz v1, :cond_1b

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1922
    :cond_1b
    const/4 v2, 0x0

    move-object v4, v2

    .line 1924
    :cond_1c
    if-eqz v1, :cond_1d

    move-object/from16 v2, v31

    .end local v31    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .end local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1d
    move-object/from16 v2, v31

    .line 1927
    .end local v0    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    move-object/from16 v25, v1

    move/from16 v0, v35

    goto :goto_16

    .line 1908
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v35    # "count$iv$iv$iv":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .local v0, "count$iv$iv$iv":I
    .local v1, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .local v2, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v31    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1e
    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v2, v31

    const/4 v3, 0x0

    .line 1927
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v31    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :goto_16
    nop

    .line 1907
    .end local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 1928
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v30

    move/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    goto :goto_12

    .line 1930
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .local v2, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_1f
    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    const/4 v3, 0x0

    .line 1931
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v28    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v29    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v30    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 1933
    move-object/from16 v0, v27

    move/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    goto/16 :goto_10

    .line 1901
    .end local v0    # "count$iv$iv$iv":I
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_20
    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1936
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_21
    :goto_17
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move-object/from16 v0, v27

    move/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    goto/16 :goto_10

    .line 1938
    .end local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .local v0, "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_22
    move-object/from16 v27, v0

    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1879
    .end local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v4    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v22    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v23    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v25    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    nop

    .line 1892
    .end local v20    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_18

    .line 1891
    .end local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_23
    move-object/from16 v27, v0

    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move v3, v4

    const/4 v1, 0x1

    .line 1939
    .end local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :goto_18
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    move v4, v3

    move-object/from16 v0, v27

    move/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    goto/16 :goto_f

    .line 1890
    .end local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_24
    move-object/from16 v27, v0

    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move v3, v4

    const/4 v1, 0x1

    .end local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    goto :goto_19

    .line 1889
    .end local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_25
    move-object/from16 v27, v0

    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move v3, v4

    const/4 v1, 0x1

    .line 1942
    .end local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :goto_19
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v18

    .line 1943
    if-eqz v18, :cond_26

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    :goto_1a
    move-object/from16 v17, v0

    move v4, v3

    move-object/from16 v0, v27

    move/from16 v1, v34

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    .end local v19    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_e

    .line 1945
    .end local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_27
    move-object/from16 v27, v0

    move/from16 v34, v1

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    .line 1879
    .end local v0    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v1    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v2    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v13    # "includeSelf$iv$iv$iv":Z
    .end local v14    # "mask$iv$iv$iv":I
    .end local v15    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v16    # "$i$f$visitAncestors":I
    .end local v17    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .restart local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    nop

    .line 1946
    .end local v9    # "includeSelf$iv$iv":Z
    .end local v10    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v11    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v12    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 482
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v6    # "includeSelf$iv":Z
    .end local v7    # "$i$f$ancestors-6rFNWt0":I
    .end local v8    # "result$iv":Ljava/lang/Object;
    .end local v38    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 485
    .local v8, "ancestors":Ljava/util/List;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onCancelIndirectPointerInput()V

    .line 486
    if-eqz v8, :cond_2a

    move-object v0, v8

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1947
    .local v1, "$i$f$fastForEach":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1b
    if-ge v2, v3, :cond_28

    .line 1948
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1949
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .local v5, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v6, 0x0

    .line 486
    .local v6, "$i$a$-fastForEach-FocusOwnerImpl$dispatchIndirectPointerCancel$1$1":I
    invoke-interface {v5}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onCancelIndirectPointerInput()V

    .line 1949
    .end local v5    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v6    # "$i$a$-fastForEach-FocusOwnerImpl$dispatchIndirectPointerCancel$1$1":I
    nop

    .line 1947
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1951
    .end local v2    # "index$iv":I
    :cond_28
    nop

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    goto :goto_1c

    .line 481
    .end local v8    # "ancestors":Ljava/util/List;
    .end local v27    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v34    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerCancel$1":I
    .end local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_29
    move-object/from16 v39, v3

    .end local v3    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .restart local v39    # "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    :cond_2a
    :goto_1c
    nop

    .line 488
    return-void
.end method

.method public dispatchIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)Z
    .locals 42
    .param p1, "event"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;

    .line 442
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 445
    nop

    .line 444
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 447
    return v3

    .line 451
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    const-string/jumbo v4, "visitAncestors called on an unattached node"

    const/high16 v5, 0x200000

    const/4 v7, 0x1

    if-eqz v2, :cond_14

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v8, 0x0

    .line 1639
    .local v8, "$i$f$getIndirectPointerInput-OLwlOKw":I
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 451
    .end local v8    # "$i$f$getIndirectPointerInput-OLwlOKw":I
    nop

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v9, p0

    .local v2, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v9, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v10, 0x0

    .line 1640
    .local v10, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v11, 0x1

    .local v11, "includeSelf$iv$iv":Z
    move-object v12, v2

    .local v12, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v13, v8

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    const/4 v14, 0x0

    .line 1641
    .local v14, "$i$f$visitAncestors-Y-YKmho":I
    move v15, v11

    .local v15, "includeSelf$iv$iv$iv":Z
    move-object/from16 v16, v12

    .local v16, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v17, v13

    .local v17, "mask$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1642
    .local v18, "$i$f$visitAncestors":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v19

    .local v19, "value$iv$iv$iv$iv":Z
    const/16 v20, 0x0

    .line 1643
    .local v20, "$i$f$checkPrecondition":I
    if-nez v19, :cond_1

    .line 1644
    const/16 v21, 0x0

    .line 1642
    .local v21, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1644
    .end local v21    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1646
    :cond_1
    nop

    .line 1647
    .end local v19    # "value$iv$iv$iv$iv":Z
    .end local v20    # "$i$f$checkPrecondition":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1648
    .local v19, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    .line 1649
    .local v20, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v20, :cond_13

    .line 1650
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1651
    .local v21, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v22

    and-int v22, v22, v17

    if-eqz v22, :cond_11

    .line 1652
    :goto_1
    if-eqz v19, :cond_10

    .line 1653
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v17

    if-eqz v22, :cond_f

    .line 1654
    move-object/from16 v22, v19

    .local v22, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1641
    .local v23, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v24, v13

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v22

    .local v25, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1655
    .local v26, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v27, 0x0

    .line 1656
    .local v27, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .local v28, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v28, v25

    move-object/from16 v41, v28

    move/from16 v28, v5

    move-object/from16 v5, v41

    .line 1657
    .end local v28    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v5, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v5, :cond_e

    .line 1658
    instance-of v6, v5, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    if-eqz v6, :cond_2

    .line 1659
    move-object v6, v5

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 1660
    .local v29, "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    goto/16 :goto_c

    .line 1661
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v29    # "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    :cond_2
    move/from16 v6, v24

    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v29, v5

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 1662
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v6

    if-eqz v31, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v3

    .line 1661
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v6, :cond_c

    instance-of v6, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_c

    .line 1663
    const/4 v6, 0x0

    .line 1664
    .local v6, "count$iv$iv$iv":I
    move-object/from16 v29, v5

    check-cast v29, Landroidx/compose/ui/node/DelegatingNode;

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v30, 0x0

    .line 1665
    .local v30, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    .line 1666
    .local v31, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v31, :cond_b

    .line 1667
    move-object/from16 v32, v31

    .local v32, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 1668
    .local v33, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v34, v24

    .local v34, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v35, v32

    .local v35, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1662
    .local v36, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v37

    and-int v37, v37, v34

    if-eqz v37, :cond_4

    move/from16 v34, v7

    goto :goto_5

    :cond_4
    move/from16 v34, v3

    .line 1668
    .end local v34    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v34, :cond_a

    .line 1669
    add-int/lit8 v6, v6, 0x1

    .line 1670
    if-ne v6, v7, :cond_5

    .line 1671
    move-object/from16 v5, v32

    move-object/from16 v37, v2

    move-object/from16 v7, v32

    goto :goto_8

    .line 1675
    :cond_5
    if-nez v27, :cond_6

    const/16 v34, 0x0

    .line 1676
    .local v34, "$i$f$mutableVectorOf":I
    nop

    .line 1677
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv$iv$iv":I
    const/16 v36, 0x0

    .line 1678
    .local v36, "$i$f$MutableVector":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v37, v2

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v37, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v2, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1676
    .end local v7    # "capacity$iv$iv$iv$iv$iv":I
    .end local v36    # "$i$f$MutableVector":I
    goto :goto_6

    .line 1675
    .end local v34    # "$i$f$mutableVectorOf":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_6
    move-object/from16 v37, v2

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v1, v27

    :goto_6
    nop

    .line 1679
    .end local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v2, v5

    .line 1680
    .local v2, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1681
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1682
    :cond_7
    const/4 v5, 0x0

    .line 1684
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v7, v32

    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v7, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v7, v32

    .line 1687
    .end local v2    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v27, v1

    goto :goto_8

    .line 1668
    .end local v1    # "stack$iv$iv$iv":Ljava/lang/Object;
    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v37, v2

    move-object/from16 v7, v32

    .line 1687
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    nop

    .line 1667
    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 1688
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto :goto_4

    .line 1690
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move-object/from16 v37, v2

    .line 1691
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v30    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v31    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v1, 0x1

    if-ne v6, v1, :cond_d

    .line 1693
    move-object/from16 v1, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1661
    .end local v6    # "count$iv$iv$iv":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    move-object/from16 v37, v2

    .line 1696
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1698
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v37, v2

    .line 1641
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1654
    .end local v22    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 1653
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1699
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_9
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v5, v28

    move-object/from16 v2, v37

    goto/16 :goto_1

    .line 1652
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move-object/from16 v37, v2

    move/from16 v28, v5

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_a

    .line 1651
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1702
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    .line 1703
    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    move-object/from16 v19, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v5, v28

    move-object/from16 v2, v37

    .end local v21    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1705
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1641
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "includeSelf$iv$iv$iv":Z
    .end local v16    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "mask$iv$iv$iv":I
    .end local v18    # "$i$f$visitAncestors":I
    .end local v19    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1706
    .end local v11    # "includeSelf$iv$iv":Z
    .end local v12    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v14    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v6, 0x0

    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v10    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_c
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    goto :goto_d

    .line 451
    :cond_14
    move/from16 v28, v5

    const/4 v6, 0x0

    .line 450
    :goto_d
    nop

    .line 453
    .local v6, "focusedIndirectPointerInputNode":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    if-eqz v6, :cond_31

    move-object v1, v6

    .local v1, "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v7, 0x0

    .line 1707
    .local v7, "$i$f$getIndirectPointerInput-OLwlOKw":I
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 454
    .end local v7    # "$i$f$getIndirectPointerInput-OLwlOKw":I
    nop

    .line 1708
    .local v5, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v7, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1710
    const/4 v8, 0x0

    .line 1708
    .local v8, "includeSelf$iv":Z
    const/4 v9, 0x0

    .line 1712
    .local v9, "$i$f$ancestors-6rFNWt0":I
    const/4 v10, 0x0

    .line 1713
    .local v10, "result$iv":Ljava/lang/Object;
    move v11, v8

    .restart local v11    # "includeSelf$iv$iv":Z
    move v12, v7

    .local v12, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v13, v5

    .local v13, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v14, 0x0

    .line 1714
    .restart local v14    # "$i$f$visitAncestors-Y-YKmho":I
    move v15, v11

    .restart local v15    # "includeSelf$iv$iv$iv":Z
    move-object/from16 v16, v13

    .restart local v16    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v17, v12

    .restart local v17    # "mask$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1715
    .restart local v18    # "$i$f$visitAncestors":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v19

    .local v19, "value$iv$iv$iv$iv":Z
    const/16 v20, 0x0

    .line 1716
    .local v20, "$i$f$checkPrecondition":I
    if-nez v19, :cond_15

    .line 1717
    const/16 v21, 0x0

    .line 1715
    .local v21, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1717
    .end local v21    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1719
    :cond_15
    nop

    .line 1720
    .end local v19    # "value$iv$iv$iv$iv":Z
    .end local v20    # "$i$f$checkPrecondition":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 1721
    .local v4, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v19

    .line 1722
    .local v19, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_e
    if-eqz v19, :cond_28

    .line 1723
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 1724
    .local v20, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v21

    and-int v21, v21, v17

    if-eqz v21, :cond_26

    .line 1725
    :goto_f
    if-eqz v4, :cond_25

    .line 1726
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v17

    if-eqz v21, :cond_24

    .line 1727
    move-object/from16 v21, v4

    .local v21, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 1714
    .local v22, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v23, v12

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v24, v21

    .local v24, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 1728
    .local v25, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v26, 0x0

    .line 1729
    .local v26, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v27, v24

    move-object/from16 v3, v27

    .line 1730
    .end local v27    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_10
    if-eqz v3, :cond_23

    .line 1731
    move/from16 v28, v2

    .end local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .local v28, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    instance-of v2, v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    if-eqz v2, :cond_17

    .line 1732
    move-object v2, v3

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 1733
    .local v29, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv":I
    if-nez v10, :cond_16

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, v30

    check-cast v10, Ljava/util/List;

    .line 1734
    :cond_16
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    nop

    .line 1732
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v29    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv":I
    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_17

    .line 1736
    :cond_17
    move/from16 v2, v23

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v29, v3

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 1737
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v2

    if-eqz v31, :cond_18

    const/4 v2, 0x1

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    .line 1736
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_11
    if-eqz v2, :cond_22

    instance-of v2, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_22

    .line 1738
    const/4 v2, 0x0

    .line 1739
    .local v2, "count$iv$iv$iv":I
    move-object/from16 v29, v3

    check-cast v29, Landroidx/compose/ui/node/DelegatingNode;

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v30, 0x0

    .line 1740
    .local v30, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    .line 1741
    .restart local v31    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_12
    if-eqz v31, :cond_20

    .line 1742
    move-object/from16 v32, v31

    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 1743
    .restart local v33    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v34, v23

    .local v34, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v36, v32

    .local v36, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v37, 0x0

    .line 1737
    .local v37, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v38

    and-int v38, v38, v34

    if-eqz v38, :cond_19

    const/16 v34, 0x1

    goto :goto_13

    :cond_19
    const/16 v34, 0x0

    .line 1743
    .end local v34    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v36    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "$i$f$isKind-H91voCI$ui":I
    :goto_13
    if-eqz v34, :cond_1f

    .line 1744
    add-int/lit8 v2, v2, 0x1

    .line 1745
    move-object/from16 v34, v3

    const/4 v3, 0x1

    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v34, "node$iv$iv$iv":Ljava/lang/Object;
    if-ne v2, v3, :cond_1a

    .line 1746
    move-object/from16 v3, v32

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v4, v32

    const/4 v5, 0x0

    .end local v34    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    goto :goto_16

    .line 1750
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v34    # "node$iv$iv$iv":Ljava/lang/Object;
    :cond_1a
    if-nez v26, :cond_1b

    const/4 v3, 0x0

    .line 1751
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 1752
    move/from16 v36, v2

    .end local v2    # "count$iv$iv$iv":I
    .local v36, "count$iv$iv$iv":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv$iv":I
    const/16 v37, 0x0

    .line 1753
    .local v37, "$i$f$MutableVector":I
    move/from16 v38, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v38, "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v39, v4

    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v39, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v40, v5

    const/4 v5, 0x0

    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v40, "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1751
    .end local v2    # "capacity$iv$iv$iv$iv$iv":I
    .end local v37    # "$i$f$MutableVector":I
    goto :goto_14

    .line 1750
    .end local v36    # "count$iv$iv$iv":I
    .end local v38    # "$i$f$mutableVectorOf":I
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "count$iv$iv$iv":I
    .restart local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_1b
    move/from16 v36, v2

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v5, 0x0

    .end local v2    # "count$iv$iv$iv":I
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v36    # "count$iv$iv$iv":I
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v3, v26

    :goto_14
    nop

    .line 1754
    .end local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v3, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v34

    .line 1755
    .local v2, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_1d

    .line 1756
    if-eqz v3, :cond_1c

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1757
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v34, v4

    .line 1759
    :cond_1d
    if-eqz v3, :cond_1e

    move-object/from16 v4, v32

    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .end local v4    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1e
    move-object/from16 v4, v32

    .line 1762
    .end local v2    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_15
    move-object/from16 v26, v3

    move-object/from16 v3, v34

    move/from16 v2, v36

    goto :goto_16

    .line 1743
    .end local v34    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v36    # "count$iv$iv$iv":I
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "count$iv$iv$iv":I
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    .local v4, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1f
    move-object/from16 v34, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v4, v32

    const/4 v5, 0x0

    .line 1762
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_16
    nop

    .line 1742
    .end local v4    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 1763
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    goto :goto_12

    .line 1765
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_20
    move-object/from16 v34, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v5, 0x0

    .line 1766
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v30    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v31    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v34    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_21

    .line 1768
    move/from16 v2, v28

    move-object/from16 v3, v34

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    goto/16 :goto_10

    .line 1766
    :cond_21
    move-object/from16 v3, v34

    goto :goto_17

    .line 1736
    .end local v2    # "count$iv$iv$iv":I
    .end local v34    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_22
    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1771
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_17
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move/from16 v2, v28

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    goto/16 :goto_10

    .line 1773
    .end local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_23
    move/from16 v28, v2

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1714
    .end local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v24    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v26    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1727
    .end local v21    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_18

    .line 1726
    .end local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_24
    move/from16 v28, v2

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v4, 0x1

    move v5, v3

    .line 1774
    .end local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_18
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v4, v2

    move v3, v5

    move/from16 v2, v28

    move-object/from16 v5, v40

    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_f

    .line 1725
    .end local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_25
    move/from16 v28, v2

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    const/4 v4, 0x1

    move v5, v3

    .end local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v35, v4

    move-object/from16 v4, v39

    goto :goto_19

    .line 1724
    .end local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v39    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_26
    move/from16 v28, v2

    move-object/from16 v40, v5

    const/16 v35, 0x1

    move v5, v3

    .line 1777
    .end local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_19
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v19

    .line 1778
    if-eqz v19, :cond_27

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1a

    :cond_27
    const/4 v2, 0x0

    :goto_1a
    move-object v4, v2

    move v3, v5

    move/from16 v2, v28

    move-object/from16 v5, v40

    .end local v20    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_e

    .line 1780
    .end local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_28
    move/from16 v28, v2

    move-object/from16 v40, v5

    const/16 v35, 0x1

    move v5, v3

    .line 1714
    .end local v2    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "includeSelf$iv$iv$iv":Z
    .end local v16    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "mask$iv$iv$iv":I
    .end local v18    # "$i$f$visitAncestors":I
    .end local v19    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    .restart local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1781
    .end local v11    # "includeSelf$iv$iv":Z
    .end local v12    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v13    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v14    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 454
    .end local v7    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "includeSelf$iv":Z
    .end local v9    # "$i$f$ancestors-6rFNWt0":I
    .end local v10    # "result$iv":Ljava/lang/Object;
    .end local v40    # "$this$ancestors_u2d6rFNWt0_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 457
    .local v10, "ancestors":Ljava/util/List;
    if-eqz v10, :cond_2b

    move-object v2, v10

    .local v2, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1782
    .local v3, "$i$f$fastForEachReversed":I
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2a

    :cond_29
    move v7, v4

    .local v7, "index$iv":I
    add-int/lit8 v4, v4, -0x1

    .line 1783
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1784
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v11, 0x0

    .line 458
    .local v11, "$i$a$-fastForEachReversed-FocusOwnerImpl$dispatchIndirectPointerEvent$1$1":I
    sget-object v12, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v9, v0, v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 459
    nop

    .line 1784
    .end local v9    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v11    # "$i$a$-fastForEachReversed-FocusOwnerImpl$dispatchIndirectPointerEvent$1$1":I
    nop

    .line 1782
    .end local v8    # "item$iv":Ljava/lang/Object;
    if-gez v4, :cond_29

    .line 1786
    .end local v7    # "index$iv":I
    :cond_2a
    nop

    .line 460
    .end local v2    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEachReversed":I
    :cond_2b
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 463
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 464
    if-eqz v10, :cond_2d

    move-object v2, v10

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1787
    .local v3, "$i$f$fastForEach":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_1b
    if-ge v4, v7, :cond_2c

    .line 1788
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1789
    .restart local v8    # "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .restart local v9    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v11, 0x0

    .line 464
    .local v11, "$i$a$-fastForEach-FocusOwnerImpl$dispatchIndirectPointerEvent$1$2":I
    sget-object v12, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v9, v0, v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 1789
    .end local v9    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v11    # "$i$a$-fastForEach-FocusOwnerImpl$dispatchIndirectPointerEvent$1$2":I
    nop

    .line 1787
    .end local v8    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1791
    .end local v4    # "index$iv":I
    :cond_2c
    nop

    .line 467
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEach":I
    :cond_2d
    if-eqz v10, :cond_30

    move-object v2, v10

    .local v2, "$this$fastForEachReversed$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 1792
    .local v3, "$i$f$fastForEachReversed":I
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2f

    :cond_2e
    move v7, v4

    .restart local v7    # "index$iv":I
    add-int/lit8 v4, v4, -0x1

    .line 1793
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1794
    .restart local v8    # "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .restart local v9    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    const/4 v11, 0x0

    .line 468
    .local v11, "$i$a$-fastForEachReversed-FocusOwnerImpl$dispatchIndirectPointerEvent$1$3":I
    sget-object v12, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v9, v0, v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 469
    nop

    .line 1794
    .end local v9    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v11    # "$i$a$-fastForEachReversed-FocusOwnerImpl$dispatchIndirectPointerEvent$1$3":I
    nop

    .line 1792
    .end local v8    # "item$iv":Ljava/lang/Object;
    if-gez v4, :cond_2e

    .line 1796
    .end local v7    # "index$iv":I
    :cond_2f
    nop

    .line 470
    .end local v2    # "$this$fastForEachReversed$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEachReversed":I
    :cond_30
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->onIndirectPointerEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 471
    nop

    .end local v1    # "node":Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
    .end local v10    # "ancestors":Ljava/util/List;
    .end local v28    # "$i$a$-let-FocusOwnerImpl$dispatchIndirectPointerEvent$1":I
    goto :goto_1c

    .line 453
    :cond_31
    move v5, v3

    const/16 v35, 0x1

    :goto_1c
    nop

    .line 473
    invoke-interface {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastAny$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1797
    .local v2, "$i$f$fastAny":I
    move-object v3, v1

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 1798
    .local v4, "$i$f$fastForEach":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    :goto_1d
    if-ge v7, v8, :cond_33

    .line 1799
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1800
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1797
    .local v11, "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .local v12, "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    const/4 v13, 0x0

    .line 473
    .local v13, "$i$a$-fastAny-FocusOwnerImpl$dispatchIndirectPointerEvent$isConsumed$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v12

    .line 1797
    .end local v12    # "it":Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .end local v13    # "$i$a$-fastAny-FocusOwnerImpl$dispatchIndirectPointerEvent$isConsumed$1":I
    if-eqz v12, :cond_32

    move/from16 v3, v35

    goto :goto_1e

    .line 1800
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-fastForEach-ListUtilsKt$fastAny$1$iv":I
    :cond_32
    nop

    .line 1798
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 1802
    .end local v7    # "index$iv$iv":I
    :cond_33
    nop

    .line 1803
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move v3, v5

    .line 473
    .end local v1    # "$this$fastAny$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastAny":I
    :goto_1e
    nop

    .line 474
    .local v3, "isConsumed":Z
    return v3
.end method

.method public dispatchInterceptedSoftKeyboardEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 44
    .param p1, "$v$c$androidx-compose-ui-input-key-KeyEvent$-keyEvent$0"    # Landroid/view/KeyEvent;

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 395
    nop

    .line 394
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 398
    return v3

    .line 404
    :cond_0
    nop

    .line 402
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 403
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    .line 404
    const-string/jumbo v4, "visitAncestors called on an unattached node"

    const/high16 v5, 0x20000

    const/4 v7, 0x1

    if-eqz v2, :cond_14

    .line 402
    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    .line 404
    const/4 v8, 0x0

    .line 1135
    .local v8, "$i$f$getSoftKeyboardKeyInput-OLwlOKw":I
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 404
    .end local v8    # "$i$f$getSoftKeyboardKeyInput-OLwlOKw":I
    nop

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v9, p0

    .local v2, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v9, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v10, 0x0

    .line 1136
    .local v10, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v11, 0x1

    .local v11, "includeSelf$iv$iv":Z
    move-object v12, v2

    .local v12, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v13, v8

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    const/4 v14, 0x0

    .line 1137
    .local v14, "$i$f$visitAncestors-Y-YKmho":I
    move v15, v11

    .local v15, "includeSelf$iv$iv$iv":Z
    move-object/from16 v16, v12

    .local v16, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v17, v13

    .local v17, "mask$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1138
    .local v18, "$i$f$visitAncestors":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v19

    .local v19, "value$iv$iv$iv$iv":Z
    const/16 v20, 0x0

    .line 1139
    .local v20, "$i$f$checkPrecondition":I
    if-nez v19, :cond_1

    .line 1140
    const/16 v21, 0x0

    .line 1138
    .local v21, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1140
    .end local v21    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1142
    :cond_1
    nop

    .line 1143
    .end local v19    # "value$iv$iv$iv$iv":Z
    .end local v20    # "$i$f$checkPrecondition":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1144
    .local v19, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    .line 1145
    .local v20, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v20, :cond_13

    .line 1146
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1147
    .local v21, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v22

    and-int v22, v22, v17

    if-eqz v22, :cond_11

    .line 1148
    :goto_1
    if-eqz v19, :cond_10

    .line 1149
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v17

    if-eqz v22, :cond_f

    .line 1150
    move-object/from16 v22, v19

    .local v22, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1137
    .local v23, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v24, v13

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v22

    .local v25, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1151
    .local v26, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v27, 0x0

    .line 1152
    .local v27, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .local v28, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v28, v25

    move-object/from16 v43, v28

    move/from16 v28, v5

    move-object/from16 v5, v43

    .line 1153
    .end local v28    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v5, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v5, :cond_e

    .line 1154
    instance-of v6, v5, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v6, :cond_2

    .line 1155
    move-object v6, v5

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 1156
    .local v29, "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    goto/16 :goto_c

    .line 1157
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v29    # "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    :cond_2
    move/from16 v6, v24

    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v29, v5

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 1158
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v6

    if-eqz v31, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v3

    .line 1157
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v6, :cond_c

    instance-of v6, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_c

    .line 1159
    const/4 v6, 0x0

    .line 1160
    .local v6, "count$iv$iv$iv":I
    move-object/from16 v29, v5

    check-cast v29, Landroidx/compose/ui/node/DelegatingNode;

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v30, 0x0

    .line 1161
    .local v30, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    .line 1162
    .local v31, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v31, :cond_b

    .line 1163
    move-object/from16 v32, v31

    .local v32, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 1164
    .local v33, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v34, v24

    .local v34, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v35, v32

    .local v35, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1158
    .local v36, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v37

    and-int v37, v37, v34

    if-eqz v37, :cond_4

    move/from16 v34, v7

    goto :goto_5

    :cond_4
    move/from16 v34, v3

    .line 1164
    .end local v34    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v34, :cond_a

    .line 1165
    add-int/lit8 v6, v6, 0x1

    .line 1166
    if-ne v6, v7, :cond_5

    .line 1167
    move-object/from16 v5, v32

    move-object/from16 v37, v2

    move-object/from16 v7, v32

    goto :goto_8

    .line 1171
    :cond_5
    if-nez v27, :cond_6

    const/16 v34, 0x0

    .line 1172
    .local v34, "$i$f$mutableVectorOf":I
    nop

    .line 1173
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv$iv$iv":I
    const/16 v36, 0x0

    .line 1174
    .local v36, "$i$f$MutableVector":I
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v37, v2

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v37, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v2, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1172
    .end local v7    # "capacity$iv$iv$iv$iv$iv":I
    .end local v36    # "$i$f$MutableVector":I
    goto :goto_6

    .line 1171
    .end local v34    # "$i$f$mutableVectorOf":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_6
    move-object/from16 v37, v2

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v0, v27

    :goto_6
    nop

    .line 1175
    .end local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v2, v5

    .line 1176
    .local v2, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1177
    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_7
    const/4 v5, 0x0

    .line 1180
    :cond_8
    if-eqz v0, :cond_9

    move-object/from16 v7, v32

    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v7, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v7, v32

    .line 1183
    .end local v2    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v27, v0

    goto :goto_8

    .line 1164
    .end local v0    # "stack$iv$iv$iv":Ljava/lang/Object;
    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v37, v2

    move-object/from16 v7, v32

    .line 1183
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    nop

    .line 1163
    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 1184
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto :goto_4

    .line 1186
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move-object/from16 v37, v2

    .line 1187
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v30    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v31    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v0, 0x1

    if-ne v6, v0, :cond_d

    .line 1189
    move-object/from16 v0, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1157
    .end local v6    # "count$iv$iv$iv":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    move-object/from16 v37, v2

    .line 1192
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1194
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v37, v2

    .line 1137
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1150
    .end local v22    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 1149
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1195
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_9
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v28

    move-object/from16 v2, v37

    goto/16 :goto_1

    .line 1148
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move-object/from16 v37, v2

    move/from16 v28, v5

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_a

    .line 1147
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1198
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    .line 1199
    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_b
    move-object/from16 v19, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v28

    move-object/from16 v2, v37

    .end local v21    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1201
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1137
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "includeSelf$iv$iv$iv":Z
    .end local v16    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "mask$iv$iv$iv":I
    .end local v18    # "$i$f$visitAncestors":I
    .end local v19    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1202
    .end local v11    # "includeSelf$iv$iv":Z
    .end local v12    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v14    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v6, 0x0

    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v10    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_c
    check-cast v6, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    goto :goto_d

    .line 404
    :cond_14
    move/from16 v28, v5

    const/4 v6, 0x0

    .line 401
    :goto_d
    nop

    .line 406
    .local v6, "focusedSoftKeyboardInterceptionNode":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    if-eqz v6, :cond_4c

    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    .line 407
    const/4 v2, 0x0

    .line 1203
    .local v2, "$i$f$getSoftKeyboardKeyInput-OLwlOKw":I
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 406
    .end local v2    # "$i$f$getSoftKeyboardKeyInput-OLwlOKw":I
    nop

    .local v0, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v5, p0

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v5, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v7, 0x0

    .line 1204
    .local v7, "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    move v8, v2

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v9, v0

    .line 1205
    .local v9, "$this$ancestors_u2d6rFNWt0_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1207
    const/4 v10, 0x0

    .line 1205
    .local v10, "includeSelf$iv$iv":Z
    const/4 v11, 0x0

    .line 1209
    .local v11, "$i$f$ancestors-6rFNWt0":I
    const/4 v12, 0x0

    .line 1210
    .local v12, "result$iv$iv":Ljava/lang/Object;
    move v13, v10

    .local v13, "includeSelf$iv$iv$iv":Z
    move-object v14, v9

    .local v14, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v15, v8

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv$iv":I
    const/16 v16, 0x0

    .line 1211
    .local v16, "$i$f$visitAncestors-Y-YKmho":I
    move/from16 v17, v13

    .local v17, "includeSelf$iv$iv$iv$iv":Z
    move-object/from16 v18, v14

    .local v18, "$this$visitAncestors$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v19, v15

    .local v19, "mask$iv$iv$iv$iv":I
    const/16 v20, 0x0

    .line 1212
    .local v20, "$i$f$visitAncestors":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v21

    .local v21, "value$iv$iv$iv$iv$iv":Z
    const/16 v22, 0x0

    .line 1213
    .local v22, "$i$f$checkPrecondition":I
    if-nez v21, :cond_15

    .line 1214
    const/16 v23, 0x0

    .line 1212
    .local v23, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv$iv":I
    nop

    .line 1214
    .end local v23    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv$iv":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1216
    :cond_15
    nop

    .line 1217
    .end local v21    # "value$iv$iv$iv$iv$iv":Z
    .end local v22    # "$i$f$checkPrecondition":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 1218
    .local v4, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v21

    .line 1219
    .local v21, "layout$iv$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_e
    if-eqz v21, :cond_28

    .line 1220
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1221
    .local v22, "head$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v23

    and-int v23, v23, v19

    if-eqz v23, :cond_26

    .line 1222
    :goto_f
    if-eqz v4, :cond_25

    .line 1223
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v19

    if-eqz v23, :cond_24

    .line 1224
    move-object/from16 v23, v4

    .local v23, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1211
    .local v24, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv$iv":I
    move/from16 v25, v15

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1225
    .local v27, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v28, 0x0

    .line 1226
    .local v28, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .local v29, "node$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v29, v26

    move-object/from16 v3, v29

    .line 1227
    .end local v29    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_10
    if-eqz v3, :cond_23

    .line 1228
    move-object/from16 v30, v0

    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v0, v3, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v0, :cond_17

    .line 1229
    move-object v0, v3

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 1230
    .local v31, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv$iv":I
    if-nez v12, :cond_16

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v32

    check-cast v12, Ljava/util/List;

    .line 1231
    :cond_16
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    nop

    .line 1229
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v31    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv$iv":I
    move/from16 v37, v2

    goto/16 :goto_18

    .line 1233
    :cond_17
    move/from16 v0, v25

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    move-object/from16 v31, v3

    .local v31, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 1234
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v0

    if-eqz v33, :cond_18

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    .line 1233
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_11
    if-eqz v0, :cond_22

    instance-of v0, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_22

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "count$iv$iv$iv$iv":I
    move-object/from16 v31, v3

    check-cast v31, Landroidx/compose/ui/node/DelegatingNode;

    .local v31, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v32, 0x0

    .line 1237
    .local v32, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v33

    .line 1238
    .local v33, "node$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_12
    if-eqz v33, :cond_20

    .line 1239
    move-object/from16 v34, v33

    .local v34, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1240
    .local v36, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv$iv":I
    move/from16 v37, v25

    .local v37, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    move-object/from16 v38, v34

    .local v38, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v39, 0x0

    .line 1234
    .local v39, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v40

    and-int v40, v40, v37

    if-eqz v40, :cond_19

    const/16 v37, 0x1

    goto :goto_13

    :cond_19
    const/16 v37, 0x0

    .line 1240
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    .end local v38    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "$i$f$isKind-H91voCI$ui":I
    :goto_13
    if-eqz v37, :cond_1f

    .line 1241
    add-int/lit8 v0, v0, 0x1

    .line 1242
    move/from16 v37, v2

    const/4 v2, 0x1

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v37, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-ne v0, v2, :cond_1a

    .line 1243
    move-object/from16 v3, v34

    move-object/from16 v41, v3

    goto :goto_17

    .line 1247
    :cond_1a
    if-nez v28, :cond_1b

    const/4 v2, 0x0

    .line 1248
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1249
    move/from16 v38, v0

    .end local v0    # "count$iv$iv$iv$iv":I
    .local v38, "count$iv$iv$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv$iv$iv":I
    const/16 v39, 0x0

    .line 1250
    .local v39, "$i$f$MutableVector":I
    move/from16 v40, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v40, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v41, v3

    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v41, "node$iv$iv$iv$iv":Ljava/lang/Object;
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v42, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv$iv$iv":I
    .local v42, "capacity$iv$iv$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1248
    .end local v39    # "$i$f$MutableVector":I
    .end local v42    # "capacity$iv$iv$iv$iv$iv$iv":I
    goto :goto_14

    .line 1247
    .end local v38    # "count$iv$iv$iv$iv":I
    .end local v40    # "$i$f$mutableVectorOf":I
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv$iv$iv":I
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_1b
    move/from16 v38, v0

    move-object/from16 v41, v3

    .end local v0    # "count$iv$iv$iv$iv":I
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v38    # "count$iv$iv$iv$iv":I
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v28

    :goto_14
    nop

    .line 1251
    .end local v28    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v41

    .line 1252
    .local v0, "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_1d

    .line 1253
    if-eqz v2, :cond_1c

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_1c
    const/4 v3, 0x0

    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    goto :goto_15

    .line 1252
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v3, v41

    .line 1256
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_15
    if-eqz v2, :cond_1e

    move-object/from16 v28, v3

    move-object/from16 v3, v34

    .end local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v28, "node$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .end local v28    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1e
    move-object/from16 v28, v3

    move-object/from16 v3, v34

    .line 1259
    .end local v0    # "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_16
    move-object/from16 v41, v28

    move/from16 v0, v38

    move-object/from16 v28, v2

    goto :goto_17

    .line 1240
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v38    # "count$iv$iv$iv$iv":I
    .local v0, "count$iv$iv$iv$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v28, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1f
    move/from16 v37, v2

    move-object/from16 v41, v3

    move-object/from16 v3, v34

    .line 1259
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 1239
    .end local v3    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv$iv":I
    nop

    .line 1260
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v33

    move/from16 v2, v37

    move-object/from16 v3, v41

    goto :goto_12

    .line 1262
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_20
    move/from16 v37, v2

    move-object/from16 v41, v3

    .line 1263
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v31    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v33    # "node$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1265
    move-object/from16 v0, v30

    move/from16 v2, v37

    move-object/from16 v3, v41

    goto/16 :goto_10

    .line 1263
    :cond_21
    move-object/from16 v3, v41

    goto :goto_18

    .line 1233
    .end local v0    # "count$iv$iv$iv$iv":I
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_22
    move/from16 v37, v2

    .line 1268
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_18
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v0, v30

    move/from16 v2, v37

    goto/16 :goto_10

    .line 1270
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_23
    move-object/from16 v30, v0

    move/from16 v37, v2

    .line 1211
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v26    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v28    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1224
    .end local v23    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv$iv":I
    goto :goto_19

    .line 1223
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_24
    move-object/from16 v30, v0

    move/from16 v37, v2

    .line 1271
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_19
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move-object/from16 v0, v30

    move/from16 v2, v37

    const/4 v3, 0x0

    goto/16 :goto_f

    .line 1222
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_25
    move-object/from16 v30, v0

    move/from16 v37, v2

    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_1a

    .line 1221
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_26
    move-object/from16 v30, v0

    move/from16 v37, v2

    .line 1274
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_1a
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v21

    .line 1275
    if-eqz v21, :cond_27

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1b

    :cond_27
    const/4 v0, 0x0

    :goto_1b
    move-object v4, v0

    move-object/from16 v0, v30

    move/from16 v2, v37

    const/4 v3, 0x0

    .end local v22    # "head$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_e

    .line 1277
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_28
    move-object/from16 v30, v0

    move/from16 v37, v2

    .line 1211
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "includeSelf$iv$iv$iv$iv":Z
    .end local v18    # "$this$visitAncestors$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v19    # "mask$iv$iv$iv$iv":I
    .end local v20    # "$i$f$visitAncestors":I
    .end local v21    # "layout$iv$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1278
    .end local v13    # "includeSelf$iv$iv$iv":Z
    .end local v14    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv$iv":I
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 1204
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v9    # "$this$ancestors_u2d6rFNWt0_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "includeSelf$iv$iv":Z
    .end local v11    # "$i$f$ancestors-6rFNWt0":I
    .end local v12    # "result$iv$iv":Ljava/lang/Object;
    nop

    .line 1279
    .local v12, "ancestors$iv":Ljava/util/List;
    if-eqz v12, :cond_2c

    move-object v0, v12

    .local v0, "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1280
    .local v2, "$i$f$fastForEachReversed":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2b

    :cond_29
    move v4, v3

    .local v4, "index$iv$iv":I
    add-int/lit8 v3, v3, -0x1

    .line 1281
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1282
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    const/4 v10, 0x0

    .line 408
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$1":I
    invoke-interface {v9, v1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/16 v35, 0x1

    return v35

    .line 1282
    .end local v9    # "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$1":I
    :cond_2a
    nop

    .line 1280
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    if-gez v3, :cond_29

    .line 1284
    .end local v4    # "index$iv$iv":I
    :cond_2b
    nop

    .line 1285
    .end local v0    # "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEachReversed":I
    :cond_2c
    invoke-interface/range {v30 .. v30}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v2, v37

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v3, 0x0

    .line 1286
    .local v3, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v4, 0x0

    .line 1287
    .local v4, "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "node$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    .line 1288
    :goto_1c
    if-eqz v8, :cond_3a

    .line 1289
    instance-of v9, v8, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v9, :cond_2e

    .line 1290
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .restart local v9    # "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    const/4 v10, 0x0

    .line 408
    .restart local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$1":I
    invoke-interface {v9, v1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v11

    if-eqz v11, :cond_2d

    const/16 v35, 0x1

    return v35

    .line 1290
    .end local v9    # "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$1":I
    :cond_2d
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    goto/16 :goto_22

    .line 1291
    :cond_2e
    move v9, v2

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 1234
    .local v11, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_2f

    const/4 v9, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v9, 0x0

    .line 1291
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$f$isKind-H91voCI$ui":I
    :goto_1d
    if-eqz v9, :cond_38

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_38

    .line 1296
    const/4 v9, 0x0

    .line 1297
    .local v9, "count$iv$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v11, 0x0

    .line 1298
    .local v11, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1299
    .local v13, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1e
    if-eqz v13, :cond_37

    .line 1300
    move-object v14, v13

    .local v14, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1301
    .local v15, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v16, v2

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1234
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_30

    const/16 v16, 0x1

    goto :goto_1f

    :cond_30
    const/16 v16, 0x0

    .line 1301
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_1f
    if-eqz v16, :cond_35

    .line 1302
    add-int/lit8 v9, v9, 0x1

    .line 1303
    move-object/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-ne v9, v0, :cond_31

    .line 1304
    move-object v8, v14

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_21

    .line 1308
    :cond_31
    if-nez v4, :cond_32

    const/4 v0, 0x0

    .line 1309
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1310
    move/from16 v17, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v17, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1311
    .local v18, "$i$f$MutableVector":I
    move/from16 v19, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v20, v3

    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v21, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1309
    .end local v18    # "$i$f$MutableVector":I
    .end local v21    # "capacity$iv$iv$iv$iv":I
    goto :goto_20

    .line 1308
    .end local v17    # "$i$f$mutableVectorOf":I
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_32
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    move-object v2, v4

    :goto_20
    move-object v4, v2

    .line 1312
    move-object v0, v8

    .line 1313
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_34

    .line 1314
    if-eqz v4, :cond_33

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_33
    const/4 v2, 0x0

    move-object v8, v2

    .line 1317
    :cond_34
    if-eqz v4, :cond_36

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1301
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_35
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1320
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_36
    :goto_21
    nop

    .line 1300
    .end local v14    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1321
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move-object/from16 v0, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_1e

    .line 1323
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_37
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1324
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v11    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_39

    .line 1326
    move-object/from16 v0, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_1c

    .line 1291
    .end local v9    # "count$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_38
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1329
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_39
    :goto_22
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_1c

    .line 1331
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_3a
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1332
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 409
    .local v0, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$2":I
    nop

    .line 1332
    .end local v0    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$2":I
    nop

    .line 1333
    invoke-interface/range {v30 .. v30}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v2, v37

    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v3, 0x0

    .line 1334
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v4, 0x0

    .line 1335
    .restart local v4    # "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .restart local v8    # "node$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    .line 1336
    :goto_23
    if-eqz v8, :cond_48

    .line 1337
    instance-of v9, v8, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v9, :cond_3c

    .line 1338
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    const/4 v10, 0x0

    .line 410
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$3":I
    invoke-interface {v9, v1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v11

    if-eqz v11, :cond_3b

    const/16 v35, 0x1

    return v35

    .line 1338
    .end local v9    # "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$3":I
    :cond_3b
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    goto/16 :goto_29

    .line 1339
    :cond_3c
    move v9, v2

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 1234
    .local v11, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_3d

    const/4 v9, 0x1

    goto :goto_24

    :cond_3d
    const/4 v9, 0x0

    .line 1339
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$f$isKind-H91voCI$ui":I
    :goto_24
    if-eqz v9, :cond_46

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_46

    .line 1344
    const/4 v9, 0x0

    .line 1345
    .local v9, "count$iv$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v11, 0x0

    .line 1346
    .local v11, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1347
    .restart local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_25
    if-eqz v13, :cond_45

    .line 1348
    move-object v14, v13

    .restart local v14    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1349
    .restart local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v16, v2

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1234
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_3e

    const/16 v16, 0x1

    goto :goto_26

    :cond_3e
    const/16 v16, 0x0

    .line 1349
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_26
    if-eqz v16, :cond_43

    .line 1350
    add-int/lit8 v9, v9, 0x1

    .line 1351
    move-object/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-ne v9, v0, :cond_3f

    .line 1352
    move-object v8, v14

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_28

    .line 1356
    :cond_3f
    if-nez v4, :cond_40

    const/4 v0, 0x0

    .line 1357
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1358
    move/from16 v17, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v17, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1359
    .local v18, "$i$f$MutableVector":I
    move/from16 v19, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v20, v3

    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .restart local v21    # "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1357
    .end local v18    # "$i$f$MutableVector":I
    .end local v21    # "capacity$iv$iv$iv$iv":I
    goto :goto_27

    .line 1356
    .end local v17    # "$i$f$mutableVectorOf":I
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_40
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    move-object v2, v4

    :goto_27
    move-object v4, v2

    .line 1360
    move-object v0, v8

    .line 1361
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_42

    .line 1362
    if-eqz v4, :cond_41

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_41
    const/4 v2, 0x0

    move-object v8, v2

    .line 1365
    :cond_42
    if-eqz v4, :cond_44

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1349
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_43
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1368
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_44
    :goto_28
    nop

    .line 1348
    .end local v14    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1369
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move-object/from16 v0, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_25

    .line 1371
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_45
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1372
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v11    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_47

    .line 1374
    move-object/from16 v0, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_23

    .line 1339
    .end local v9    # "count$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_46
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1377
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_47
    :goto_29
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_23

    .line 1379
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_48
    move-object/from16 v16, v0

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1380
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    if-eqz v12, :cond_4b

    move-object v0, v12

    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1381
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv$iv":I
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2a
    if-ge v3, v4, :cond_4a

    .line 1382
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1383
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    const/4 v10, 0x0

    .line 410
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$3":I
    invoke-interface {v9, v1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v11

    if-eqz v11, :cond_49

    const/16 v35, 0x1

    return v35

    :cond_49
    const/16 v35, 0x1

    .line 1383
    .end local v9    # "it":Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchInterceptedSoftKeyboardEvent$3":I
    nop

    .line 1381
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1385
    .end local v3    # "index$iv$iv":I
    :cond_4a
    nop

    .line 1386
    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :cond_4b
    nop

    .line 412
    .end local v5    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v7    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v12    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_4c
    const/16 v29, 0x0

    return v29
.end method

.method public dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 48
    .param p1, "$v$c$androidx-compose-ui-input-key-KeyEvent$-keyEvent$0"    # Landroid/view/KeyEvent;
    .param p2, "onFocusedItem"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 367
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "FocusOwnerImpl:dispatchKeyEvent"

    .local v3, "sectionName$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 806
    .local v4, "$i$f$trace":I
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 807
    nop

    .line 808
    const/4 v0, 0x0

    .line 368
    .local v0, "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    :try_start_0
    iget-object v5, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 370
    :try_start_1
    const-string v5, "FocusRelatedWarning: Dispatching key event while focus system is invalidated."

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    nop

    .line 810
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v6

    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    move-object/from16 v43, v3

    goto/16 :goto_41

    .line 373
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    :cond_0
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->validateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trace":I
    goto :goto_0

    .line 375
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    :cond_1
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->findFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 377
    .local v5, "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    const-string/jumbo v7, "visitAncestors called on an unattached node"

    const/16 v8, 0x2000

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    :try_start_3
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/node/DelegatableNode;

    invoke-direct {v1, v11}, Landroidx/compose/ui/focus/FocusOwnerImpl;->lastLocalKeyInputNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v42, v0

    move-object/from16 v43, v3

    move/from16 v32, v8

    goto/16 :goto_1f

    .line 378
    :cond_3
    :goto_1
    if-eqz v5, :cond_17

    :try_start_4
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v12, 0x0

    .line 811
    .local v12, "$i$f$getKeyInput-OLwlOKw":I
    invoke-static {v8}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v13

    .line 378
    .end local v12    # "$i$f$getKeyInput-OLwlOKw":I
    nop

    .local v11, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v12, p0

    .local v12, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v14, 0x0

    .line 812
    .local v14, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v15, 0x1

    .local v15, "includeSelf$iv$iv":Z
    move/from16 v16, v13

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object/from16 v17, v11

    .local v17, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v18, 0x0

    .line 813
    .local v18, "$i$f$visitAncestors-Y-YKmho":I
    move/from16 v19, v15

    .local v19, "includeSelf$iv$iv$iv":Z
    move-object/from16 v20, v17

    .local v20, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v21, v16

    .local v21, "mask$iv$iv$iv":I
    const/16 v22, 0x0

    .line 814
    .local v22, "$i$f$visitAncestors":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .local v23, "value$iv$iv$iv$iv":Z
    const/16 v24, 0x0

    .line 815
    .local v24, "$i$f$checkPrecondition":I
    if-nez v23, :cond_4

    .line 816
    const/16 v25, 0x0

    .line 814
    .local v25, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 816
    .end local v25    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    :try_start_5
    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 818
    :cond_4
    nop

    .line 819
    .end local v23    # "value$iv$iv$iv$iv":Z
    .end local v24    # "$i$f$checkPrecondition":I
    :try_start_6
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 820
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v24

    .line 821
    .local v24, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_2
    if-eqz v24, :cond_16

    .line 822
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    .line 823
    .local v25, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v26

    and-int v26, v26, v21

    if-eqz v26, :cond_14

    .line 824
    :goto_3
    if-eqz v23, :cond_13

    .line 825
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v21

    if-eqz v26, :cond_12

    .line 826
    move-object/from16 v26, v23

    .local v26, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 813
    .local v27, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v28, v16

    .local v28, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v29, v26

    .local v29, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 827
    .local v30, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v31, 0x0

    .line 828
    .local v31, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v32, 0x0

    .local v32, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v32, v29

    move-object/from16 v47, v32

    move/from16 v32, v8

    move-object/from16 v8, v47

    .line 829
    .end local v32    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v8, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_4
    if-eqz v8, :cond_11

    .line 830
    instance-of v9, v8, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v9, :cond_5

    .line 831
    move-object v9, v8

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v33, 0x0

    .line 832
    .local v33, "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    move/from16 v42, v0

    move-object/from16 v43, v3

    goto/16 :goto_f

    .line 833
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v33    # "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    :cond_5
    move/from16 v9, v28

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v33, v8

    .local v33, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v34, 0x0

    .line 834
    .local v34, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v35

    and-int v35, v35, v9

    if-eqz v35, :cond_6

    move v9, v10

    goto :goto_5

    :cond_6
    move v9, v6

    .line 833
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v33    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v9, :cond_f

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_f

    .line 835
    const/4 v9, 0x0

    .line 836
    .local v9, "count$iv$iv$iv":I
    move-object/from16 v33, v8

    check-cast v33, Landroidx/compose/ui/node/DelegatingNode;

    .local v33, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v34, 0x0

    .line 837
    .local v34, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v35

    .line 838
    .local v35, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v35, :cond_e

    .line 839
    move-object/from16 v36, v35

    .local v36, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v37, 0x0

    .line 840
    .local v37, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v38, v28

    .local v38, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v39, v36

    .local v39, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v40, 0x0

    .line 834
    .local v40, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v39 .. v39}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v41
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    and-int v41, v41, v38

    if-eqz v41, :cond_7

    move/from16 v38, v10

    goto :goto_7

    :cond_7
    move/from16 v38, v6

    .line 840
    .end local v38    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v39    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v38, :cond_d

    .line 841
    add-int/lit8 v9, v9, 0x1

    .line 842
    if-ne v9, v10, :cond_8

    .line 843
    move-object/from16 v8, v36

    :try_start_7
    sget-object v38, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v42, v0

    move-object/from16 v43, v3

    move-object/from16 v3, v36

    goto :goto_a

    .line 847
    :cond_8
    if-nez v31, :cond_9

    const/16 v38, 0x0

    .line 848
    .local v38, "$i$f$mutableVectorOf":I
    nop

    .line 849
    const/16 v10, 0x10

    .local v10, "capacity$iv$iv$iv$iv$iv":I
    const/16 v40, 0x0

    .line 850
    .local v40, "$i$f$MutableVector":I
    :try_start_8
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v42, v0

    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .local v42, "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    new-array v0, v10, [Landroidx/compose/ui/Modifier$Node;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v43, v3

    const/4 v3, 0x0

    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .local v43, "sectionName$iv":Ljava/lang/String;
    :try_start_9
    invoke-direct {v6, v0, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 848
    .end local v10    # "capacity$iv$iv$iv$iv$iv":I
    .end local v40    # "$i$f$MutableVector":I
    goto :goto_8

    .line 847
    .end local v38    # "$i$f$mutableVectorOf":I
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_9
    move/from16 v42, v0

    move-object/from16 v43, v3

    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    move-object/from16 v6, v31

    :goto_8
    nop

    .line 851
    .end local v31    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v6, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v0, v8

    .line 852
    .local v0, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_b

    .line 853
    if-eqz v6, :cond_a

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 854
    :cond_a
    const/4 v8, 0x0

    .line 856
    :cond_b
    if-eqz v6, :cond_c

    move-object/from16 v3, v36

    .end local v36    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_9

    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v36    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v3, v36

    .end local v0    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    move-object/from16 v31, v6

    .end local v6    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v31    # "stack$iv$iv$iv":Ljava/lang/Object;
    :goto_a
    goto :goto_b

    .line 840
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .local v0, "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .local v3, "sectionName$iv":Ljava/lang/String;
    .restart local v36    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move/from16 v42, v0

    move-object/from16 v43, v3

    move-object/from16 v3, v36

    .line 859
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v36    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :goto_b
    nop

    .line 839
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 860
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v35, v0

    move/from16 v0, v42

    move-object/from16 v3, v43

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_6

    .line 862
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .local v3, "sectionName$iv":Ljava/lang/String;
    :cond_e
    move/from16 v42, v0

    move-object/from16 v43, v3

    .line 863
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v33    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v34    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v35    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v9, v0, :cond_10

    .line 865
    move/from16 v0, v42

    move-object/from16 v3, v43

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 833
    .end local v9    # "count$iv$iv$iv":I
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_f
    move/from16 v42, v0

    move-object/from16 v43, v3

    .line 868
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :cond_10
    invoke-static/range {v31 .. v31}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v8, v0

    move/from16 v0, v42

    move-object/from16 v3, v43

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 870
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_11
    move/from16 v42, v0

    move-object/from16 v43, v3

    .line 813
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v8    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v28    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v29    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v31    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 826
    .end local v26    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_c

    .line 825
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_12
    move/from16 v42, v0

    move-object/from16 v43, v3

    move/from16 v32, v8

    .line 871
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v23, v0

    move/from16 v8, v32

    move/from16 v0, v42

    move-object/from16 v3, v43

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 824
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_13
    move/from16 v42, v0

    move-object/from16 v43, v3

    move/from16 v32, v8

    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    goto :goto_d

    .line 823
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_14
    move/from16 v42, v0

    move-object/from16 v43, v3

    move/from16 v32, v8

    .line 874
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :goto_d
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    move-object/from16 v24, v0

    .line 875
    if-eqz v24, :cond_15

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    move-object/from16 v23, v0

    move/from16 v8, v32

    move/from16 v0, v42

    move-object/from16 v3, v43

    const/4 v6, 0x0

    const/4 v10, 0x1

    .end local v25    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_2

    .line 877
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_16
    move/from16 v42, v0

    move-object/from16 v43, v3

    move/from16 v32, v8

    .line 813
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .end local v19    # "includeSelf$iv$iv$iv":Z
    .end local v20    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "mask$iv$iv$iv":I
    .end local v22    # "$i$f$visitAncestors":I
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 878
    .end local v15    # "includeSelf$iv$iv":Z
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v17    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v18    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v9, 0x0

    .line 378
    .end local v11    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v12    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v14    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    :goto_f
    check-cast v9, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v9, :cond_18

    invoke-interface {v9}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto/16 :goto_1f

    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v3    # "sectionName$iv":Ljava/lang/String;
    :cond_17
    move/from16 v42, v0

    move-object/from16 v43, v3

    move/from16 v32, v8

    .line 377
    .end local v0    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :cond_18
    nop

    .line 379
    iget-object v0, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 879
    .local v3, "$i$f$getKeyInput-OLwlOKw":I
    invoke-static/range {v32 .. v32}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v6

    .line 379
    .end local v3    # "$i$f$getKeyInput-OLwlOKw":I
    nop

    .local v0, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v3, 0x0

    .line 880
    .local v3, "$i$f$nearestAncestor-64DMado":I
    move v8, v6

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v9, v0

    .line 881
    .local v9, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 883
    const/4 v10, 0x0

    .line 881
    .local v10, "includeSelf$iv$iv":Z
    const/4 v11, 0x0

    .line 885
    .local v11, "$i$f$visitAncestors-Y-YKmho":I
    move v12, v10

    .local v12, "includeSelf$iv$iv$iv":Z
    move-object v13, v9

    .local v13, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v14, v8

    .local v14, "mask$iv$iv$iv":I
    const/4 v15, 0x0

    .line 886
    .local v15, "$i$f$visitAncestors":I
    invoke-interface {v13}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v16

    .local v16, "value$iv$iv$iv$iv":Z
    const/16 v17, 0x0

    .line 887
    .local v17, "$i$f$checkPrecondition":I
    if-nez v16, :cond_19

    .line 888
    const/16 v18, 0x0

    .line 886
    .local v18, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 888
    .end local v18    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 890
    :cond_19
    nop

    .line 891
    .end local v16    # "value$iv$iv$iv$iv":Z
    .end local v17    # "$i$f$checkPrecondition":I
    invoke-interface {v13}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 892
    .local v16, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v17

    .line 893
    .local v17, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_10
    if-eqz v17, :cond_2b

    .line 894
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 895
    .local v18, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v19

    and-int v19, v19, v14

    if-eqz v19, :cond_29

    .line 896
    :goto_11
    if-eqz v16, :cond_28

    .line 897
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v14

    if-eqz v19, :cond_27

    .line 898
    move-object/from16 v19, v16

    .local v19, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 885
    .local v20, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v21, v8

    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v22, v19

    .local v22, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 899
    .local v23, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v24, 0x0

    .line 900
    .local v24, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .local v25, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v22

    move-object/from16 v47, v25

    move-object/from16 v25, v0

    move-object/from16 v0, v47

    .line 901
    .local v0, "node$iv$iv$iv":Ljava/lang/Object;
    .local v25, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_12
    if-eqz v0, :cond_26

    .line 902
    instance-of v1, v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v1, :cond_1a

    .line 903
    move-object v1, v0

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 904
    .local v26, "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    goto/16 :goto_1e

    .line 905
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    :cond_1a
    move/from16 v1, v21

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v26, v0

    .local v26, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 906
    .local v27, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v1

    if-eqz v28, :cond_1b

    const/4 v1, 0x1

    goto :goto_13

    :cond_1b
    const/4 v1, 0x0

    .line 905
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v26    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui":I
    :goto_13
    if-eqz v1, :cond_25

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_25

    .line 907
    const/4 v1, 0x0

    .line 908
    .local v1, "count$iv$iv$iv":I
    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/ui/node/DelegatingNode;

    .local v26, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v27, 0x0

    .line 909
    .local v27, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v28

    .line 910
    .local v28, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_14
    if-eqz v28, :cond_23

    .line 911
    move-object/from16 v29, v28

    .local v29, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 912
    .local v30, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v31, v21

    .local v31, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v33, v29

    .local v33, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v34, 0x0

    .line 906
    .local v34, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v35

    and-int v35, v35, v31

    if-eqz v35, :cond_1c

    const/16 v31, 0x1

    goto :goto_15

    :cond_1c
    const/16 v31, 0x0

    .line 912
    .end local v31    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v33    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "$i$f$isKind-H91voCI$ui":I
    :goto_15
    if-eqz v31, :cond_22

    .line 913
    add-int/lit8 v1, v1, 0x1

    .line 914
    move-object/from16 v31, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v31, "node$iv$iv$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_1d

    .line 915
    move-object/from16 v0, v29

    .end local v31    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    sget-object v31, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v35, v1

    move/from16 v36, v3

    move-object/from16 v3, v29

    goto :goto_18

    .line 919
    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v31    # "node$iv$iv$iv":Ljava/lang/Object;
    :cond_1d
    if-nez v24, :cond_1e

    const/4 v0, 0x0

    .line 920
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 921
    move/from16 v33, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v33, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv$iv":I
    const/16 v34, 0x0

    .line 922
    .local v34, "$i$f$MutableVector":I
    move/from16 v35, v1

    .end local v1    # "count$iv$iv$iv":I
    .local v35, "count$iv$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v36, v3

    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .local v36, "$i$f$nearestAncestor-64DMado":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v37, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv$iv":I
    .local v37, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 920
    .end local v34    # "$i$f$MutableVector":I
    .end local v37    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_16

    .line 919
    .end local v33    # "$i$f$mutableVectorOf":I
    .end local v35    # "count$iv$iv$iv":I
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "count$iv$iv$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_1e
    move/from16 v35, v1

    move/from16 v36, v3

    .end local v1    # "count$iv$iv$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "count$iv$iv$iv":I
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    move-object/from16 v1, v24

    :goto_16
    nop

    .line 923
    .end local v24    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v31

    .line 924
    .local v0, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_20

    .line 925
    if-eqz v1, :cond_1f

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 926
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v31, v3

    .line 928
    :cond_20
    if-eqz v1, :cond_21

    move-object/from16 v3, v29

    .end local v29    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_17

    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v29    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_21
    move-object/from16 v3, v29

    .end local v0    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_17
    move-object/from16 v24, v1

    move-object/from16 v0, v31

    .end local v1    # "stack$iv$iv$iv":Ljava/lang/Object;
    .end local v31    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "stack$iv$iv$iv":Ljava/lang/Object;
    :goto_18
    move/from16 v1, v35

    goto :goto_19

    .line 912
    .end local v35    # "count$iv$iv$iv":I
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .local v1, "count$iv$iv$iv":I
    .local v3, "$i$f$nearestAncestor-64DMado":I
    .restart local v29    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_22
    move-object/from16 v31, v0

    move/from16 v36, v3

    move-object/from16 v3, v29

    .line 931
    .end local v29    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    :goto_19
    nop

    .line 911
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 932
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v28, v3

    move/from16 v3, v36

    goto/16 :goto_14

    .line 934
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .local v3, "$i$f$nearestAncestor-64DMado":I
    :cond_23
    move-object/from16 v31, v0

    move/from16 v36, v3

    .line 935
    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v26    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v27    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v28    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_24

    .line 937
    move-object/from16 v1, p0

    move-object/from16 v0, v31

    move/from16 v3, v36

    goto/16 :goto_12

    .line 935
    :cond_24
    move-object/from16 v0, v31

    goto :goto_1a

    .line 905
    .end local v1    # "count$iv$iv$iv":I
    .end local v31    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .restart local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_25
    move/from16 v36, v3

    .line 940
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    :goto_1a
    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object v0, v1

    move-object/from16 v1, p0

    move/from16 v3, v36

    goto/16 :goto_12

    .line 942
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_26
    move/from16 v36, v3

    .line 885
    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v24    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    nop

    .line 898
    .end local v19    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_1b

    .line 897
    .end local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .local v0, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_27
    move-object/from16 v25, v0

    move/from16 v36, v3

    .line 943
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    :goto_1b
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v0, v25

    move/from16 v3, v36

    goto/16 :goto_11

    .line 896
    .end local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_28
    move-object/from16 v25, v0

    move/from16 v36, v3

    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    goto :goto_1c

    .line 895
    .end local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_29
    move-object/from16 v25, v0

    move/from16 v36, v3

    .line 946
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    :goto_1c
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    move-object/from16 v17, v0

    .line 947
    if-eqz v17, :cond_2a

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1d

    :cond_2a
    const/4 v0, 0x0

    :goto_1d
    move-object/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v0, v25

    move/from16 v3, v36

    .end local v18    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_10

    .line 949
    .end local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    .restart local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_2b
    move-object/from16 v25, v0

    move/from16 v36, v3

    .line 885
    .end local v0    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v12    # "includeSelf$iv$iv$iv":Z
    .end local v13    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v14    # "mask$iv$iv$iv":I
    .end local v15    # "$i$f$visitAncestors":I
    .end local v16    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v36    # "$i$f$nearestAncestor-64DMado":I
    nop

    .line 950
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v9    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "includeSelf$iv$iv":Z
    .end local v11    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v1, 0x0

    .line 379
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v36    # "$i$f$nearestAncestor-64DMado":I
    :goto_1e
    check-cast v1, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_1f

    :cond_2c
    const/4 v11, 0x0

    .line 377
    :goto_1f
    nop

    .line 376
    nop

    .line 381
    .local v11, "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    if-eqz v11, :cond_65

    move-object v0, v11

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    .line 382
    const/4 v1, 0x0

    .line 951
    .local v1, "$i$f$getKeyInput-OLwlOKw":I
    invoke-static/range {v32 .. v32}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 381
    .end local v1    # "$i$f$getKeyInput-OLwlOKw":I
    nop

    .local v0, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v6, 0x0

    .line 952
    .local v6, "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    move v8, v3

    .restart local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v9, v0

    .line 953
    .local v9, "$this$ancestors_u2d6rFNWt0_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 955
    const/4 v10, 0x0

    .line 953
    .restart local v10    # "includeSelf$iv$iv":Z
    const/4 v12, 0x0

    .line 957
    .local v12, "$i$f$ancestors-6rFNWt0":I
    const/4 v13, 0x0

    .line 958
    .local v13, "result$iv$iv":Ljava/lang/Object;
    move v14, v10

    .local v14, "includeSelf$iv$iv$iv":Z
    move v15, v8

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv$iv":I
    move-object/from16 v16, v9

    .local v16, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v17, 0x0

    .line 959
    .local v17, "$i$f$visitAncestors-Y-YKmho":I
    move/from16 v18, v14

    .local v18, "includeSelf$iv$iv$iv$iv":Z
    move/from16 v19, v15

    .local v19, "mask$iv$iv$iv$iv":I
    move-object/from16 v20, v16

    .local v20, "$this$visitAncestors$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v21, 0x0

    .line 960
    .local v21, "$i$f$visitAncestors":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v22

    .local v22, "value$iv$iv$iv$iv$iv":Z
    const/16 v23, 0x0

    .line 961
    .local v23, "$i$f$checkPrecondition":I
    if-nez v22, :cond_2d

    .line 962
    const/16 v24, 0x0

    .line 960
    .local v24, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv$iv":I
    nop

    .line 962
    .end local v24    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv$iv":I
    invoke-static {v7}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 964
    :cond_2d
    nop

    .line 965
    .end local v22    # "value$iv$iv$iv$iv$iv":Z
    .end local v23    # "$i$f$checkPrecondition":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    .line 966
    .local v7, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v22

    .line 967
    .local v22, "layout$iv$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_20
    if-eqz v22, :cond_40

    .line 968
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 969
    .local v23, "head$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v24

    and-int v24, v24, v19

    if-eqz v24, :cond_3e

    .line 970
    :goto_21
    if-eqz v7, :cond_3d

    .line 971
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v19

    if-eqz v24, :cond_3c

    .line 972
    move-object/from16 v24, v7

    .local v24, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 959
    .local v25, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv$iv":I
    move/from16 v26, v15

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 973
    .local v28, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v29, 0x0

    .line 974
    .local v29, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v30, 0x0

    .local v30, "node$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v30, v27

    move-object/from16 v47, v30

    move-object/from16 v30, v0

    move-object/from16 v0, v47

    .line 975
    .local v0, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v30, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_22
    if-eqz v0, :cond_3b

    .line 976
    move-object/from16 v31, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .local v31, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    instance-of v1, v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v1, :cond_2f

    .line 977
    move-object v1, v0

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 978
    .local v32, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv$iv":I
    if-nez v13, :cond_2e

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    check-cast v33, Ljava/util/List;

    move-object/from16 v13, v33

    .line 979
    :cond_2e
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    nop

    .line 977
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v32    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv$iv":I
    move/from16 v45, v3

    goto/16 :goto_2b

    .line 981
    :cond_2f
    move/from16 v1, v26

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    move-object/from16 v32, v0

    .local v32, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 982
    .local v33, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v34

    and-int v34, v34, v1

    if-eqz v34, :cond_30

    const/4 v1, 0x1

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    .line 981
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    .end local v32    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$f$isKind-H91voCI$ui":I
    :goto_23
    if-eqz v1, :cond_3a

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_3a

    .line 983
    const/4 v1, 0x0

    .line 984
    .local v1, "count$iv$iv$iv$iv":I
    move-object/from16 v32, v0

    check-cast v32, Landroidx/compose/ui/node/DelegatingNode;

    .local v32, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v33, 0x0

    .line 985
    .local v33, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v34

    .line 986
    .local v34, "node$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_24
    if-eqz v34, :cond_38

    .line 987
    move-object/from16 v35, v34

    .local v35, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 988
    .local v36, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv$iv":I
    move/from16 v37, v26

    .local v37, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    move-object/from16 v38, v35

    .local v38, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v40, 0x0

    .line 982
    .local v40, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v44

    and-int v44, v44, v37

    if-eqz v44, :cond_31

    const/16 v37, 0x1

    goto :goto_25

    :cond_31
    const/16 v37, 0x0

    .line 988
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    .end local v38    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v40    # "$i$f$isKind-H91voCI$ui":I
    :goto_25
    if-eqz v37, :cond_37

    .line 989
    add-int/lit8 v1, v1, 0x1

    .line 990
    move-object/from16 v37, v0

    const/4 v0, 0x1

    .end local v0    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v37, "node$iv$iv$iv$iv":Ljava/lang/Object;
    if-ne v1, v0, :cond_32

    .line 991
    move-object/from16 v0, v35

    .end local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    sget-object v37, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v44, v1

    move/from16 v45, v3

    move-object v3, v0

    move-object/from16 v0, v35

    goto :goto_29

    .line 995
    .end local v0    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_32
    if-nez v29, :cond_33

    const/4 v0, 0x0

    .line 996
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 997
    move/from16 v38, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v38, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv$iv$iv":I
    const/16 v40, 0x0

    .line 998
    .local v40, "$i$f$MutableVector":I
    move/from16 v44, v1

    .end local v1    # "count$iv$iv$iv$iv":I
    .local v44, "count$iv$iv$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v45, v3

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v45, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v46, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv$iv$iv":I
    .local v46, "capacity$iv$iv$iv$iv$iv$iv":I
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 996
    .end local v40    # "$i$f$MutableVector":I
    .end local v46    # "capacity$iv$iv$iv$iv$iv$iv":I
    goto :goto_26

    .line 995
    .end local v38    # "$i$f$mutableVectorOf":I
    .end local v44    # "count$iv$iv$iv$iv":I
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "count$iv$iv$iv$iv":I
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_33
    move/from16 v44, v1

    move/from16 v45, v3

    .end local v1    # "count$iv$iv$iv$iv":I
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v44    # "count$iv$iv$iv$iv":I
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v1, v29

    :goto_26
    nop

    .line 999
    .end local v29    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v37

    .line 1000
    .local v0, "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_35

    .line 1001
    if-eqz v1, :cond_34

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1002
    :cond_34
    const/4 v3, 0x0

    .end local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    goto :goto_27

    .line 1000
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_35
    move-object/from16 v3, v37

    .line 1004
    .end local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_27
    if-eqz v1, :cond_36

    move-object/from16 v29, v0

    move-object/from16 v0, v35

    .end local v35    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v29, "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_28

    .end local v29    # "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v35    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_36
    move-object/from16 v29, v0

    move-object/from16 v0, v35

    .end local v35    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_28
    move-object/from16 v29, v1

    .end local v1    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .local v29, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_29
    move/from16 v1, v44

    goto :goto_2a

    .line 988
    .end local v44    # "count$iv$iv$iv$iv":I
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "count$iv$iv$iv$iv":I
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v35    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_37
    move-object/from16 v37, v0

    move/from16 v45, v3

    move-object/from16 v0, v35

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v35    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v3, v37

    .line 1007
    .end local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_2a
    nop

    .line 987
    .end local v0    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv$iv":I
    nop

    .line 1008
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v34, v0

    move-object v0, v3

    move/from16 v3, v45

    goto/16 :goto_24

    .line 1010
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_38
    move-object/from16 v37, v0

    move/from16 v45, v3

    .line 1011
    .end local v0    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v32    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v33    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v34    # "node$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_39

    .line 1013
    move-object/from16 v1, v31

    move-object/from16 v0, v37

    move/from16 v3, v45

    goto/16 :goto_22

    .line 1011
    :cond_39
    move-object/from16 v0, v37

    goto :goto_2b

    .line 981
    .end local v1    # "count$iv$iv$iv$iv":I
    .end local v37    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_3a
    move/from16 v45, v3

    .line 1016
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_2b
    invoke-static/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object v0, v1

    move-object/from16 v1, v31

    move/from16 v3, v45

    goto/16 :goto_22

    .line 1018
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_3b
    move-object/from16 v31, v1

    move/from16 v45, v3

    .line 959
    .end local v0    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v27    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v29    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 972
    .end local v24    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv$iv":I
    goto :goto_2c

    .line 971
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_3c
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v45, v3

    .line 1019
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_2c
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v3, v45

    goto/16 :goto_21

    .line 970
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_3d
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v45, v3

    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_2d

    .line 969
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_3e
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v45, v3

    .line 1022
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_2d
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    move-object/from16 v22, v0

    .line 1023
    if-eqz v22, :cond_3f

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_2e

    :cond_3f
    const/4 v0, 0x0

    :goto_2e
    move-object v7, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v3, v45

    .end local v23    # "head$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_20

    .line 1025
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_40
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v45, v3

    .line 959
    .end local v0    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v7    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "includeSelf$iv$iv$iv$iv":Z
    .end local v19    # "mask$iv$iv$iv$iv":I
    .end local v20    # "$this$visitAncestors$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$i$f$visitAncestors":I
    .end local v22    # "layout$iv$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1026
    .end local v14    # "includeSelf$iv$iv$iv":Z
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv$iv":I
    .end local v16    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v17    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 952
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v9    # "$this$ancestors_u2d6rFNWt0_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "includeSelf$iv$iv":Z
    .end local v12    # "$i$f$ancestors-6rFNWt0":I
    .end local v13    # "result$iv$iv":Ljava/lang/Object;
    nop

    .line 1027
    .local v13, "ancestors$iv":Ljava/util/List;
    if-eqz v13, :cond_44

    move-object v0, v13

    .local v0, "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1028
    .local v1, "$i$f$fastForEachReversed":I
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_43

    :cond_41
    move v7, v3

    .local v7, "index$iv$iv":I
    add-int/lit8 v3, v3, -0x1

    .line 1029
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1030
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    const/4 v10, 0x0

    .line 383
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$1":I
    invoke-interface {v9, v2}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v12, :cond_42

    .line 810
    .end local v0    # "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEachReversed":I
    .end local v4    # "$i$f$trace":I
    .end local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v7    # "index$iv$iv":I
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$1":I
    .end local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_2f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/16 v39, 0x1

    return v39

    .line 1030
    .restart local v0    # "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    .restart local v1    # "$i$f$fastForEachReversed":I
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .restart local v7    # "index$iv$iv":I
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    .restart local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v13    # "ancestors$iv":Ljava/util/List;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_42
    nop

    .line 1028
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    if-gez v3, :cond_41

    .line 1032
    .end local v7    # "index$iv$iv":I
    :cond_43
    nop

    .end local v0    # "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEachReversed":I
    :try_start_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1033
    :cond_44
    invoke-interface/range {v30 .. v30}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v1, v45

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v3, 0x0

    .line 1034
    .local v3, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v7, 0x0

    .line 1035
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "node$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    .line 1036
    :goto_30
    if-eqz v8, :cond_52

    .line 1037
    instance-of v9, v8, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v9, :cond_46

    .line 1038
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .restart local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    const/4 v10, 0x0

    .line 383
    .restart local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$1":I
    invoke-interface {v9, v2}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v12

    if-eqz v12, :cond_45

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "$i$f$trace":I
    .end local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v7    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    .end local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$1":I
    .end local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_2f

    .line 1038
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .local v7, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v13    # "ancestors$iv":Ljava/util/List;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_45
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    goto/16 :goto_37

    .line 1039
    :cond_46
    move v9, v1

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 982
    .local v12, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v14, :cond_47

    const/4 v9, 0x1

    goto :goto_31

    :cond_47
    const/4 v9, 0x0

    .line 1039
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$isKind-H91voCI$ui":I
    :goto_31
    if-eqz v9, :cond_50

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_50

    .line 1044
    const/4 v9, 0x0

    .line 1045
    .local v9, "count$iv$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v12, 0x0

    .line 1046
    .local v12, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .line 1047
    .local v14, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_32
    if-eqz v14, :cond_4f

    .line 1048
    move-object v15, v14

    .local v15, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1049
    .local v16, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v17, v1

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v18, v15

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 982
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v17

    if-eqz v20, :cond_48

    const/16 v17, 0x1

    goto :goto_33

    :cond_48
    const/16 v17, 0x0

    .line 1049
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    :goto_33
    if-eqz v17, :cond_4e

    .line 1050
    add-int/lit8 v9, v9, 0x1

    .line 1051
    move-object/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-ne v9, v0, :cond_49

    .line 1052
    move-object v0, v15

    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v8, v0

    move/from16 v20, v1

    move/from16 v21, v3

    goto :goto_35

    .line 1056
    .end local v0    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_49
    if-nez v7, :cond_4a

    const/4 v0, 0x0

    .line 1057
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1058
    move/from16 v18, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v18, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v19, 0x0

    .line 1059
    .local v19, "$i$f$MutableVector":I
    move/from16 v20, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v21, v3

    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v21, "$i$f$dispatchForKind-6rFNWt0":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v22, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v22, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1057
    .end local v19    # "$i$f$MutableVector":I
    .end local v22    # "capacity$iv$iv$iv$iv":I
    goto :goto_34

    .line 1056
    .end local v18    # "$i$f$mutableVectorOf":I
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_4a
    move/from16 v20, v1

    move/from16 v21, v3

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    move-object v1, v7

    :goto_34
    nop

    .line 1060
    .end local v7    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v1, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v0, v8

    .line 1061
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_4c

    .line 1062
    if-eqz v1, :cond_4b

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1063
    :cond_4b
    const/4 v8, 0x0

    .line 1065
    :cond_4c
    if-eqz v1, :cond_4d

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_4d
    move-object v7, v1

    .end local v1    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_35
    goto :goto_36

    .line 1049
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_4e
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1068
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    :goto_36
    nop

    .line 1048
    .end local v15    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1069
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v14, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v21

    goto :goto_32

    .line 1071
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_4f
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1072
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v12    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v14    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_51

    .line 1074
    nop

    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "count$iv$iv":I
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v21

    .local v8, "node$iv$iv":Ljava/lang/Object;
    goto/16 :goto_30

    .line 1039
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v7, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_50
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1077
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_51
    :goto_37
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v21

    .local v8, "node$iv$iv":Ljava/lang/Object;
    goto/16 :goto_30

    .line 1036
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_52
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1079
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v7, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    nop

    .line 1080
    .end local v7    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v0, 0x0

    .line 384
    .local v0, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$2":I
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    .end local v0    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$2":I
    .end local v4    # "$i$f$trace":I
    .end local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto/16 :goto_2f

    .line 1080
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .restart local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v13    # "ancestors$iv":Ljava/util/List;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_53
    nop

    .line 1081
    invoke-interface/range {v30 .. v30}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move/from16 v1, v45

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v3, 0x0

    .line 1082
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v7, 0x0

    .line 1083
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "node$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    .line 1084
    :goto_38
    if-eqz v8, :cond_61

    .line 1085
    instance-of v9, v8, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v9, :cond_55

    .line 1086
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    const/4 v10, 0x0

    .line 385
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$3":I
    invoke-interface {v9, v2}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v12

    if-eqz v12, :cond_54

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "$i$f$trace":I
    .end local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v7    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    .end local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$3":I
    .end local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto/16 :goto_2f

    .line 1086
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .local v7, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v13    # "ancestors$iv":Ljava/util/List;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_54
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    goto/16 :goto_3f

    .line 1087
    :cond_55
    move v9, v1

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 982
    .local v12, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v9

    if-eqz v14, :cond_56

    const/4 v9, 0x1

    goto :goto_39

    :cond_56
    const/4 v9, 0x0

    .line 1087
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$f$isKind-H91voCI$ui":I
    :goto_39
    if-eqz v9, :cond_5f

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_5f

    .line 1092
    const/4 v9, 0x0

    .line 1093
    .local v9, "count$iv$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v12, 0x0

    .line 1094
    .local v12, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .line 1095
    .restart local v14    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_3a
    if-eqz v14, :cond_5e

    .line 1096
    move-object v15, v14

    .restart local v15    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 1097
    .restart local v16    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v17, v1

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v18, v15

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 982
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v17

    if-eqz v20, :cond_57

    const/16 v17, 0x1

    goto :goto_3b

    :cond_57
    const/16 v17, 0x0

    .line 1097
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    :goto_3b
    if-eqz v17, :cond_5d

    .line 1098
    add-int/lit8 v9, v9, 0x1

    .line 1099
    move-object/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-ne v9, v0, :cond_58

    .line 1100
    move-object v0, v15

    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v8, v0

    move/from16 v20, v1

    move/from16 v21, v3

    goto :goto_3d

    .line 1104
    .end local v0    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_58
    if-nez v7, :cond_59

    const/4 v0, 0x0

    .line 1105
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 1106
    move/from16 v18, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v18, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v19, 0x0

    .line 1107
    .local v19, "$i$f$MutableVector":I
    move/from16 v20, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v21, v3

    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    new-array v3, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v22, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .restart local v22    # "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1105
    .end local v19    # "$i$f$MutableVector":I
    .end local v22    # "capacity$iv$iv$iv$iv":I
    goto :goto_3c

    .line 1104
    .end local v18    # "$i$f$mutableVectorOf":I
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_59
    move/from16 v20, v1

    move/from16 v21, v3

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    move-object v1, v7

    :goto_3c
    nop

    .line 1108
    .end local v7    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v1, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v0, v8

    .line 1109
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_5b

    .line 1110
    if-eqz v1, :cond_5a

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1111
    :cond_5a
    const/4 v8, 0x0

    .line 1113
    :cond_5b
    if-eqz v1, :cond_5c

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_5c
    move-object v7, v1

    .end local v1    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_3d
    goto :goto_3e

    .line 1097
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_5d
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1116
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    :goto_3e
    nop

    .line 1096
    .end local v15    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1117
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v14, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v21

    goto :goto_3a

    .line 1119
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_5e
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1120
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v12    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v14    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_60

    .line 1122
    nop

    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v9    # "count$iv$iv":I
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v21

    .local v8, "node$iv$iv":Ljava/lang/Object;
    goto/16 :goto_38

    .line 1087
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v7, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_5f
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1125
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_60
    :goto_3f
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    move-object v8, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v21

    .local v8, "node$iv$iv":Ljava/lang/Object;
    goto/16 :goto_38

    .line 1084
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_61
    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v3

    .line 1127
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v7, "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    nop

    .line 1128
    .end local v7    # "stack$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v8    # "node$iv$iv":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    if-eqz v13, :cond_64

    move-object v0, v13

    .local v0, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1129
    .local v1, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv$iv":I
    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_40
    if-ge v3, v7, :cond_63

    .line 1130
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1131
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    const/4 v10, 0x0

    .line 385
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$3":I
    invoke-interface {v9, v2}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v12

    if-eqz v12, :cond_62

    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    .end local v3    # "index$iv$iv":I
    .end local v4    # "$i$f$trace":I
    .end local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$3":I
    .end local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto/16 :goto_2f

    .restart local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .restart local v1    # "$i$f$fastForEach":I
    .restart local v3    # "index$iv$iv":I
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .restart local v8    # "item$iv$iv":Ljava/lang/Object;
    .restart local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    .restart local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$3":I
    .restart local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .restart local v13    # "ancestors$iv":Ljava/util/List;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .restart local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    .restart local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_62
    const/16 v39, 0x1

    .line 1131
    .end local v9    # "it":Landroidx/compose/ui/input/key/KeyInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchKeyEvent$1$3":I
    nop

    .line 1129
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 1133
    .end local v3    # "index$iv$iv":I
    :cond_63
    nop

    .end local v0    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1134
    :cond_64
    nop

    .end local v6    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v13    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v45    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 387
    :cond_65
    nop

    .line 810
    .end local v4    # "$i$f$trace":I
    .end local v5    # "activeFocusTarget":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v11    # "focusedKeyInputNode":Landroidx/compose/ui/Modifier$Node;
    .end local v42    # "$i$a$-trace-FocusOwnerImpl$dispatchKeyEvent$1":I
    .end local v43    # "sectionName$iv":Ljava/lang/String;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/16 v41, 0x0

    return v41

    .restart local v4    # "$i$f$trace":I
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_41

    .end local v43    # "sectionName$iv":Ljava/lang/String;
    .local v3, "sectionName$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v43, v3

    .end local v3    # "sectionName$iv":Ljava/lang/String;
    .restart local v43    # "sectionName$iv":Ljava/lang/String;
    :goto_41
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public dispatchRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 44
    .param p1, "event"    # Landroidx/compose/ui/input/rotary/RotaryScrollEvent;
    .param p2, "onFocusedItem"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 420
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 423
    nop

    .line 422
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 425
    return v3

    .line 429
    :cond_0
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->findFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    const-string/jumbo v4, "visitAncestors called on an unattached node"

    const/16 v5, 0x4000

    const/4 v7, 0x1

    if-eqz v2, :cond_14

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v8, 0x0

    .line 1387
    .local v8, "$i$f$getRotaryInput-OLwlOKw":I
    invoke-static {v5}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v8

    .line 429
    .end local v8    # "$i$f$getRotaryInput-OLwlOKw":I
    nop

    .local v2, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v9, p0

    .local v9, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v10, 0x0

    .line 1388
    .local v10, "$i$f$nearestAncestorIncludingSelf-64DMado":I
    const/4 v11, 0x1

    .local v11, "includeSelf$iv$iv":Z
    move-object v12, v2

    .local v12, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move v13, v8

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    const/4 v14, 0x0

    .line 1389
    .local v14, "$i$f$visitAncestors-Y-YKmho":I
    move v15, v11

    .local v15, "includeSelf$iv$iv$iv":Z
    move/from16 v16, v13

    .local v16, "mask$iv$iv$iv":I
    move-object/from16 v17, v12

    .local v17, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v18, 0x0

    .line 1390
    .local v18, "$i$f$visitAncestors":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v19

    .local v19, "value$iv$iv$iv$iv":Z
    const/16 v20, 0x0

    .line 1391
    .local v20, "$i$f$checkPrecondition":I
    if-nez v19, :cond_1

    .line 1392
    const/16 v21, 0x0

    .line 1390
    .local v21, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 1392
    .end local v21    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1394
    :cond_1
    nop

    .line 1395
    .end local v19    # "value$iv$iv$iv$iv":Z
    .end local v20    # "$i$f$checkPrecondition":I
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    .line 1396
    .local v19, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    .line 1397
    .local v20, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v20, :cond_13

    .line 1398
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    .line 1399
    .local v21, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v22

    and-int v22, v22, v16

    if-eqz v22, :cond_11

    .line 1400
    :goto_1
    if-eqz v19, :cond_10

    .line 1401
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v16

    if-eqz v22, :cond_f

    .line 1402
    move-object/from16 v22, v19

    .local v22, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 1389
    .local v23, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v24, v13

    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v22

    .local v25, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1403
    .local v26, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v27, 0x0

    .line 1404
    .local v27, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .local v28, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v28, v25

    move-object/from16 v43, v28

    move/from16 v28, v5

    move-object/from16 v5, v43

    .line 1405
    .end local v28    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v5, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v5, :cond_e

    .line 1406
    instance-of v6, v5, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v6, :cond_2

    .line 1407
    move-object v6, v5

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 1408
    .local v29, "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    goto/16 :goto_c

    .line 1409
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v29    # "$i$a$-visitAncestors-Y-YKmho-FocusOwnerImpl$nearestAncestorIncludingSelf$1$iv":I
    :cond_2
    move/from16 v6, v24

    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v29, v5

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 1410
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v6

    if-eqz v31, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v3

    .line 1409
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v6, :cond_c

    instance-of v6, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_c

    .line 1411
    const/4 v6, 0x0

    .line 1412
    .local v6, "count$iv$iv$iv":I
    move-object/from16 v29, v5

    check-cast v29, Landroidx/compose/ui/node/DelegatingNode;

    .local v29, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v30, 0x0

    .line 1413
    .local v30, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    .line 1414
    .local v31, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v31, :cond_b

    .line 1415
    move-object/from16 v32, v31

    .local v32, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v33, 0x0

    .line 1416
    .local v33, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v34, v24

    .local v34, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v35, v32

    .local v35, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1410
    .local v36, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v37

    and-int v37, v37, v34

    if-eqz v37, :cond_4

    move/from16 v34, v7

    goto :goto_5

    :cond_4
    move/from16 v34, v3

    .line 1416
    .end local v34    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v35    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v34, :cond_a

    .line 1417
    add-int/lit8 v6, v6, 0x1

    .line 1418
    if-ne v6, v7, :cond_5

    .line 1419
    move-object/from16 v5, v32

    move-object/from16 v37, v2

    move-object/from16 v7, v32

    goto :goto_8

    .line 1423
    :cond_5
    if-nez v27, :cond_6

    const/16 v34, 0x0

    .line 1424
    .local v34, "$i$f$mutableVectorOf":I
    nop

    .line 1425
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv$iv$iv":I
    const/16 v36, 0x0

    .line 1426
    .local v36, "$i$f$MutableVector":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v37, v2

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v37, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-array v2, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1424
    .end local v7    # "capacity$iv$iv$iv$iv$iv":I
    .end local v36    # "$i$f$MutableVector":I
    goto :goto_6

    .line 1423
    .end local v34    # "$i$f$mutableVectorOf":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_6
    move-object/from16 v37, v2

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    move-object/from16 v1, v27

    :goto_6
    nop

    .line 1427
    .end local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v2, v5

    .line 1428
    .local v2, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1429
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1430
    :cond_7
    const/4 v5, 0x0

    .line 1432
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v7, v32

    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v7, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v7, v32

    .line 1435
    .end local v2    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v27, v1

    goto :goto_8

    .line 1416
    .end local v1    # "stack$iv$iv$iv":Ljava/lang/Object;
    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v37, v2

    move-object/from16 v7, v32

    .line 1435
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_8
    nop

    .line 1415
    .end local v7    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v33    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 1436
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v31

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto :goto_4

    .line 1438
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_b
    move-object/from16 v37, v2

    .line 1439
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v30    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v31    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v1, 0x1

    if-ne v6, v1, :cond_d

    .line 1441
    move-object/from16 v1, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1409
    .end local v6    # "count$iv$iv$iv":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_c
    move-object/from16 v37, v2

    .line 1444
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_d
    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1446
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v37, v2

    .line 1389
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v27    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1402
    .end local v22    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 1401
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1447
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_9
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v19

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v5, v28

    move-object/from16 v2, v37

    goto/16 :goto_1

    .line 1400
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_10
    move-object/from16 v37, v2

    move/from16 v28, v5

    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_a

    .line 1399
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1450
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v20

    .line 1451
    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    move-object/from16 v19, v1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v5, v28

    move-object/from16 v2, v37

    .end local v21    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 1453
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move-object/from16 v37, v2

    move/from16 v28, v5

    .line 1389
    .end local v2    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v15    # "includeSelf$iv$iv$iv":Z
    .end local v16    # "mask$iv$iv$iv":I
    .end local v17    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v18    # "$i$f$visitAncestors":I
    .end local v19    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1454
    .end local v11    # "includeSelf$iv$iv":Z
    .end local v12    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v14    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v6, 0x0

    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v9    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v10    # "$i$f$nearestAncestorIncludingSelf-64DMado":I
    .end local v37    # "$this$nearestAncestorIncludingSelf_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_c
    check-cast v6, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    goto :goto_d

    .line 429
    :cond_14
    move/from16 v28, v5

    const/4 v6, 0x0

    .line 428
    :goto_d
    nop

    .line 431
    .local v6, "focusedRotaryInputNode":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    if-eqz v6, :cond_4d

    move-object v1, v6

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    .line 432
    const/4 v2, 0x0

    .line 1455
    .local v2, "$i$f$getRotaryInput-OLwlOKw":I
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 431
    .end local v2    # "$i$f$getRotaryInput-OLwlOKw":I
    nop

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v5, p0

    .local v1, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v5, "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    const/4 v7, 0x0

    .line 1456
    .local v7, "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    move v8, v2

    .local v8, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v9, v1

    .line 1457
    .local v9, "$this$ancestors_u2d6rFNWt0_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 1459
    const/4 v10, 0x0

    .line 1457
    .local v10, "includeSelf$iv$iv":Z
    const/4 v11, 0x0

    .line 1461
    .local v11, "$i$f$ancestors-6rFNWt0":I
    const/4 v12, 0x0

    .line 1462
    .local v12, "result$iv$iv":Ljava/lang/Object;
    move v13, v10

    .local v13, "includeSelf$iv$iv$iv":Z
    move v14, v8

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv$iv":I
    move-object v15, v9

    .local v15, "$this$visitAncestors_u2dY_u2dYKmho$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v16, 0x0

    .line 1463
    .local v16, "$i$f$visitAncestors-Y-YKmho":I
    move/from16 v17, v13

    .local v17, "includeSelf$iv$iv$iv$iv":Z
    move-object/from16 v18, v15

    .local v18, "$this$visitAncestors$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v19, v14

    .local v19, "mask$iv$iv$iv$iv":I
    const/16 v20, 0x0

    .line 1464
    .local v20, "$i$f$visitAncestors":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v21

    .local v21, "value$iv$iv$iv$iv$iv":Z
    const/16 v22, 0x0

    .line 1465
    .local v22, "$i$f$checkPrecondition":I
    if-nez v21, :cond_15

    .line 1466
    const/16 v23, 0x0

    .line 1464
    .local v23, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv$iv":I
    nop

    .line 1466
    .end local v23    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv$iv":I
    invoke-static {v4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1468
    :cond_15
    nop

    .line 1469
    .end local v21    # "value$iv$iv$iv$iv$iv":Z
    .end local v22    # "$i$f$checkPrecondition":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 1470
    .local v4, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v21

    .line 1471
    .local v21, "layout$iv$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_e
    if-eqz v21, :cond_28

    .line 1472
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    .line 1473
    .local v22, "head$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v23

    and-int v23, v23, v19

    if-eqz v23, :cond_26

    .line 1474
    :goto_f
    if-eqz v4, :cond_25

    .line 1475
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v19

    if-eqz v23, :cond_24

    .line 1476
    move-object/from16 v23, v4

    .local v23, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 1463
    .local v24, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv$iv":I
    move/from16 v25, v14

    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v26, v23

    .local v26, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 1477
    .local v27, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v28, 0x0

    .line 1478
    .local v28, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .local v29, "node$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v29, v26

    move-object/from16 v3, v29

    .line 1479
    .end local v29    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_10
    if-eqz v3, :cond_23

    .line 1480
    move-object/from16 v30, v1

    .end local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v1, v3, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v1, :cond_17

    .line 1481
    move-object v1, v3

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 1482
    .local v31, "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv$iv":I
    if-nez v12, :cond_16

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v32

    check-cast v12, Ljava/util/List;

    .line 1483
    :cond_16
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    nop

    .line 1481
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v31    # "$i$a$-visitAncestors-Y-YKmho-DelegatableNodeKt$ancestors$1$iv$iv":I
    move/from16 v37, v2

    goto/16 :goto_18

    .line 1485
    :cond_17
    move/from16 v1, v25

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    move-object/from16 v31, v3

    .local v31, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 1486
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v1

    if-eqz v33, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    .line 1485
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_11
    if-eqz v1, :cond_22

    instance-of v1, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_22

    .line 1487
    const/4 v1, 0x0

    .line 1488
    .local v1, "count$iv$iv$iv$iv":I
    move-object/from16 v31, v3

    check-cast v31, Landroidx/compose/ui/node/DelegatingNode;

    .local v31, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v32, 0x0

    .line 1489
    .local v32, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v33

    .line 1490
    .local v33, "node$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_12
    if-eqz v33, :cond_20

    .line 1491
    move-object/from16 v34, v33

    .local v34, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v36, 0x0

    .line 1492
    .local v36, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv$iv":I
    move/from16 v37, v25

    .local v37, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    move-object/from16 v38, v34

    .local v38, "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v39, 0x0

    .line 1486
    .local v39, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v40

    and-int v40, v40, v37

    if-eqz v40, :cond_19

    const/16 v37, 0x1

    goto :goto_13

    :cond_19
    const/16 v37, 0x0

    .line 1492
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv$iv":I
    .end local v38    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "$i$f$isKind-H91voCI$ui":I
    :goto_13
    if-eqz v37, :cond_1f

    .line 1493
    add-int/lit8 v1, v1, 0x1

    .line 1494
    move/from16 v37, v2

    const/4 v2, 0x1

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v37, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-ne v1, v2, :cond_1a

    .line 1495
    move-object/from16 v3, v34

    move-object/from16 v41, v3

    goto :goto_17

    .line 1499
    :cond_1a
    if-nez v28, :cond_1b

    const/4 v2, 0x0

    .line 1500
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 1501
    move/from16 v38, v1

    .end local v1    # "count$iv$iv$iv$iv":I
    .local v38, "count$iv$iv$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv$iv":I
    const/16 v39, 0x0

    .line 1502
    .local v39, "$i$f$MutableVector":I
    move/from16 v40, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v40, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v41, v3

    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v41, "node$iv$iv$iv$iv":Ljava/lang/Object;
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v42, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv$iv$iv":I
    .local v42, "capacity$iv$iv$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1500
    .end local v39    # "$i$f$MutableVector":I
    .end local v42    # "capacity$iv$iv$iv$iv$iv$iv":I
    goto :goto_14

    .line 1499
    .end local v38    # "count$iv$iv$iv$iv":I
    .end local v40    # "$i$f$mutableVectorOf":I
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v1, "count$iv$iv$iv$iv":I
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_1b
    move/from16 v38, v1

    move-object/from16 v41, v3

    .end local v1    # "count$iv$iv$iv$iv":I
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v38    # "count$iv$iv$iv$iv":I
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v28

    :goto_14
    nop

    .line 1503
    .end local v28    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v41

    .line 1504
    .local v1, "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_1d

    .line 1505
    if-eqz v2, :cond_1c

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_1c
    const/4 v3, 0x0

    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    goto :goto_15

    .line 1504
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v3, v41

    .line 1508
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_15
    if-eqz v2, :cond_1e

    move-object/from16 v28, v3

    move-object/from16 v3, v34

    .end local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v28, "node$iv$iv$iv$iv":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .end local v28    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1e
    move-object/from16 v28, v3

    move-object/from16 v3, v34

    .line 1511
    .end local v1    # "theNode$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_16
    move-object/from16 v41, v28

    move/from16 v1, v38

    move-object/from16 v28, v2

    goto :goto_17

    .line 1492
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v38    # "count$iv$iv$iv$iv":I
    .local v1, "count$iv$iv$iv$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    .local v28, "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_1f
    move/from16 v37, v2

    move-object/from16 v41, v3

    move-object/from16 v3, v34

    .line 1511
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :goto_17
    nop

    .line 1491
    .end local v3    # "next$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv$iv":I
    nop

    .line 1512
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v33

    move/from16 v2, v37

    move-object/from16 v3, v41

    goto :goto_12

    .line 1514
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_20
    move/from16 v37, v2

    move-object/from16 v41, v3

    .line 1515
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v31    # "this_$iv$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v32    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v33    # "node$iv$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 1517
    move-object/from16 v1, v30

    move/from16 v2, v37

    move-object/from16 v3, v41

    goto/16 :goto_10

    .line 1515
    :cond_21
    move-object/from16 v3, v41

    goto :goto_18

    .line 1485
    .end local v1    # "count$iv$iv$iv$iv":I
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v41    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    :cond_22
    move/from16 v37, v2

    .line 1520
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_18
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move-object/from16 v1, v30

    move/from16 v2, v37

    goto/16 :goto_10

    .line 1522
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_23
    move-object/from16 v30, v1

    move/from16 v37, v2

    .line 1463
    .end local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "node$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v26    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v28    # "stack$iv$iv$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1476
    .end local v23    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv$iv":I
    goto :goto_19

    .line 1475
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_24
    move-object/from16 v30, v1

    move/from16 v37, v2

    .line 1523
    .end local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_19
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move-object/from16 v1, v30

    move/from16 v2, v37

    const/4 v3, 0x0

    goto/16 :goto_f

    .line 1474
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_25
    move-object/from16 v30, v1

    move/from16 v37, v2

    .end local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_1a

    .line 1473
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_26
    move-object/from16 v30, v1

    move/from16 v37, v2

    .line 1526
    .end local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_1a
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v21

    .line 1527
    if-eqz v21, :cond_27

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_1b

    :cond_27
    const/4 v1, 0x0

    :goto_1b
    move-object v4, v1

    move-object/from16 v1, v30

    move/from16 v2, v37

    const/4 v3, 0x0

    .end local v22    # "head$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_e

    .line 1529
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_28
    move-object/from16 v30, v1

    move/from16 v37, v2

    .line 1463
    .end local v1    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "includeSelf$iv$iv$iv$iv":Z
    .end local v18    # "$this$visitAncestors$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v19    # "mask$iv$iv$iv$iv":I
    .end local v20    # "$i$f$visitAncestors":I
    .end local v21    # "layout$iv$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1530
    .end local v13    # "includeSelf$iv$iv$iv":Z
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv$iv":I
    .end local v15    # "$this$visitAncestors_u2dY_u2dYKmho$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v16    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 1456
    .end local v8    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v9    # "$this$ancestors_u2d6rFNWt0_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v10    # "includeSelf$iv$iv":Z
    .end local v11    # "$i$f$ancestors-6rFNWt0":I
    .end local v12    # "result$iv$iv":Ljava/lang/Object;
    nop

    .line 1531
    .local v12, "ancestors$iv":Ljava/util/List;
    if-eqz v12, :cond_2c

    move-object v1, v12

    .local v1, "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1532
    .local v2, "$i$f$fastForEachReversed":I
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2b

    :cond_29
    move v4, v3

    .local v4, "index$iv$iv":I
    add-int/lit8 v3, v3, -0x1

    .line 1533
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1534
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    const/4 v10, 0x0

    .line 433
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$1":I
    invoke-interface {v9, v0}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/16 v35, 0x1

    return v35

    .line 1534
    .end local v9    # "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$1":I
    :cond_2a
    nop

    .line 1532
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    if-gez v3, :cond_29

    .line 1536
    .end local v4    # "index$iv$iv":I
    :cond_2b
    nop

    .line 1537
    .end local v1    # "$this$fastForEachReversed$iv$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEachReversed":I
    :cond_2c
    invoke-interface/range {v30 .. v30}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v2, v37

    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v3, 0x0

    .line 1538
    .local v3, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v4, 0x0

    .line 1539
    .local v4, "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "node$iv$iv":Ljava/lang/Object;
    move-object v8, v1

    .line 1540
    :goto_1c
    if-eqz v8, :cond_3a

    .line 1541
    instance-of v9, v8, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v9, :cond_2e

    .line 1542
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .restart local v9    # "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    const/4 v10, 0x0

    .line 433
    .restart local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$1":I
    invoke-interface {v9, v0}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v11

    if-eqz v11, :cond_2d

    const/16 v35, 0x1

    return v35

    .line 1542
    .end local v9    # "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$1":I
    :cond_2d
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto/16 :goto_22

    .line 1543
    :cond_2e
    move v9, v2

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 1486
    .local v11, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_2f

    const/4 v9, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v9, 0x0

    .line 1543
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$f$isKind-H91voCI$ui":I
    :goto_1d
    if-eqz v9, :cond_38

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_38

    .line 1548
    const/4 v9, 0x0

    .line 1549
    .local v9, "count$iv$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v11, 0x0

    .line 1550
    .local v11, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1551
    .local v13, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_1e
    if-eqz v13, :cond_37

    .line 1552
    move-object v14, v13

    .local v14, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1553
    .local v15, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v16, v2

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1486
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_30

    const/16 v16, 0x1

    goto :goto_1f

    :cond_30
    const/16 v16, 0x0

    .line 1553
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_1f
    if-eqz v16, :cond_35

    .line 1554
    add-int/lit8 v9, v9, 0x1

    .line 1555
    move-object/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-ne v9, v1, :cond_31

    .line 1556
    move-object v8, v14

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_21

    .line 1560
    :cond_31
    if-nez v4, :cond_32

    const/4 v1, 0x0

    .line 1561
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1562
    move/from16 v17, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v17, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1563
    .local v18, "$i$f$MutableVector":I
    move/from16 v19, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v20, v3

    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v21, "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1561
    .end local v18    # "$i$f$MutableVector":I
    .end local v21    # "capacity$iv$iv$iv$iv":I
    goto :goto_20

    .line 1560
    .end local v17    # "$i$f$mutableVectorOf":I
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_32
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    move-object v2, v4

    :goto_20
    move-object v4, v2

    .line 1564
    move-object v1, v8

    .line 1565
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_34

    .line 1566
    if-eqz v4, :cond_33

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_33
    const/4 v2, 0x0

    move-object v8, v2

    .line 1569
    :cond_34
    if-eqz v4, :cond_36

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1553
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_35
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1572
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_36
    :goto_21
    nop

    .line 1552
    .end local v14    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1573
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_1e

    .line 1575
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_37
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1576
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v11    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_39

    .line 1578
    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_1c

    .line 1543
    .end local v9    # "count$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_38
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1581
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_39
    :goto_22
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_1c

    .line 1583
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_3a
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1584
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 434
    .local v1, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$2":I
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v35, 0x1

    return v35

    .line 1584
    .end local v1    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$2":I
    :cond_3b
    nop

    .line 1585
    invoke-interface/range {v30 .. v30}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move/from16 v2, v37

    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v3, 0x0

    .line 1586
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v4, 0x0

    .line 1587
    .restart local v4    # "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .restart local v8    # "node$iv$iv":Ljava/lang/Object;
    move-object v8, v1

    .line 1588
    :goto_23
    if-eqz v8, :cond_49

    .line 1589
    instance-of v9, v8, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v9, :cond_3d

    .line 1590
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    const/4 v10, 0x0

    .line 435
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$3":I
    invoke-interface {v9, v0}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v11

    if-eqz v11, :cond_3c

    const/16 v35, 0x1

    return v35

    .line 1590
    .end local v9    # "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$3":I
    :cond_3c
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto/16 :goto_29

    .line 1591
    :cond_3d
    move v9, v2

    .local v9, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v10, v8

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v11, 0x0

    .line 1486
    .local v11, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_3e

    const/4 v9, 0x1

    goto :goto_24

    :cond_3e
    const/4 v9, 0x0

    .line 1591
    .end local v9    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "$i$f$isKind-H91voCI$ui":I
    :goto_24
    if-eqz v9, :cond_47

    instance-of v9, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_47

    .line 1596
    const/4 v9, 0x0

    .line 1597
    .local v9, "count$iv$iv":I
    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .local v10, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v11, 0x0

    .line 1598
    .local v11, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    .line 1599
    .restart local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_25
    if-eqz v13, :cond_46

    .line 1600
    move-object v14, v13

    .restart local v14    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1601
    .restart local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v16, v2

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v17, v14

    .local v17, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 1486
    .local v18, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v19

    and-int v19, v19, v16

    if-eqz v19, :cond_3f

    const/16 v16, 0x1

    goto :goto_26

    :cond_3f
    const/16 v16, 0x0

    .line 1601
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v17    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$isKind-H91voCI$ui":I
    :goto_26
    if-eqz v16, :cond_44

    .line 1602
    add-int/lit8 v9, v9, 0x1

    .line 1603
    move-object/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-ne v9, v1, :cond_40

    .line 1604
    move-object v8, v14

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_28

    .line 1608
    :cond_40
    if-nez v4, :cond_41

    const/4 v1, 0x0

    .line 1609
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1610
    move/from16 v17, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v17, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v18, 0x0

    .line 1611
    .local v18, "$i$f$MutableVector":I
    move/from16 v19, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v20, v3

    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .restart local v21    # "capacity$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1609
    .end local v18    # "$i$f$MutableVector":I
    .end local v21    # "capacity$iv$iv$iv$iv":I
    goto :goto_27

    .line 1608
    .end local v17    # "$i$f$mutableVectorOf":I
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_41
    move/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    move-object v2, v4

    :goto_27
    move-object v4, v2

    .line 1612
    move-object v1, v8

    .line 1613
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_43

    .line 1614
    if-eqz v4, :cond_42

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1615
    :cond_42
    const/4 v2, 0x0

    move-object v8, v2

    .line 1617
    :cond_43
    if-eqz v4, :cond_45

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1601
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_44
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1620
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_45
    :goto_28
    nop

    .line 1600
    .end local v14    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1621
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_25

    .line 1623
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_46
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1624
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v11    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v13    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_48

    .line 1626
    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_23

    .line 1591
    .end local v9    # "count$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_47
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1629
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_48
    :goto_29
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_23

    .line 1631
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .restart local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .restart local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    :cond_49
    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 1632
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v3    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v4    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    if-eqz v12, :cond_4c

    move-object v1, v12

    .local v1, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1633
    .local v2, "$i$f$fastForEach":I
    const/4 v3, 0x0

    .local v3, "index$iv$iv":I
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2a
    if-ge v3, v4, :cond_4b

    .line 1634
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 1635
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .local v9, "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    const/4 v10, 0x0

    .line 435
    .local v10, "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$3":I
    invoke-interface {v9, v0}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v11

    if-eqz v11, :cond_4a

    const/16 v35, 0x1

    return v35

    :cond_4a
    const/16 v35, 0x1

    .line 1635
    .end local v9    # "it":Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;
    .end local v10    # "$i$a$-traverseAncestorsIncludingSelf-QFhIj7k-FocusOwnerImpl$dispatchRotaryEvent$3":I
    nop

    .line 1633
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1637
    .end local v3    # "index$iv$iv":I
    :cond_4b
    nop

    .line 1638
    .end local v1    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :cond_4c
    nop

    .line 438
    .end local v5    # "this_$iv":Landroidx/compose/ui/focus/FocusOwnerImpl;
    .end local v7    # "$i$f$traverseAncestorsIncludingSelf-QFhIj7k":I
    .end local v12    # "ancestors$iv":Ljava/util/List;
    .end local v30    # "$this$traverseAncestorsIncludingSelf_u2dQFhIj7k$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v37    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_4d
    const/16 v29, 0x0

    return v29
.end method

.method public focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 50
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "focusedRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p3, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->findFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_21

    move-object v5, v3

    .local v5, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v6, 0x0

    .line 339
    .local v6, "$i$a$-also-FocusOwnerImpl$focusSearch$source$1":I
    iget-object v7, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->owner:Landroidx/compose/ui/node/Owner;

    invoke-interface {v7}, Landroidx/compose/ui/node/Owner;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-static {v5, v1, v7}, Landroidx/compose/ui/focus/FocusTraversalKt;->customFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v7

    .line 338
    .local v7, "customDest":Landroidx/compose/ui/focus/FocusRequester;
    nop

    .line 341
    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v4

    .line 342
    :cond_0
    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->findFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    :cond_1
    return-object v4

    .line 343
    :cond_2
    sget-object v4, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 348
    sget-boolean v3, Landroidx/compose/ui/ComposeUiFlags;->isRequestFocusOnNonFocusableFocusTargetEnabled:Z

    if-eqz v3, :cond_1f

    .line 349
    move-object v3, v7

    .local v3, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v4, 0x0

    .line 704
    .local v4, "$i$f$findFocusTarget$ui":I
    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v8

    const/4 v9, 0x0

    if-eq v3, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v9

    :goto_0
    const-string v11, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eqz v8, :cond_1e

    .line 706
    sget-object v8, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v8

    if-eq v3, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v9

    :goto_1
    if-eqz v8, :cond_1d

    .line 707
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v11, 0x0

    .line 708
    .local v11, "$i$f$isEmpty":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    move v8, v9

    .line 707
    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "$i$f$isEmpty":I
    :goto_2
    if-eqz v8, :cond_6

    .line 709
    const-string v8, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 710
    move-object/from16 v47, v5

    goto/16 :goto_11

    .line 712
    :cond_6
    const/4 v8, 0x0

    .line 713
    .local v8, "success$iv":Z
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester;->getFocusRequesterNodes$ui()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v11

    .local v11, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 714
    .local v12, "$i$f$forEach":I
    const/4 v13, 0x0

    .line 715
    .local v13, "i$iv$iv":I
    iget-object v14, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 716
    .local v14, "content$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v15

    .line 717
    .local v15, "size$iv$iv":I
    :goto_3
    if-ge v13, v15, :cond_1c

    .line 718
    aget-object v16, v14, v13

    check-cast v16, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .local v16, "node$iv":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    const/16 v17, 0x0

    .line 719
    .local v17, "$i$a$-forEach-FocusRequester$findFocusTarget$3$iv":I
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/node/DelegatableNode;

    const/16 v19, 0x0

    .line 720
    .local v19, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v20, 0x400

    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v19

    .line 719
    .end local v19    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 721
    .local v18, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    nop

    .line 723
    const/16 v20, 0x0

    .line 721
    .local v20, "zOrder$iv$iv":Z
    const/16 v21, 0x0

    .line 725
    .local v21, "$i$f$visitChildren-Y-YKmho":I
    move/from16 v22, v20

    .local v22, "zOrder$iv$iv$iv":Z
    move/from16 v23, v19

    .local v23, "mask$iv$iv$iv":I
    move-object/from16 v24, v18

    .local v24, "$this$visitChildren$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/16 v25, 0x0

    .line 726
    .local v25, "$i$f$visitChildren":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v26

    .local v26, "value$iv$iv$iv$iv":Z
    const/16 v27, 0x0

    .line 727
    .local v27, "$i$f$checkPrecondition":I
    if-nez v26, :cond_7

    .line 728
    const/16 v28, 0x0

    .line 726
    .local v28, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv$iv":I
    nop

    .line 728
    .end local v28    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv$iv":I
    const-string/jumbo v28, "visitChildren called on an unattached node"

    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 730
    :cond_7
    nop

    .line 731
    .end local v26    # "value$iv$iv$iv$iv":Z
    .end local v27    # "$i$f$checkPrecondition":I
    const/16 v26, 0x0

    .line 732
    .local v26, "$i$f$mutableVectorOf":I
    nop

    .line 733
    const/16 v27, 0x1

    const/16 v10, 0x10

    .local v10, "capacity$iv$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 734
    .local v28, "$i$f$MutableVector":I
    move-object/from16 v29, v3

    .end local v3    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .local v29, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v4

    .end local v4    # "$i$f$findFocusTarget$ui":I
    .local v30, "$i$f$findFocusTarget$ui":I
    new-array v4, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v4, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 732
    .end local v10    # "capacity$iv$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    nop

    .line 731
    .end local v26    # "$i$f$mutableVectorOf":I
    nop

    .line 735
    .local v3, "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 736
    .local v4, "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v4, :cond_8

    invoke-interface/range {v24 .. v24}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v9, v22

    .end local v22    # "zOrder$iv$iv$iv":Z
    .local v9, "zOrder$iv$iv$iv":Z
    invoke-static {v3, v10, v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_4

    .end local v9    # "zOrder$iv$iv$iv":Z
    .restart local v22    # "zOrder$iv$iv$iv":Z
    :cond_8
    move/from16 v9, v22

    .end local v22    # "zOrder$iv$iv$iv":Z
    .restart local v9    # "zOrder$iv$iv$iv":Z
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 737
    :goto_4
    move-object v10, v3

    .local v10, "this_$iv$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v22, 0x0

    .line 738
    .local v22, "$i$f$isNotEmpty":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v28

    if-eqz v28, :cond_9

    move/from16 v10, v27

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    .end local v10    # "this_$iv$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v22    # "$i$f$isNotEmpty":I
    :goto_5
    if-eqz v10, :cond_1b

    .line 739
    move-object v10, v3

    .restart local v10    # "this_$iv$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/16 v22, 0x0

    .line 740
    .local v22, "$i$f$getLastIndex":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v28

    add-int/lit8 v10, v28, -0x1

    .line 739
    .end local v10    # "this_$iv$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v22    # "$i$f$getLastIndex":I
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 741
    .local v10, "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v22

    and-int v22, v22, v23

    if-nez v22, :cond_a

    .line 742
    invoke-static {v3, v10, v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 744
    goto :goto_4

    .line 746
    :cond_a
    move-object/from16 v22, v10

    .line 747
    .local v22, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v22, :cond_1a

    .line 748
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v28

    and-int v28, v28, v23

    if-eqz v28, :cond_19

    .line 749
    move-object/from16 v28, v22

    .local v28, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v31, 0x0

    .line 725
    .local v31, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv$iv":I
    move/from16 v32, v19

    .local v32, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v33, v28

    .local v33, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v34, 0x0

    .line 750
    .local v34, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v35, 0x0

    .line 751
    .local v35, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v36, 0x0

    .local v36, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v36, v33

    move-object/from16 v49, v36

    move-object/from16 v36, v3

    move-object/from16 v3, v49

    .line 752
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    .local v36, "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    :goto_7
    if-eqz v3, :cond_18

    .line 753
    move-object/from16 v37, v4

    .end local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v37, "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    instance-of v4, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v4, :cond_c

    .line 754
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v4, "it$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v38, 0x0

    .line 755
    .local v38, "$i$a$-visitChildren-Y-YKmho$default-FocusRequester$findFocusTarget$3$1$iv":I
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Boolean;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    if-eqz v39, :cond_b

    .line 756
    const/4 v8, 0x1

    .line 757
    move-object/from16 v47, v5

    move/from16 v3, v27

    goto/16 :goto_10

    .line 759
    :cond_b
    nop

    .line 754
    .end local v4    # "it$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v38    # "$i$a$-visitChildren-Y-YKmho$default-FocusRequester$findFocusTarget$3$1$iv":I
    move-object/from16 v43, v3

    move-object/from16 v47, v5

    move/from16 v3, v27

    goto/16 :goto_f

    .line 760
    :cond_c
    move/from16 v4, v32

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v38, v3

    .local v38, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v39, 0x0

    .line 761
    .local v39, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v40

    and-int v40, v40, v4

    if-eqz v40, :cond_d

    move/from16 v4, v27

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    .line 760
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v38    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v39    # "$i$f$isKind-H91voCI$ui":I
    :goto_8
    if-eqz v4, :cond_16

    instance-of v4, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_16

    .line 762
    const/4 v4, 0x0

    .line 763
    .local v4, "count$iv$iv$iv":I
    move-object/from16 v38, v3

    check-cast v38, Landroidx/compose/ui/node/DelegatingNode;

    .local v38, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v39, 0x0

    .line 764
    .local v39, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v40

    .line 765
    .local v40, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    if-eqz v40, :cond_15

    .line 766
    move-object/from16 v41, v40

    .local v41, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v42, 0x0

    .line 767
    .local v42, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v43, v32

    .local v43, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v44, v41

    .local v44, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v45, 0x0

    .line 761
    .local v45, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v46

    and-int v46, v46, v43

    if-eqz v46, :cond_e

    move/from16 v43, v27

    goto :goto_a

    :cond_e
    const/16 v43, 0x0

    .line 767
    .end local v43    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v44    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v45    # "$i$f$isKind-H91voCI$ui":I
    :goto_a
    if-eqz v43, :cond_14

    .line 768
    add-int/lit8 v4, v4, 0x1

    .line 769
    move-object/from16 v43, v3

    move/from16 v3, v27

    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v43, "node$iv$iv$iv":Ljava/lang/Object;
    if-ne v4, v3, :cond_f

    .line 770
    move-object/from16 v3, v41

    move-object/from16 v26, v3

    move-object/from16 v47, v5

    .end local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    goto :goto_e

    .line 774
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    :cond_f
    if-nez v35, :cond_10

    const/4 v3, 0x0

    .line 732
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 733
    move/from16 v44, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .local v44, "$i$f$mutableVectorOf":I
    const/16 v3, 0x10

    .local v3, "capacity$iv$iv$iv$iv$iv":I
    const/16 v45, 0x0

    .line 734
    .local v45, "$i$f$MutableVector":I
    move/from16 v46, v4

    .end local v4    # "count$iv$iv$iv":I
    .local v46, "count$iv$iv$iv":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v47, v5

    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v47, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    new-array v5, v3, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v48, v3

    const/4 v3, 0x0

    .end local v3    # "capacity$iv$iv$iv$iv$iv":I
    .local v48, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v4, v5, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 732
    .end local v45    # "$i$f$MutableVector":I
    .end local v48    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_b

    .line 774
    .end local v44    # "$i$f$mutableVectorOf":I
    .end local v46    # "count$iv$iv$iv":I
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v4    # "count$iv$iv$iv":I
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_10
    move/from16 v46, v4

    move-object/from16 v47, v5

    const/4 v3, 0x0

    .end local v4    # "count$iv$iv$iv":I
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v46    # "count$iv$iv$iv":I
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object/from16 v4, v35

    :goto_b
    nop

    .line 775
    .end local v35    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v4, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, v43

    .line 776
    .local v5, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v5, :cond_12

    .line 777
    if-eqz v4, :cond_11

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_11
    const/16 v26, 0x0

    .end local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v26, "node$iv$iv$iv":Ljava/lang/Object;
    goto :goto_c

    .line 776
    .end local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    :cond_12
    move-object/from16 v26, v43

    .line 780
    .end local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    :goto_c
    if-eqz v4, :cond_13

    move-object/from16 v3, v41

    .end local v41    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v41    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_13
    move-object/from16 v3, v41

    .line 783
    .end local v5    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v41    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_d
    move-object/from16 v35, v4

    move/from16 v4, v46

    goto :goto_e

    .line 767
    .end local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v46    # "count$iv$iv$iv":I
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    .local v4, "count$iv$iv$iv":I
    .local v5, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v35    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v41    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_14
    move-object/from16 v43, v3

    move-object/from16 v47, v5

    move-object/from16 v3, v41

    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v41    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object/from16 v26, v43

    .line 783
    .end local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    :goto_e
    nop

    .line 766
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v42    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 784
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v40

    move-object/from16 v3, v26

    move-object/from16 v5, v47

    const/16 v27, 0x1

    goto :goto_9

    .line 786
    .end local v26    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v3, "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_15
    move-object/from16 v43, v3

    move-object/from16 v47, v5

    .line 787
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v38    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v39    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v40    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v3, 0x1

    if-ne v4, v3, :cond_17

    .line 789
    move/from16 v27, v3

    move-object/from16 v4, v37

    move-object/from16 v3, v43

    move-object/from16 v5, v47

    goto/16 :goto_7

    .line 760
    .end local v4    # "count$iv$iv$iv":I
    .end local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_16
    move-object/from16 v43, v3

    move-object/from16 v47, v5

    move/from16 v3, v27

    .line 792
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_17
    :goto_f
    invoke-static/range {v35 .. v35}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move/from16 v27, v3

    move-object v3, v4

    move-object/from16 v4, v37

    move-object/from16 v5, v47

    .end local v43    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v4, "node$iv$iv$iv":Ljava/lang/Object;
    goto/16 :goto_7

    .line 794
    .end local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v4, "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_18
    move-object/from16 v43, v3

    move-object/from16 v37, v4

    move-object/from16 v47, v5

    move/from16 v3, v27

    .line 725
    .end local v3    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v33    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v34    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v35    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    nop

    .line 749
    .end local v28    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv$iv":I
    nop

    .line 795
    move-object/from16 v3, v36

    goto/16 :goto_4

    .line 797
    .end local v36    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v3, "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_19
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-object/from16 v47, v5

    move/from16 v3, v27

    .end local v3    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v36    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v22

    move-object/from16 v3, v36

    goto/16 :goto_6

    .line 747
    .end local v36    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_1a
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-object/from16 v47, v5

    move/from16 v3, v27

    .end local v3    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v36    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object/from16 v3, v36

    goto/16 :goto_4

    .line 800
    .end local v10    # "branch$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v37    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_1b
    move-object/from16 v36, v3

    move-object/from16 v37, v4

    move-object/from16 v47, v5

    move/from16 v3, v27

    .line 725
    .end local v3    # "branches$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "child$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v9    # "zOrder$iv$iv$iv":Z
    .end local v23    # "mask$iv$iv$iv":I
    .end local v24    # "$this$visitChildren$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$i$f$visitChildren":I
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    nop

    .line 801
    .end local v18    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v20    # "zOrder$iv$iv":Z
    .end local v21    # "$i$f$visitChildren-Y-YKmho":I
    nop

    .line 718
    .end local v16    # "node$iv":Landroidx/compose/ui/focus/FocusRequesterModifierNode;
    .end local v17    # "$i$a$-forEach-FocusRequester$findFocusTarget$3$iv":I
    :goto_10
    nop

    .line 802
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v29

    move/from16 v4, v30

    move-object/from16 v5, v47

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 804
    .end local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v30    # "$i$f$findFocusTarget$ui":I
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .local v3, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .local v4, "$i$f$findFocusTarget$ui":I
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_1c
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v47, v5

    .line 805
    .end local v3    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v4    # "$i$f$findFocusTarget$ui":I
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v11    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$forEach":I
    .end local v13    # "i$iv$iv":I
    .end local v14    # "content$iv$iv":[Ljava/lang/Object;
    .end local v15    # "size$iv$iv":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v30    # "$i$f$findFocusTarget$ui":I
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    move v9, v8

    .end local v8    # "success$iv":Z
    .end local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v30    # "$i$f$findFocusTarget$ui":I
    :goto_11
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_12

    .line 705
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v3    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v4    # "$i$f$findFocusTarget$ui":I
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_1d
    move-object/from16 v29, v3

    move/from16 v30, v4

    .end local v3    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v4    # "$i$f$findFocusTarget$ui":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v30    # "$i$f$findFocusTarget$ui":I
    const/4 v3, 0x0

    .line 706
    .local v3, "$i$a$-check-FocusRequester$findFocusTarget$2$iv":I
    nop

    .end local v3    # "$i$a$-check-FocusRequester$findFocusTarget$2$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    .end local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v30    # "$i$f$findFocusTarget$ui":I
    .local v3, "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v4    # "$i$f$findFocusTarget$ui":I
    :cond_1e
    move-object/from16 v29, v3

    move/from16 v30, v4

    .end local v3    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v4    # "$i$f$findFocusTarget$ui":I
    .restart local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v30    # "$i$f$findFocusTarget$ui":I
    const/4 v3, 0x0

    .line 704
    .local v3, "$i$a$-check-FocusRequester$findFocusTarget$1$iv":I
    nop

    .end local v3    # "$i$a$-check-FocusRequester$findFocusTarget$1$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    .end local v29    # "this_$iv":Landroidx/compose/ui/focus/FocusRequester;
    .end local v30    # "$i$f$findFocusTarget$ui":I
    :cond_1f
    move-object/from16 v47, v5

    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v7, v2}, Landroidx/compose/ui/focus/FocusRequester;->findFocusTargetNode$ui(Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 348
    :goto_12
    return-object v3

    .line 343
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_20
    move-object/from16 v47, v5

    .line 354
    .end local v5    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v7    # "customDest":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    nop

    .line 336
    .end local v6    # "$i$a$-also-FocusOwnerImpl$focusSearch$source$1":I
    .end local v47    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    goto :goto_13

    :cond_21
    move-object v3, v4

    .line 335
    :goto_13
    nop

    .line 356
    .local v3, "source":Landroidx/compose/ui/focus/FocusTargetNode;
    iget-object v4, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v5, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->owner:Landroidx/compose/ui/node/Owner;

    invoke-interface {v5}, Landroidx/compose/ui/node/Owner;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    new-instance v6, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    invoke-direct {v6, v3, v0, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p2

    invoke-static {v4, v1, v5, v7, v6}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusSearch-0X8WOeE(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method public focusTargetAvailable()V
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    invoke-interface {v0}, Landroidx/compose/ui/focus/PlatformFocusOwner;->focusTargetAvailable()V

    .line 492
    return-void
.end method

.method public getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 3

    .line 571
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 531
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->findFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getListeners()Landroidx/collection/MutableObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/ui/focus/FocusListener;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->listeners:Landroidx/collection/MutableObjectList;

    return-object v0
.end method

.method public getModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final getRootFocusNode$ui()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-object v0
.end method

.method public getRootState()Landroidx/compose/ui/focus/FocusState;
    .locals 1

    .line 566
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    return-object v0
.end method

.method public hasFocusableContent()Z
    .locals 33

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 537
    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 2186
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 537
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 2187
    .local v1, "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 2189
    const/4 v4, 0x0

    .line 2187
    .local v4, "zOrder$iv":Z
    const/4 v5, 0x0

    .line 2192
    .local v5, "$i$f$visitSubtree-Y-YKmho":I
    move v6, v4

    .local v6, "zOrder$iv$iv":Z
    move v7, v3

    .local v7, "mask$iv$iv":I
    move-object v8, v1

    .local v8, "$this$visitSubtreeIf$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 2193
    .local v9, "$i$f$visitSubtreeIf":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 2194
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_1

    .line 2195
    const/4 v12, 0x0

    .line 2193
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv$iv":I
    nop

    .line 2195
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv$iv":I
    const-string/jumbo v12, "visitSubtreeIf called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2197
    :cond_1
    nop

    .line 2198
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    const/4 v10, 0x0

    .line 2199
    .local v10, "$i$f$mutableVectorOf":I
    nop

    .line 2200
    const/16 v11, 0x10

    .local v11, "capacity$iv$iv$iv$iv":I
    const/4 v12, 0x0

    .line 2201
    .local v12, "$i$f$MutableVector":I
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v13, v14, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2199
    .end local v11    # "capacity$iv$iv$iv$iv":I
    .end local v12    # "$i$f$MutableVector":I
    nop

    .line 2198
    .end local v10    # "$i$f$mutableVectorOf":I
    nop

    .line 2202
    .local v13, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 2203
    .local v10, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v10, :cond_2

    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2204
    :goto_0
    move-object v11, v13

    .local v11, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 2205
    .local v12, "$i$f$isNotEmpty":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_3

    move v11, v15

    goto :goto_1

    :cond_3
    move v11, v2

    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v11, :cond_16

    .line 2206
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    sub-int/2addr v11, v15

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 2207
    .local v11, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_15

    .line 2208
    move-object v12, v11

    .line 2209
    .local v12, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 2210
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_13

    .line 2211
    move-object v14, v12

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 2212
    .local v16, "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1$iv":I
    move/from16 v17, v3

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v18, v14

    .local v18, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 2213
    .local v19, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v20, 0x0

    .line 2214
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .local v21, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v18

    move-object/from16 v2, v21

    .line 2215
    .end local v21    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v2, :cond_11

    .line 2216
    move/from16 v22, v15

    instance-of v15, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v15, :cond_5

    .line 2217
    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v15, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v23, 0x0

    .line 538
    .local v23, "$i$a$-visitSubtree-Y-YKmho$default-FocusOwnerImpl$hasFocusableContent$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 539
    return v22

    .line 541
    :cond_4
    nop

    .line 2217
    .end local v15    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v23    # "$i$a$-visitSubtree-Y-YKmho$default-FocusOwnerImpl$hasFocusableContent$1":I
    move-object/from16 v30, v1

    goto/16 :goto_b

    .line 2218
    :cond_5
    move/from16 v15, v17

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v23, v2

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 2219
    .local v24, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v25

    and-int v25, v25, v15

    if-eqz v25, :cond_6

    move/from16 v15, v22

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 2218
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v15, :cond_10

    instance-of v15, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_10

    .line 2220
    const/4 v15, 0x0

    .line 2221
    .local v15, "count$iv$iv":I
    move-object/from16 v23, v2

    check-cast v23, Landroidx/compose/ui/node/DelegatingNode;

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v24, 0x0

    .line 2222
    .local v24, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    .line 2223
    .local v25, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v25, :cond_e

    .line 2224
    move-object/from16 v26, v25

    .local v26, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 2225
    .local v27, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v28, v17

    .local v28, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v29, v26

    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 2219
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v28

    if-eqz v31, :cond_7

    move/from16 v28, v22

    goto :goto_6

    :cond_7
    const/16 v28, 0x0

    .line 2225
    .end local v28    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v28, :cond_d

    .line 2226
    add-int/lit8 v15, v15, 0x1

    .line 2227
    move/from16 v0, v22

    if-ne v15, v0, :cond_8

    .line 2228
    move-object/from16 v2, v26

    move-object/from16 v30, v1

    move-object/from16 v0, v26

    goto :goto_a

    .line 2232
    :cond_8
    if-nez v20, :cond_9

    const/4 v0, 0x0

    .line 2199
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 2200
    move/from16 v28, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v28, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 2201
    .local v29, "$i$f$MutableVector":I
    move-object/from16 v30, v1

    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v31, v2

    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v31, "node$iv$iv":Ljava/lang/Object;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v32, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2199
    .end local v29    # "$i$f$MutableVector":I
    .end local v32    # "capacity$iv$iv$iv$iv":I
    goto :goto_7

    .line 2232
    .end local v28    # "$i$f$mutableVectorOf":I
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_9
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v20

    :goto_7
    nop

    .line 2233
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v31

    .line 2234
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_b

    .line 2235
    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2236
    :cond_a
    const/4 v2, 0x0

    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 2234
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    :cond_b
    move-object/from16 v2, v31

    .line 2238
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_8
    if-eqz v1, :cond_c

    move-object/from16 v20, v0

    move-object/from16 v0, v26

    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v20    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v20, v0

    move-object/from16 v0, v26

    .line 2241
    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    move-object/from16 v20, v1

    goto :goto_a

    .line 2225
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    .restart local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v0, v26

    .line 2241
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_a
    nop

    .line 2224
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2242
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    const/16 v22, 0x1

    goto :goto_5

    .line 2244
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_e
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    .line 2245
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v25    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v15, v0, :cond_f

    .line 2247
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto/16 :goto_3

    .line 2245
    :cond_f
    move-object/from16 v2, v31

    goto :goto_b

    .line 2218
    .end local v15    # "count$iv$iv":I
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v30, v1

    .line 2250
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_b
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    goto/16 :goto_3

    .line 2252
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_11
    move-object/from16 v30, v1

    .line 2253
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v18    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 2211
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1$iv":I
    const/16 v22, 0x1

    move/from16 v0, v22

    .line 2254
    .local v0, "diveDeeper$iv$iv":Z
    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2210
    .end local v0    # "diveDeeper$iv$iv":Z
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_13
    move-object/from16 v30, v1

    move/from16 v22, v15

    .line 2256
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v15, v22

    move-object/from16 v1, v30

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2209
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_14
    move-object/from16 v30, v1

    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_d

    .line 2207
    .end local v12    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_15
    move-object/from16 v30, v1

    .line 2259
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_d
    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    const/4 v2, 0x0

    .end local v11    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 2261
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_16
    nop

    .line 2262
    .end local v6    # "zOrder$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$this$visitSubtreeIf$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitSubtreeIf":I
    .end local v10    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 542
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .end local v5    # "$i$f$visitSubtree-Y-YKmho":I
    const/16 v21, 0x0

    return v21
.end method

.method public hasNonInteropFocusableContent()Z
    .locals 33

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 548
    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 2263
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 548
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 2264
    .local v1, "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 2266
    const/4 v4, 0x0

    .line 2264
    .local v4, "zOrder$iv":Z
    const/4 v5, 0x0

    .line 2269
    .local v5, "$i$f$visitSubtree-Y-YKmho":I
    move v6, v4

    .local v6, "zOrder$iv$iv":Z
    move v7, v3

    .local v7, "mask$iv$iv":I
    move-object v8, v1

    .local v8, "$this$visitSubtreeIf$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 2270
    .local v9, "$i$f$visitSubtreeIf":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 2271
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_1

    .line 2272
    const/4 v12, 0x0

    .line 2270
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv$iv":I
    nop

    .line 2272
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitSubtreeIf$1$iv$iv":I
    const-string/jumbo v12, "visitSubtreeIf called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 2274
    :cond_1
    nop

    .line 2275
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    const/4 v10, 0x0

    .line 2276
    .local v10, "$i$f$mutableVectorOf":I
    nop

    .line 2277
    const/16 v11, 0x10

    .local v11, "capacity$iv$iv$iv$iv":I
    const/4 v12, 0x0

    .line 2278
    .local v12, "$i$f$MutableVector":I
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v13, v14, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2276
    .end local v11    # "capacity$iv$iv$iv$iv":I
    .end local v12    # "$i$f$MutableVector":I
    nop

    .line 2275
    .end local v10    # "$i$f$mutableVectorOf":I
    nop

    .line 2279
    .local v13, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 2280
    .local v10, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v10, :cond_2

    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2281
    :goto_0
    move-object v11, v13

    .local v11, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 2282
    .local v12, "$i$f$isNotEmpty":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_3

    move v11, v15

    goto :goto_1

    :cond_3
    move v11, v2

    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v11, :cond_17

    .line 2283
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    sub-int/2addr v11, v15

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 2284
    .local v11, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_16

    .line 2285
    move-object v12, v11

    .line 2286
    .local v12, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 2287
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_14

    .line 2288
    move-object v14, v12

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 2289
    .local v16, "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1$iv":I
    move/from16 v17, v3

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v18, v14

    .local v18, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 2290
    .local v19, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v20, 0x0

    .line 2291
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .local v21, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v18

    move-object/from16 v2, v21

    .line 2292
    .end local v21    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v2, :cond_12

    .line 2293
    move/from16 v22, v15

    instance-of v15, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v15, :cond_6

    .line 2294
    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v15, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v23, 0x0

    .line 549
    .local v23, "$i$a$-visitSubtree-Y-YKmho$default-FocusOwnerImpl$hasNonInteropFocusableContent$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v24

    if-nez v24, :cond_4

    .line 550
    goto :goto_4

    .line 552
    :cond_4
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v24

    .line 554
    .local v24, "focusProperties":Landroidx/compose/ui/focus/FocusProperties;
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost()Z

    move-result v25

    if-nez v25, :cond_5

    invoke-interface/range {v24 .. v24}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 555
    return v22

    .line 557
    :cond_5
    nop

    .line 2294
    .end local v15    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v23    # "$i$a$-visitSubtree-Y-YKmho$default-FocusOwnerImpl$hasNonInteropFocusableContent$1":I
    .end local v24    # "focusProperties":Landroidx/compose/ui/focus/FocusProperties;
    :goto_4
    move-object/from16 v30, v1

    goto/16 :goto_c

    .line 2295
    :cond_6
    move/from16 v15, v17

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v23, v2

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v24, 0x0

    .line 2296
    .local v24, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v25

    and-int v25, v25, v15

    if-eqz v25, :cond_7

    move/from16 v15, v22

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    .line 2295
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v15, :cond_11

    instance-of v15, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v15, :cond_11

    .line 2297
    const/4 v15, 0x0

    .line 2298
    .local v15, "count$iv$iv":I
    move-object/from16 v23, v2

    check-cast v23, Landroidx/compose/ui/node/DelegatingNode;

    .local v23, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v24, 0x0

    .line 2299
    .local v24, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    .line 2300
    .local v25, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v25, :cond_f

    .line 2301
    move-object/from16 v26, v25

    .local v26, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 2302
    .local v27, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v28, v17

    .local v28, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v29, v26

    .local v29, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v30, 0x0

    .line 2296
    .local v30, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v31

    and-int v31, v31, v28

    if-eqz v31, :cond_8

    move/from16 v28, v22

    goto :goto_7

    :cond_8
    const/16 v28, 0x0

    .line 2302
    .end local v28    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v29    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v28, :cond_e

    .line 2303
    add-int/lit8 v15, v15, 0x1

    .line 2304
    move/from16 v0, v22

    if-ne v15, v0, :cond_9

    .line 2305
    move-object/from16 v2, v26

    move-object/from16 v30, v1

    move-object/from16 v0, v26

    goto :goto_b

    .line 2309
    :cond_9
    if-nez v20, :cond_a

    const/4 v0, 0x0

    .line 2276
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 2277
    move/from16 v28, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v28, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 2278
    .local v29, "$i$f$MutableVector":I
    move-object/from16 v30, v1

    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v31, v2

    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v31, "node$iv$iv":Ljava/lang/Object;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v32, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 2276
    .end local v29    # "$i$f$MutableVector":I
    .end local v32    # "capacity$iv$iv$iv$iv":I
    goto :goto_8

    .line 2309
    .end local v28    # "$i$f$mutableVectorOf":I
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v20

    :goto_8
    nop

    .line 2310
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v31

    .line 2311
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_c

    .line 2312
    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 2313
    :cond_b
    const/4 v2, 0x0

    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 2311
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    :cond_c
    move-object/from16 v2, v31

    .line 2315
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    if-eqz v1, :cond_d

    move-object/from16 v20, v0

    move-object/from16 v0, v26

    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .end local v20    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v20, v0

    move-object/from16 v0, v26

    .line 2318
    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    move-object/from16 v20, v1

    goto :goto_b

    .line 2302
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    .restart local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v0, v26

    .line 2318
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_b
    nop

    .line 2301
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 2319
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    const/16 v22, 0x1

    goto :goto_6

    .line 2321
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_f
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    .line 2322
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v23    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v24    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v25    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    const/4 v0, 0x1

    if-ne v15, v0, :cond_10

    .line 2324
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    goto/16 :goto_3

    .line 2322
    :cond_10
    move-object/from16 v2, v31

    goto :goto_c

    .line 2295
    .end local v15    # "count$iv$iv":I
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_11
    move-object/from16 v30, v1

    .line 2327
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_c
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    goto/16 :goto_3

    .line 2329
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_12
    move-object/from16 v30, v1

    .line 2330
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v18    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 2288
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-visitSubtreeIf-DelegatableNodeKt$visitSubtree$1$iv":I
    const/16 v22, 0x1

    move/from16 v0, v22

    .line 2331
    .local v0, "diveDeeper$iv$iv":Z
    if-eqz v0, :cond_13

    goto :goto_d

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2287
    .end local v0    # "diveDeeper$iv$iv":Z
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_14
    move-object/from16 v30, v1

    move/from16 v22, v15

    .line 2333
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_d
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v15, v22

    move-object/from16 v1, v30

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2286
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_15
    move-object/from16 v30, v1

    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    goto :goto_e

    .line 2284
    .end local v12    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_16
    move-object/from16 v30, v1

    .line 2336
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :goto_e
    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    const/4 v2, 0x0

    .end local v11    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 2338
    .end local v30    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    :cond_17
    nop

    .line 2339
    .end local v6    # "zOrder$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$this$visitSubtreeIf$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitSubtreeIf":I
    .end local v10    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 558
    .end local v1    # "$this$visitSubtree_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .end local v5    # "$i$f$visitSubtree-Y-YKmho":I
    const/16 v21, 0x0

    return v21
.end method

.method public isFocusCaptured()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->isFocusCaptured:Z

    return v0
.end method

.method public moveFocus-3ESFkO8(I)Z
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    move-result v0

    return v0
.end method

.method public moveFocus-aToIllA(IZ)Z
    .locals 7
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "wrapAroundForOneDimensionalFocus"    # Z

    .line 275
    nop

    .line 276
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isViewFocusFixEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 277
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isBypassUnfocusableComposeViewEnabled:Z

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 280
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    invoke-interface {v0, p1}, Landroidx/compose/ui/focus/PlatformFocusOwner;->moveFocusInChildren-3ESFkO8(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    return v1

    .line 284
    :cond_2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v0, "requestFocusSuccess":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 285
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    .line 287
    .local v3, "activeNodeBefore":Landroidx/compose/ui/focus/FocusTargetNode;
    iget-object v4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    invoke-interface {v4}, Landroidx/compose/ui/focus/PlatformFocusOwner;->getEmbeddedViewFocusRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;

    invoke-direct {v5, v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v4, v5}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v4

    .line 286
    nop

    .line 291
    .local v4, "focusSearchSuccess":Ljava/lang/Boolean;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v5

    if-eq v3, v5, :cond_3

    .line 293
    return v1

    .line 298
    :cond_3
    if-eqz v4, :cond_a

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v5, :cond_4

    goto :goto_4

    .line 301
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    return v1

    .line 304
    :cond_5
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusOwnerImplKt;->is1dFocusSearch-3ESFkO8(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 306
    invoke-virtual {p0, v2, v1, v2, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(ZZZI)Z

    move-result v5

    .line 305
    nop

    .line 312
    .local v5, "clearFocus":Z
    if-eqz v5, :cond_6

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Landroidx/compose/ui/focus/FocusOwnerImpl;->takeFocus-aToIllA(ILandroidx/compose/ui/geometry/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1

    .line 316
    .end local v5    # "clearFocus":Z
    :cond_7
    nop

    .line 317
    sget-boolean v1, Landroidx/compose/ui/ComposeUiFlags;->isViewFocusFixEnabled:Z

    if-nez v1, :cond_9

    .line 318
    sget-boolean v1, Landroidx/compose/ui/ComposeUiFlags;->isBypassUnfocusableComposeViewEnabled:Z

    if-eqz v1, :cond_8

    goto :goto_2

    .line 326
    :cond_8
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    invoke-interface {v1, p1}, Landroidx/compose/ui/focus/PlatformFocusOwner;->moveFocusInChildren-3ESFkO8(I)Z

    move-result v2

    goto :goto_3

    .line 320
    :cond_9
    :goto_2
    nop

    .line 316
    :goto_3
    return v2

    .line 298
    :cond_a
    :goto_4
    return v2
.end method

.method public releaseFocus()V
    .locals 3

    .line 146
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    .line 155
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isOptimizedFocusEventDispatchEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    .line 157
    .local v0, "previousActive":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 158
    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v2, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 160
    .end local v0    # "previousActive":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_0
    return-void
.end method

.method public requestOwnerFocus-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1
    .param p1, "focusDirection"    # Landroidx/compose/ui/focus/FocusDirection;
    .param p2, "previouslyFocusedRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 111
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/focus/PlatformFocusOwner;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/focus/PlatformFocusOwner;->requestOwnerFocus-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    return v0
.end method

.method public resetFocus-3ESFkO8(I)Z
    .locals 4
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(ZZZI)Z

    move-result v1

    .line 207
    nop

    .line 215
    .local v1, "successfulClear":Z
    if-nez v1, :cond_0

    return v0

    .line 218
    :cond_0
    new-instance v2, Landroidx/compose/ui/focus/FocusOwnerImpl$resetFocus$successfulReset$1;

    invoke-direct {v2, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$resetFocus$successfulReset$1;-><init>(I)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 220
    :cond_1
    nop

    .line 218
    :goto_0
    nop

    .line 217
    nop

    .line 224
    .local v0, "successfulReset":Z
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 226
    :cond_2
    return v0
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 499
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    .line 500
    return-void
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 495
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 496
    return-void
.end method

.method public scheduleInvalidationForOwner()V
    .locals 1

    .line 503
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation()V

    .line 504
    return-void
.end method

.method public setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 10
    .param p1, "value"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 573
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 574
    .local v0, "previousValue":Landroidx/compose/ui/focus/FocusTargetNode;
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 575
    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setFocusCaptured(Z)V

    .line 576
    :cond_1
    sget-boolean v1, Landroidx/compose/ui/ComposeUiFlags;->isSemanticAutofillEnabled:Z

    if-eqz v1, :cond_3

    .line 577
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getListeners()Landroidx/collection/MutableObjectList;

    move-result-object v1

    check-cast v1, Landroidx/collection/ObjectList;

    .local v1, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v2, 0x0

    .line 2340
    .local v2, "$i$f$forEach":I
    nop

    .line 2341
    iget-object v3, v1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 2342
    .local v3, "content$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i$iv":I
    iget v5, v1, Landroidx/collection/ObjectList;->_size:I

    :goto_0
    if-ge v4, v5, :cond_2

    .line 2343
    aget-object v6, v3, v4

    check-cast v6, Landroidx/compose/ui/focus/FocusListener;

    .local v6, "it":Landroidx/compose/ui/focus/FocusListener;
    const/4 v7, 0x0

    .line 577
    .local v7, "$i$a$-forEach-FocusOwnerImpl$activeFocusTargetNode$1":I
    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    invoke-interface {v6, v8, v9}, Landroidx/compose/ui/focus/FocusListener;->onFocusChanged(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    .line 2343
    .end local v6    # "it":Landroidx/compose/ui/focus/FocusListener;
    .end local v7    # "$i$a$-forEach-FocusOwnerImpl$activeFocusTargetNode$1":I
    nop

    .line 2342
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2345
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 579
    .end local v1    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public setFocusCaptured(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 583
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .local v0, "value$iv":Z
    :goto_1
    const/4 v1, 0x0

    .line 2346
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_2

    .line 2347
    const/4 v2, 0x0

    .line 584
    .local v2, "$i$a$-requirePrecondition-FocusOwnerImpl$isFocusCaptured$1":I
    nop

    .line 2347
    .end local v2    # "$i$a$-requirePrecondition-FocusOwnerImpl$isFocusCaptured$1":I
    const-string v2, "Cannot capture focus when the active focus target node is unset"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 2349
    :cond_2
    nop

    .line 586
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    iput-boolean p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->isFocusCaptured:Z

    .line 587
    return-void
.end method

.method public final setRootFocusNode$ui(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-void
.end method

.method public takeFocus-aToIllA(ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 1
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "previouslyFocusedRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 134
    new-instance v0, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0
.end method
