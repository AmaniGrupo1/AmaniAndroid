.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt;"
    method = "MenuAdministradorSimple$lambda$40"
    proto = "(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/navigation/NavController;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$1:Landroidx/navigation/NavController;

    iput-boolean p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$2:Z

    iput-boolean p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$3:Z

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$4:Lkotlin/jvm/functions/Function0;

    iput p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$5:I

    iput p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$1:Landroidx/navigation/NavController;

    iget-boolean v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$2:Z

    iget-boolean v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$3:Z

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$4:Lkotlin/jvm/functions/Function0;

    iget v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$5:I

    iget v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt$$ExternalSyntheticLambda8;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/componente/admin/MenuAdministradorKt;->MenuAdministradorSimple$lambda$40(Ljava/lang/String;Landroidx/navigation/NavController;ZZLkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
