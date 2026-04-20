.class public final synthetic Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/foundation/text/input/TextFieldStateKt;"
    method = "rememberTextFieldState_Le_punE$lambda$0$0"
    proto = "(Ljava/lang/String;J)Landroidx/compose/foundation/text/input/TextFieldState;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/TextFieldStateKt$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/input/TextFieldStateKt;->$r8$lambda$VwpNrlwIb0RHFBtR_sNeGlnCzfI(Ljava/lang/String;J)Landroidx/compose/foundation/text/input/TextFieldState;

    move-result-object v0

    return-object v0
.end method
