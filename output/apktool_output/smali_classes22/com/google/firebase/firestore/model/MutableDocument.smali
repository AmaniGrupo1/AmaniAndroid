.class public final Lcom/google/firebase/firestore/model/MutableDocument;
.super Ljava/lang/Object;
.source "MutableDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/model/Document;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;,
        Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;
    }
.end annotation


# instance fields
.field private createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

.field private documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private value:Lcom/google/firebase/firestore/model/ObjectValue;

.field private version:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 72
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "documentType"    # Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;
    .param p3, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p4, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p5, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;
    .param p6, "documentState"    # Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 83
    iput-object p3, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 84
    iput-object p4, p0, Lcom/google/firebase/firestore/model/MutableDocument;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 85
    iput-object p2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 86
    iput-object p6, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 87
    iput-object p5, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 88
    return-void
.end method

.method public static newFoundDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p0, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;

    .line 107
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/MutableDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToFoundDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0
.end method

.method public static newInvalidDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 7
    .param p0, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 95
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument;

    sget-object v2, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->INVALID:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v3, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    new-instance v5, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v5}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    sget-object v6, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->SYNCED:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    move-object v1, p0

    .end local p0    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    .local v1, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/firestore/model/MutableDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;)V

    return-object v0
.end method

.method public static newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p0, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 112
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/MutableDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToNoDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0
.end method

.method public static newUnknownDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p0, "documentKey"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 121
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/MutableDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/MutableDocument;->convertToUnknownDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertToFoundDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;

    .line 128
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 129
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 130
    iput-object p2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 131
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->SYNCED:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 132
    return-object p0
.end method

.method public convertToNoDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 137
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 138
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 139
    new-instance v0, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 140
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->SYNCED:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 141
    return-object p0
.end method

.method public convertToUnknownDocument(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 149
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 150
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    .line 151
    new-instance v0, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 152
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->HAS_COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 153
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 245
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 246
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 250
    .local v1, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    iget-object v2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v3, v1, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v3, v1, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    iget-object v3, v1, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 255
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    iget-object v3, v1, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    iget-object v2, v1, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/ObjectValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 246
    .end local v1    # "document":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_6
    :goto_0
    return v0
.end method

.method public getCreateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->createTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getData()Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    return-object v0
.end method

.method public getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 214
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/ObjectValue;->get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public hasCommittedMutations()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->HAS_COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLocalMutations()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->HAS_LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->hasLocalMutations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MutableDocument;->hasCommittedMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFoundDocument()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->FOUND_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNoDocument()Z
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->NO_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnknownDocument()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidDocument()Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    sget-object v1, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->INVALID:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mutableCopy()Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 7

    .line 240
    new-instance v0, Lcom/google/firebase/firestore/model/MutableDocument;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v2, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    iget-object v3, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v4, p0, Lcom/google/firebase/firestore/model/MutableDocument;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v5, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/ObjectValue;->clone()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/firestore/model/MutableDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;)V

    return-object v0
.end method

.method public setHasCommittedMutations()Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1

    .line 157
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->HAS_COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 158
    return-object p0
.end method

.method public setHasLocalMutations()Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1

    .line 162
    sget-object v0, Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;->HAS_LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    .line 163
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 164
    return-object p0
.end method

.method public setReadTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 0
    .param p1, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 168
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 169
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentType:Lcom/google/firebase/firestore/model/MutableDocument$DocumentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->documentState:Lcom/google/firebase/firestore/model/MutableDocument$DocumentState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/MutableDocument;->value:Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
