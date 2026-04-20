.class public final synthetic Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/koin/compose/KoinApplication_androidKt;"
    method = "composeMultiplatformConfiguration$lambda$0$0"
    proto = "(Landroid/content/Context;Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/koin/core/logger/Level;

.field public final synthetic f$2:Lorg/koin/dsl/KoinConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;->f$1:Lorg/koin/core/logger/Level;

    iput-object p3, p0, Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;->f$2:Lorg/koin/dsl/KoinConfiguration;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;->f$1:Lorg/koin/core/logger/Level;

    iget-object v2, p0, Lorg/koin/compose/KoinApplication_androidKt$$ExternalSyntheticLambda0;->f$2:Lorg/koin/dsl/KoinConfiguration;

    check-cast p1, Lorg/koin/core/KoinApplication;

    invoke-static {v0, v1, v2, p1}, Lorg/koin/compose/KoinApplication_androidKt;->$r8$lambda$lDVcflKFCDpe04pEvFHTakNlif4(Landroid/content/Context;Lorg/koin/core/logger/Level;Lorg/koin/dsl/KoinConfiguration;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
