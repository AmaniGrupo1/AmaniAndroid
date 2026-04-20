.class public final Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
.super Lcom/google/firebase/firestore/pipeline/AbstractOptions;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions<",
        "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;",
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "()V",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "withLimit",
        "limit",
        "",
        "withDistanceField",
        "distanceField",
        "Lcom/google/firebase/firestore/pipeline/Field;",
        "",
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

    .line 802
    sget-object v0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 800
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/pipeline/AbstractOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 799
    return-void
.end method


# virtual methods
.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 798
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    return-object v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    new-instance v0, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withDistanceField(Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .locals 1
    .param p1, "distanceField"    # Lcom/google/firebase/firestore/pipeline/Field;

    const-string v0, "distanceField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    const-string v0, "distance_field"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;->with(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    return-object v0
.end method

.method public final withDistanceField(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .locals 1
    .param p1, "distanceField"    # Ljava/lang/String;

    .line 835
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;->withDistanceField(Lcom/google/firebase/firestore/pipeline/Field;)Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    move-result-object v0

    return-object v0
.end method

.method public final withLimit(J)Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .locals 1
    .param p1, "limit"    # J

    .line 815
    const-string v0, "limit"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;->with(Ljava/lang/String;J)Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    return-object v0
.end method
