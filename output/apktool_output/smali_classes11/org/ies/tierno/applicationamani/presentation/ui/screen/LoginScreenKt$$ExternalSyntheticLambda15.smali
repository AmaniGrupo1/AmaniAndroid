.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;"
    method = "LoginScreenContent$lambda$36$lambda$35"
    proto = "(Landroidx/compose/material3/Typography;ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/Typography;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroidx/compose/material3/ColorScheme;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/Typography;ZLandroidx/compose/material3/ColorScheme;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;->f$0:Landroidx/compose/material3/Typography;

    iput-boolean p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;->f$1:Z

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;->f$2:Landroidx/compose/material3/ColorScheme;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;->f$0:Landroidx/compose/material3/Typography;

    iget-boolean v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;->f$1:Z

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$$ExternalSyntheticLambda15;->f$2:Landroidx/compose/material3/ColorScheme;

    move-object v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/RowScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreenContent$lambda$36$lambda$35(Landroidx/compose/material3/Typography;ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
