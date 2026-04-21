.class public final Lcom/google/firebase/firestore/pipeline/CollectionHints;
.super Lcom/google/firebase/firestore/pipeline/AbstractOptions;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions<",
        "Lcom/google/firebase/firestore/pipeline/CollectionHints;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u001f\u0010\u000c\u001a\u00020\u00002\u0012\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\u000e\"\u00020\u000b\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/CollectionHints;",
        "Lcom/google/firebase/firestore/pipeline/AbstractOptions;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "()V",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "withForceIndex",
        "value",
        "",
        "withIgnoreIndexFields",
        "values",
        "",
        "([Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/CollectionHints;",
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

    .line 279
    sget-object v0, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/pipeline/CollectionHints;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/pipeline/AbstractOptions;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 276
    return-void
.end method


# virtual methods
.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 275
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/CollectionHints;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/CollectionHints;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    return-object v0
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/CollectionHints;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionHints;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/pipeline/CollectionHints;-><init>(Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public final withForceIndex(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/CollectionHints;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    const-string v0, "force_index"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/pipeline/CollectionHints;->with(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/CollectionHints;

    return-object v0
.end method

.method public final varargs withIgnoreIndexFields([Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/CollectionHints;
    .locals 2
    .param p1, "values"    # [Ljava/lang/String;

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "ignore_index_fields"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/firestore/pipeline/CollectionHints;->with(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AbstractOptions;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/CollectionHints;

    return-object v0
.end method
