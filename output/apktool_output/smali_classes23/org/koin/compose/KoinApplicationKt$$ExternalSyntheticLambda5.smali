.class public final synthetic Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/koin/compose/KoinApplicationKt;"
    method = "KoinApplicationPreview$lambda$1$0"
    proto = "(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lorg/koin/core/KoinApplication;


# direct methods
.method public synthetic constructor <init>(Lorg/koin/core/KoinApplication;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda5;->f$0:Lorg/koin/core/KoinApplication;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/koin/compose/KoinApplicationKt$$ExternalSyntheticLambda5;->f$0:Lorg/koin/core/KoinApplication;

    invoke-static {v0}, Lorg/koin/compose/KoinApplicationKt;->$r8$lambda$pBswk-9Hq5bCLe6ykFK_S7BdMBw(Lorg/koin/core/KoinApplication;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    return-object v0
.end method
