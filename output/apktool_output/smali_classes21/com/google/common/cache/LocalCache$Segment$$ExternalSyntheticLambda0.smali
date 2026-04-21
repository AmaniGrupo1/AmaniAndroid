.class public final synthetic Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/common/cache/LocalCache$Segment;"
    method = "lambda$loadAsync$0"
    proto = "(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/common/cache/LocalCache$Segment;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/google/common/cache/LocalCache$LoadingValueReference;

.field public final synthetic f$4:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/cache/LocalCache$Segment;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$3:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$4:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$3:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment$$ExternalSyntheticLambda0;->f$4:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->lambda$loadAsync$0$com-google-common-cache-LocalCache$Segment(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
