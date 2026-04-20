.class public final synthetic Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lkotlin/sequences/SequencesKt___SequencesKt;"
    method = "filterIndexed$lambda$1$SequencesKt___SequencesKt"
    proto = "(Lkotlin/collections/IndexedValue;)Ljava/lang/Object;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/collections/IndexedValue;

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->$r8$lambda$yKc_Xo7HBm1pXdzkMIJ_XJJxjqU(Lkotlin/collections/IndexedValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
