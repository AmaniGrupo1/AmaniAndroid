.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;"
    method = "RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115"
    proto = "(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$0:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$2:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$3:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$4:Ljava/util/List;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$5:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$0:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$2:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$3:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$4:Ljava/util/List;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt$$ExternalSyntheticLambda49;->f$5:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    move-object v6, p1

    check-cast v6, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/RegisterScreenKt;->RegisterScreen$lambda$188$lambda$187$lambda$117$lambda$116$lambda$115(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/runtime/State;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
