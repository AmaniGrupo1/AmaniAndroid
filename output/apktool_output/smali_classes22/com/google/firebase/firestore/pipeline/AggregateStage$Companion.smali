.class public final Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/AggregateStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/AggregateStage$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1328:1\n12820#2,3:1329\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/AggregateStage$Companion\n*L\n501#1:1329,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\t\"\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;",
        "",
        "<init>",
        "()V",
        "withAccumulators",
        "Lcom/google/firebase/firestore/pipeline/AggregateStage;",
        "accumulator",
        "Lcom/google/firebase/firestore/pipeline/AliasedAggregate;",
        "additionalAccumulators",
        "",
        "(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/pipeline/AggregateStage;",
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

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/AggregateStage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs withAccumulators(Lcom/google/firebase/firestore/pipeline/AliasedAggregate;[Lcom/google/firebase/firestore/pipeline/AliasedAggregate;)Lcom/google/firebase/firestore/pipeline/AggregateStage;
    .locals 12
    .param p1, "accumulator"    # Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .param p2, "additionalAccumulators"    # [Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "accumulator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAccumulators"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->getExpr$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .local v0, "initial$iv":Ljava/lang/Object;
    move-object v1, p2

    .local v1, "$this$fold$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1329
    .local v2, "$i$f$fold":I
    move-object v3, v0

    .line 1330
    .local v3, "accumulator$iv":Ljava/lang/Object;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v3

    .local v7, "acc":Ljava/util/Map;
    move-object v8, v6

    .local v8, "next":Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    const/4 v9, 0x0

    .line 502
    .local v9, "$i$a$-fold-AggregateStage$Companion$withAccumulators$accumulators$1":I
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 505
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->getExpr$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 1330
    .end local v7    # "acc":Ljava/util/Map;
    .end local v8    # "next":Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .end local v9    # "$i$a$-fold-AggregateStage$Companion$withAccumulators$accumulators$1":I
    move-object v3, v7

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 503
    .restart local v6    # "element$iv":Ljava/lang/Object;
    .restart local v7    # "acc":Ljava/util/Map;
    .restart local v8    # "next":Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .restart local v9    # "$i$a$-fold-AggregateStage$Companion$withAccumulators$accumulators$1":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate alias: \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x27

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1331
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "acc":Ljava/util/Map;
    .end local v8    # "next":Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .end local v9    # "$i$a$-fold-AggregateStage$Companion$withAccumulators$accumulators$1":I
    :cond_1
    nop

    .line 501
    .end local v0    # "initial$iv":Ljava/lang/Object;
    .end local v1    # "$this$fold$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    nop

    .line 500
    nop

    .line 508
    .local v3, "accumulators":Ljava/util/Map;
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AggregateStage;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/google/firebase/firestore/pipeline/AggregateStage;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
