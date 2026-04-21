.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/Schedulers;"
    method = "lambda$registerRescheduling$0"
    proto = "(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/work/impl/model/WorkGenerationalId;

.field public final synthetic f$2:Landroidx/work/Configuration;

.field public final synthetic f$3:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Landroidx/work/Configuration;

    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Landroidx/work/Configuration;

    iget-object v3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Landroidx/work/impl/WorkDatabase;

    invoke-static {v0, v1, v2, v3}, Landroidx/work/impl/Schedulers;->lambda$registerRescheduling$0(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method
