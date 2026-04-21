.class public final synthetic Landroidx/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/extractor/ts/SeiReader;"
    method = "lambda$new$0"
    proto = "(JLandroidx/media3/common/util/ParsableByteArray;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/extractor/ts/SeiReader;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/ts/SeiReader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/ts/SeiReader;

    return-void
.end method


# virtual methods
.method public final consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/SeiReader;->lambda$new$0$androidx-media3-extractor-ts-SeiReader(JLandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method
