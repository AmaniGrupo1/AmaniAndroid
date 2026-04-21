.class public final Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/GenericArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/GenericArg$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1328:1\n1187#2,2:1329\n1261#2,4:1331\n1557#2:1335\n1628#2,3:1336\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/GenericArg$Companion\n*L\n156#1:1329,2\n156#1:1331,4\n157#1:1335\n157#1:1336,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/google/firebase/firestore/pipeline/GenericArg;",
        "arg",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg;
    .locals 13
    .param p1, "arg"    # Ljava/lang/Object;

    .line 152
    nop

    .line 153
    instance-of v0, p1, Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$AggregateArg;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$AggregateArg;-><init>(Lcom/google/firebase/firestore/pipeline/AggregateFunction;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    goto/16 :goto_2

    .line 154
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/pipeline/Ordering;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$OrderingArg;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$OrderingArg;-><init>(Lcom/google/firebase/firestore/pipeline/Ordering;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    goto/16 :goto_2

    .line 155
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$associate$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1329
    .local v2, "$i$f$associate":I
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1330
    .local v1, "capacity$iv":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1331
    .local v5, "$i$f$associateTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1332
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/util/Map$Entry;

    const/4 v9, 0x0

    .line 156
    .local v9, "$i$a$-associate-GenericArg$Companion$from$1":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "value":Ljava/lang/Object;
    const-string v11, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    sget-object v12, Lcom/google/firebase/firestore/pipeline/GenericArg;->Companion:Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;

    invoke-virtual {v12, v8}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;->from(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 1332
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "$i$a$-associate-GenericArg$Companion$from$1":I
    .end local v10    # "key":Ljava/lang/Object;
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1334
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 1330
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$associateTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateTo":I
    nop

    .line 156
    .end local v0    # "$this$associate$iv":Ljava/lang/Iterable;
    .end local v1    # "capacity$iv":I
    .end local v2    # "$i$f$associate":I
    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;

    invoke-direct {v0, v3}, Lcom/google/firebase/firestore/pipeline/GenericArg$MapArg;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    goto :goto_2

    .line 157
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1335
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1336
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1337
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "p0":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$f$from$stub_for_inlining":I
    const/4 v9, 0x0

    .line 157
    .local v9, "$i$a$-map-GenericArg$Companion$from$2":I
    invoke-virtual {p0, v7}, Lcom/google/firebase/firestore/pipeline/GenericArg$Companion;->from(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/GenericArg;

    move-result-object v7

    .line 1337
    .end local v7    # "p0":Ljava/lang/Object;
    .end local v8    # "$i$f$from$stub_for_inlining":I
    .end local v9    # "$i$a$-map-GenericArg$Companion$from$2":I
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1338
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 1335
    nop

    .line 157
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$ListArg;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$ListArg;-><init>(Ljava/util/List;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    goto :goto_2

    .line 158
    :cond_5
    new-instance v0, Lcom/google/firebase/firestore/pipeline/GenericArg$ExprArg;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->toExprOrConstant$com_google_firebase_firebase_firestore(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/GenericArg$ExprArg;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;)V

    check-cast v0, Lcom/google/firebase/firestore/pipeline/GenericArg;

    .line 159
    :goto_2
    return-object v0
.end method
