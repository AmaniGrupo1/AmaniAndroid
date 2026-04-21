.class public final synthetic Landroidx/work/impl/utils/StatusRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/utils/StatusRunnable;"
    method = "loadStatusFuture$lambda$5"
    proto = "(Lkotlin/jvm/functions/Function1;Landroidx/work/impl/WorkDatabase;)Ljava/lang/Object;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/StatusRunnable$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/work/impl/utils/StatusRunnable$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/WorkDatabase;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/StatusRunnable;->loadStatusFuture$lambda$5(Lkotlin/jvm/functions/Function1;Landroidx/work/impl/WorkDatabase;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
