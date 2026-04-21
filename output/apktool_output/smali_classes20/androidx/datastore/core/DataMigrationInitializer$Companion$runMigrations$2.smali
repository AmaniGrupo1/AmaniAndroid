.class final Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DataMigrationInitializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataMigrationInitializer$Companion;->runMigrations(Ljava/util/List;Landroidx/datastore/core/InitializerApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Lkotlin/coroutines/Continuation<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataMigrationInitializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataMigrationInitializer.kt\nandroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1797#2,3:70\n*S KotlinDebug\n*F\n+ 1 DataMigrationInitializer.kt\nandroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2\n*L\n40#1:70,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "startingData"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2"
    f = "DataMigrationInitializer.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x29,
        0x2b
    }
    m = "invokeSuspend"
    n = {
        "migration",
        "data"
    }
    s = {
        "L$2",
        "L$3"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $cleanUps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $migrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->$migrations:Ljava/util/List;

    iput-object p2, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->$cleanUps:Ljava/util/List;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;

    iget-object v1, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->$migrations:Ljava/util/List;

    iget-object v2, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->$cleanUps:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;-><init>(Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget v1, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->label:I

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$f$fold":I
    const/4 v2, 0x0

    .local v2, "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    iget-object v3, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v8, v4

    move-object v3, p0

    move v4, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_2

    .end local v1    # "$i$f$fold":I
    .end local v2    # "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "$i$f$fold":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    iget-object v3, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$3:Ljava/lang/Object;

    .local v3, "data":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$2:Ljava/lang/Object;

    check-cast v4, Landroidx/datastore/core/DataMigration;

    .local v4, "migration":Landroidx/datastore/core/DataMigration;
    iget-object v5, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v8, v6

    move v4, v1

    move v6, v2

    move-object v2, p0

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .end local v1    # "$i$f$fold":I
    .end local v2    # "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    .end local v3    # "data":Ljava/lang/Object;
    .end local v4    # "migration":Landroidx/datastore/core/DataMigration;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$0:Ljava/lang/Object;

    .line 40
    .local v1, "startingData":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->$migrations:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$fold$iv":Ljava/lang/Iterable;
    iget-object v3, p0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->$cleanUps:Ljava/util/List;

    .local v1, "initial$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 70
    .local v4, "$i$f$fold":I
    nop

    .line 71
    .local v1, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, p0

    .end local p0    # "this":Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
    .local v2, "this":Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/datastore/core/DataMigration;

    .end local v6    # "element$iv":Ljava/lang/Object;
    .local v1, "data":Ljava/lang/Object;
    .local v7, "migration":Landroidx/datastore/core/DataMigration;
    const/4 v6, 0x0

    .line 41
    .local v6, "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    iput-object v3, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$2:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$3:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->label:I

    invoke-interface {v7, v1, v2}, Landroidx/datastore/core/DataMigration;->shouldMigrate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_0
    move-object v10, v0

    move-object v0, p1

    move-object p1, v8

    move-object v8, v3

    move-object v3, v1

    move-object v1, v10

    .end local v1    # "data":Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v3    # "data":Ljava/lang/Object;
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 42
    new-instance p1, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2$1$1;

    const/4 v9, 0x0

    invoke-direct {p1, v7, v9}, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2$1$1;-><init>(Landroidx/datastore/core/DataMigration;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iput-object v8, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->L$3:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;->label:I

    invoke-interface {v7, v3, v2}, Landroidx/datastore/core/DataMigration;->migrate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "data":Ljava/lang/Object;
    .end local v7    # "migration":Landroidx/datastore/core/DataMigration;
    if-ne p1, v1, :cond_1

    .line 39
    return-object v1

    .line 43
    :cond_1
    move-object v3, v2

    move v2, v6

    .end local v6    # "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    .local v2, "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    .local v3, "this":Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
    :goto_2
    move v6, v2

    move-object v2, v3

    move-object v3, p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    .line 45
    .local v2, "this":Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2;
    .local v3, "data":Ljava/lang/Object;
    .restart local v6    # "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    :cond_2
    move-object p1, v0

    move-object v0, v1

    .line 46
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "data":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_3
    nop

    .line 71
    .end local v6    # "$i$a$-fold-DataMigrationInitializer$Companion$runMigrations$2$1":I
    move-object v1, v3

    move-object v3, v8

    .local v1, "accumulator$iv":Ljava/lang/Object;
    goto :goto_0

    .line 72
    :cond_3
    nop

    .line 47
    .end local v1    # "accumulator$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$fold":I
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
