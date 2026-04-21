.class public final synthetic Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/SimpleBasePlayer;"
    method = "lambda$setMediaItemsInternal$2"
    proto = "(Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$2:Landroidx/media3/common/SimpleBasePlayer$State;

    iput p4, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$3:I

    iput-wide p5, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$4:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$0:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$2:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v3, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$3:I

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;->f$4:J

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setMediaItemsInternal$2$androidx-media3-common-SimpleBasePlayer(Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method
