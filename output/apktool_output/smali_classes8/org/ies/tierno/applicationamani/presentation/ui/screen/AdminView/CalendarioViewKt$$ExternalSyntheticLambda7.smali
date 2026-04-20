.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;"
    method = "CalendarioView$lambda$8$lambda$5$lambda$4"
    proto = "(Lkotlin/jvm/functions/Function1;Ljava/time/YearMonth;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lj$/time/YearMonth;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lj$/time/YearMonth;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda7;->f$1:Lj$/time/YearMonth;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda7;->f$1:Lj$/time/YearMonth;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;->CalendarioView$lambda$8$lambda$5$lambda$4(Lkotlin/jvm/functions/Function1;Lj$/time/YearMonth;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
