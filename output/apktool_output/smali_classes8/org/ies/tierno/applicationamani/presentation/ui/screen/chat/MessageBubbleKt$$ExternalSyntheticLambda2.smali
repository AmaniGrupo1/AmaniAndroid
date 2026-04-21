.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;"
    method = "MessageWithTimestamp$lambda$4"
    proto = "(Lorg/ies/tierno/applicationamani/domain/models/Message;JLjava/lang/String;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/domain/models/Message;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/domain/models/Message;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;->f$0:Lorg/ies/tierno/applicationamani/domain/models/Message;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;->f$0:Lorg/ies/tierno/applicationamani/domain/models/Message;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt$$ExternalSyntheticLambda2;->f$1:J

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/MessageBubbleKt;->MessageWithTimestamp$lambda$4(Lorg/ies/tierno/applicationamani/domain/models/Message;JLjava/lang/String;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
