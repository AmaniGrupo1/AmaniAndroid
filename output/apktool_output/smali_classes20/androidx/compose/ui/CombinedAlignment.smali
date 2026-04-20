.class final Landroidx/compose/ui/CombinedAlignment;
.super Ljava/lang/Object;
.source "Alignment.kt"

# interfaces
.implements Landroidx/compose/ui/Alignment;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlignment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Alignment.kt\nandroidx/compose/ui/CombinedAlignment\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,284:1\n54#2:285\n59#2:287\n85#3:286\n90#3:288\n80#3:290\n32#4:289\n*S KotlinDebug\n*F\n+ 1 Alignment.kt\nandroidx/compose/ui/CombinedAlignment\n*L\n115#1:285\n116#1:287\n115#1:286\n116#1:288\n117#1:290\n117#1:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/CombinedAlignment;",
        "Landroidx/compose/ui/Alignment;",
        "horizontal",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "vertical",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "<init>",
        "(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V",
        "align",
        "Landroidx/compose/ui/unit/IntOffset;",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "space",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "align-KFBX0sM",
        "(JJLandroidx/compose/ui/unit/LayoutDirection;)J",
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


# instance fields
.field private final horizontal:Landroidx/compose/ui/Alignment$Horizontal;

.field private final vertical:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0
    .param p1, "horizontal"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p2, "vertical"    # Landroidx/compose/ui/Alignment$Vertical;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroidx/compose/ui/CombinedAlignment;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    .line 112
    iput-object p2, p0, Landroidx/compose/ui/CombinedAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    .line 110
    return-void
.end method


# virtual methods
.method public align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 17
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-size$0"    # J
    .param p3, "$v$c$androidx-compose-ui-unit-IntSize$-space$0"    # J
    .param p5, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/CombinedAlignment;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    move-wide/from16 v2, p1

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 285
    .local v4, "$i$f$getWidth-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 286
    .local v7, "$i$f$unpackInt1":I
    const/16 v8, 0x20

    shr-long v9, v5, v8

    long-to-int v5, v9

    .line 285
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt1":I
    nop

    .line 115
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getWidth-impl":I
    move-wide/from16 v2, p3

    .restart local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 285
    .restart local v4    # "$i$f$getWidth-impl":I
    move-wide v6, v2

    .local v6, "value$iv$iv":J
    const/4 v9, 0x0

    .line 286
    .local v9, "$i$f$unpackInt1":I
    shr-long v10, v6, v8

    long-to-int v6, v10

    .line 285
    .end local v6    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackInt1":I
    nop

    .line 115
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getWidth-impl":I
    move-object/from16 v2, p5

    invoke-interface {v1, v5, v6, v2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v1

    .line 116
    .local v1, "x":I
    iget-object v3, v0, Landroidx/compose/ui/CombinedAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    move-wide/from16 v4, p1

    .local v4, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 287
    .local v6, "$i$f$getHeight-impl":I
    move-wide v9, v4

    .local v9, "value$iv$iv":J
    const/4 v7, 0x0

    .line 288
    .local v7, "$i$f$unpackInt2":I
    const-wide v11, 0xffffffffL

    and-long v13, v9, v11

    long-to-int v7, v13

    .line 287
    .end local v7    # "$i$f$unpackInt2":I
    .end local v9    # "value$iv$iv":J
    nop

    .line 116
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getHeight-impl":I
    move-wide/from16 v4, p3

    .restart local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v6, 0x0

    .line 287
    .restart local v6    # "$i$f$getHeight-impl":I
    move-wide v9, v4

    .restart local v9    # "value$iv$iv":J
    const/4 v13, 0x0

    .line 288
    .local v13, "$i$f$unpackInt2":I
    and-long v14, v9, v11

    long-to-int v9, v14

    .line 287
    .end local v9    # "value$iv$iv":J
    .end local v13    # "$i$f$unpackInt2":I
    nop

    .line 116
    .end local v4    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v6    # "$i$f$getHeight-impl":I
    invoke-interface {v3, v7, v9}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v3

    .line 117
    .local v3, "y":I
    move v4, v3

    .local v4, "y$iv":I
    move v5, v1

    .local v5, "x$iv":I
    const/4 v6, 0x0

    .line 289
    .local v6, "$i$f$IntOffset":I
    move v7, v4

    .local v7, "val2$iv$iv":I
    move v9, v5

    .local v9, "val1$iv$iv":I
    const/4 v10, 0x0

    .line 290
    .local v10, "$i$f$packInts":I
    int-to-long v13, v9

    shl-long/2addr v13, v8

    move-wide v15, v11

    int-to-long v11, v7

    and-long/2addr v11, v15

    or-long v7, v13, v11

    .line 289
    .end local v7    # "val2$iv$iv":I
    .end local v9    # "val1$iv$iv":I
    .end local v10    # "$i$f$packInts":I
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v4

    .line 117
    .end local v4    # "y$iv":I
    .end local v5    # "x$iv":I
    .end local v6    # "$i$f$IntOffset":I
    return-wide v4
.end method
