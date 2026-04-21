.class abstract Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
.super Ljava/lang/Object;
.source "TestingHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/TestingHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ExistenceFilterBloomFilterInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/google/firebase/firestore/remote/BloomFilter;ZIII)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
    .locals 6
    .param p0, "bloomFilter"    # Lcom/google/firebase/firestore/remote/BloomFilter;
    .param p1, "applied"    # Z
    .param p2, "hashCount"    # I
    .param p3, "bitmapLength"    # I
    .param p4, "padding"    # I

    .line 193
    new-instance v0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "bloomFilter":Lcom/google/firebase/firestore/remote/BloomFilter;
    .end local p1    # "applied":Z
    .end local p2    # "hashCount":I
    .end local p3    # "bitmapLength":I
    .end local p4    # "padding":I
    .local v1, "bloomFilter":Lcom/google/firebase/firestore/remote/BloomFilter;
    .local v2, "applied":Z
    .local v3, "hashCount":I
    .local v4, "bitmapLength":I
    .local v5, "padding":I
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterBloomFilterInfo;-><init>(Lcom/google/firebase/firestore/remote/BloomFilter;ZIII)V

    return-object v0
.end method

.method static from(Lcom/google/firebase/firestore/remote/BloomFilter;Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;Lcom/google/firebase/firestore/remote/ExistenceFilter;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;
    .locals 5
    .param p0, "bloomFilter"    # Lcom/google/firebase/firestore/remote/BloomFilter;
    .param p1, "bloomFilterStatus"    # Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
    .param p2, "existenceFilter"    # Lcom/google/firebase/firestore/remote/ExistenceFilter;

    .line 222
    invoke-virtual {p2}, Lcom/google/firebase/firestore/remote/ExistenceFilter;->getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v0

    .line 223
    .local v0, "unchangedNames":Lcom/google/firestore/v1/BloomFilter;
    if-nez v0, :cond_0

    .line 224
    const/4 v1, 0x0

    return-object v1

    .line 226
    :cond_0
    sget-object v1, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->SUCCESS:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 229
    :goto_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getHashCount()I

    move-result v2

    .line 230
    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getBits()Lcom/google/firestore/v1/BitSequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/BitSequence;->getBitmap()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    .line 231
    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getBits()Lcom/google/firestore/v1/BitSequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firestore/v1/BitSequence;->getPadding()I

    move-result v4

    .line 226
    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;->create(Lcom/google/firebase/firestore/remote/BloomFilter;ZIII)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterBloomFilterInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method abstract applied()Z
.end method

.method abstract bitmapLength()I
.end method

.method abstract bloomFilter()Lcom/google/firebase/firestore/remote/BloomFilter;
.end method

.method abstract hashCount()I
.end method

.method abstract padding()I
.end method
