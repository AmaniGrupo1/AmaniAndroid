.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;"
    method = "AudioBubble$lambda$4$lambda$3"
    proto = "(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;ZZJLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/domain/models/Message;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;ZZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$0:Lorg/ies/tierno/applicationamani/domain/models/Message;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function2;

    iput-boolean p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$3:Z

    iput-wide p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$4:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$0:Lorg/ies/tierno/applicationamani/domain/models/Message;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function2;

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$3:Z

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt$$ExternalSyntheticLambda0;->f$4:J

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioBubbleKt;->AudioBubble$lambda$4$lambda$3(Lorg/ies/tierno/applicationamani/domain/models/Message;Lkotlin/jvm/functions/Function2;ZZJLandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
