.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;"
    method = "ListadoPacientesScreen$lambda$36$lambda$23$lambda$22"
    proto = "(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;JJJJLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Landroidx/navigation/NavController;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$8:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;JJJJLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/navigation/NavController;

    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$2:J

    iput-wide p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$3:J

    iput-wide p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$4:J

    iput-wide p9, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$5:J

    iput-object p11, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p12, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$7:Landroidx/compose/runtime/MutableState;

    iput-object p13, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$8:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/navigation/NavController;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$2:J

    iget-wide v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$3:J

    iget-wide v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$4:J

    iget-wide v8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$5:J

    iget-object v10, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v11, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$7:Landroidx/compose/runtime/MutableState;

    iget-object v12, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda5;->f$8:Landroidx/compose/runtime/MutableState;

    move-object v13, p1

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static/range {v0 .. v13}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->ListadoPacientesScreen$lambda$36$lambda$23$lambda$22(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;JJJJLandroidx/compose/ui/text/font/FontFamily;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
