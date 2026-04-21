.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;"
    method = "ChatScreen$lambda$28"
    proto = "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroid/content/Context;Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;

.field public final synthetic f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$4:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$5:Landroidx/compose/runtime/State;

.field public final synthetic f$6:Landroidx/compose/runtime/State;

.field public final synthetic f$7:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroid/content/Context;Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$2:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$4:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$5:Landroidx/compose/runtime/State;

    iput-object p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$6:Landroidx/compose/runtime/State;

    iput-object p8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$7:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$2:Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$4:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$5:Landroidx/compose/runtime/State;

    iget-object v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$6:Landroidx/compose/runtime/State;

    iget-object v7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda12;->f$7:Landroidx/compose/runtime/State;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->ChatScreen$lambda$28(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroid/content/Context;Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
