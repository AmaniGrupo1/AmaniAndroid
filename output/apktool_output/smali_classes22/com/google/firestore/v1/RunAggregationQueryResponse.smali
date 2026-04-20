.class public final Lcom/google/firestore/v1/RunAggregationQueryResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RunAggregationQueryResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
        "Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x3

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private result_:Lcom/google/firestore/v1/AggregationResult;

.field private transaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 655
    new-instance v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;-><init>()V

    .line 658
    .local v0, "defaultInstance":Lcom/google/firestore/v1/RunAggregationQueryResponse;
    sput-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    .line 659
    const-class v1, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 661
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/RunAggregationQueryResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/AggregationResult;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->setResult(Lcom/google/firestore/v1/AggregationResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/AggregationResult;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->mergeResult(Lcom/google/firestore/v1/AggregationResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->clearResult()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->clearTransaction()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->clearReadTime()V

    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 246
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    .line 247
    return-void
.end method

.method private clearResult()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    .line 97
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    .line 98
    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 146
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1

    .line 664
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 223
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 225
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 229
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    .line 230
    return-void
.end method

.method private mergeResult(Lcom/google/firestore/v1/AggregationResult;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/AggregationResult;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    .line 79
    invoke-static {}, Lcom/google/firestore/v1/AggregationResult;->getDefaultInstance()Lcom/google/firestore/v1/AggregationResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    .line 81
    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->newBuilder(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/AggregationResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/AggregationResult$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    iput-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    goto :goto_0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    .line 85
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    .line 86
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 326
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/RunAggregationQueryResponse;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/RunAggregationQueryResponse;

    .line 329
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunAggregationQueryResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation

    .line 670
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 203
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    .line 204
    return-void
.end method

.method private setResult(Lcom/google/firestore/v1/AggregationResult;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/AggregationResult;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    .line 64
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    .line 65
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 131
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 132
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 645
    :pswitch_0
    return-object v1

    .line 642
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 627
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 628
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/RunAggregationQueryResponse;>;"
    if-nez v0, :cond_1

    .line 629
    const-class v1, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    monitor-enter v1

    .line 630
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/RunAggregationQueryResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 631
    if-nez v0, :cond_0

    .line 632
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 635
    sput-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 637
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 639
    :cond_1
    :goto_0
    return-object v0

    .line 624
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/RunAggregationQueryResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    return-object v0

    .line 611
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "result_"

    const-string v2, "transaction_"

    const-string v3, "readTime_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 617
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\n\u0003\u1009\u0001"

    .line 620
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/RunAggregationQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 608
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;-><init>(Lcom/google/firestore/v1/RunAggregationQueryResponse$1;)V

    return-object v0

    .line 605
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;-><init>()V

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

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-object v0
.end method

.method public getResult()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/AggregationResult;->getDefaultInstance()Lcom/google/firestore/v1/AggregationResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->result_:Lcom/google/firestore/v1/AggregationResult;

    :goto_0
    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 166
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResult()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
