.class public final Lcom/google/firestore/v1/BeginTransactionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BeginTransactionRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/BeginTransactionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/BeginTransactionRequest;",
        "Lcom/google/firestore/v1/BeginTransactionRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BeginTransactionRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

.field public static final OPTIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BeginTransactionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private database_:Ljava/lang/String;

.field private options_:Lcom/google/firestore/v1/TransactionOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 478
    new-instance v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;-><init>()V

    .line 481
    .local v0, "defaultInstance":Lcom/google/firestore/v1/BeginTransactionRequest;
    sput-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 482
    const-class v1, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 484
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/BeginTransactionRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->database_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/BeginTransactionRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/BeginTransactionRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BeginTransactionRequest;->clearDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->setDatabaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->setOptions(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->mergeOptions(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/BeginTransactionRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/BeginTransactionRequest;->clearOptions()V

    return-void
.end method

.method private clearDatabase()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionRequest;->getDefaultInstance()Lcom/google/firestore/v1/BeginTransactionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->database_:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    .line 164
    iget v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    .line 165
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1

    .line 487
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    .line 147
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    .line 149
    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->newBuilder(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/TransactionOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    iput-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    goto :goto_0

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    .line 153
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    .line 154
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1

    .line 244
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/BeginTransactionRequest;)Lcom/google/firestore/v1/BeginTransactionRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 247
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/BeginTransactionRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/BeginTransactionRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BeginTransactionRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BeginTransactionRequest;",
            ">;"
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->database_:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private setDatabaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 91
    invoke-static {p1}, Lcom/google/firestore/v1/BeginTransactionRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->database_:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private setOptions(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iput-object p1, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    .line 133
    iget v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    .line 134
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 468
    :pswitch_0
    return-object v1

    .line 465
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 450
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 451
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BeginTransactionRequest;>;"
    if-nez v0, :cond_1

    .line 452
    const-class v1, Lcom/google/firestore/v1/BeginTransactionRequest;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/BeginTransactionRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 454
    if-nez v0, :cond_0

    .line 455
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 458
    sput-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 460
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 462
    :cond_1
    :goto_0
    return-object v0

    .line 447
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BeginTransactionRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    return-object v0

    .line 435
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "database_"

    const-string v2, "options_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 440
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000"

    .line 443
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/BeginTransactionRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/BeginTransactionRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 432
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/BeginTransactionRequest$Builder;-><init>(Lcom/google/firestore/v1/BeginTransactionRequest$1;)V

    return-object v0

    .line 429
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/BeginTransactionRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/BeginTransactionRequest;-><init>()V

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

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->database_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->options_:Lcom/google/firestore/v1/TransactionOptions;

    :goto_0
    return-object v0
.end method

.method public hasOptions()Z
    .locals 2

    .line 108
    iget v0, p0, Lcom/google/firestore/v1/BeginTransactionRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
