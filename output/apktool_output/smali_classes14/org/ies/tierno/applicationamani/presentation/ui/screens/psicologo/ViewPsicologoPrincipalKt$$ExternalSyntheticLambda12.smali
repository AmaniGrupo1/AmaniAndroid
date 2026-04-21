.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;"
    method = "PacientesList$lambda$39$lambda$38"
    proto = "(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, p1}, Lorg/ies/tierno/applicationamani/presentation/ui/screens/psicologo/ViewPsicologoPrincipalKt;->PacientesList$lambda$39$lambda$38(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
