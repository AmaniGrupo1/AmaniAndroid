.class public final Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;
.super Lcom/google/firebase/firestore/pipeline/AbstractOptions;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecuteOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions<",
        "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;",
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "()V",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "withIndexMode",
        "indexMode",
        "Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;",
        "IndexMode",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    sget-object v0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 92
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/pipeline/AbstractOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 91
    return-void
.end method


# virtual methods
.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    return-object v0
.end method

.method public final withIndexMode(Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;)Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;
    .locals 2
    .param p1, "indexMode"    # Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;

    const-string v0, "indexMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const-string v0, "index_mode"

    invoke-virtual {p1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions$IndexMode;->getValue$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/Pipeline$ExecuteOptions;

    return-object v0
.end method
