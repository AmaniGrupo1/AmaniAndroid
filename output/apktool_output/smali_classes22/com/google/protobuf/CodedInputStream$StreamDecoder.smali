.class final Lcom/google/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/google/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "input",
            "bufferSize"
        }
    .end annotation

    .line 2014
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream;-><init>(Lcom/google/protobuf/CodedInputStream$1;)V

    .line 2012
    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2712
    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2015
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2016
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2017
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2018
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2019
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2020
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2021
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/protobuf/CodedInputStream$1;

    .line 1993
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/CodedInputStream$StreamDecoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream$StreamDecoder;

    .line 1993
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/CodedInputStream$StreamDecoder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/CodedInputStream$StreamDecoder;

    .line 1993
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object v0
.end method

.method private static available(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2055
    :catch_0
    move-exception v0

    .line 2056
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2057
    throw v0
.end method

.method private static read(Ljava/io/InputStream;[BII)I
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2036
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2039
    throw v0
.end method

.method private readBytesSlowPath(I)Lcom/google/protobuf/ByteString;
    .locals 11
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2967
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2968
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 2971
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 2974
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2975
    .local v1, "originalBufferPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    .line 2978
    .local v2, "bufferedBytes":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2979
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2980
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2983
    sub-int v4, p1, v2

    .line 2987
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 2990
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 2993
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2996
    move v7, v2

    .line 2997
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 2998
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v3, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2999
    array-length v10, v9

    add-int/2addr v7, v10

    .line 3000
    .end local v9    # "chunk":[B
    goto :goto_0

    .line 3002
    :cond_1
    invoke-static {v6}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    return-object v3
.end method

.method private readRawBytesSlowPath(IZ)[B
    .locals 11
    .param p1, "size"    # I
    .param p2, "ensureNoLeakedReferences"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "size",
            "ensureNoLeakedReferences"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2832
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2833
    .local v0, "result":[B
    if-eqz v0, :cond_1

    .line 2834
    if-eqz p2, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 2837
    :cond_1
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2838
    .local v1, "originalBufferPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v2, v3

    .line 2841
    .local v2, "bufferedBytes":I
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2842
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2843
    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2846
    sub-int v4, p1, v2

    .line 2850
    .local v4, "sizeLeft":I
    invoke-direct {p0, v4}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v5

    .line 2853
    .local v5, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-array v6, p1, [B

    .line 2856
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v7, v1, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2859
    move v7, v2

    .line 2860
    .local v7, "tempPos":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 2861
    .local v9, "chunk":[B
    array-length v10, v9

    invoke-static {v9, v3, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2862
    array-length v10, v9

    add-int/2addr v7, v10

    .line 2863
    .end local v9    # "chunk":[B
    goto :goto_1

    .line 2866
    :cond_2
    return-object v6
.end method

.method private readRawBytesSlowPathOneChunk(I)[B
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2876
    if-nez p1, :cond_0

    .line 2877
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 2879
    :cond_0
    if-ltz p1, :cond_7

    .line 2884
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2885
    .local v0, "currentMessageSize":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 2890
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5

    .line 2896
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 2898
    .local v1, "bufferedBytes":I
    sub-int v2, p1, v1

    .line 2900
    .local v2, "sizeLeft":I
    const/16 v3, 0x1000

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->available(Ljava/io/InputStream;)I

    move-result v3

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 2925
    :cond_1
    const/4 v3, 0x0

    return-object v3

    .line 2903
    :cond_2
    :goto_0
    new-array v3, p1, [B

    .line 2906
    .local v3, "bytes":[B
    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2907
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2908
    iput v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2909
    iput v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2912
    move v4, v1

    .line 2913
    .local v4, "tempPos":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 2914
    iget-object v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v6, p1, v4

    invoke-static {v5, v3, v4, v6}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 2915
    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 2918
    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2919
    add-int/2addr v4, v5

    .line 2920
    .end local v5    # "n":I
    goto :goto_1

    .line 2916
    .restart local v5    # "n":I
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .line 2922
    .end local v5    # "n":I
    :cond_4
    return-object v3

    .line 2892
    .end local v1    # "bufferedBytes":I
    .end local v2    # "sizeLeft":I
    .end local v3    # "bytes":[B
    .end local v4    # "tempPos":I
    :cond_5
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2893
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2886
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2880
    .end local v0    # "currentMessageSize":I
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .locals 5
    .param p1, "sizeLeft"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeLeft"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2943
    .local v0, "chunks":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_0
    if-lez p1, :cond_2

    .line 2945
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 2946
    .local v1, "chunk":[B
    const/4 v2, 0x0

    .line 2947
    .local v2, "tempPos":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 2948
    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 2949
    .local v3, "n":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2952
    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2953
    add-int/2addr v2, v3

    .line 2954
    .end local v3    # "n":I
    goto :goto_1

    .line 2950
    .restart local v3    # "n":I
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 2955
    .end local v3    # "n":I
    :cond_1
    array-length v3, v1

    sub-int/2addr p1, v3

    .line 2956
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2957
    .end local v1    # "chunk":[B
    .end local v2    # "tempPos":I
    goto :goto_0

    .line 2959
    :cond_2
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .line 2671
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2672
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v0, v1

    .line 2673
    .local v0, "bufferEnd":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 2675
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2676
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    goto :goto_0

    .line 2678
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2680
    :goto_0
    return-void
.end method

.method private refillBuffer(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2723
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2726
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 2727
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2729
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2732
    :cond_1
    return-void
.end method

.method private static skip(Ljava/io/InputStream;J)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2045
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2048
    throw v0
.end method

.method private skipRawBytesSlowPath(I)V
    .locals 8
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3020
    if-ltz p1, :cond_7

    .line 3024
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_6

    .line 3031
    const/4 v0, 0x0

    .line 3032
    .local v0, "totalSkipped":I
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-nez v1, :cond_3

    .line 3034
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3035
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 3036
    .end local v0    # "totalSkipped":I
    .local v1, "totalSkipped":I
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3037
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v0, v1

    .line 3040
    .end local v1    # "totalSkipped":I
    .restart local v0    # "totalSkipped":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 3041
    sub-int v1, p1, v0

    .line 3042
    .local v1, "toSkip":I
    :try_start_0
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skip(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 3043
    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    .line 3049
    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 3054
    goto :goto_1

    .line 3056
    :cond_0
    long-to-int v4, v2

    add-int/2addr v0, v4

    .line 3057
    .end local v1    # "toSkip":I
    .end local v2    # "skipped":J
    goto :goto_0

    .line 3044
    .restart local v1    # "toSkip":I
    .restart local v2    # "skipped":J
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3045
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#skip returned invalid result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "totalSkipped":I
    .end local p1    # "size":I
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3059
    .end local v1    # "toSkip":I
    .end local v2    # "skipped":J
    .restart local v0    # "totalSkipped":I
    .restart local p1    # "size":I
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3060
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3061
    throw v1

    .line 3059
    :cond_2
    :goto_1
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3060
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3061
    nop

    .line 3063
    :cond_3
    if-ge v0, p1, :cond_5

    .line 3065
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 3066
    .local v1, "tempPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3070
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 3071
    :goto_2
    sub-int v3, p1, v1

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v3, v4, :cond_4

    .line 3072
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v3

    .line 3073
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3074
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_2

    .line 3077
    :cond_4
    sub-int v2, p1, v1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3079
    .end local v1    # "tempPos":I
    :cond_5
    return-void

    .line 3026
    .end local v0    # "totalSkipped":I
    :cond_6
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3028
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3021
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2492
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2493
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    goto :goto_0

    .line 2495
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

    .line 2497
    :goto_0
    return-void
.end method

.method private skipRawVarintFastPath()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2501
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    .line 2502
    return-void

    .line 2500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2505
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2510
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 2511
    return-void

    .line 2509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2514
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private tryRefillBuffer(I)Z
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2743
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_8

    .line 2751
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 2752
    return v1

    .line 2756
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v2, :cond_1

    .line 2758
    return v1

    .line 2761
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_2

    .line 2762
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    invoke-interface {v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2765
    :cond_2
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2766
    .local v0, "tempPos":I
    if-lez v0, :cond_4

    .line 2767
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v2, v0, :cond_3

    .line 2768
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2770
    :cond_3
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2771
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2772
    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2776
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget-object v5, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v6, v7

    .line 2781
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2777
    invoke-static {v2, v3, v4, v5}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 2786
    .local v2, "bytesRead":I
    if-eqz v2, :cond_7

    const/4 v3, -0x1

    if-lt v2, v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v3, v3

    if-gt v2, v3, :cond_7

    .line 2793
    if-lez v2, :cond_6

    .line 2794
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2795
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2796
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v1, p1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    :goto_0
    return v1

    .line 2799
    :cond_6
    return v1

    .line 2787
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2788
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2744
    .end local v0    # "tempPos":I
    .end local v2    # "bytesRead":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2079
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_0

    .line 2082
    return-void

    .line 2080
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public enableAliasing(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 2646
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 2690
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2691
    const/4 v0, -0x1

    return v0

    .line 2694
    :cond_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    .line 2695
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getLastTag()I
    .locals 1

    .line 2086
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .line 2705
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2700
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oldLimit"
        }
    .end annotation

    .line 2684
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2685
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2686
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2655
    if-ltz p1, :cond_1

    .line 2658
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2659
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2660
    .local v0, "oldLimit":I
    if-gt p1, v0, :cond_0

    .line 2663
    iput p1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2665
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2667
    return v0

    .line 2661
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 2656
    .end local v0    # "oldLimit":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2231
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2378
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2379
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2382
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2383
    .local v1, "result":[B
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2384
    return-object v1

    .line 2385
    .end local v1    # "result":[B
    :cond_0
    if-ltz v0, :cond_1

    .line 2390
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1

    .line 2386
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2396
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2397
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2399
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2400
    .local v1, "result":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2401
    return-object v1

    .line 2403
    .end local v1    # "result":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v0, :cond_1

    .line 2404
    sget-object v1, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v1

    .line 2406
    :cond_1
    if-ltz v0, :cond_2

    .line 2413
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 2407
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2359
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2360
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2364
    .local v1, "result":Lcom/google/protobuf/ByteString;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2365
    return-object v1

    .line 2367
    .end local v1    # "result":Lcom/google/protobuf/ByteString;
    :cond_0
    if-nez v0, :cond_1

    .line 2368
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v1

    .line 2370
    :cond_1
    if-ltz v0, :cond_2

    .line 2373
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1

    .line 2371
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2196
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2423
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2226
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2221
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2201
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2308
    .local p2, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2309
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2310
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 2311
    .local v0, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2312
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2313
    return-object v0
.end method

.method public readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2295
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2296
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2297
    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 2298
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2299
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2300
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2343
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2344
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2345
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2346
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2347
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 2348
    .local v2, "result":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2349
    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2350
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result v3

    if-nez v3, :cond_0

    .line 2353
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2354
    return-object v2

    .line 2351
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2327
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2328
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2329
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v1

    .line 2330
    .local v1, "oldLimit":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2331
    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    .line 2332
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2333
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2334
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result v2

    if-nez v2, :cond_0

    .line 2337
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2338
    return-void

    .line 2335
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2804
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 2805
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2812
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2813
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    .line 2814
    add-int v1, v0, p1

    iput v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2815
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 2818
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    return-object v1
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2605
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2607
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 2608
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2609
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2612
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2613
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2614
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method public readRawLittleEndian64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2622
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2624
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 2625
    invoke-direct {p0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2626
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2629
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2630
    .local v1, "buffer":[B
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2631
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readRawVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2453
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2455
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_0

    .line 2456
    goto/16 :goto_0

    .line 2459
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2461
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    move v3, v0

    .local v3, "x":I
    if-ltz v0, :cond_1

    .line 2462
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2463
    return v3

    .line 2464
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v2

    const/16 v4, 0x9

    if-ge v0, v4, :cond_2

    .line 2465
    goto :goto_0

    .line 2466
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_3

    .line 2467
    xor-int/lit8 v2, v3, -0x80

    .end local v3    # "x":I
    .local v2, "x":I
    goto :goto_1

    .line 2468
    .end local v2    # "x":I
    .restart local v3    # "x":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_4

    .line 2469
    xor-int/lit16 v0, v3, 0x3f80

    move v5, v2

    move v2, v0

    move v0, v5

    .end local v3    # "x":I
    .local v0, "x":I
    goto :goto_1

    .line 2470
    .end local v0    # "x":I
    .restart local v3    # "x":I
    :cond_4
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .local v0, "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_5

    .line 2471
    const v2, -0x1fc080

    xor-int/2addr v2, v3

    .end local v3    # "x":I
    .local v2, "x":I
    goto :goto_1

    .line 2473
    .end local v2    # "x":I
    .restart local v3    # "x":I
    :cond_5
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    .line 2474
    .local v0, "y":I
    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    .line 2475
    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    .line 2476
    if-gez v0, :cond_7

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tempPos":I
    .local v4, "tempPos":I
    aget-byte v2, v1, v2

    if-gez v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v4, v1, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v2, v1, v2

    if-gez v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v4, v1, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v4    # "tempPos":I
    aget-byte v2, v1, v2

    if-gez v2, :cond_6

    .line 2482
    nop

    .line 2488
    .end local v0    # "y":I
    .end local v1    # "buffer":[B
    .end local v3    # "x":I
    .end local v4    # "tempPos":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2476
    .restart local v0    # "y":I
    .restart local v1    # "buffer":[B
    .restart local v3    # "x":I
    .restart local v4    # "tempPos":I
    :cond_6
    move v2, v3

    move v0, v4

    goto :goto_1

    .end local v4    # "tempPos":I
    .restart local v2    # "tempPos":I
    :cond_7
    move v0, v2

    move v2, v3

    .line 2485
    .end local v3    # "x":I
    .local v0, "tempPos":I
    .local v2, "x":I
    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2486
    return v2
.end method

.method public readRawVarint64()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2534
    .local v0, "tempPos":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_0

    .line 2535
    goto/16 :goto_0

    .line 2538
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2541
    .local v1, "buffer":[B
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .local v2, "tempPos":I
    aget-byte v0, v1, v0

    move v3, v0

    .local v3, "y":I
    if-ltz v0, :cond_1

    .line 2542
    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2543
    int-to-long v4, v3

    return-wide v4

    .line 2544
    :cond_1
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v2

    const/16 v4, 0x9

    if-ge v0, v4, :cond_2

    .line 2545
    goto/16 :goto_0

    .line 2546
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_3

    .line 2547
    xor-int/lit8 v2, v3, -0x80

    int-to-long v4, v2

    .local v4, "x":J
    goto/16 :goto_1

    .line 2548
    .end local v4    # "x":J
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_4

    .line 2549
    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v2

    .restart local v4    # "x":J
    goto/16 :goto_1

    .line 2550
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v2, v3

    move v3, v2

    if-gez v2, :cond_5

    .line 2551
    const v2, -0x1fc080

    xor-int/2addr v2, v3

    int-to-long v4, v2

    .restart local v4    # "x":J
    goto/16 :goto_1

    .line 2552
    .end local v4    # "x":J
    :cond_5
    int-to-long v4, v3

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    .local v6, "x":J
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_6

    .line 2553
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v2

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2554
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_6
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x23

    shl-long/2addr v4, v2

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v2, v4, v8

    if-gez v2, :cond_7

    .line 2555
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2556
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_7
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_8

    .line 2557
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v2

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2558
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_8
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    int-to-long v4, v2

    const/16 v2, 0x31

    shl-long/2addr v4, v2

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v2, v4, v8

    if-gez v2, :cond_9

    .line 2559
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    .end local v6    # "x":J
    .restart local v4    # "x":J
    goto :goto_1

    .line 2568
    .end local v4    # "x":J
    .restart local v6    # "x":J
    :cond_9
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tempPos":I
    .restart local v2    # "tempPos":I
    aget-byte v0, v1, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    .line 2569
    .end local v6    # "x":J
    .restart local v4    # "x":J
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 2578
    cmp-long v0, v4, v8

    if-gez v0, :cond_a

    .line 2579
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    aget-byte v2, v1, v2

    int-to-long v6, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_b

    .line 2580
    nop

    .line 2587
    .end local v0    # "tempPos":I
    .end local v1    # "buffer":[B
    .end local v3    # "y":I
    .end local v4    # "x":J
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 2578
    .restart local v1    # "buffer":[B
    .restart local v2    # "tempPos":I
    .restart local v3    # "y":I
    .restart local v4    # "x":J
    :cond_a
    move v0, v2

    .line 2584
    .end local v2    # "tempPos":I
    .restart local v0    # "tempPos":I
    :cond_b
    :goto_1
    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2585
    return-wide v4
.end method

.method readRawVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2592
    const-wide/16 v0, 0x0

    .line 2593
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 2594
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v3

    .line 2595
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 2596
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 2597
    return-wide v0

    .line 2593
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2600
    .end local v2    # "shift":I
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2428
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2433
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2438
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2443
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2236
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2237
    .local v0, "size":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 2240
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2241
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2242
    return-object v1

    .line 2244
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 2245
    const-string v1, ""

    return-object v1

    .line 2247
    :cond_1
    if-ltz v0, :cond_3

    .line 2250
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_2

    .line 2251
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2252
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2253
    .restart local v1    # "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2254
    return-object v1

    .line 2257
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2248
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2262
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2264
    .local v0, "size":I
    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2266
    .local v1, "oldPos":I
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    .line 2269
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2270
    .local v2, "bytes":[B
    add-int v3, v1, v0

    iput v3, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2271
    move v3, v1

    .local v3, "tempPos":I
    goto :goto_0

    .line 2272
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_0
    if-nez v0, :cond_1

    .line 2273
    const-string v2, ""

    return-object v2

    .line 2274
    :cond_1
    if-ltz v0, :cond_3

    .line 2276
    iget v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v2, :cond_2

    .line 2277
    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2278
    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2279
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2280
    .restart local v3    # "tempPos":I
    add-int v4, v3, v0

    iput v4, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 2283
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    .line 2284
    .restart local v2    # "bytes":[B
    const/4 v3, 0x0

    .line 2286
    .restart local v3    # "tempPos":I
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2275
    .end local v2    # "bytes":[B
    .end local v3    # "tempPos":I
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2063
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2065
    return v0

    .line 2068
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2069
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2074
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2072
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2418
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/protobuf/MessageLite$Builder;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "builder"    # Lcom/google/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2320
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2321
    return-void
.end method

.method public resetSizeCounter()V
    .locals 1

    .line 2650
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2651
    return-void
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2091
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2112
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2109
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2110
    return v2

    .line 2107
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 2102
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2103
    nop

    .line 2104
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {v0, v1}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2103
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2105
    return v2

    .line 2099
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2100
    return v2

    .line 2096
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2097
    return v2

    .line 2093
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    .line 2094
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipField(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 4
    .param p1, "tag"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tag",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2118
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2163
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 2157
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2158
    .local v0, "value":I
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2159
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 2160
    return v1

    .line 2153
    .end local v0    # "value":I
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 2142
    :pswitch_2
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2143
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2144
    nop

    .line 2146
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 2145
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    .line 2147
    .local v0, "endtag":I
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2148
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2149
    return v1

    .line 2135
    .end local v0    # "endtag":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2136
    .local v0, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2137
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 2138
    return v1

    .line 2128
    .end local v0    # "value":Lcom/google/protobuf/ByteString;
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2129
    .local v2, "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2130
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 2131
    return v1

    .line 2121
    .end local v2    # "value":J
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2122
    .restart local v2    # "value":J
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2123
    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 2124
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3007
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 3009
    iget v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_0

    .line 3011
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    .line 3013
    :goto_0
    return-void
.end method
