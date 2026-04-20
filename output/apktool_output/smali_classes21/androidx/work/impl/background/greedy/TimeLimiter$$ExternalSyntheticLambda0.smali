.class public final synthetic Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/work/impl/background/greedy/TimeLimiter;"
    method = "track$lambda$0"
    proto = "(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/background/greedy/TimeLimiter;

.field public final synthetic f$1:Landroidx/work/impl/StartStopToken;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/background/greedy/TimeLimiter;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/StartStopToken;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$0:Landroidx/work/impl/background/greedy/TimeLimiter;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;->f$1:Landroidx/work/impl/StartStopToken;

    invoke-static {v0, v1}, Landroidx/work/impl/background/greedy/TimeLimiter;->track$lambda$0(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V

    return-void
.end method
