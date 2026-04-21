.class public final synthetic Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl;"
    method = "performHandwritingGesture$lambda$0"
    proto = "(Ljava/util/function/IntConsumer;I)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntConsumer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iput p2, p0, Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/input/internal/Api34PerformHandwritingGestureImpl;->performHandwritingGesture$lambda$0(Ljava/util/function/IntConsumer;I)V

    return-void
.end method
