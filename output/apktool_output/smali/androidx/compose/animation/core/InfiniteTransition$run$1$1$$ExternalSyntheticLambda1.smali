.class public final synthetic Landroidx/compose/animation/core/InfiniteTransition$run$1$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/animation/core/InfiniteTransition$run$1$1;"
    method = "invokeSuspend$lambda$1"
    proto = "(Lkotlinx/coroutines/CoroutineScope;)F"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$$ExternalSyntheticLambda1;->f$0:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->invokeSuspend$lambda$1(Lkotlinx/coroutines/CoroutineScope;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
