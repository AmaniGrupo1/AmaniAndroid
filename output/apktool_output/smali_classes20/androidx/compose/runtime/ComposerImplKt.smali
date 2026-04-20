.class public final Landroidx/compose/runtime/ComposerImplKt;
.super Ljava/lang/Object;
.source "ComposerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposerImpl.kt\nandroidx/compose/runtime/ComposerImplKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,3391:1\n1475#2,4:3392\n1#3:3396\n159#4,7:3397\n*S KotlinDebug\n*F\n+ 1 ComposerImpl.kt\nandroidx/compose/runtime/ComposerImplKt\n*L\n3182#1:3392,4\n3298#1:3397,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001e\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0002\u001a5\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u0002H\r0\u000b\"\u0008\u0008\u0000\u0010\u000c*\u00020\t\"\u0008\u0008\u0001\u0010\r*\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010\u000f\u001a(\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\tH\u0002\u001a\u001a\u0010\u0014\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u001a\u001a\u0010\u0018\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u001a,\u0010\u0019\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\tH\u0002\u001a$\u0010\u001e\u001a\u0004\u0018\u00010\u0016*\u0008\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002\u001a\u001c\u0010!\u001a\u0004\u0018\u00010\u0016*\u0008\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u0017\u001a\u00020\u0007H\u0002\u001a\"\u0010\"\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00160\u001a2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002\u001a7\u0010#\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010%H\u0082\u0008\u001a\u000c\u0010&\u001a\u00020\u0007*\u00020\'H\u0002\u001a\u000c\u0010(\u001a\u00020\'*\u00020\u0007H\u0002\u001a\u001c\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0015*\u00020*2\u0006\u0010+\u001a\u00020,H\u0002\u001a\u001c\u0010-\u001a\u00020\u0007*\u00020.2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0007H\u0002\u001a$\u00100\u001a\u00020\u0007*\u00020.2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0007H\u0002\"\u0018\u00104\u001a\u00020\t*\u0002058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107\"\u001e\u00108\u001a\u0012\u0012\u0004\u0012\u00020\u001609j\u0008\u0012\u0004\u0012\u00020\u0016`:X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010;\u001a\u00020\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010<\u001a\u00020\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "deactivateCurrentGroup",
        "",
        "Landroidx/compose/runtime/SlotWriter;",
        "rememberManager",
        "Landroidx/compose/runtime/RememberManager;",
        "removeData",
        "index",
        "",
        "data",
        "",
        "multiMap",
        "Landroidx/compose/runtime/collection/MultiValueMap;",
        "K",
        "V",
        "initialCapacity",
        "(I)Landroidx/collection/MutableScatterMap;",
        "getKey",
        "value",
        "left",
        "right",
        "findLocation",
        "",
        "Landroidx/compose/runtime/Invalidation;",
        "location",
        "findInsertLocation",
        "insertIfMissing",
        "",
        "scope",
        "Landroidx/compose/runtime/RecomposeScopeImpl;",
        "instance",
        "firstInRange",
        "start",
        "end",
        "removeLocation",
        "removeRange",
        "forEachInRange",
        "block",
        "Lkotlin/Function1;",
        "asInt",
        "",
        "asBool",
        "collectNodesFrom",
        "Landroidx/compose/runtime/SlotTable;",
        "anchor",
        "Landroidx/compose/runtime/Anchor;",
        "distanceFrom",
        "Landroidx/compose/runtime/SlotReader;",
        "root",
        "nearestCommonRootOf",
        "a",
        "b",
        "common",
        "joinedKey",
        "Landroidx/compose/runtime/KeyInfo;",
        "getJoinedKey",
        "(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;",
        "InvalidationLocationAscending",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "rootKey",
        "nodeKey",
        "runtime"
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
.field private static final InvalidationLocationAscending:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;"
        }
    .end annotation
.end field

.field public static final nodeKey:I = 0x7d

.field public static final rootKey:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3377
    new-instance v0, Landroidx/compose/runtime/ComposerImplKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/compose/runtime/ComposerImplKt$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ComposerImplKt;->InvalidationLocationAscending:Ljava/util/Comparator;

    return-void
.end method

.method static final InvalidationLocationAscending$lambda$0(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I
    .locals 2
    .param p0, "i1"    # Landroidx/compose/runtime/Invalidation;
    .param p1, "i2"    # Landroidx/compose/runtime/Invalidation;

    .line 3377
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$asBool(I)Z
    .locals 1
    .param p0, "$receiver"    # I

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImplKt;->asBool(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$asInt(Z)I
    .locals 1
    .param p0, "$receiver"    # Z

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImplKt;->asInt(Z)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/runtime/SlotTable;
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$findInsertLocation(Ljava/util/List;I)I
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "location"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->findInsertLocation(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImplKt;->firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInvalidationLocationAscending$p()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerImplKt;->InvalidationLocationAscending:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/runtime/KeyInfo;

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImplKt;->getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImplKt;->getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "location"    # I
    .param p2, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p3, "instance"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImplKt;->insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$multiMap(I)Landroidx/collection/MutableScatterMap;
    .locals 1
    .param p0, "initialCapacity"    # I

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImplKt;->multiMap(I)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/runtime/SlotReader;
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "common"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImplKt;->nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "location"    # I

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$removeRange(Ljava/util/List;II)V
    .locals 0
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerImplKt;->removeRange(Ljava/util/List;II)V

    return-void
.end method

.method private static final asBool(I)Z
    .locals 1
    .param p0, "$this$asBool"    # I

    .line 3294
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final asInt(Z)I
    .locals 0
    .param p0, "$this$asInt"    # Z

    .line 3292
    return p0
.end method

.method private static final collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 8
    .param p0, "$this$collectNodesFrom"    # Landroidx/compose/runtime/SlotTable;
    .param p1, "anchor"    # Landroidx/compose/runtime/Anchor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "Landroidx/compose/runtime/Anchor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 3298
    .local v0, "result":Ljava/util/List;
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/compose/runtime/SlotTable;
    const/4 v2, 0x0

    .line 3397
    .local v2, "$i$f$read":I
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v3

    .local v3, "reader$iv":Landroidx/compose/runtime/SlotReader;
    const/4 v4, 0x0

    .line 3398
    .local v4, "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 3399
    move-object v5, v3

    .local v5, "reader":Landroidx/compose/runtime/SlotReader;
    const/4 v6, 0x0

    .line 3299
    .local v6, "$i$a$-read-ComposerImplKt$collectNodesFrom$1":I
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v7

    .line 3312
    .local v7, "index":I
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/ComposerImplKt;->collectNodesFrom$lambda$0$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    .line 3313
    nop

    .end local v5    # "reader":Landroidx/compose/runtime/SlotReader;
    .end local v6    # "$i$a$-read-ComposerImplKt$collectNodesFrom$1":I
    .end local v7    # "index":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3399
    nop

    .line 3401
    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 3402
    nop

    .line 3397
    .end local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .end local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    nop

    .line 3403
    nop

    .line 3314
    .end local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .end local v2    # "$i$f$read":I
    return-object v0

    .line 3401
    .restart local v1    # "this_$iv":Landroidx/compose/runtime/SlotTable;
    .restart local v2    # "$i$f$read":I
    .restart local v3    # "reader$iv":Landroidx/compose/runtime/SlotReader;
    .restart local v4    # "$i$a$-let-SlotTable$read$1$iv":I
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v5
.end method

.method private static final collectNodesFrom$lambda$0$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V
    .locals 3
    .param p0, "$reader"    # Landroidx/compose/runtime/SlotReader;
    .param p1, "result"    # Ljava/util/List;
    .param p2, "group"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 3301
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3302
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3304
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 3305
    .local v0, "current":I
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 3306
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3307
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/ComposerImplKt;->collectNodesFrom$lambda$0$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    .line 3308
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 3311
    .end local v0    # "current":I
    .end local v1    # "end":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static final deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 2
    .param p0, "$this$deactivateCurrentGroup"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "rememberManager"    # Landroidx/compose/runtime/RememberManager;

    .line 3160
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    new-instance v1, Landroidx/compose/runtime/ComposerImplKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Landroidx/compose/runtime/ComposerImplKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/SlotWriter;)V

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->forAllDataInRememberOrder(ILkotlin/jvm/functions/Function2;)V

    .line 3178
    return-void
.end method

.method static final deactivateCurrentGroup$lambda$0(Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)Lkotlin/Unit;
    .locals 1
    .param p0, "$rememberManager"    # Landroidx/compose/runtime/RememberManager;
    .param p1, "$this_deactivateCurrentGroup"    # Landroidx/compose/runtime/SlotWriter;
    .param p2, "slotIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .line 3161
    nop

    .line 3162
    instance-of v0, p3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v0, :cond_0

    .line 3163
    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/RememberManager;->deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    goto :goto_0

    .line 3165
    :cond_0
    instance-of v0, p3, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    if-nez v0, :cond_2

    .line 3168
    instance-of v0, p3, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v0, :cond_1

    .line 3169
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/ComposerImplKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    .line 3170
    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V

    goto :goto_0

    .line 3172
    :cond_1
    instance-of v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_2

    .line 3173
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/ComposerImplKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    .line 3174
    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 3177
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final distanceFrom(Landroidx/compose/runtime/SlotReader;II)I
    .locals 2
    .param p0, "$this$distanceFrom"    # Landroidx/compose/runtime/SlotReader;
    .param p1, "index"    # I
    .param p2, "root"    # I

    .line 3318
    const/4 v0, 0x0

    .line 3319
    .local v0, "count":I
    move v1, p1

    .line 3320
    .local v1, "current":I
    :goto_0
    if-lez v1, :cond_0

    if-eq v1, p2, :cond_0

    .line 3321
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    .line 3322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3324
    :cond_0
    return v0
.end method

.method private static final findInsertLocation(Ljava/util/List;I)I
    .locals 3
    .param p0, "$this$findInsertLocation"    # Ljava/util/List;
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I)I"
        }
    .end annotation

    .line 3214
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->findLocation(Ljava/util/List;I)I

    move-result v0

    .line 3396
    .local v0, "it":I
    const/4 v1, 0x0

    .line 3214
    .local v1, "$i$a$-let-ComposerImplKt$findInsertLocation$1":I
    if-gez v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    move v0, v2

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ComposerImplKt$findInsertLocation$1":I
    :cond_0
    return v0
.end method

.method private static final findLocation(Ljava/util/List;I)I
    .locals 5
    .param p0, "$this$findLocation"    # Ljava/util/List;
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I)I"
        }
    .end annotation

    .line 3196
    const/4 v0, 0x0

    .line 3197
    .local v0, "low":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 3199
    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 3200
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 3201
    .local v2, "mid":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Invalidation;

    .line 3202
    .local v3, "midVal":Landroidx/compose/runtime/Invalidation;
    invoke-virtual {v3}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    .line 3204
    .local v4, "cmp":I
    nop

    .line 3205
    if-gez v4, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 3206
    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 3207
    :cond_1
    return v2

    .line 3210
    .end local v2    # "mid":I
    .end local v3    # "midVal":Landroidx/compose/runtime/Invalidation;
    .end local v4    # "cmp":I
    :cond_2
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static final firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;
    .locals 3
    .param p0, "$this$firstInRange"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;II)",
            "Landroidx/compose/runtime/Invalidation;"
        }
    .end annotation

    .line 3256
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->findInsertLocation(Ljava/util/List;I)I

    move-result v0

    .line 3257
    .local v0, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3258
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/Invalidation;

    .line 3259
    .local v1, "firstInvalidation":Landroidx/compose/runtime/Invalidation;
    invoke-virtual {v1}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v2

    if-ge v2, p2, :cond_0

    return-object v1

    .line 3261
    .end local v1    # "firstInvalidation":Landroidx/compose/runtime/Invalidation;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static final forEachInRange(Ljava/util/List;IILkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0, "$this$forEachInRange"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/Invalidation;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3282
    .local v0, "$i$f$forEachInRange":I
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->access$findInsertLocation(Ljava/util/List;I)I

    move-result v1

    .line 3283
    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3284
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Invalidation;

    .line 3285
    .local v2, "invalidation":Landroidx/compose/runtime/Invalidation;
    invoke-virtual {v2}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 3287
    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3288
    nop

    .end local v2    # "invalidation":Landroidx/compose/runtime/Invalidation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3290
    :cond_0
    return-void
.end method

.method private static final getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$joinedKey"    # Landroidx/compose/runtime/KeyInfo;

    .line 3356
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getObjectKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getObjectKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 3189
    instance-of v0, p0, Landroidx/compose/runtime/JoinedKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/JoinedKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .local v0, "it":Landroidx/compose/runtime/JoinedKey;
    const/4 v1, 0x0

    .line 3190
    .local v1, "$i$a$-let-ComposerImplKt$getKey$1":I
    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p0

    goto :goto_1

    .line 3191
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroidx/compose/runtime/ComposerImplKt;->getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroidx/compose/runtime/ComposerImplKt;->getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    move-object v1, v2

    .line 3189
    .end local v0    # "it":Landroidx/compose/runtime/JoinedKey;
    .end local v1    # "$i$a$-let-ComposerImplKt$getKey$1":I
    :cond_3
    :goto_1
    nop

    .line 3192
    return-object v1
.end method

.method private static final insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 5
    .param p0, "$this$insertIfMissing"    # Ljava/util/List;
    .param p1, "location"    # I
    .param p2, "scope"    # Landroidx/compose/runtime/RecomposeScopeImpl;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3221
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->findLocation(Ljava/util/List;I)I

    move-result v0

    .line 3222
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 3223
    nop

    .line 3224
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    .line 3225
    nop

    .line 3226
    nop

    .line 3227
    nop

    .line 3229
    nop

    .line 3396
    move-object v3, p3

    .local v3, "it":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3229
    .local v4, "$i$a$-takeIf-ComposerImplKt$insertIfMissing$1":I
    instance-of v3, v3, Landroidx/compose/runtime/DerivedState;

    .end local v3    # "it":Ljava/lang/Object;
    .end local v4    # "$i$a$-takeIf-ComposerImplKt$insertIfMissing$1":I
    if-eqz v3, :cond_0

    move-object v1, p3

    .line 3225
    :cond_0
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v3, p2, p1, v1}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 3223
    invoke-interface {p0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3233
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Invalidation;

    .line 3235
    .local v2, "invalidation":Landroidx/compose/runtime/Invalidation;
    instance-of v3, p3, Landroidx/compose/runtime/DerivedState;

    if-eqz v3, :cond_4

    .line 3236
    invoke-virtual {v2}, Landroidx/compose/runtime/Invalidation;->getInstances()Ljava/lang/Object;

    move-result-object v1

    .line 3237
    .local v1, "oldInstance":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 3238
    invoke-virtual {v2, p3}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    goto :goto_0

    .line 3240
    :cond_2
    instance-of v3, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_3

    .line 3242
    move-object v3, v1

    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 3243
    move-object v3, v1

    check-cast v3, Landroidx/collection/MutableScatterSet;

    invoke-virtual {v3, p3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3246
    :cond_3
    invoke-static {v1, p3}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    .end local v1    # "oldInstance":Ljava/lang/Object;
    goto :goto_0

    .line 3250
    :cond_4
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    .line 3253
    .end local v2    # "invalidation":Landroidx/compose/runtime/Invalidation;
    :goto_0
    return-void
.end method

.method private static final multiMap(I)Landroidx/collection/MutableScatterMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3186
    new-instance v0, Landroidx/collection/MutableScatterMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/collection/MultiValueMap;->constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    return-object v0
.end method

.method private static final nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I
    .locals 9
    .param p0, "$this$nearestCommonRootOf"    # Landroidx/compose/runtime/SlotReader;
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "common"    # I

    .line 3330
    if-ne p1, p2, :cond_0

    return p1

    .line 3331
    :cond_0
    if-eq p1, p3, :cond_8

    if-ne p2, p3, :cond_1

    goto :goto_3

    .line 3332
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    if-ne v0, p2, :cond_2

    return p2

    .line 3333
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    return p1

    .line 3334
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    return v0

    .line 3337
    :cond_4
    const/4 v0, 0x0

    .local v0, "currentA":I
    move v0, p1

    .line 3338
    const/4 v1, 0x0

    .local v1, "currentB":I
    move v1, p2

    .line 3339
    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/ComposerImplKt;->distanceFrom(Landroidx/compose/runtime/SlotReader;II)I

    move-result v2

    .line 3340
    .local v2, "aDistance":I
    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/ComposerImplKt;->distanceFrom(Landroidx/compose/runtime/SlotReader;II)I

    move-result v3

    .line 3341
    .local v3, "bDistance":I
    sub-int v4, v2, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    move v7, v6

    .line 3396
    .local v7, "it":I
    const/4 v8, 0x0

    .line 3341
    .local v8, "$i$a$-repeat-ComposerImplKt$nearestCommonRootOf$1":I
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-ComposerImplKt$nearestCommonRootOf$1":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3342
    :cond_5
    sub-int v4, v3, v2

    :goto_1
    if-ge v5, v4, :cond_6

    move v6, v5

    .line 3396
    .local v6, "it":I
    const/4 v7, 0x0

    .line 3342
    .local v7, "$i$a$-repeat-ComposerImplKt$nearestCommonRootOf$2":I
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    .end local v6    # "it":I
    .end local v7    # "$i$a$-repeat-ComposerImplKt$nearestCommonRootOf$2":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3346
    :cond_6
    :goto_2
    if-eq v0, v1, :cond_7

    .line 3347
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v0

    .line 3348
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    move-result v1

    goto :goto_2

    .line 3352
    :cond_7
    return v0

    .line 3331
    .end local v0    # "currentA":I
    .end local v1    # "currentB":I
    .end local v2    # "aDistance":I
    .end local v3    # "bDistance":I
    :cond_8
    :goto_3
    return p3
.end method

.method private static final removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$removeData"    # Landroidx/compose/runtime/SlotWriter;
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 3181
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->clear(I)Ljava/lang/Object;

    move-result-object v0

    .line 3182
    .local v0, "result":Ljava/lang/Object;
    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "value$iv":Z
    :goto_0
    const/4 v2, 0x0

    .line 3392
    .local v2, "$i$f$runtimeCheck":I
    if-nez v1, :cond_1

    .line 3393
    const/4 v3, 0x0

    .line 3182
    .local v3, "$i$a$-runtimeCheck-ComposerImplKt$removeData$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot table is out of sync (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3393
    .end local v3    # "$i$a$-runtimeCheck-ComposerImplKt$removeData$1":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3395
    :cond_1
    nop

    .line 3183
    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$runtimeCheck":I
    return-void
.end method

.method private static final removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;
    .locals 2
    .param p0, "$this$removeLocation"    # Ljava/util/List;
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I)",
            "Landroidx/compose/runtime/Invalidation;"
        }
    .end annotation

    .line 3265
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->findLocation(Ljava/util/List;I)I

    move-result v0

    .line 3266
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/Invalidation;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static final removeRange(Ljava/util/List;II)V
    .locals 3
    .param p0, "$this$removeRange"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;II)V"
        }
    .end annotation

    .line 3270
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImplKt;->findInsertLocation(Ljava/util/List;I)I

    move-result v0

    .line 3271
    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3272
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/Invalidation;

    .line 3273
    .local v1, "validation":Landroidx/compose/runtime/Invalidation;
    invoke-virtual {v1}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Invalidation;

    goto :goto_0

    .line 3275
    .end local v1    # "validation":Landroidx/compose/runtime/Invalidation;
    :cond_0
    return-void
.end method
