.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt;"
    method = "PsicologoHeader$lambda$54"
    proto = "(ZLorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$0:Z

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$1:Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    iput p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$2:I

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$3:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-boolean v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$0:Z

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$1:Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    iget v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$2:I

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt$$ExternalSyntheticLambda16;->f$3:Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/admin/ViewAdminPrincipalKt;->PsicologoHeader$lambda$54(ZLorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
