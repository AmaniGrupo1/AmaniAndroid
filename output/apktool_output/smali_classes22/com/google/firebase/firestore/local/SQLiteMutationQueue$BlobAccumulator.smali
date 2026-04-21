.class Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;
.super Ljava/lang/Object;
.source "SQLiteMutationQueue.java"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/SQLiteMutationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlobAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/firestore/util/Consumer<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private more:Z


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "firstChunk"    # [B

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->chunks:Ljava/util/ArrayList;

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->more:Z

    .line 487
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->addChunk([B)V

    .line 488
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;

    .line 482
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->more:Z

    return v0
.end method

.method private addChunk([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .line 510
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 511
    .local v0, "wrapped":Lcom/google/protobuf/ByteString;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method


# virtual methods
.method public accept(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "row"    # Landroid/database/Cursor;

    .line 502
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 503
    .local v1, "bytes":[B
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->addChunk([B)V

    .line 504
    array-length v2, v1

    const v3, 0xf4240

    if-ge v2, v3, :cond_0

    .line 505
    iput-boolean v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->more:Z

    .line 507
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 482
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->accept(Landroid/database/Cursor;)V

    return-void
.end method

.method numChunks()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method result()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$BlobAccumulator;->chunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
