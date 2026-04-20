.class public final Lcom/google/rpc/DebugInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DebugInfo.java"

# interfaces
.implements Lcom/google/rpc/DebugInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/DebugInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/DebugInfo;",
        "Lcom/google/rpc/DebugInfo$Builder;",
        ">;",
        "Lcom/google/rpc/DebugInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

.field public static final DETAIL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_ENTRIES_FIELD_NUMBER:I = 0x1


# instance fields
.field private detail_:Ljava/lang/String;

.field private stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 574
    new-instance v0, Lcom/google/rpc/DebugInfo;

    invoke-direct {v0}, Lcom/google/rpc/DebugInfo;-><init>()V

    .line 577
    .local v0, "defaultInstance":Lcom/google/rpc/DebugInfo;
    sput-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    .line 578
    const-class v1, Lcom/google/rpc/DebugInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 580
    .end local v0    # "defaultInstance":Lcom/google/rpc/DebugInfo;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/DebugInfo;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/DebugInfo;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/DebugInfo;->setStackEntries(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/DebugInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->addStackEntries(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/DebugInfo;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->addAllStackEntries(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/DebugInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;

    .line 14
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->clearStackEntries()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/DebugInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->addStackEntriesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/DebugInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->setDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/rpc/DebugInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;

    .line 14
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->clearDetail()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/rpc/DebugInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/DebugInfo;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/rpc/DebugInfo;->setDetailBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllStackEntries(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 124
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 126
    return-void
.end method

.method private addStackEntries(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 110
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 111
    iget-object v1, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private addStackEntriesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 147
    invoke-static {p1}, Lcom/google/rpc/DebugInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 148
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 149
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method private clearDetail()V
    .locals 1

    .line 202
    invoke-static {}, Lcom/google/rpc/DebugInfo;->getDefaultInstance()Lcom/google/rpc/DebugInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    .line 203
    return-void
.end method

.method private clearStackEntries()V
    .locals 1

    .line 135
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 136
    return-void
.end method

.method private ensureStackEntriesIsMutable()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 79
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    nop

    .line 81
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 83
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/DebugInfo;
    .locals 1

    .line 583
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 296
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/DebugInfo;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/DebugInfo;

    .line 299
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0, p0}, Lcom/google/rpc/DebugInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/rpc/DebugInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/DebugInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/DebugInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/DebugInfo;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/DebugInfo;",
            ">;"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDetail(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    .line 192
    return-void
.end method

.method private setDetailBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 214
    invoke-static {p1}, Lcom/google/rpc/DebugInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 215
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    .line 217
    return-void
.end method

.method private setStackEntries(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo;->ensureStackEntriesIsMutable()V

    .line 97
    iget-object v1, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/google/rpc/DebugInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 564
    :pswitch_0
    return-object v1

    .line 561
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 546
    :pswitch_2
    sget-object v0, Lcom/google/rpc/DebugInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 547
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/DebugInfo;>;"
    if-nez v0, :cond_1

    .line 548
    const-class v1, Lcom/google/rpc/DebugInfo;

    monitor-enter v1

    .line 549
    :try_start_0
    sget-object v2, Lcom/google/rpc/DebugInfo;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 550
    if-nez v0, :cond_0

    .line 551
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 554
    sput-object v0, Lcom/google/rpc/DebugInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 556
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 558
    :cond_1
    :goto_0
    return-object v0

    .line 543
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/DebugInfo;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    return-object v0

    .line 532
    :pswitch_4
    const-string v0, "stackEntries_"

    const-string v1, "detail_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 536
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u021a\u0002\u0208"

    .line 539
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/DebugInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/DebugInfo;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/DebugInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 529
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/DebugInfo$Builder;

    invoke-direct {v0, v1}, Lcom/google/rpc/DebugInfo$Builder;-><init>(Lcom/google/rpc/DebugInfo$1;)V

    return-object v0

    .line 526
    :pswitch_6
    new-instance v0, Lcom/google/rpc/DebugInfo;

    invoke-direct {v0}, Lcom/google/rpc/DebugInfo;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->detail_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStackEntries(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 60
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStackEntriesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 74
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 75
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStackEntriesCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getStackEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/rpc/DebugInfo;->stackEntries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
