.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;
.super Ljava/lang/Object;
.source "LazyLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayout.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy\n+ 2 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet\n+ 3 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSet\n+ 4 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,174:1\n493#2:175\n301#3,7:176\n308#3,4:184\n1123#4:183\n*S KotlinDebug\n*F\n+ 1 LazyLayout.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy\n*L\n154#1:175\n154#1:176,7\n154#1:184,4\n154#1:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;",
        "factory",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;",
        "<init>",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V",
        "countPerType",
        "Landroidx/collection/MutableObjectIntMap;",
        "",
        "getSlotsToRetain",
        "",
        "slotIds",
        "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;",
        "areCompatible",
        "",
        "slotId",
        "reusableSlotId",
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


# instance fields
.field private final countPerType:Landroidx/collection/MutableObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V
    .locals 1
    .param p1, "factory"    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->factory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 150
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->countPerType:Landroidx/collection/MutableObjectIntMap;

    .line 148
    return-void
.end method


# virtual methods
.method public areCompatible(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "reusableSlotId"    # Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->factory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->factory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSlotsToRetain(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;)V
    .locals 14
    .param p1, "slotIds"    # Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;

    .line 153
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->countPerType:Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {v0}, Landroidx/collection/MutableObjectIntMap;->clear()V

    .line 154
    move-object v0, p1

    .local v0, "this_$iv":Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;
    const/4 v1, 0x0

    .line 175
    .local v1, "$i$f$fastForEach":I
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->getSet()Landroidx/collection/MutableOrderedScatterSet;

    move-result-object v2

    check-cast v2, Landroidx/collection/OrderedScatterSet;

    .local v2, "this_$iv$iv":Landroidx/collection/OrderedScatterSet;
    const/4 v3, 0x0

    .line 176
    .local v3, "$i$f$forEach":I
    nop

    .line 177
    iget-object v4, v2, Landroidx/collection/OrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 178
    .local v4, "elements$iv$iv":[Ljava/lang/Object;
    iget-object v5, v2, Landroidx/collection/OrderedScatterSet;->nodes:[J

    .line 180
    .local v5, "nodes$iv$iv":[J
    iget v6, v2, Landroidx/collection/OrderedScatterSet;->tail:I

    .line 181
    .local v6, "candidate$iv$iv":I
    :goto_0
    const v7, 0x7fffffff

    if-eq v6, v7, :cond_1

    .line 182
    aget-wide v7, v5, v6

    .local v7, "$this$previousNode$iv$iv$iv":J
    const/4 v9, 0x0

    .line 183
    .local v9, "$i$f$getPreviousNode":I
    const/16 v10, 0x1f

    shr-long v10, v7, v10

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v10, v12

    long-to-int v7, v10

    .line 182
    .end local v7    # "$this$previousNode$iv$iv$iv":J
    .end local v9    # "$i$f$getPreviousNode":I
    nop

    .line 184
    .local v7, "previousNode$iv$iv":I
    aget-object v8, v4, v6

    .local v8, "slotId":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 155
    .local v9, "$i$a$-fastForEach-LazyLayoutItemReusePolicy$getSlotsToRetain$1":I
    iget-object v10, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->factory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-virtual {v10, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContentType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 156
    .local v10, "type":Ljava/lang/Object;
    iget-object v11, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->countPerType:Landroidx/collection/MutableObjectIntMap;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroidx/collection/MutableObjectIntMap;->getOrDefault(Ljava/lang/Object;I)I

    move-result v11

    .line 157
    .local v11, "currentCount":I
    const/4 v12, 0x7

    if-ne v11, v12, :cond_0

    .line 158
    invoke-virtual {p1, v8}, Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_0
    iget-object v12, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;->countPerType:Landroidx/collection/MutableObjectIntMap;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v12, v10, v13}, Landroidx/collection/MutableObjectIntMap;->set(Ljava/lang/Object;I)V

    .line 162
    :goto_1
    nop

    .line 184
    .end local v8    # "slotId":Ljava/lang/Object;
    .end local v9    # "$i$a$-fastForEach-LazyLayoutItemReusePolicy$getSlotsToRetain$1":I
    .end local v10    # "type":Ljava/lang/Object;
    .end local v11    # "currentCount":I
    nop

    .line 185
    move v6, v7

    .end local v7    # "previousNode$iv$iv":I
    goto :goto_0

    .line 187
    :cond_1
    nop

    .line 175
    .end local v2    # "this_$iv$iv":Landroidx/collection/OrderedScatterSet;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "elements$iv$iv":[Ljava/lang/Object;
    .end local v5    # "nodes$iv$iv":[J
    .end local v6    # "candidate$iv$iv":I
    nop

    .line 163
    .end local v0    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy$SlotIdsSet;
    .end local v1    # "$i$f$fastForEach":I
    return-void
.end method
