.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;"
    method = "CalendarioGrid$lambda$25"
    proto = "(Ljava/time/YearMonth;Ljava/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lj$/time/YearMonth;

.field public final synthetic f$1:Lj$/time/LocalDate;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$0:Lj$/time/YearMonth;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$1:Lj$/time/LocalDate;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$3:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$0:Lj$/time/YearMonth;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$1:Lj$/time/LocalDate;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$2:Ljava/util/Set;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$3:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda3;->f$4:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;->CalendarioGrid$lambda$25(Lj$/time/YearMonth;Lj$/time/LocalDate;Ljava/util/Set;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
