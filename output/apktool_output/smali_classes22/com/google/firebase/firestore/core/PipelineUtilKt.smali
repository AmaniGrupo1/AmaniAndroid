.class public final Lcom/google/firebase/firestore/core/PipelineUtilKt;
.super Ljava/lang/Object;
.source "PipelineUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipelineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipelineUtil.kt\ncom/google/firebase/firestore/core/PipelineUtilKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,297:1\n11165#2:298\n11500#2,3:299\n37#3,2:302\n1557#4:304\n1628#4,3:305\n*S KotlinDebug\n*F\n+ 1 PipelineUtil.kt\ncom/google/firebase/firestore/core/PipelineUtilKt\n*L\n243#1:298\n243#1:299,3\n243#1:302,2\n256#1:304\n256#1:305,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u001f\u0010\t\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0007\u0018\u00010\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u0018\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0000\u001a\u0017\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0010\u0011\u001a\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getPipelineFlavor",
        "Lcom/google/firebase/firestore/core/PipelineFlavor;",
        "pipeline",
        "Lcom/google/firebase/firestore/RealtimePipeline;",
        "getPipelineSourceType",
        "Lcom/google/firebase/firestore/core/PipelineSourceType;",
        "getPipelineCollectionGroup",
        "",
        "getPipelineCollection",
        "getPipelineDocuments",
        "",
        "(Lcom/google/firebase/firestore/RealtimePipeline;)[Ljava/lang/String;",
        "asCollectionPipelineAtPath",
        "path",
        "Lcom/google/firebase/firestore/model/ResourcePath;",
        "getLastEffectiveLimit",
        "",
        "(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/Integer;",
        "getLastEffectiveSortOrderings",
        "",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "com.google.firebase-firebase-firestore"
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
.method public static final asCollectionPipelineAtPath(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 12
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 304
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 305
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 306
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/google/firebase/firestore/pipeline/Stage;

    .local v7, "stagePtr":Lcom/google/firebase/firestore/pipeline/Stage;
    const/4 v8, 0x0

    .line 257
    .local v8, "$i$a$-map-PipelineUtilKt$asCollectionPipelineAtPath$newStages$1":I
    instance-of v9, v7, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    if-eqz v9, :cond_0

    .line 258
    new-instance v9, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getSerializer$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/remote/RemoteSerializer;

    move-result-object v10

    sget-object v11, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v9, p1, v10, v11}, Lcom/google/firebase/firestore/pipeline/CollectionSource;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    check-cast v9, Lcom/google/firebase/firestore/pipeline/Stage;

    goto :goto_1

    .line 260
    :cond_0
    move-object v9, v7

    .line 261
    :goto_1
    nop

    .line 306
    .end local v7    # "stagePtr":Lcom/google/firebase/firestore/pipeline/Stage;
    .end local v8    # "$i$a$-map-PipelineUtilKt$asCollectionPipelineAtPath$newStages$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 304
    nop

    .line 256
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    nop

    .line 255
    move-object v7, v2

    .line 266
    .local v7, "newStages":Ljava/util/List;
    new-instance v3, Lcom/google/firebase/firestore/RealtimePipeline;

    .line 267
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getFirestore$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v4

    .line 268
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getSerializer$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/remote/RemoteSerializer;

    move-result-object v5

    .line 269
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getUserDataReader$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v6

    .line 270
    nop

    .line 266
    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public static final getLastEffectiveLimit(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/Integer;
    .locals 3
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 277
    .local v1, "stagePtr":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v2, v1, Lcom/google/firebase/firestore/pipeline/LimitStage;

    if-eqz v2, :cond_0

    .line 278
    move-object v0, v1

    check-cast v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/LimitStage;->getLimit()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 283
    .end local v1    # "stagePtr":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getLastEffectiveSortOrderings(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/util/List;
    .locals 3
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/RealtimePipeline;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Ordering;",
            ">;"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getRewrittenStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 288
    .local v1, "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v2, v1, Lcom/google/firebase/firestore/pipeline/SortStage;

    if-eqz v2, :cond_0

    .line 289
    move-object v0, v1

    check-cast v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/SortStage;->getOrders()[Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 294
    .end local v1    # "stage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RealtimePipeline must contain at least one Sort stage (ensured by RewriteStages)."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 295
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getPipelineCollection(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/String;
    .locals 3
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {p0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 224
    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    const-string v2, "Pipeline source is Collection but stages are empty."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 227
    .local v0, "firstStage":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    if-eqz v1, :cond_0

    .line 228
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/CollectionSource;->getPath$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 231
    .end local v0    # "firstStage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getPipelineCollectionGroup(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/String;
    .locals 3
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION_GROUP:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 209
    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 207
    const-string v2, "Pipeline source is CollectionGroup but stages are empty."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 212
    .local v0, "firstStage":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    if-eqz v1, :cond_0

    .line 213
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    .end local v0    # "firstStage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getPipelineDocuments(Lcom/google/firebase/firestore/RealtimePipeline;)[Ljava/lang/String;
    .locals 12
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/PipelineSourceType;->DOCUMENTS:Lcom/google/firebase/firestore/core/PipelineSourceType;

    if-ne v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 239
    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 237
    const-string v3, "Pipeline source is Documents but stages are empty."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 242
    .local v0, "firstStage":Lcom/google/firebase/firestore/pipeline/Stage;
    instance-of v2, v0, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    if-eqz v2, :cond_1

    .line 243
    move-object v2, v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/DocumentsSource;->getDocuments()[Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .local v2, "$this$map$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 298
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 299
    .local v6, "$i$f$mapTo":I
    array-length v7, v5

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    .line 300
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "it":Lcom/google/firebase/firestore/model/ResourcePath;
    const/4 v11, 0x0

    .line 243
    .local v11, "$i$a$-map-PipelineUtilKt$getPipelineDocuments$1":I
    invoke-virtual {v10}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v10

    .line 300
    .end local v10    # "it":Lcom/google/firebase/firestore/model/ResourcePath;
    .end local v11    # "$i$a$-map-PipelineUtilKt$getPipelineDocuments$1":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 301
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 298
    nop

    .end local v2    # "$this$map$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 243
    nop

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 302
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v4

    .line 303
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 243
    return-object v1

    .line 246
    .end local v0    # "firstStage":Lcom/google/firebase/firestore/pipeline/Stage;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getPipelineFlavor(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineFlavor;
    .locals 1
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/google/firebase/firestore/core/PipelineFlavor;->EXACT:Lcom/google/firebase/firestore/core/PipelineFlavor;

    return-object v0
.end method

.method public static final getPipelineSourceType(Lcom/google/firebase/firestore/RealtimePipeline;)Lcom/google/firebase/firestore/core/PipelineSourceType;
    .locals 3
    .param p0, "pipeline"    # Lcom/google/firebase/firestore/RealtimePipeline;

    const-string v0, "pipeline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 192
    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 190
    const-string v2, "Pipeline must have at least one stage to determine its source."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/firebase/firestore/RealtimePipeline;->getStages$com_google_firebase_firebase_firestore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 195
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION:Lcom/google/firebase/firestore/core/PipelineSourceType;

    goto :goto_0

    .line 196
    :cond_0
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineSourceType;->COLLECTION_GROUP:Lcom/google/firebase/firestore/core/PipelineSourceType;

    goto :goto_0

    .line 197
    :cond_1
    instance-of v1, v0, Lcom/google/firebase/firestore/pipeline/DatabaseSource;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineSourceType;->DATABASE:Lcom/google/firebase/firestore/core/PipelineSourceType;

    goto :goto_0

    .line 198
    :cond_2
    instance-of v0, v0, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/firebase/firestore/core/PipelineSourceType;->DOCUMENTS:Lcom/google/firebase/firestore/core/PipelineSourceType;

    goto :goto_0

    .line 199
    :cond_3
    sget-object v0, Lcom/google/firebase/firestore/core/PipelineSourceType;->UNKNOWN:Lcom/google/firebase/firestore/core/PipelineSourceType;

    .line 194
    :goto_0
    return-object v0
.end method
