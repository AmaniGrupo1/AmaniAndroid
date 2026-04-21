.class public final Lcom/google/firebase/firestore/pipeline/LimitStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/LimitStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\n\u001a\u00020\u000bH\u0010\u00a2\u0006\u0002\u0008\u000cJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\u000eJ)\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0010\u00a2\u0006\u0002\u0008\u0015J\u001b\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0010\u00a2\u0006\u0002\u0008\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006!"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/LimitStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "limit",
        "",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "getLimit",
        "()I",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "evaluate",
        "",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "context",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "inputs",
        "evaluate$com_google_firebase_firebase_firestore",
        "args",
        "Lkotlin/sequences/Sequence;",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "args$com_google_firebase_firebase_firestore",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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


# instance fields
.field private final limit:I


# direct methods
.method public constructor <init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2
    .param p1, "limit"    # I
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    const-string v0, "limit"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 840
    iput p1, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 840
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method


# virtual methods
.method public args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;
    .locals 3
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/UserDataReader;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firestore/v1/Value;

    iget v1, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->encodeValue(I)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 2

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/LimitStage;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 860
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 861
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/LimitStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 862
    :cond_1
    iget v1, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/LimitStage;

    iget v3, v3, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    if-eq v1, v3, :cond_2

    return v2

    .line 863
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/LimitStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/LimitStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/LimitStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 864
    :cond_3
    return v0
.end method

.method public evaluate$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .param p2, "inputs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    nop

    .line 852
    iget v0, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    if-lez v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    iget v1, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 853
    :cond_0
    iget v0, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 854
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 855
    :goto_0
    return-object v0
.end method

.method public final getLimit()I
    .locals 1

    .line 840
    iget v0, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 868
    iget v0, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    .line 869
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/LimitStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 870
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/LimitStage;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    new-instance v0, Lcom/google/firebase/firestore/pipeline/LimitStage;

    iget v1, p0, Lcom/google/firebase/firestore/pipeline/LimitStage;->limit:I

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 839
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/LimitStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/LimitStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object v0
.end method
