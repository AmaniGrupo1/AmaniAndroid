.class public final synthetic Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/CoreTextFieldKt;"
    method = "CoreTextField$lambda$23$0"
    proto = "(ZLandroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;->f$0:Z

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;->f$0:Z

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;->f$1:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->$r8$lambda$5tmet3tQKrDS-jvOqalpJET0Dlc(ZLandroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
