.class public final Lcom/google/firestore/v1/RunQueryResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RunQueryResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/RunQueryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/RunQueryResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/RunQueryResponse;",
        "Lcom/google/firestore/v1/RunQueryResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunQueryResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x3

.field public static final SKIPPED_RESULTS_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private document_:Lcom/google/firestore/v1/Document;

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private skippedResults_:I

.field private transaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 713
    new-instance v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/RunQueryResponse;-><init>()V

    .line 716
    .local v0, "defaultInstance":Lcom/google/firestore/v1/RunQueryResponse;
    sput-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    .line 717
    const-class v1, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 719
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/RunQueryResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryResponse;->clearSkippedResults()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryResponse;->clearTransaction()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->mergeDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryResponse;->clearDocument()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryResponse;->clearReadTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/RunQueryResponse;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RunQueryResponse;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->setSkippedResults(I)V

    return-void
.end method

.method private clearDocument()V
    .locals 1

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    .line 138
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    .line 139
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 234
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    .line 235
    return-void
.end method

.method private clearSkippedResults()V
    .locals 1

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->skippedResults_:I

    .line 276
    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 73
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1

    .line 722
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method private mergeDocument(Lcom/google/firestore/v1/Document;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    .line 122
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    .line 124
    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    iput-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    goto :goto_0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    .line 128
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    .line 129
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 212
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 214
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 218
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    .line 219
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 355
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/RunQueryResponse;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 358
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/RunQueryResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/RunQueryResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation

    .line 728
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    iput-object p1, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    .line 109
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    .line 110
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    iput-object p1, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 193
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    .line 194
    return-void
.end method

.method private setSkippedResults(I)V
    .locals 0
    .param p1, "value"    # I

    .line 263
    iput p1, p0, Lcom/google/firestore/v1/RunQueryResponse;->skippedResults_:I

    .line 264
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/RunQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 58
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 706
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 703
    :pswitch_0
    return-object v1

    .line 700
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 685
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 686
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/RunQueryResponse;>;"
    if-nez v0, :cond_1

    .line 687
    const-class v1, Lcom/google/firestore/v1/RunQueryResponse;

    monitor-enter v1

    .line 688
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/RunQueryResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 689
    if-nez v0, :cond_0

    .line 690
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 693
    sput-object v0, Lcom/google/firestore/v1/RunQueryResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 695
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 697
    :cond_1
    :goto_0
    return-object v0

    .line 682
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/RunQueryResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0

    .line 668
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "document_"

    const-string v2, "transaction_"

    const-string v3, "readTime_"

    const-string v4, "skippedResults_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 675
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\n\u0003\u1009\u0001\u0004\u0004"

    .line 678
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/RunQueryResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/RunQueryResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 665
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/RunQueryResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/RunQueryResponse$Builder;-><init>(Lcom/google/firestore/v1/RunQueryResponse$1;)V

    return-object v0

    .line 662
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/RunQueryResponse;-><init>()V

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

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->document_:Lcom/google/firestore/v1/Document;

    :goto_0
    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-object v0
.end method

.method public getSkippedResults()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->skippedResults_:I

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasDocument()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasReadTime()Z
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/firestore/v1/RunQueryResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
