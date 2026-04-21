.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;"
    method = "CalendarioView$lambda$9"
    proto = "(Landroidx/compose/ui/Modifier;Ljava/time/YearMonth;Ljava/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lj$/time/YearMonth;

.field public final synthetic f$2:Lj$/time/LocalDate;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$1:Lj$/time/YearMonth;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$2:Lj$/time/LocalDate;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$3:Ljava/util/Set;

    iput-object p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function1;

    iput p7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$6:I

    iput p8, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$1:Lj$/time/YearMonth;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$2:Lj$/time/LocalDate;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$3:Ljava/util/Set;

    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$4:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$5:Lkotlin/jvm/functions/Function1;

    iget v6, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$6:I

    iget v7, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda9;->f$7:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static/range {v0 .. v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;->CalendarioView$lambda$9(Landroidx/compose/ui/Modifier;Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
