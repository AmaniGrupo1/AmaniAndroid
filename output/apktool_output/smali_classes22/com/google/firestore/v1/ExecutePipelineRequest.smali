.class public final Lcom/google/firestore/v1/ExecutePipelineRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExecutePipelineRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ExecutePipelineRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;,
        Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;,
        Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ExecutePipelineRequest;",
        "Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ExecutePipelineRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

.field public static final NEW_TRANSACTION_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExecutePipelineRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x7

.field public static final STRUCTURED_PIPELINE_FIELD_NUMBER:I = 0x2

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x5


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private database_:Ljava/lang/String;

.field private pipelineTypeCase_:I

.field private pipelineType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1058
    new-instance v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;-><init>()V

    .line 1061
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ExecutePipelineRequest;
    sput-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 1062
    const-class v1, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1064
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ExecutePipelineRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    .line 63
    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->database_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearPipelineType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearTransaction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearNewTransaction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ExecutePipelineRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearDatabase()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->setDatabaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->mergeStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ExecutePipelineRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->clearStructuredPipeline()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ExecutePipelineRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ExecutePipelineRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method private clearDatabase()V
    .locals 1

    .line 158
    invoke-static {}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getDefaultInstance()Lcom/google/firestore/v1/ExecutePipelineRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->database_:Ljava/lang/String;

    .line 159
    return-void
.end method

.method private clearNewTransaction()V
    .locals 2

    .line 387
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 391
    :cond_0
    return-void
.end method

.method private clearPipelineType()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 477
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 481
    :cond_0
    return-void
.end method

.method private clearStructuredPipeline()V
    .locals 2

    .line 239
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    .line 243
    :cond_0
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 302
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 306
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1

    .line 1067
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method private mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 368
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->newBuilder(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/TransactionOptions$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 374
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 375
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 457
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 461
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 463
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 464
    return-void
.end method

.method private mergeStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->getDefaultInstance()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->newBuilder(Lcom/google/firestore/v1/StructuredPipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    .line 229
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    .line 230
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1

    .line 560
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ExecutePipelineRequest;)Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ExecutePipelineRequest;

    .line 563
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ExecutePipelineRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ExecutePipelineRequest;",
            ">;"
        }
    .end annotation

    .line 1073
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->database_:Ljava/lang/String;

    .line 148
    return-void
.end method

.method private setDatabaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 170
    invoke-static {p1}, Lcom/google/firestore/v1/ExecutePipelineRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 171
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->database_:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 353
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 354
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 441
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 442
    return-void
.end method

.method private setStructuredPipeline(Lcom/google/firestore/v1/StructuredPipeline;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredPipeline;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    .line 211
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    .line 212
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    .line 290
    iput-object p1, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    .line 291
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1051
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1048
    :pswitch_0
    return-object v1

    .line 1045
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1030
    :pswitch_2
    sget-object v1, Lcom/google/firestore/v1/ExecutePipelineRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1031
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ExecutePipelineRequest;>;"
    if-nez v1, :cond_1

    .line 1032
    const-class v2, Lcom/google/firestore/v1/ExecutePipelineRequest;

    monitor-enter v2

    .line 1033
    :try_start_0
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1034
    if-nez v1, :cond_0

    .line 1035
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1038
    sput-object v1, Lcom/google/firestore/v1/ExecutePipelineRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1040
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1042
    :cond_1
    :goto_0
    return-object v1

    .line 1027
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ExecutePipelineRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    return-object v0

    .line 1010
    :pswitch_4
    const-string v1, "pipelineType_"

    const-string v2, "pipelineTypeCase_"

    const-string v3, "consistencySelector_"

    const-string v4, "consistencySelectorCase_"

    const-string v5, "database_"

    const-class v6, Lcom/google/firestore/v1/StructuredPipeline;

    const-class v7, Lcom/google/firestore/v1/TransactionOptions;

    const-class v8, Lcom/google/protobuf/Timestamp;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 1020
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0002\u0000\u0001\u0007\u0005\u0000\u0000\u0000\u0001\u0208\u0002<\u0000\u0005=\u0001\u0006<\u0001\u0007<\u0001"

    .line 1023
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ExecutePipelineRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1007
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ExecutePipelineRequest$Builder;-><init>(Lcom/google/firestore/v1/ExecutePipelineRequest$1;)V

    return-object v0

    .line 1004
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ExecutePipelineRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest;-><init>()V

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

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/ExecutePipelineRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->database_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 2

    .line 335
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineTypeCase()Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;->forNumber(I)Lcom/google/firestore/v1/ExecutePipelineRequest$PipelineTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 422
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 425
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredPipeline()Lcom/google/firestore/v1/StructuredPipeline;
    .locals 2

    .line 196
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    return-object v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->getDefaultInstance()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 272
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 275
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 2

    .line 321
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 407
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStructuredPipeline()Z
    .locals 2

    .line 185
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->pipelineTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 2

    .line 258
    iget v0, p0, Lcom/google/firestore/v1/ExecutePipelineRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
