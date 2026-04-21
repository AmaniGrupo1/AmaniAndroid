.class public abstract Lcom/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/AbstractMessageLite$Builder;,
        Lcom/google/protobuf/AbstractMessageLite$InternalOneOfEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/MessageLite;"
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 120
    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    invoke-static {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 124
    return-void
.end method

.method protected static checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p0, "byteString"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte string is not UTF-8."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method


# virtual methods
.method getMemoizedSerializedSize()I
    .locals 1

    .line 79
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getSerializedSize(Lcom/google/protobuf/Schema;)I
    .locals 2
    .param p1, "schema"    # Lcom/google/protobuf/Schema;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schema"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    .line 89
    .local v0, "memoizedSerializedSize":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-interface {p1, p0}, Lcom/google/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessageLite;->setMemoizedSerializedSize(I)V

    .line 93
    :cond_0
    return v0
.end method

.method newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;
    .locals 1

    .line 98
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method setMemoizedSerializedSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 46
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 47
    .local v0, "result":[B
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 48
    .local v1, "output":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 49
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 51
    .end local v0    # "result":[B
    .end local v1    # "output":Lcom/google/protobuf/CodedOutputStream;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 35
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 36
    .local v0, "out":Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 38
    .end local v0    # "out":Lcom/google/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 67
    .local v0, "serialized":I
    nop

    .line 69
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 68
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 70
    .local v1, "bufferSize":I
    invoke-static {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    .line 71
    .local v2, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 73
    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 74
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/protobuf/AbstractMessageLite;, "Lcom/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 59
    .local v0, "bufferSize":I
    invoke-static {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 60
    .local v1, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 61
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 62
    return-void
.end method
