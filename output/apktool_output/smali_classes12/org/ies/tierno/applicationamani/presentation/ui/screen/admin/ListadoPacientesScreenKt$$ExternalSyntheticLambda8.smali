.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;"
    method = "ListadoPacientesScreen$lambda$36$lambda$33"
    proto = "(JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/ui/text/font/FontFamily;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;->f$0:J

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/ui/text/font/FontFamily;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;->f$0:J

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda8;->f$2:Landroidx/compose/ui/text/font/FontFamily;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->ListadoPacientesScreen$lambda$36$lambda$33(JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
