.class public final synthetic Lorg/koin/core/instance/ScopedInstanceFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/koin/core/instance/ScopedInstanceFactory;"
    method = "get$lambda$0"
    proto = "(Lorg/koin/core/instance/ScopedInstanceFactory;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/koin/core/instance/ScopedInstanceFactory;

.field public final synthetic f$1:Lorg/koin/core/instance/ResolutionContext;


# direct methods
.method public synthetic constructor <init>(Lorg/koin/core/instance/ScopedInstanceFactory;Lorg/koin/core/instance/ResolutionContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/instance/ScopedInstanceFactory$$ExternalSyntheticLambda0;->f$0:Lorg/koin/core/instance/ScopedInstanceFactory;

    iput-object p2, p0, Lorg/koin/core/instance/ScopedInstanceFactory$$ExternalSyntheticLambda0;->f$1:Lorg/koin/core/instance/ResolutionContext;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/koin/core/instance/ScopedInstanceFactory$$ExternalSyntheticLambda0;->f$0:Lorg/koin/core/instance/ScopedInstanceFactory;

    iget-object v1, p0, Lorg/koin/core/instance/ScopedInstanceFactory$$ExternalSyntheticLambda0;->f$1:Lorg/koin/core/instance/ResolutionContext;

    invoke-static {v0, v1}, Lorg/koin/core/instance/ScopedInstanceFactory;->get$lambda$0(Lorg/koin/core/instance/ScopedInstanceFactory;Lorg/koin/core/instance/ResolutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
