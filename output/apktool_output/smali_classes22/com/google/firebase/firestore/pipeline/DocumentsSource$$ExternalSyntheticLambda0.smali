.class public final synthetic Lcom/google/firebase/firestore/pipeline/DocumentsSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/firestore/pipeline/DocumentsSource;"
    method = "docKeySet_delegate$lambda$1"
    proto = "(Lcom/google/firebase/firestore/pipeline/DocumentsSource;)Ljava/util/HashSet;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/pipeline/DocumentsSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/DocumentsSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/DocumentsSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/DocumentsSource$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    invoke-static {v0}, Lcom/google/firebase/firestore/pipeline/DocumentsSource;->docKeySet_delegate$lambda$1(Lcom/google/firebase/firestore/pipeline/DocumentsSource;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
