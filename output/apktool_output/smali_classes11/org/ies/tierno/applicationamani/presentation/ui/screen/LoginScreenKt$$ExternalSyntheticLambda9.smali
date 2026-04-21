.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;"
    method = "LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$30"
    proto = "(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/material3/Typography;

.field public final synthetic f$2:Landroidx/compose/material3/ColorScheme;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/material3/Typography;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;->f$2:Landroidx/compose/material3/ColorScheme;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/material3/Typography;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda9;->f$2:Landroidx/compose/material3/ColorScheme;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, v2, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$36$lambda$34$lambda$33$lambda$30(Ljava/lang/String;Landroidx/compose/material3/Typography;Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
