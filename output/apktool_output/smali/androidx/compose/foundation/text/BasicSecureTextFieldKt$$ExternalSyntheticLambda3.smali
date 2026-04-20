.class public final synthetic Landroidx/compose/foundation/text/BasicSecureTextFieldKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/compose/foundation/text/input/internal/CodepointTransformation;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/BasicSecureTextFieldKt;"
    method = "BasicSecureTextField_ltb6GB4$lambda$3$0"
    proto = "(Landroidx/compose/runtime/State;II)I"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final transform(II)I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicSecureTextFieldKt$$ExternalSyntheticLambda3;->f$0:Landroidx/compose/runtime/State;

    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/BasicSecureTextFieldKt;->$r8$lambda$tEQdrNLl9eQX2DNbJTpsuRVEG2A(Landroidx/compose/runtime/State;II)I

    move-result p1

    return p1
.end method
