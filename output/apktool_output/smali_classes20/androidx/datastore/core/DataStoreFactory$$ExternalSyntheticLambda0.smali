.class public final synthetic Landroidx/datastore/core/DataStoreFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/datastore/core/DataStoreFactory;"
    method = "createInDeviceProtectedStorage$lambda$0"
    proto = "(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/DataStoreFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroidx/datastore/core/DataStoreFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/datastore/core/DataStoreFactory$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroidx/datastore/core/DataStoreFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/datastore/core/DataStoreFactory;->createInDeviceProtectedStorage$lambda$0(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
