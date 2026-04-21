.class public final synthetic Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;"
    method = "serializableSaver$lambda$1"
    proto = "(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroid/os/Bundle;)Ljava/lang/Object;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lkotlinx/serialization/KSerializer;

.field public final synthetic f$1:Landroidx/savedstate/serialization/SavedStateConfiguration;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt$$ExternalSyntheticLambda1;->f$0:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt$$ExternalSyntheticLambda1;->f$1:Landroidx/savedstate/serialization/SavedStateConfiguration;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt$$ExternalSyntheticLambda1;->f$0:Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt$$ExternalSyntheticLambda1;->f$1:Landroidx/savedstate/serialization/SavedStateConfiguration;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver$lambda$1(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
