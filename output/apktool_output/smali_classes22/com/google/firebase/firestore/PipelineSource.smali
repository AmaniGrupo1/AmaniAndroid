.class public final Lcom/google/firebase/firestore/PipelineSource;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\ncom/google/firebase/firestore/PipelineSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1173:1\n1557#2:1174\n1628#2,3:1175\n37#3,2:1178\n37#3,2:1184\n37#3,2:1190\n11165#4:1180\n11500#4,3:1181\n11165#4:1186\n11500#4,3:1187\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\ncom/google/firebase/firestore/PipelineSource\n*L\n934#1:1174\n934#1:1175,3\n934#1:1178,2\n1021#1:1184,2\n1045#1:1190,2\n1021#1:1180\n1021#1:1181,3\n1045#1:1186\n1045#1:1187,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000eJ\u0016\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0007J\u001f\u0010\u0017\u001a\u00020\u00072\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\u0018\"\u00020\u000e\u00a2\u0006\u0002\u0010\u0019J\u001f\u0010\u0017\u001a\u00020\u00072\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001a0\u0018\"\u00020\u001a\u00a2\u0006\u0002\u0010\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/PipelineSource;",
        "",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "<init>",
        "(Lcom/google/firebase/firestore/FirebaseFirestore;)V",
        "createFrom",
        "Lcom/google/firebase/firestore/Pipeline;",
        "query",
        "Lcom/google/firebase/firestore/Query;",
        "aggregateQuery",
        "Lcom/google/firebase/firestore/AggregateQuery;",
        "collection",
        "path",
        "",
        "ref",
        "Lcom/google/firebase/firestore/CollectionReference;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;",
        "collectionGroup",
        "collectionId",
        "Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;",
        "database",
        "documents",
        "",
        "([Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;",
        "Lcom/google/firebase/firestore/DocumentReference;",
        "([Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/Pipeline;",
        "com.google.firebase-firebase-firestore"
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
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v0, "firestore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method


# virtual methods
.method public final collection(Lcom/google/firebase/firestore/CollectionReference;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "ref"    # Lcom/google/firebase/firestore/CollectionReference;

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/PipelineSource;->collection(Lcom/google/firebase/firestore/CollectionReference;Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final collection(Lcom/google/firebase/firestore/CollectionReference;Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 7
    .param p1, "ref"    # Lcom/google/firebase/firestore/CollectionReference;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    nop

    .line 967
    iget-object v0, p1, Lcom/google/firebase/firestore/CollectionReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p1, Lcom/google/firebase/firestore/CollectionReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    .line 976
    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 977
    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v2

    const-string v3, "getUserDataReader(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    new-instance v3, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    .line 979
    invoke-virtual {p1}, Lcom/google/firebase/firestore/CollectionReference;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    const-string v5, "fromString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    new-instance v5, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    iget-object v6, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    .line 981
    nop

    .line 978
    invoke-direct {v3, v4, v5, p2}, Lcom/google/firebase/firestore/pipeline/CollectionSource;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/pipeline/CollectionSourceOptions;)V

    check-cast v3, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 975
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v0

    .line 970
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 971
    nop

    .line 970
    const-string v1, "Invalid CollectionReference. The Firestore instance of the CollectionReference must match the Firestore instance of the PipelineSource."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final collection(Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "collection(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/PipelineSource;->collection(Lcom/google/firebase/firestore/CollectionReference;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final collectionGroup(Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 1
    .param p1, "collectionId"    # Ljava/lang/String;

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/PipelineSource;->collectionGroup(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public final collectionGroup(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;)Lcom/google/firebase/firestore/Pipeline;
    .locals 4
    .param p1, "collectionId"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v2

    const-string v3, "getUserDataReader(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    invoke-direct {v3, p1, p2}, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;)V

    check-cast v3, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v0
.end method

.method public final createFrom(Lcom/google/firebase/firestore/AggregateQuery;)Lcom/google/firebase/firestore/Pipeline;
    .locals 13
    .param p1, "aggregateQuery"    # Lcom/google/firebase/firestore/AggregateQuery;

    const-string v0, "aggregateQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateQuery;->getAggregateFields()Ljava/util/List;

    move-result-object v0

    const-string v1, "getAggregateFields(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    .local v0, "aggregateFields":Ljava/util/List;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateQuery;->getQuery()Lcom/google/firebase/firestore/Query;

    move-result-object v1

    const-string v2, "getQuery(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/PipelineSource;->createFrom(Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v1

    .line 933
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/AggregateField;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/AggregateField;->toPipeline()Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    move-result-object v2

    const-string v3, "toPipeline(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1174
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1175
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1176
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/google/firebase/firestore/AggregateField;

    .local v10, "p0":Lcom/google/firebase/firestore/AggregateField;
    const/4 v11, 0x0

    .local v11, "$i$f$createFrom$stub_for_inlining":I
    const/4 v12, 0x0

    .line 934
    .local v12, "$i$a$-map-PipelineSource$createFrom$1":I
    invoke-virtual {v10}, Lcom/google/firebase/firestore/AggregateField;->toPipeline()Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    move-result-object v10

    .line 1176
    .end local v10    # "p0":Lcom/google/firebase/firestore/AggregateField;
    .end local v11    # "$i$f$createFrom$stub_for_inlining":I
    .end local v12    # "$i$a$-map-PipelineSource$createFrom$1":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1177
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 1174
    nop

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v5, Ljava/util/Collection;

    .line 934
    nop

    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 1178
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v5

    .line 1179
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 934
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    .end local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    check-cast v3, [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    .line 932
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Pipeline;->aggregate(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v1

    .line 931
    return-object v1
.end method

.method public final createFrom(Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Pipeline;
    .locals 3
    .param p1, "query"    # Lcom/google/firebase/firestore/Query;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    iget-object v0, p1, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p1, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/core/Query;->toPipeline(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    const-string v1, "toPipeline(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 916
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided query is from a different Firestore instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final database()Lcom/google/firebase/firestore/Pipeline;
    .locals 6

    .line 1010
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    iget-object v1, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v2, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v2

    const-string v3, "getUserDataReader(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/firebase/firestore/pipeline/DatabaseSource;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lcom/google/firebase/firestore/pipeline/DatabaseSource;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v0
.end method

.method public final varargs documents([Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/Pipeline;
    .locals 17
    .param p1, "documents"    # [Lcom/google/firebase/firestore/DocumentReference;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "documents"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    iget-object v2, v0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v2

    const-string v3, "getDatabaseId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    .local v2, "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 1036
    .local v6, "document":Lcom/google/firebase/firestore/DocumentReference;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/DocumentReference;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1035
    .end local v6    # "document":Lcom/google/firebase/firestore/DocumentReference;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1037
    .restart local v6    # "document":Lcom/google/firebase/firestore/DocumentReference;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1038
    nop

    .line 1037
    const-string v4, "Provided document reference is from a different Firestore instance."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1042
    .end local v6    # "document":Lcom/google/firebase/firestore/DocumentReference;
    :cond_1
    nop

    .line 1043
    iget-object v3, v0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 1044
    iget-object v5, v0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v5

    const-string v6, "getUserDataReader(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    move-object/from16 v6, p1

    .local v6, "$this$map$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1186
    .local v7, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1187
    .local v10, "$i$f$mapTo":I
    array-length v11, v9

    move v12, v4

    :goto_1
    if-ge v12, v11, :cond_2

    aget-object v13, v9, v12

    .line 1188
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it":Lcom/google/firebase/firestore/DocumentReference;
    const/4 v15, 0x0

    .line 1045
    .local v15, "$i$a$-map-PipelineSource$documents$2":I
    invoke-virtual {v14}, Lcom/google/firebase/firestore/DocumentReference;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v14

    .line 1188
    .end local v14    # "it":Lcom/google/firebase/firestore/DocumentReference;
    .end local v15    # "$i$a$-map-PipelineSource$documents$2":I
    invoke-interface {v8, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1187
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1189
    :cond_2
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$mapTo":I
    check-cast v8, Ljava/util/List;

    .line 1186
    nop

    .end local v6    # "$this$map$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$map":I
    check-cast v8, Ljava/util/Collection;

    .line 1045
    nop

    .local v8, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 1190
    .local v6, "$i$f$toTypedArray":I
    move-object v7, v8

    .line 1191
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    new-array v4, v4, [Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-interface {v7, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "thisCollection$iv":Ljava/util/Collection;
    .end local v8    # "$this$toTypedArray$iv":Ljava/util/Collection;
    check-cast v4, [Lcom/google/firebase/firestore/model/ResourcePath;

    .line 1045
    new-instance v6, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {v6, v4, v7, v8, v7}, Lcom/google/firebase/firestore/pipeline/DocumentsSource;-><init>([Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/google/firebase/firestore/pipeline/Stage;

    .line 1042
    new-instance v4, Lcom/google/firebase/firestore/Pipeline;

    invoke-direct {v4, v3, v5, v6}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v4
.end method

.method public final varargs documents([Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 13
    .param p1, "documents"    # [Ljava/lang/String;

    const-string v0, "documents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/google/firebase/firestore/PipelineSource;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    move-object v1, p1

    .local v1, "$this$map$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1180
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1181
    .local v5, "$i$f$mapTo":I
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v9, v4, v8

    .line 1182
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "p0":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "$i$f$documents$stub_for_inlining$0":I
    const/4 v12, 0x0

    .line 1021
    .local v12, "$i$a$-map-PipelineSource$documents$1":I
    invoke-virtual {v0, v10}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v10

    .line 1182
    .end local v10    # "p0":Ljava/lang/String;
    .end local v11    # "$i$f$documents$stub_for_inlining$0":I
    .end local v12    # "$i$a$-map-PipelineSource$documents$1":I
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1181
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1183
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 1180
    nop

    .end local v1    # "$this$map$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$map":I
    check-cast v0, Ljava/util/Collection;

    .line 1021
    nop

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 1184
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 1185
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    new-array v3, v7, [Lcom/google/firebase/firestore/DocumentReference;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1021
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Lcom/google/firebase/firestore/DocumentReference;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/PipelineSource;->documents([Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/Pipeline;

    move-result-object v0

    return-object v0
.end method
