.class public final Landroidx/datastore/DataStoreSingletonDelegate;
.super Ljava/lang/Object;
.source "DataStoreDelegate.android.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Landroid/content/Context;",
        "Landroidx/datastore/core/DataStore<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u0002B_\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n\u0012\u001e\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000e0\r0\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J#\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0019\u001a\u00020\u00032\n\u0010\u001a\u001a\u0006\u0012\u0002\u0008\u00030\u001bH\u0097\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000e0\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/datastore/DataStoreSingletonDelegate;",
        "T",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Landroid/content/Context;",
        "Landroidx/datastore/core/DataStore;",
        "fileName",
        "",
        "serializer",
        "Landroidx/datastore/core/okio/OkioSerializer;",
        "corruptionHandler",
        "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;",
        "produceMigrations",
        "Lkotlin/Function1;",
        "",
        "Landroidx/datastore/core/DataMigration;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "createInDeviceProtectedStorage",
        "",
        "<init>",
        "(Ljava/lang/String;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Z)V",
        "lock",
        "",
        "INSTANCE",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "datastore"
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
.field private volatile INSTANCE:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final createInDeviceProtectedStorage:Z

.field private final fileName:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private final produceMigrations:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final serializer:Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$jO2EpaGG7QjdydS-66DJO_jeR50(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)Lokio/Path;
    .locals 0

    invoke-static {p0, p1}, Landroidx/datastore/DataStoreSingletonDelegate;->getValue$lambda$0$0(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "serializer"    # Landroidx/datastore/core/okio/OkioSerializer;
    .param p3, "corruptionHandler"    # Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
    .param p4, "produceMigrations"    # Lkotlin/jvm/functions/Function1;
    .param p5, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p6, "createInDeviceProtectedStorage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/okio/OkioSerializer<",
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
            "Z)V"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "produceMigrations"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/datastore/DataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Landroidx/datastore/DataStoreSingletonDelegate;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 133
    iput-object p3, p0, Landroidx/datastore/DataStoreSingletonDelegate;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 134
    iput-object p4, p0, Landroidx/datastore/DataStoreSingletonDelegate;->produceMigrations:Lkotlin/jvm/functions/Function1;

    .line 135
    iput-object p5, p0, Landroidx/datastore/DataStoreSingletonDelegate;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 136
    iput-boolean p6, p0, Landroidx/datastore/DataStoreSingletonDelegate;->createInDeviceProtectedStorage:Z

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/datastore/DataStoreSingletonDelegate;->lock:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private static final getValue$lambda$0$0(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)Lokio/Path;
    .locals 5
    .param p0, "this$0"    # Landroidx/datastore/DataStoreSingletonDelegate;
    .param p1, "$applicationContext"    # Landroid/content/Context;

    .line 165
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    iget-boolean v1, p0, Landroidx/datastore/DataStoreSingletonDelegate;->createInDeviceProtectedStorage:Z

    if-eqz v1, :cond_0

    .line 167
    nop

    .line 168
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Landroidx/datastore/DataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    .line 168
    invoke-static {p1, v1}, Landroidx/datastore/core/DeviceProtectedDataStoreFile;->deviceProtectedDataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/datastore/DataStoreSingletonDelegate;->fileName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 177
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Lkotlin/reflect/KProperty;)Landroidx/datastore/core/DataStore;
    .locals 11
    .param p1, "thisRef"    # Landroid/content/Context;
    .param p2, "property"    # Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroidx/datastore/DataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/core/DataStore;

    if-nez v0, :cond_1

    .line 158
    iget-object v1, p0, Landroidx/datastore/DataStoreSingletonDelegate;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 159
    .local v0, "$i$a$-synchronized-DataStoreSingletonDelegate$getValue$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/datastore/DataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/core/DataStore;

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 161
    .local v2, "applicationContext":Landroid/content/Context;
    nop

    .line 162
    sget-object v3, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 164
    new-instance v4, Landroidx/datastore/core/okio/OkioStorage;

    sget-object v5, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    iget-object v6, p0, Landroidx/datastore/DataStoreSingletonDelegate;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 162
    new-instance v8, Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v2}, Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;-><init>(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)V

    .line 164
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/datastore/core/okio/OkioStorage;-><init>(Lokio/FileSystem;Landroidx/datastore/core/okio/OkioSerializer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Landroidx/datastore/core/Storage;

    .line 180
    iget-object v5, p0, Landroidx/datastore/DataStoreSingletonDelegate;->corruptionHandler:Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 181
    iget-object v6, p0, Landroidx/datastore/DataStoreSingletonDelegate;->produceMigrations:Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 182
    iget-object v7, p0, Landroidx/datastore/DataStoreSingletonDelegate;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 162
    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Storage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Landroidx/datastore/core/DataStore;

    move-result-object v3

    .line 161
    iput-object v3, p0, Landroidx/datastore/DataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/core/DataStore;

    .line 185
    .end local v2    # "applicationContext":Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Landroidx/datastore/DataStoreSingletonDelegate;->INSTANCE:Landroidx/datastore/core/DataStore;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v0    # "$i$a$-synchronized-DataStoreSingletonDelegate$getValue$1":I
    monitor-exit v1

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 157
    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lkotlin/reflect/KProperty;

    .line 129
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Landroidx/datastore/DataStoreSingletonDelegate;->getValue(Landroid/content/Context;Lkotlin/reflect/KProperty;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    return-object v0
.end method
