.class public final synthetic Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;"
    method = "invokeSuspend$lambda$0"
    proto = "(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/channels/ProducerScope;Landroidx/work/impl/constraints/ConstraintsState;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/Job;

.field public final synthetic f$1:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/Job;

    iget-object v1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->invokeSuspend$lambda$0(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/channels/ProducerScope;Landroidx/work/impl/constraints/ConstraintsState;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
