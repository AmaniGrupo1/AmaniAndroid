.class public final synthetic Landroidx/media3/exoplayer/MetadataRetrieverInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/MetadataRetrieverInternal$RetrievalTask$OnFailureListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/MetadataRetrieverInternal;"
    method = "lambda$startPreparation$2"
    proto = "(Ljava/lang/Exception;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/MetadataRetrieverInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MetadataRetrieverInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/MetadataRetrieverInternal$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/MetadataRetrieverInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MetadataRetrieverInternal;->lambda$startPreparation$2$androidx-media3-exoplayer-MetadataRetrieverInternal(Ljava/lang/Exception;)V

    return-void
.end method
