.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;"
    method = "PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$41$lambda$40"
    proto = "(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/compose/ui/text/font/FontFamily;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Landroidx/compose/ui/text/font/FontFamily;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$1:J

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$3:Landroidx/compose/ui/text/font/FontFamily;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$1:J

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda15;->f$3:Landroidx/compose/ui/text/font/FontFamily;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->PacienteCard_zTql3dQ$lambda$64$lambda$63$lambda$41$lambda$40(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
