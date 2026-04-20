.class public final synthetic Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/datastore/DataStoreSingletonDelegate;"
    method = "getValue$lambda$0$0"
    proto = "(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)Lokio/Path;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/datastore/DataStoreSingletonDelegate;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;->f$0:Landroidx/datastore/DataStoreSingletonDelegate;

    iput-object p2, p0, Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;->f$0:Landroidx/datastore/DataStoreSingletonDelegate;

    iget-object v1, p0, Landroidx/datastore/DataStoreSingletonDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/datastore/DataStoreSingletonDelegate;->$r8$lambda$jO2EpaGG7QjdydS-66DJO_jeR50(Landroidx/datastore/DataStoreSingletonDelegate;Landroid/content/Context;)Lokio/Path;

    move-result-object v0

    return-object v0
.end method
