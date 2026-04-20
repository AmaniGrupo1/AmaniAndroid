.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;"
    method = "ChatTopBar$lambda$46"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lkotlin/jvm/functions/Function0;Ljava/lang/String;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lkotlin/jvm/functions/Function0;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$3:I

    iput p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$1:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$3:I

    iget v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda7;->f$4:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->ChatTopBar$lambda$46(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lkotlin/jvm/functions/Function0;Ljava/lang/String;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
