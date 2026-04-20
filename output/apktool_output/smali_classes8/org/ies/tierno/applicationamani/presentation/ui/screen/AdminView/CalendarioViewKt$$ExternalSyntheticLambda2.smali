.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;"
    method = "CalendarioGrid$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20$lambda$19"
    proto = "(Ljava/time/LocalDate;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lj$/time/LocalDate;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lj$/time/LocalDate;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda2;->f$0:Lj$/time/LocalDate;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda2;->f$0:Lj$/time/LocalDate;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/AdminView/CalendarioViewKt;->CalendarioGrid$lambda$24$lambda$23$lambda$22$lambda$21$lambda$20$lambda$19(Lj$/time/LocalDate;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
