.class public final Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;
.super Ljava/lang/Object;
.source "LazyGridDsl.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/GridCells;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/grid/GridCells;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedSize"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/GridCells$FixedSize\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/foundation/internal/InlineClassHelperKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,653:1\n122#2:654\n97#3,4:655\n1#4:659\n*S KotlinDebug\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/GridCells$FixedSize\n*L\n389#1:654\n389#1:655,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008*\u00020\n2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\tH\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002R\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;",
        "Landroidx/compose/foundation/lazy/grid/GridCells;",
        "size",
        "Landroidx/compose/ui/unit/Dp;",
        "<init>",
        "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "F",
        "calculateCrossAxisCellSizes",
        "",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "availableSize",
        "spacing",
        "hashCode",
        "equals",
        "",
        "other",
        "",
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
.field private final size:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(F)V
    .locals 4
    .param p1, "size"    # F

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;->size:F

    .line 388
    nop

    .line 389
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;->size:F

    const/4 v1, 0x0

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 654
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 389
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 655
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 656
    const/4 v2, 0x0

    .line 389
    .local v2, "$i$a$-requirePrecondition-GridCells$FixedSize$1":I
    nop

    .line 656
    .end local v2    # "$i$a$-requirePrecondition-GridCells$FixedSize$1":I
    const-string/jumbo v2, "Provided size should be larger than zero."

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 658
    :cond_1
    nop

    .line 390
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    nop

    .line 387
    return-void
.end method

.method public synthetic constructor <init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;-><init>(F)V

    return-void
.end method


# virtual methods
.method public calculateCrossAxisCellSizes(Landroidx/compose/ui/unit/Density;II)Ljava/util/List;
    .locals 6
    .param p1, "$this$calculateCrossAxisCellSizes"    # Landroidx/compose/ui/unit/Density;
    .param p2, "availableSize"    # I
    .param p3, "spacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 396
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;->size:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    .line 397
    .local v0, "cellSize":I
    add-int v1, v0, p3

    add-int v2, p2, p3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 398
    add-int v1, p2, p3

    add-int v2, v0, p3

    div-int/2addr v1, v2

    .line 399
    .local v1, "cellCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v3, v1, :cond_0

    .line 659
    move v4, v3

    .local v4, "it":I
    const/4 v5, 0x0

    .line 399
    .local v5, "$i$a$-List-GridCells$FixedSize$calculateCrossAxisCellSizes$1":I
    nop

    .end local v4    # "it":I
    .end local v5    # "$i$a$-List-GridCells$FixedSize$calculateCrossAxisCellSizes$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/util/List;

    .end local v1    # "cellCount":I
    goto :goto_2

    .line 401
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v3, v2, :cond_2

    .line 659
    move v4, v3

    .restart local v4    # "it":I
    const/4 v5, 0x0

    .line 401
    .local v5, "$i$a$-List-GridCells$FixedSize$calculateCrossAxisCellSizes$2":I
    nop

    .end local v4    # "it":I
    .end local v5    # "$i$a$-List-GridCells$FixedSize$calculateCrossAxisCellSizes$2":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 397
    :goto_2
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 410
    instance-of v0, p1, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;->size:F

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;->size:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 406
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/GridCells$FixedSize;->size:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    return v0
.end method
