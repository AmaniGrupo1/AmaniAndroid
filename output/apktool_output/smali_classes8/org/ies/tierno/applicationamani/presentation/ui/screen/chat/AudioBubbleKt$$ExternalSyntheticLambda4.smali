.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;"
    method = "RoundedAudioProgressBar_eopBjH0$lambda$8"
    proto = "(FJJLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(FJJLandroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$0:F

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$1:J

    iput-wide p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$2:J

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/ui/Modifier;

    iput p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$4:I

    iput p8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$0:F

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$1:J

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$2:J

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/ui/Modifier;

    iget v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$4:I

    iget v7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda4;->f$5:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->RoundedAudioProgressBar_eopBjH0$lambda$8(FJJLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
