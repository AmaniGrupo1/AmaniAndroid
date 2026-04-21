.class public final synthetic Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/utils/IdGenerator;"
    method = "nextJobSchedulerIdWithRange$lambda$0"
    proto = "(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/utils/IdGenerator;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/IdGenerator;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/utils/IdGenerator;

    iput p2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/utils/IdGenerator;

    iget v1, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroidx/work/impl/utils/IdGenerator$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/IdGenerator;->nextJobSchedulerIdWithRange$lambda$0(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
