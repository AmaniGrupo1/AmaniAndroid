.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;"
    method = "MenuSetting$lambda$16$lambda$15$lambda$12"
    proto = "(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/Typography;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/Typography;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/material3/Typography;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/material3/Typography;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/psicologo/MenuSettingKt;->MenuSetting$lambda$16$lambda$15$lambda$12(Landroidx/compose/material3/Typography;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
