.class public final Landroidx/compose/foundation/layout/WrapContentElement$Companion;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/WrapContentElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/WrapContentElement$Companion\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n1#1,1134:1\n54#2:1135\n59#2:1139\n85#3:1136\n80#3:1138\n90#3:1140\n80#3:1142\n32#4:1137\n32#4:1141\n*S KotlinDebug\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/WrapContentElement$Companion\n*L\n973#1:1135\n984#1:1139\n973#1:1136\n973#1:1138\n984#1:1140\n984#1:1142\n973#1:1137\n984#1:1141\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0018\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WrapContentElement$Companion;",
        "",
        "<init>",
        "()V",
        "width",
        "Landroidx/compose/foundation/layout/WrapContentElement;",
        "align",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "unbounded",
        "",
        "height",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "size",
        "Landroidx/compose/ui/Alignment;",
        "foundation-layout"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;-><init>()V

    return-void
.end method

.method static final height$lambda$0(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/unit/IntOffset;
    .locals 11
    .param p0, "$align"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p1, "size"    # Landroidx/compose/ui/unit/IntSize;

    .line 984
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    .local v0, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 p2, 0x0

    .line 1139
    .local p2, "$i$f$getHeight-impl":I
    move-wide v2, v0

    .local v2, "value$iv$iv":J
    const/4 v4, 0x0

    .line 1140
    .local v4, "$i$f$unpackInt2":I
    const-wide v5, 0xffffffffL

    and-long v7, v2, v5

    long-to-int v2, v7

    .line 1139
    .end local v2    # "value$iv$iv":J
    .end local v4    # "$i$f$unpackInt2":I
    nop

    .line 984
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local p2    # "$i$f$getHeight-impl":I
    const/4 p2, 0x0

    invoke-interface {p0, p2, v2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result v0

    .local v0, "y$iv":I
    .local p2, "x$iv":I
    const/4 v1, 0x0

    .line 1141
    .local v1, "$i$f$IntOffset":I
    move v2, v0

    .local v2, "val2$iv$iv":I
    move v3, p2

    .local v3, "val1$iv$iv":I
    const/4 v4, 0x0

    .line 1142
    .local v4, "$i$f$packInts":I
    int-to-long v7, v3

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    int-to-long v9, v2

    and-long/2addr v5, v9

    or-long v2, v7, v5

    .line 1141
    .end local v2    # "val2$iv$iv":I
    .end local v3    # "val1$iv$iv":I
    .end local v4    # "$i$f$packInts":I
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    .end local v0    # "y$iv":I
    .end local v1    # "$i$f$IntOffset":I
    .end local p2    # "x$iv":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p2

    .line 984
    return-object p2
.end method

.method static final size$lambda$0(Landroidx/compose/ui/Alignment;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/unit/IntOffset;
    .locals 7
    .param p0, "$align"    # Landroidx/compose/ui/Alignment;
    .param p1, "size"    # Landroidx/compose/ui/unit/IntSize;
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 995
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    .end local p0    # "$align":Landroidx/compose/ui/Alignment;
    .end local p2    # "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    .local v1, "$align":Landroidx/compose/ui/Alignment;
    .local v6, "layoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method static final width$lambda$0(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/unit/IntOffset;
    .locals 12
    .param p0, "$align"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p1, "size"    # Landroidx/compose/ui/unit/IntSize;
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 973
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    .local v0, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v2, 0x0

    .line 1135
    .local v2, "$i$f$getWidth-impl":I
    move-wide v3, v0

    .local v3, "value$iv$iv":J
    const/4 v5, 0x0

    .line 1136
    .local v5, "$i$f$unpackInt1":I
    const/16 v6, 0x20

    shr-long v7, v3, v6

    long-to-int v3, v7

    .line 1135
    .end local v3    # "value$iv$iv":J
    .end local v5    # "$i$f$unpackInt1":I
    nop

    .line 973
    .end local v0    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v2    # "$i$f$getWidth-impl":I
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, p2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v0

    .local v0, "x$iv":I
    const/4 v1, 0x0

    .local v1, "y$iv":I
    const/4 v2, 0x0

    .line 1137
    .local v2, "$i$f$IntOffset":I
    move v3, v1

    .local v3, "val2$iv$iv":I
    move v4, v0

    .local v4, "val1$iv$iv":I
    const/4 v5, 0x0

    .line 1138
    .local v5, "$i$f$packInts":I
    int-to-long v7, v4

    shl-long v6, v7, v6

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long v3, v6, v8

    .line 1137
    .end local v3    # "val2$iv$iv":I
    .end local v4    # "val1$iv$iv":I
    .end local v5    # "$i$f$packInts":I
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    .end local v0    # "x$iv":I
    .end local v1    # "y$iv":I
    .end local v2    # "$i$f$IntOffset":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    .line 973
    return-object v0
.end method


# virtual methods
.method public final height(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 6
    .param p1, "align"    # Landroidx/compose/ui/Alignment$Vertical;
    .param p2, "unbounded"    # Z

    .line 981
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 982
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 983
    nop

    .line 984
    new-instance v3, Landroidx/compose/foundation/layout/WrapContentElement$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    .line 985
    nop

    .line 986
    nop

    .line 981
    const-string/jumbo v5, "wrapContentHeight"

    move-object v4, p1

    move v2, p2

    .end local p1    # "align":Landroidx/compose/ui/Alignment$Vertical;
    .end local p2    # "unbounded":Z
    .local v2, "unbounded":Z
    .local v4, "align":Landroidx/compose/ui/Alignment$Vertical;
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    return-object v0
.end method

.method public final size(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 6
    .param p1, "align"    # Landroidx/compose/ui/Alignment;
    .param p2, "unbounded"    # Z

    .line 991
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 992
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 993
    nop

    .line 994
    new-instance v3, Landroidx/compose/foundation/layout/WrapContentElement$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Alignment;)V

    .line 997
    nop

    .line 998
    nop

    .line 991
    const-string/jumbo v5, "wrapContentSize"

    move-object v4, p1

    move v2, p2

    .end local p1    # "align":Landroidx/compose/ui/Alignment;
    .end local p2    # "unbounded":Z
    .local v2, "unbounded":Z
    .local v4, "align":Landroidx/compose/ui/Alignment;
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    return-object v0
.end method

.method public final width(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 6
    .param p1, "align"    # Landroidx/compose/ui/Alignment$Horizontal;
    .param p2, "unbounded"    # Z

    .line 969
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 970
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 971
    nop

    .line 972
    new-instance v3, Landroidx/compose/foundation/layout/WrapContentElement$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    .line 975
    nop

    .line 976
    nop

    .line 969
    const-string/jumbo v5, "wrapContentWidth"

    move-object v4, p1

    move v2, p2

    .end local p1    # "align":Landroidx/compose/ui/Alignment$Horizontal;
    .end local p2    # "unbounded":Z
    .local v2, "unbounded":Z
    .local v4, "align":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    return-object v0
.end method
