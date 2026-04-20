.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;"
    method = "ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35"
    proto = "(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$1:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatScreenKt;->ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
