.class public final synthetic Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/runtime/internal/AwaiterQueue;"
    method = "addAwaiter$lambda$1"
    proto = "(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lkotlin/jvm/internal/Ref$IntRef;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

.field public final synthetic f$1:Landroidx/compose/runtime/internal/AwaiterQueue;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    iput-object p2, p0, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/internal/AwaiterQueue;

    iput-object p3, p0, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    iget-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/internal/AwaiterQueue;

    iget-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/internal/AwaiterQueue;->addAwaiter$lambda$1(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lkotlin/jvm/internal/Ref$IntRef;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
