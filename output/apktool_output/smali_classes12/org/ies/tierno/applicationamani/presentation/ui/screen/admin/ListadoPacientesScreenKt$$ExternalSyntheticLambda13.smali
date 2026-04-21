.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;"
    method = "InfoRow_ww6aTOc$lambda$67"
    proto = "(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/ui/text/font/FontFamily;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/ui/text/font/FontFamily;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$3:J

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$4:Landroidx/compose/ui/text/font/FontFamily;

    iput p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$3:J

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$4:Landroidx/compose/ui/text/font/FontFamily;

    iget v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt$$ExternalSyntheticLambda13;->f$5:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/admin/ListadoPacientesScreenKt;->InfoRow_ww6aTOc$lambda$67(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/ui/text/font/FontFamily;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
