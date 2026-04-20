.class public final synthetic Landroidx/datastore/core/okio/OkioStorage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/datastore/core/okio/OkioStorage;"
    method = "_init_$lambda$0"
    proto = "(Lokio/Path;Lokio/FileSystem;)Landroidx/datastore/core/InterProcessCoordinator;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lokio/Path;

    check-cast p2, Lokio/FileSystem;

    invoke-static {p1, p2}, Landroidx/datastore/core/okio/OkioStorage;->_init_$lambda$0(Lokio/Path;Lokio/FileSystem;)Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object p1

    return-object p1
.end method
