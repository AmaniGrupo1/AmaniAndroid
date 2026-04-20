.class public final synthetic Lorg/koin/mp/KoinPlatform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/koin/mp/KoinPlatform;"
    method = "startKoin$lambda$0"
    proto = "(Lorg/koin/core/logger/Level;Ljava/util/List;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/koin/core/logger/Level;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/koin/core/logger/Level;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/mp/KoinPlatform$$ExternalSyntheticLambda0;->f$0:Lorg/koin/core/logger/Level;

    iput-object p2, p0, Lorg/koin/mp/KoinPlatform$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/koin/mp/KoinPlatform$$ExternalSyntheticLambda0;->f$0:Lorg/koin/core/logger/Level;

    iget-object v1, p0, Lorg/koin/mp/KoinPlatform$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Lorg/koin/core/KoinApplication;

    invoke-static {v0, v1, p1}, Lorg/koin/mp/KoinPlatform;->startKoin$lambda$0(Lorg/koin/core/logger/Level;Ljava/util/List;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
