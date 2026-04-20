.class public Lcom/google/firebase/firestore/DocumentChange;
.super Ljava/lang/Object;
.source "DocumentChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/DocumentChange$Type;
    }
.end annotation


# instance fields
.field private final document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

.field private final newIndex:I

.field private final oldIndex:I

.field private final type:Lcom/google/firebase/firestore/DocumentChange$Type;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentChange$Type;II)V
    .locals 0
    .param p1, "document"    # Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .param p2, "type"    # Lcom/google/firebase/firestore/DocumentChange$Type;
    .param p3, "oldIndex"    # I
    .param p4, "newIndex"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    .line 56
    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 57
    iput p3, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    .line 58
    iput p4, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 63
    instance-of v0, p1, Lcom/google/firebase/firestore/DocumentChange;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/DocumentChange;

    .line 65
    .local v0, "that":Lcom/google/firebase/firestore/DocumentChange;
    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    iget-object v3, v0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/DocumentChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    iget-object v3, v0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    iget v3, v0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    iget v3, v0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 65
    :goto_0
    return v1

    .line 70
    .end local v0    # "that":Lcom/google/firebase/firestore/DocumentChange;
    :cond_1
    return v1
.end method

.method public getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    return-object v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    return v0
.end method

.method public getOldIndex()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    return v0
.end method

.method public getType()Lcom/google/firebase/firestore/DocumentChange$Type;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentChange$Type;->hashCode()I

    move-result v0

    .line 76
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    add-int/2addr v0, v2

    .line 78
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    add-int/2addr v1, v2

    .line 79
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
