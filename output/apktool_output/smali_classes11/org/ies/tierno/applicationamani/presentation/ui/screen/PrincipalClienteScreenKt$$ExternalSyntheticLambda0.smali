.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;"
    method = "PrincipalClienteScreen$lambda$18$lambda$17$lambda$16$lambda$15"
    proto = "(Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/Typography;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/Typography;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/Typography;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/Typography;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/PrincipalClienteScreenKt;->PrincipalClienteScreen$lambda$18$lambda$17$lambda$16$lambda$15(Landroidx/compose/material3/Typography;Ljava/util/List;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
