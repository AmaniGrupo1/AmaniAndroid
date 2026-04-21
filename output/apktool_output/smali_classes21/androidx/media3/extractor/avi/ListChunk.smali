.class final Landroidx/media3/extractor/avi/ListChunk;
.super Ljava/lang/Object;
.source "ListChunk.java"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final children:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/avi/AviChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method private constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/avi/AviChunk;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p2, "children":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/extractor/avi/AviChunk;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroidx/media3/extractor/avi/ListChunk;->type:I

    .line 59
    iput-object p2, p0, Landroidx/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    .line 60
    return-void
.end method

.method private static createBox(IILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 1
    .param p0, "chunkType"    # I
    .param p1, "trackType"    # I
    .param p2, "body"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 81
    sparse-switch p0, :sswitch_data_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 89
    :sswitch_0
    invoke-static {p2}, Landroidx/media3/extractor/avi/StreamNameChunk;->parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/StreamNameChunk;

    move-result-object v0

    return-object v0

    .line 85
    :sswitch_1
    invoke-static {p2}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    move-result-object v0

    return-object v0

    .line 83
    :sswitch_2
    invoke-static {p2}, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    move-result-object v0

    return-object v0

    .line 87
    :sswitch_3
    invoke-static {p1, p2}, Landroidx/media3/extractor/avi/StreamFormatChunk;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;
    .locals 9
    .param p0, "listType"    # I
    .param p1, "body"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 27
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 28
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/extractor/avi/AviChunk;>;"
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 29
    .local v1, "listBodyEndPosition":I
    const/4 v2, -0x2

    .line 30
    .local v2, "currentTrackType":I
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 31
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 32
    .local v3, "type":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 33
    .local v4, "size":I
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    .line 34
    .local v5, "innerBoxBodyEndPosition":I
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 36
    const v6, 0x5453494c

    if-ne v3, v6, :cond_0

    .line 37
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    .line 38
    .local v6, "innerListType":I
    invoke-static {v6, p1}, Landroidx/media3/extractor/avi/ListChunk;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;

    move-result-object v6

    .line 39
    .local v6, "aviChunk":Landroidx/media3/extractor/avi/AviChunk;
    goto :goto_1

    .line 40
    .end local v6    # "aviChunk":Landroidx/media3/extractor/avi/AviChunk;
    :cond_0
    invoke-static {v3, v2, p1}, Landroidx/media3/extractor/avi/ListChunk;->createBox(IILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v6

    .line 42
    .restart local v6    # "aviChunk":Landroidx/media3/extractor/avi/AviChunk;
    :goto_1
    if-eqz v6, :cond_2

    .line 43
    invoke-interface {v6}, Landroidx/media3/extractor/avi/AviChunk;->getType()I

    move-result v7

    const v8, 0x68727473

    if-ne v7, v8, :cond_1

    .line 44
    move-object v7, v6

    check-cast v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v7}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->getTrackType()I

    move-result v2

    .line 46
    :cond_1
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 48
    :cond_2
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 49
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 50
    .end local v3    # "type":I
    .end local v4    # "size":I
    .end local v5    # "innerBoxBodyEndPosition":I
    .end local v6    # "aviChunk":Landroidx/media3/extractor/avi/AviChunk;
    goto :goto_0

    .line 51
    :cond_3
    new-instance v3, Landroidx/media3/extractor/avi/ListChunk;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroidx/media3/extractor/avi/ListChunk;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object v3
.end method


# virtual methods
.method public getChild(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/media3/extractor/avi/AviChunk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 70
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroidx/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/avi/AviChunk;

    .line 71
    .local v1, "aviChunk":Landroidx/media3/extractor/avi/AviChunk;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 72
    return-object v1

    .line 74
    .end local v1    # "aviChunk":Landroidx/media3/extractor/avi/AviChunk;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 64
    iget v0, p0, Landroidx/media3/extractor/avi/ListChunk;->type:I

    return v0
.end method
