.class final Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;
.super Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
.source "AutoValue_FieldIndex_IndexState.java"


# instance fields
.field private final offset:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

.field private final sequenceNumber:J


# direct methods
.method constructor <init>(JLcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)V
    .locals 2
    .param p1, "sequenceNumber"    # J
    .param p3, "offset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->sequenceNumber:J

    .line 16
    if-eqz p3, :cond_0

    .line 19
    iput-object p3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->offset:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 20
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null offset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 46
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    .line 47
    .local v1, "that":Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    iget-wide v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->sequenceNumber:J

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getSequenceNumber()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->offset:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    .line 48
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexState;->getOffset()Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 47
    :goto_0
    return v0

    .line 50
    .end local v1    # "that":Lcom/google/firebase/firestore/model/FieldIndex$IndexState;
    :cond_2
    return v2
.end method

.method public getOffset()Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->offset:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->sequenceNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 57
    iget-wide v2, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->sequenceNumber:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->sequenceNumber:J

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->offset:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexState{sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->sequenceNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_IndexState;->offset:Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
