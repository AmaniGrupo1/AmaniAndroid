.class public final synthetic Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;"
    method = "ProfileContent$lambda$22$lambda$21"
    proto = "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lorg/ies/tierno/applicationamani/presentation/screens/profile/PsicologoProfileScreenKt;->ProfileContent$lambda$22$lambda$21(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
