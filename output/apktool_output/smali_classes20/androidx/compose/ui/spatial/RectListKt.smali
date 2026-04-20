.class public final Landroidx/compose/ui/spatial/RectListKt;
.super Ljava/lang/Object;
.source "RectList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectList.kt\nandroidx/compose/ui/spatial/RectListKt\n+ 2 RectManager.kt\nandroidx/compose/ui/spatial/RectManagerKt\n*L\n1#1,1269:1\n1171#1:1270\n1171#1:1271\n1171#1:1272\n1171#1:1273\n1064#1:1278\n1171#1:1279\n1065#1:1280\n1171#1:1281\n1066#1:1282\n1171#1:1283\n1067#1:1284\n1171#1:1285\n1068#1,4:1286\n722#2:1274\n722#2:1275\n722#2:1276\n722#2:1277\n*S KotlinDebug\n*F\n+ 1 RectList.kt\nandroidx/compose/ui/spatial/RectListKt\n*L\n1064#1:1270\n1065#1:1271\n1066#1:1272\n1067#1:1273\n1045#1:1278\n1045#1:1279\n1045#1:1280\n1045#1:1281\n1045#1:1282\n1045#1:1283\n1045#1:1284\n1045#1:1285\n1045#1:1286,4\n1098#1:1274\n1099#1:1275\n1134#1:1276\n1135#1:1277\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008-\u001a\u0019\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0080\u0008\u001aA\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#H\u0080\u0008\u001a\u0011\u0010\'\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u0010)\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u0010*\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0019\u0010+\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0001H\u0080\u0008\u001a\u0011\u0010,\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u0010-\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a!\u0010.\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0080\u0008\u001a\u0019\u0010/\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0001H\u0080\u0008\u001a\u0011\u00100\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u00101\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u00102\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u00103\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u00104\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000eH\u0080\u0008\u001a!\u00105\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010&\u001a\u00020#H\u0080\u0008\u001a\u0011\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u000eH\u0080\u0008\u001a\u0011\u00108\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u000eH\u0080\u0008\u001a)\u00109\u001a\u00020#2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000eH\u0080\u0008\u001a\r\u0010>\u001a\u00020\u000e*\u00020#H\u0080\u0008\u001aP\u0010?\u001a\u00020\u00012\u0006\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010B\u001a\u00020\u00012\u0006\u0010C\u001a\u00020\u00012\u0006\u0010D\u001a\u00020\u00012\u0006\u0010E\u001a\u00020\u00012\u0006\u0010F\u001a\u00020\u00012\u0006\u0010G\u001a\u00020\u00012\u0006\u0010H\u001a\u00020\u0001H\u0000\u001a8\u0010I\u001a\u00020\u00012\u0006\u0010J\u001a\u00020\u00012\u0006\u0010K\u001a\u00020\u00012\u0006\u0010L\u001a\u00020\u00012\u0006\u0010M\u001a\u00020\u00012\u0006\u0010N\u001a\u00020\u00012\u0006\u0010O\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0014\u0010\u0011\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010\"\u000e\u0010\u0013\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0015\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "LongsPerItem",
        "",
        "InitialSize",
        "Lower25Bits",
        "Lower10Bits",
        "MaxSupportedId",
        "MaxSupportedLastChildOffset",
        "BitOffsetForParentId",
        "BitOffsetForLastChildOffset",
        "BitOffsetForUpdated",
        "BitOffsetForFocusable",
        "BitOffsetForGesturable",
        "BitOffsetForHasCallbacks",
        "EverythingButLastChildOffset",
        "",
        "getEverythingButLastChildOffset",
        "()J",
        "EverythingButParentId",
        "getEverythingButParentId",
        "PackedIntsLowestBit",
        "PackedIntsHighestBit",
        "TombStone",
        "getTombStone",
        "AxisNorth",
        "AxisSouth",
        "AxisWest",
        "AxisEast",
        "packXY",
        "x",
        "y",
        "packMeta",
        "itemId",
        "parentId",
        "lastChildOffset",
        "updated",
        "",
        "focusable",
        "gesturable",
        "hasCallbacks",
        "unpackMetaValue",
        "meta",
        "unpackMetaParentId",
        "unpackMetaLastChildOffset",
        "metaWithParentId",
        "metaMarkUpdated",
        "metaUnMarkUpdated",
        "metaMarkFlags",
        "metaWithLastChildOffset",
        "unpackMetaFocusable",
        "unpackMetaGesturable",
        "unpackMetaUpdated",
        "unpackMetaHasCallbacks",
        "metaMarkUpdatedIfHasCallbacks",
        "metaMarkUpdatedAndHasCallbacks",
        "unpackX",
        "xy",
        "unpackY",
        "rectIntersectsRect",
        "srcLT",
        "srcRB",
        "destLT",
        "destRB",
        "toLong",
        "distanceScore",
        "axis",
        "queryL",
        "queryT",
        "queryR",
        "queryB",
        "l",
        "t",
        "r",
        "b",
        "distanceScoreAlongAxis",
        "distanceMin",
        "distanceMax",
        "queryCrossAxisMax",
        "queryCrossAxisMin",
        "crossAxisMax",
        "crossAxisMin",
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


# static fields
.field public static final AxisEast:I = 0x3

.field public static final AxisNorth:I = 0x0

.field public static final AxisSouth:I = 0x1

.field public static final AxisWest:I = 0x2

.field public static final BitOffsetForFocusable:I = 0x3d

.field public static final BitOffsetForGesturable:I = 0x3e

.field public static final BitOffsetForHasCallbacks:I = 0x3f

.field public static final BitOffsetForLastChildOffset:I = 0x32

.field public static final BitOffsetForParentId:I = 0x19

.field public static final BitOffsetForUpdated:I = 0x3c

.field private static final EverythingButLastChildOffset:J

.field private static final EverythingButParentId:J

.field public static final InitialSize:I = 0x40

.field public static final LongsPerItem:I = 0x3

.field public static final Lower10Bits:I = 0x3ff

.field private static final Lower25Bits:I = 0x1ffffff

.field private static final MaxSupportedId:I = 0x1ffffff

.field public static final MaxSupportedLastChildOffset:I = 0x3ff

.field private static final PackedIntsHighestBit:J = -0x7fffffff80000000L

.field private static final PackedIntsLowestBit:J = 0x100000001L

.field private static final TombStone:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1032
    nop

    .line 1031
    const/16 v0, 0x3ff

    int-to-long v1, v0

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/16 v3, 0x32

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    xor-long/2addr v1, v4

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    .line 1032
    sput-wide v1, Landroidx/compose/ui/spatial/RectListKt;->EverythingButLastChildOffset:J

    .line 1034
    const v1, 0x1ffffff

    int-to-long v6, v1

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v2, 0x19

    shl-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    sput-wide v4, Landroidx/compose/ui/spatial/RectListKt;->EverythingButParentId:J

    .line 1045
    const/4 v4, -0x1

    .local v4, "itemId$iv":I
    const/4 v5, -0x1

    .local v5, "parentId$iv":I
    const/4 v6, 0x0

    .local v6, "lastChildOffset$iv":I
    const/4 v7, 0x0

    .local v7, "updated$iv":Z
    const/4 v8, 0x0

    .local v8, "focusable$iv":Z
    const/4 v9, 0x0

    .local v9, "gesturable$iv":Z
    const/4 v10, 0x0

    .local v10, "hasCallbacks$iv":Z
    const/4 v11, 0x0

    .line 1278
    .local v11, "$i$f$packMeta":I
    move v12, v10

    .local v12, "$this$toLong$iv$iv":Z
    const/4 v13, 0x0

    .line 1279
    .local v13, "$i$f$toLong":I
    nop

    .line 1278
    .end local v12    # "$this$toLong$iv$iv":Z
    .end local v13    # "$i$f$toLong":I
    nop

    .line 1280
    move v12, v9

    .restart local v12    # "$this$toLong$iv$iv":Z
    const/4 v13, 0x0

    .line 1281
    .restart local v13    # "$i$f$toLong":I
    nop

    .line 1280
    .end local v12    # "$this$toLong$iv$iv":Z
    .end local v13    # "$i$f$toLong":I
    nop

    .line 1278
    nop

    .line 1282
    move v12, v8

    .restart local v12    # "$this$toLong$iv$iv":Z
    const/4 v13, 0x0

    .line 1283
    .restart local v13    # "$i$f$toLong":I
    nop

    .line 1282
    .end local v12    # "$this$toLong$iv$iv":Z
    .end local v13    # "$i$f$toLong":I
    nop

    .line 1278
    nop

    .line 1284
    move v12, v7

    .restart local v12    # "$this$toLong$iv$iv":Z
    const/4 v13, 0x0

    .line 1285
    .restart local v13    # "$i$f$toLong":I
    nop

    .line 1284
    .end local v12    # "$this$toLong$iv$iv":Z
    .end local v13    # "$i$f$toLong":I
    nop

    .line 1278
    nop

    .line 1286
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v12, v0

    .line 1287
    nop

    .line 1286
    shl-long/2addr v12, v3

    .line 1278
    const-wide/16 v14, 0x0

    or-long/2addr v12, v14

    .line 1288
    and-int v0, v5, v1

    int-to-long v14, v0

    shl-long v2, v14, v2

    .line 1278
    or-long/2addr v2, v12

    .line 1289
    and-int v0, v4, v1

    int-to-long v0, v0

    .line 1278
    or-long/2addr v0, v2

    .line 1289
    nop

    .line 1045
    .end local v4    # "itemId$iv":I
    .end local v5    # "parentId$iv":I
    .end local v6    # "lastChildOffset$iv":I
    .end local v7    # "updated$iv":Z
    .end local v8    # "focusable$iv":Z
    .end local v9    # "gesturable$iv":Z
    .end local v10    # "hasCallbacks$iv":Z
    .end local v11    # "$i$f$packMeta":I
    sput-wide v0, Landroidx/compose/ui/spatial/RectListKt;->TombStone:J

    return-void
.end method

.method public static final distanceScore(IIIIIIIII)I
    .locals 6
    .param p0, "axis"    # I
    .param p1, "queryL"    # I
    .param p2, "queryT"    # I
    .param p3, "queryR"    # I
    .param p4, "queryB"    # I
    .param p5, "l"    # I
    .param p6, "t"    # I
    .param p7, "r"    # I
    .param p8, "b"    # I

    .line 1205
    packed-switch p0, :pswitch_data_0

    .line 1242
    move v1, p8

    move p8, p5

    move p5, v1

    move v1, p3

    move v2, p4

    move v5, p6

    move p4, p2

    move p2, p7

    .end local p3    # "queryR":I
    .end local p6    # "t":I
    .end local p7    # "r":I
    .local v1, "queryR":I
    .local v2, "queryB":I
    .local v5, "t":I
    .local p2, "r":I
    .local p4, "queryT":I
    .local p5, "b":I
    .local p8, "l":I
    const p3, 0x7fffffff

    move p7, p3

    goto/16 :goto_0

    .line 1217
    .end local v1    # "queryR":I
    .end local v2    # "queryB":I
    .end local v5    # "t":I
    .local p2, "queryT":I
    .restart local p3    # "queryR":I
    .local p4, "queryB":I
    .local p5, "l":I
    .restart local p6    # "t":I
    .restart local p7    # "r":I
    .local p8, "b":I
    :pswitch_0
    nop

    .line 1218
    nop

    .line 1219
    nop

    .line 1220
    nop

    .line 1221
    nop

    .line 1222
    nop

    .line 1216
    move v3, p2

    move v1, p3

    move v2, p4

    move v0, p5

    move v5, p6

    move v4, p8

    .end local p2    # "queryT":I
    .end local p3    # "queryR":I
    .end local p4    # "queryB":I
    .end local p5    # "l":I
    .end local p6    # "t":I
    .end local p8    # "b":I
    .local v0, "l":I
    .restart local v1    # "queryR":I
    .restart local v2    # "queryB":I
    .local v3, "queryT":I
    .local v4, "b":I
    .restart local v5    # "t":I
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/spatial/RectListKt;->distanceScoreAlongAxis(IIIIII)I

    move-result p2

    move p4, p7

    move p7, p2

    move p2, p4

    move p8, v0

    move p4, v3

    move p5, v4

    .end local v0    # "l":I
    .end local v2    # "queryB":I
    .end local v3    # "queryT":I
    .end local v4    # "b":I
    .end local v5    # "t":I
    .local p3, "queryB":I
    .local p4, "queryT":I
    .local p5, "b":I
    .restart local p6    # "t":I
    .local p8, "l":I
    goto/16 :goto_0

    .line 1235
    .end local v1    # "queryR":I
    .restart local p2    # "queryT":I
    .local p3, "queryR":I
    .local p4, "queryB":I
    .local p5, "l":I
    .local p8, "b":I
    :pswitch_1
    move v1, p8

    move p8, p5

    move p5, v1

    move v1, p3

    move p3, p4

    move p4, p2

    .line 1236
    .end local p2    # "queryT":I
    .restart local v1    # "queryR":I
    .local p3, "queryB":I
    .local p4, "queryT":I
    .local p5, "b":I
    .local p8, "l":I
    nop

    .line 1237
    nop

    .line 1238
    nop

    .line 1239
    nop

    .line 1240
    nop

    .line 1234
    move p2, p7

    .end local p7    # "r":I
    .local p2, "r":I
    invoke-static/range {p1 .. p6}, Landroidx/compose/ui/spatial/RectListKt;->distanceScoreAlongAxis(IIIIII)I

    move-result p7

    move v2, p3

    move v5, p6

    .end local p4    # "queryT":I
    .end local p5    # "b":I
    .restart local v3    # "queryT":I
    .restart local v4    # "b":I
    goto/16 :goto_0

    .line 1226
    .end local v1    # "queryR":I
    .end local v3    # "queryT":I
    .end local v4    # "b":I
    .local p2, "queryT":I
    .local p3, "queryR":I
    .local p4, "queryB":I
    .local p5, "l":I
    .restart local p7    # "r":I
    .local p8, "b":I
    :pswitch_2
    move v3, p2

    move v1, p3

    move p3, p4

    move p2, p7

    move v4, p8

    move p8, p5

    .line 1227
    .end local p4    # "queryB":I
    .end local p5    # "l":I
    .end local p7    # "r":I
    .restart local v1    # "queryR":I
    .restart local v3    # "queryT":I
    .restart local v4    # "b":I
    .local p2, "r":I
    .local p3, "queryB":I
    .local p8, "l":I
    nop

    .line 1228
    nop

    .line 1229
    nop

    .line 1230
    nop

    .line 1231
    nop

    .line 1225
    move p3, p6

    move p5, v1

    move p6, p1

    .end local v1    # "queryR":I
    .end local p1    # "queryL":I
    .end local p2    # "r":I
    .local p3, "t":I
    .restart local p4    # "queryB":I
    .local p5, "queryR":I
    .local p6, "queryL":I
    .restart local p7    # "r":I
    invoke-static/range {p3 .. p8}, Landroidx/compose/ui/spatial/RectListKt;->distanceScoreAlongAxis(IIIIII)I

    move-result p2

    move v5, p3

    move v2, p4

    move p1, p7

    move p7, p2

    move p2, p1

    move p1, p6

    move p4, v3

    move p5, v4

    .end local p3    # "t":I
    .end local p4    # "queryB":I
    .end local p6    # "queryL":I
    .end local p7    # "r":I
    .restart local v1    # "queryR":I
    .restart local v2    # "queryB":I
    .restart local v5    # "t":I
    .restart local p1    # "queryL":I
    .local p5, "r":I
    goto :goto_0

    .line 1208
    .end local v1    # "queryR":I
    .end local v2    # "queryB":I
    .end local v3    # "queryT":I
    .end local v4    # "b":I
    .end local v5    # "t":I
    .local p2, "queryT":I
    .local p3, "queryR":I
    .restart local p4    # "queryB":I
    .local p5, "l":I
    .local p6, "t":I
    .restart local p7    # "r":I
    .local p8, "b":I
    :pswitch_3
    move v3, p2

    move v1, p3

    move v2, p4

    move v5, p6

    move v4, p8

    move p8, p5

    move p5, p7

    .line 1209
    .end local p2    # "queryT":I
    .end local p3    # "queryR":I
    .end local p4    # "queryB":I
    .end local p6    # "t":I
    .end local p7    # "r":I
    .restart local v1    # "queryR":I
    .restart local v2    # "queryB":I
    .restart local v3    # "queryT":I
    .restart local v4    # "b":I
    .restart local v5    # "t":I
    .local p5, "r":I
    .local p8, "l":I
    nop

    .line 1210
    nop

    .line 1211
    nop

    .line 1212
    nop

    .line 1213
    nop

    .line 1207
    move p4, p1

    move p6, p8

    move p1, v3

    move p2, v4

    .end local v1    # "queryR":I
    .end local v3    # "queryT":I
    .end local v4    # "b":I
    .end local p8    # "l":I
    .local p1, "queryT":I
    .local p2, "b":I
    .restart local p3    # "queryR":I
    .local p4, "queryL":I
    .local p6, "l":I
    invoke-static/range {p1 .. p6}, Landroidx/compose/ui/spatial/RectListKt;->distanceScoreAlongAxis(IIIIII)I

    move-result p7

    move p8, p4

    move p4, p1

    move p1, p8

    move p8, p5

    move p5, p2

    move p2, p8

    move p8, p6

    .line 1205
    .end local p3    # "queryR":I
    .end local p6    # "l":I
    .restart local v1    # "queryR":I
    .local p1, "queryL":I
    .local p2, "r":I
    .local p4, "queryT":I
    .local p5, "b":I
    .restart local p8    # "l":I
    :goto_0
    return p7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final distanceScoreAlongAxis(IIIIII)I
    .locals 5
    .param p0, "distanceMin"    # I
    .param p1, "distanceMax"    # I
    .param p2, "queryCrossAxisMax"    # I
    .param p3, "queryCrossAxisMin"    # I
    .param p4, "crossAxisMax"    # I
    .param p5, "crossAxisMin"    # I

    .line 1260
    sub-int v0, p0, p1

    .line 1261
    .local v0, "distanceAlongAxis":I
    sub-int v1, p2, p3

    .line 1264
    .local v1, "maxOverlapPossible":I
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 1265
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1264
    sub-int/2addr v2, v3

    .line 1263
    nop

    .line 1267
    .local v2, "overlap":I
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v2, 0x1

    mul-int/2addr v3, v4

    return v3
.end method

.method public static final getEverythingButLastChildOffset()J
    .locals 2

    .line 1030
    sget-wide v0, Landroidx/compose/ui/spatial/RectListKt;->EverythingButLastChildOffset:J

    return-wide v0
.end method

.method public static final getEverythingButParentId()J
    .locals 2

    .line 1033
    sget-wide v0, Landroidx/compose/ui/spatial/RectListKt;->EverythingButParentId:J

    return-wide v0
.end method

.method public static final getTombStone()J
    .locals 2

    .line 1045
    sget-wide v0, Landroidx/compose/ui/spatial/RectListKt;->TombStone:J

    return-wide v0
.end method

.method public static final metaMarkFlags(JZZ)J
    .locals 9
    .param p0, "meta"    # J
    .param p2, "focusable"    # Z
    .param p3, "gesturable"    # Z

    const/4 v0, 0x0

    .line 1095
    .local v0, "$i$f$metaMarkFlags":I
    nop

    .line 1096
    nop

    .line 1095
    const-wide v1, -0x2000000000000001L    # -2.681561585988519E154

    and-long/2addr v1, p0

    .line 1097
    nop

    .line 1095
    const-wide v3, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v1, v3

    .line 1098
    move v3, p2

    .local v3, "$this$toInt$iv":Z
    const/4 v4, 0x0

    .line 1274
    .local v4, "$i$f$toInt":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .end local v3    # "$this$toInt$iv":Z
    .end local v4    # "$i$f$toInt":I
    :goto_0
    int-to-long v3, v3

    .line 1098
    const-wide/high16 v7, 0x2000000000000000L

    mul-long/2addr v3, v7

    .line 1095
    or-long/2addr v1, v3

    .line 1099
    move v3, p3

    .restart local v3    # "$this$toInt$iv":Z
    const/4 v4, 0x0

    .line 1275
    .restart local v4    # "$i$f$toInt":I
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .end local v3    # "$this$toInt$iv":Z
    .end local v4    # "$i$f$toInt":I
    :goto_1
    int-to-long v3, v5

    .line 1099
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-long/2addr v3, v5

    .line 1095
    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static final metaMarkUpdated(J)J
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1089
    .local v0, "$i$f$metaMarkUpdated":I
    const-wide/high16 v1, 0x1000000000000000L

    or-long/2addr v1, p0

    return-wide v1
.end method

.method public static final metaMarkUpdatedAndHasCallbacks(JZZ)J
    .locals 9
    .param p0, "meta"    # J
    .param p2, "updated"    # Z
    .param p3, "hasCallbacks"    # Z

    const/4 v0, 0x0

    .line 1131
    .local v0, "$i$f$metaMarkUpdatedAndHasCallbacks":I
    nop

    .line 1132
    nop

    .line 1131
    const-wide v1, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v1, p0

    .line 1133
    nop

    .line 1131
    const-wide v3, 0x7fffffffffffffffL

    and-long/2addr v1, v3

    .line 1134
    move v3, p2

    .local v3, "$this$toInt$iv":Z
    const/4 v4, 0x0

    .line 1276
    .local v4, "$i$f$toInt":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .end local v3    # "$this$toInt$iv":Z
    .end local v4    # "$i$f$toInt":I
    :goto_0
    int-to-long v3, v3

    .line 1134
    const-wide/high16 v7, 0x1000000000000000L

    mul-long/2addr v3, v7

    .line 1131
    or-long/2addr v1, v3

    .line 1135
    move v3, p3

    .restart local v3    # "$this$toInt$iv":Z
    const/4 v4, 0x0

    .line 1277
    .restart local v4    # "$i$f$toInt":I
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .end local v3    # "$this$toInt$iv":Z
    .end local v4    # "$i$f$toInt":I
    :goto_1
    int-to-long v3, v5

    .line 1135
    const-wide/high16 v5, -0x8000000000000000L

    mul-long/2addr v3, v5

    .line 1131
    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static final metaMarkUpdatedIfHasCallbacks(J)J
    .locals 5
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1124
    .local v0, "$i$f$metaMarkUpdatedIfHasCallbacks":I
    const/16 v1, 0x3f

    shr-long v1, p0, v1

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const/16 v3, 0x3c

    shl-long/2addr v1, v3

    or-long/2addr v1, p0

    return-wide v1
.end method

.method public static final metaUnMarkUpdated(J)J
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1092
    .local v0, "$i$f$metaUnMarkUpdated":I
    const-wide v1, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v1, p0

    return-wide v1
.end method

.method public static final metaWithLastChildOffset(JI)J
    .locals 6
    .param p0, "meta"    # J
    .param p2, "lastChildOffset"    # I

    const/4 v0, 0x0

    .line 1107
    .local v0, "$i$f$metaWithLastChildOffset":I
    invoke-static {}, Landroidx/compose/ui/spatial/RectListKt;->getEverythingButLastChildOffset()J

    move-result-wide v1

    and-long/2addr v1, p0

    .line 1108
    const/16 v3, 0x3ff

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    .line 1109
    nop

    .line 1108
    const/16 v5, 0x32

    shl-long/2addr v3, v5

    .line 1107
    or-long/2addr v1, v3

    .line 1109
    return-wide v1
.end method

.method public static final metaWithParentId(JI)J
    .locals 6
    .param p0, "meta"    # J
    .param p2, "parentId"    # I

    const/4 v0, 0x0

    .line 1086
    .local v0, "$i$f$metaWithParentId":I
    invoke-static {}, Landroidx/compose/ui/spatial/RectListKt;->getEverythingButParentId()J

    move-result-wide v1

    and-long/2addr v1, p0

    .line 1087
    const v3, 0x1ffffff

    and-int/2addr v3, p2

    int-to-long v3, v3

    const/16 v5, 0x19

    shl-long/2addr v3, v5

    .line 1086
    or-long/2addr v1, v3

    .line 1087
    return-wide v1
.end method

.method public static final packMeta(IIIZZZZ)J
    .locals 8
    .param p0, "itemId"    # I
    .param p1, "parentId"    # I
    .param p2, "lastChildOffset"    # I
    .param p3, "updated"    # Z
    .param p4, "focusable"    # Z
    .param p5, "gesturable"    # Z
    .param p6, "hasCallbacks"    # Z

    const/4 v0, 0x0

    .line 1064
    .local v0, "$i$f$packMeta":I
    move v1, p6

    .local v1, "$this$toLong$iv":Z
    const/4 v2, 0x0

    .line 1270
    .local v2, "$i$f$toLong":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    int-to-long v1, v5

    .line 1064
    .end local v1    # "$this$toLong$iv":Z
    .end local v2    # "$i$f$toLong":I
    const/16 v5, 0x3f

    shl-long/2addr v1, v5

    .line 1065
    move v5, p5

    .local v5, "$this$toLong$iv":Z
    const/4 v6, 0x0

    .line 1271
    .local v6, "$i$f$toLong":I
    if-eqz v5, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    int-to-long v5, v7

    .line 1065
    .end local v5    # "$this$toLong$iv":Z
    .end local v6    # "$i$f$toLong":I
    const/16 v7, 0x3e

    shl-long/2addr v5, v7

    .line 1064
    or-long/2addr v1, v5

    .line 1066
    move v5, p4

    .restart local v5    # "$this$toLong$iv":Z
    const/4 v6, 0x0

    .line 1272
    .restart local v6    # "$i$f$toLong":I
    if-eqz v5, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    int-to-long v5, v7

    .line 1066
    .end local v5    # "$this$toLong$iv":Z
    .end local v6    # "$i$f$toLong":I
    const/16 v7, 0x3d

    shl-long/2addr v5, v7

    .line 1064
    or-long/2addr v1, v5

    .line 1067
    move v5, p3

    .restart local v5    # "$this$toLong$iv":Z
    const/4 v6, 0x0

    .line 1273
    .restart local v6    # "$i$f$toLong":I
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    int-to-long v3, v3

    .line 1067
    .end local v5    # "$this$toLong$iv":Z
    .end local v6    # "$i$f$toLong":I
    const/16 v5, 0x3c

    shl-long/2addr v3, v5

    .line 1064
    or-long/2addr v1, v3

    .line 1068
    const/16 v3, 0x3ff

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    .line 1069
    nop

    .line 1068
    const/16 v5, 0x32

    shl-long/2addr v3, v5

    .line 1064
    or-long/2addr v1, v3

    .line 1070
    const v3, 0x1ffffff

    and-int v4, p1, v3

    int-to-long v4, v4

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    .line 1064
    or-long/2addr v1, v4

    .line 1071
    and-int/2addr v3, p0

    int-to-long v3, v3

    .line 1064
    or-long/2addr v1, v3

    .line 1071
    return-wide v1
.end method

.method public static final packXY(II)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I

    const/4 v0, 0x0

    .line 1052
    .local v0, "$i$f$packXY":I
    int-to-long v1, p0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static final rectIntersectsRect(JJJJ)Z
    .locals 7
    .param p0, "srcLT"    # J
    .param p2, "srcRB"    # J
    .param p4, "destLT"    # J
    .param p6, "destRB"    # J

    const/4 v0, 0x0

    .line 1161
    .local v0, "$i$f$rectIntersectsRect":I
    sub-long v1, p6, p0

    const-wide v3, 0x100000001L

    sub-long/2addr v1, v3

    sub-long v5, p2, p4

    sub-long/2addr v5, v3

    or-long/2addr v1, v5

    .line 1162
    .local v1, "a":J
    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static final toLong(Z)J
    .locals 3
    .param p0, "$this$toLong"    # Z

    const/4 v0, 0x0

    .line 1171
    .local v0, "$i$f$toLong":I
    int-to-long v1, p0

    return-wide v1
.end method

.method public static final unpackMetaFocusable(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1112
    .local v0, "$i$f$unpackMetaFocusable":I
    const/16 v1, 0x3d

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final unpackMetaGesturable(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1115
    .local v0, "$i$f$unpackMetaGesturable":I
    const/16 v1, 0x3e

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final unpackMetaHasCallbacks(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1121
    .local v0, "$i$f$unpackMetaHasCallbacks":I
    const/16 v1, 0x3f

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final unpackMetaLastChildOffset(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1083
    .local v0, "$i$f$unpackMetaLastChildOffset":I
    const/16 v1, 0x32

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0x3ff

    return v1
.end method

.method public static final unpackMetaParentId(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1076
    .local v0, "$i$f$unpackMetaParentId":I
    const/16 v1, 0x19

    shr-long v1, p0, v1

    long-to-int v1, v1

    const v2, 0x1ffffff

    and-int/2addr v1, v2

    return v1
.end method

.method public static final unpackMetaUpdated(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1118
    .local v0, "$i$f$unpackMetaUpdated":I
    const/16 v1, 0x3c

    shr-long v1, p0, v1

    long-to-int v1, v1

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final unpackMetaValue(J)I
    .locals 3
    .param p0, "meta"    # J

    const/4 v0, 0x0

    .line 1073
    .local v0, "$i$f$unpackMetaValue":I
    long-to-int v1, p0

    const v2, 0x1ffffff

    and-int/2addr v1, v2

    return v1
.end method

.method public static final unpackX(J)I
    .locals 3
    .param p0, "xy"    # J

    const/4 v0, 0x0

    .line 1138
    .local v0, "$i$f$unpackX":I
    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    return v1
.end method

.method public static final unpackY(J)I
    .locals 2
    .param p0, "xy"    # J

    const/4 v0, 0x0

    .line 1140
    .local v0, "$i$f$unpackY":I
    long-to-int v1, p0

    return v1
.end method
