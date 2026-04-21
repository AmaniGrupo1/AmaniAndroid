.class public final synthetic Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/audio/DefaultGainProvider;"
    method = "lambda$static$0"
    proto = "(JJ)F"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGainFactorAt(JJ)F
    .locals 0

    .line 0
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/common/audio/DefaultGainProvider;->lambda$static$0(JJ)F

    move-result p1

    return p1
.end method
