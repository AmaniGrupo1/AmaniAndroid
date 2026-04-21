.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;"
    method = "PillTextField$lambda$13$lambda$12"
    proto = "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardActionScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/foundation/text/KeyboardActionScope;

    invoke-static {v0, v1, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/ChatInputBarKt;->PillTextField$lambda$13$lambda$12(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardActionScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
