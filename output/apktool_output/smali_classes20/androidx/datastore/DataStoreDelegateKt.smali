.class public final Landroidx/datastore/DataStoreDelegateKt;
.super Ljava/lang/Object;
.source "DataStoreDelegate.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001ar\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u00030\u0001\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00082\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\n2 \u0008\u0002\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u000e0\r0\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u001at\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u00030\u0001\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00082\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\n2 \u0008\u0002\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u000e0\r0\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "dataStore",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroid/content/Context;",
        "Landroidx/datastore/core/DataStore;",
        "T",
        "fileName",
        "",
        "serializer",
        "Landroidx/datastore/core/Serializer;",
        "corruptionHandler",
        "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;",
        "produceMigrations",
        "Lkotlin/Function1;",
        "",
        "Landroidx/datastore/core/DataMigration;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "deviceProtectedDataStore",
        "datastore"
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
.method public static final dataStore(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/properties/ReadOnlyProperty;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "serializer"    # Landroidx/datastore/core/Serializer;
    .param p2, "corruptionHandler"    # Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .param p3, "produceMigrations"    # Lkotlin/jvm/functions/Function1;
    .param p4, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlin/properties/ReadOnlyProperty<",
            "Landroid/content/Context;",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "produceMigrations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v1, Landroidx/datastore/DataStoreSingletonDelegate;

    .line 83
    nop

    .line 84
    new-instance v0, Landroidx/datastore/OkioSerializerWrapper;

    invoke-direct {v0, p1}, Landroidx/datastore/OkioSerializerWrapper;-><init>(Landroidx/datastore/core/Serializer;)V

    move-object v3, v0

    check-cast v3, Landroidx/datastore/core/okio/OkioSerializer;

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 82
    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p2    # "corruptionHandler":Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .end local p3    # "produceMigrations":Lkotlin/jvm/functions/Function1;
    .end local p4    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "fileName":Ljava/lang/String;
    .local v4, "corruptionHandler":Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .local v5, "produceMigrations":Lkotlin/jvm/functions/Function1;
    .local v6, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-direct/range {v1 .. v7}, Landroidx/datastore/DataStoreSingletonDelegate;-><init>(Ljava/lang/String;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Z)V

    check-cast v1, Lkotlin/properties/ReadOnlyProperty;

    return-object v1
.end method

.method public static synthetic dataStore$default(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;
    .locals 1

    .line 75
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 78
    move-object p2, v0

    .line 75
    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    .line 79
    new-instance p3, Landroidx/datastore/DataStoreDelegateKt$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Landroidx/datastore/DataStoreDelegateKt$$ExternalSyntheticLambda0;-><init>()V

    .line 75
    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    .line 80
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    const/4 p5, 0x1

    invoke-static {v0, p5, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p5

    check-cast p5, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p4, p5}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 75
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/datastore/DataStoreDelegateKt;->dataStore(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object p0

    return-object p0
.end method

.method static final dataStore$lambda$0(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "it"    # Landroid/content/Context;

    const-string/jumbo v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final deviceProtectedDataStore(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/properties/ReadOnlyProperty;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "serializer"    # Landroidx/datastore/core/Serializer;
    .param p2, "corruptionHandler"    # Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .param p3, "produceMigrations"    # Lkotlin/jvm/functions/Function1;
    .param p4, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlin/properties/ReadOnlyProperty<",
            "Landroid/content/Context;",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "produceMigrations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v1, Landroidx/datastore/DataStoreSingletonDelegate;

    .line 119
    nop

    .line 120
    new-instance v0, Landroidx/datastore/OkioSerializerWrapper;

    invoke-direct {v0, p1}, Landroidx/datastore/OkioSerializerWrapper;-><init>(Landroidx/datastore/core/Serializer;)V

    move-object v3, v0

    check-cast v3, Landroidx/datastore/core/okio/OkioSerializer;

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 118
    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p2    # "corruptionHandler":Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .end local p3    # "produceMigrations":Lkotlin/jvm/functions/Function1;
    .end local p4    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "fileName":Ljava/lang/String;
    .local v4, "corruptionHandler":Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .local v5, "produceMigrations":Lkotlin/jvm/functions/Function1;
    .local v6, "scope":Lkotlinx/coroutines/CoroutineScope;
    invoke-direct/range {v1 .. v7}, Landroidx/datastore/DataStoreSingletonDelegate;-><init>(Ljava/lang/String;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Z)V

    check-cast v1, Lkotlin/properties/ReadOnlyProperty;

    return-object v1
.end method

.method public static synthetic deviceProtectedDataStore$default(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;
    .locals 1

    .line 111
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 114
    move-object p2, v0

    .line 111
    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    .line 115
    new-instance p3, Landroidx/datastore/DataStoreDelegateKt$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Landroidx/datastore/DataStoreDelegateKt$$ExternalSyntheticLambda1;-><init>()V

    .line 111
    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    .line 116
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    const/4 p5, 0x1

    invoke-static {v0, p5, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p5

    check-cast p5, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p4, p5}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    .line 111
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/datastore/DataStoreDelegateKt;->deviceProtectedDataStore(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object p0

    return-object p0
.end method

.method static final deviceProtectedDataStore$lambda$0(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "it"    # Landroid/content/Context;

    const-string/jumbo v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
