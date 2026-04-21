.class public final Lcom/google/longrunning/Operation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Operation.java"

# interfaces
.implements Lcom/google/longrunning/OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/longrunning/Operation$ResultCase;,
        Lcom/google/longrunning/Operation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/longrunning/Operation;",
        "Lcom/google/longrunning/Operation$Builder;",
        ">;",
        "Lcom/google/longrunning/OperationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

.field public static final DONE_FIELD_NUMBER:I = 0x3

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final METADATA_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private done_:Z

.field private metadata_:Lcom/google/protobuf/Any;

.field private name_:Ljava/lang/String;

.field private resultCase_:I

.field private result_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1021
    new-instance v0, Lcom/google/longrunning/Operation;

    invoke-direct {v0}, Lcom/google/longrunning/Operation;-><init>()V

    .line 1024
    .local v0, "defaultInstance":Lcom/google/longrunning/Operation;
    sput-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    .line 1025
    const-class v1, Lcom/google/longrunning/Operation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1027
    .end local v0    # "defaultInstance":Lcom/google/longrunning/Operation;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/longrunning/Operation;->name_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/longrunning/Operation;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;

    .line 15
    invoke-direct {p0}, Lcom/google/longrunning/Operation;->clearResult()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/rpc/Status;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->setError(Lcom/google/rpc/Status;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/rpc/Status;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->mergeError(Lcom/google/rpc/Status;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;

    .line 15
    invoke-direct {p0}, Lcom/google/longrunning/Operation;->clearError()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/protobuf/Any;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->setResponse(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/protobuf/Any;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->mergeResponse(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;

    .line 15
    invoke-direct {p0}, Lcom/google/longrunning/Operation;->clearResponse()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/longrunning/Operation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;

    .line 15
    invoke-direct {p0}, Lcom/google/longrunning/Operation;->clearName()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/longrunning/Operation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/protobuf/Any;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->setMetadata(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Lcom/google/protobuf/Any;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->mergeMetadata(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;

    .line 15
    invoke-direct {p0}, Lcom/google/longrunning/Operation;->clearMetadata()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/longrunning/Operation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;
    .param p1, "x1"    # Z

    .line 15
    invoke-direct {p0, p1}, Lcom/google/longrunning/Operation;->setDone(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/longrunning/Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/Operation;

    .line 15
    invoke-direct {p0}, Lcom/google/longrunning/Operation;->clearDone()V

    return-void
.end method

.method private clearDone()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/longrunning/Operation;->done_:Z

    .line 267
    return-void
.end method

.method private clearError()V
    .locals 2

    .line 333
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 337
    :cond_0
    return-void
.end method

.method private clearMetadata()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    .line 222
    iget v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    .line 223
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 125
    invoke-static {}, Lcom/google/longrunning/Operation;->getDefaultInstance()Lcom/google/longrunning/Operation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->name_:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private clearResponse()V
    .locals 2

    .line 438
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 442
    :cond_0
    return-void
.end method

.method private clearResult()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/longrunning/Operation;
    .locals 1

    .line 1030
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method private mergeError(Lcom/google/rpc/Status;)V
    .locals 3
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 317
    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->newBuilder(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p1}, Lcom/google/rpc/Status$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Status$Builder;

    invoke-virtual {v0}, Lcom/google/rpc/Status$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 323
    :goto_0
    iput v1, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 324
    return-void
.end method

.method private mergeMetadata(Lcom/google/protobuf/Any;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    iget-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    .line 203
    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    .line 205
    invoke-static {v0}, Lcom/google/protobuf/Any;->newBuilder(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Any$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    iput-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    .line 209
    :goto_0
    iget v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    .line 210
    return-void
.end method

.method private mergeResponse(Lcom/google/protobuf/Any;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 415
    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Any;

    invoke-static {v0}, Lcom/google/protobuf/Any;->newBuilder(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Any$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Any$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    goto :goto_0

    .line 419
    :cond_0
    iput-object p1, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 421
    :goto_0
    iput v1, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 422
    return-void
.end method

.method public static newBuilder()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 521
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/longrunning/Operation;)Lcom/google/longrunning/Operation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/longrunning/Operation;

    .line 524
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-virtual {v0, p0}, Lcom/google/longrunning/Operation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0}, Lcom/google/longrunning/Operation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0, p1}, Lcom/google/longrunning/Operation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 447
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/Operation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/Operation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    .line 1036
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDone(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/google/longrunning/Operation;->done_:Z

    .line 254
    return-void
.end method

.method private setError(Lcom/google/rpc/Status;)V
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    iput-object p1, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 305
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 306
    return-void
.end method

.method private setMetadata(Lcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    iput-object p1, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    .line 187
    iget v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    .line 188
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 112
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/longrunning/Operation;->name_:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 139
    invoke-static {p1}, Lcom/google/longrunning/Operation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 140
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/Operation;->name_:Ljava/lang/String;

    .line 142
    return-void
.end method

.method private setResponse(Lcom/google/protobuf/Any;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    iput-object p1, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    .line 396
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    .line 397
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/google/longrunning/Operation$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1014
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1011
    :pswitch_0
    return-object v1

    .line 1008
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 993
    :pswitch_2
    sget-object v1, Lcom/google/longrunning/Operation;->PARSER:Lcom/google/protobuf/Parser;

    .line 994
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/longrunning/Operation;>;"
    if-nez v1, :cond_1

    .line 995
    const-class v2, Lcom/google/longrunning/Operation;

    monitor-enter v2

    .line 996
    :try_start_0
    sget-object v0, Lcom/google/longrunning/Operation;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 997
    if-nez v1, :cond_0

    .line 998
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1001
    sput-object v1, Lcom/google/longrunning/Operation;->PARSER:Lcom/google/protobuf/Parser;

    .line 1003
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1005
    :cond_1
    :goto_0
    return-object v1

    .line 990
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/longrunning/Operation;>;"
    :pswitch_3
    sget-object v0, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    return-object v0

    .line 973
    :pswitch_4
    const-string v1, "result_"

    const-string v2, "resultCase_"

    const-string v3, "bitField0_"

    const-string v4, "name_"

    const-string v5, "metadata_"

    const-string v6, "done_"

    const-class v7, Lcom/google/rpc/Status;

    const-class v8, Lcom/google/protobuf/Any;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 983
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u0007\u0004<\u0000\u0005<\u0000"

    .line 986
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/longrunning/Operation;->DEFAULT_INSTANCE:Lcom/google/longrunning/Operation;

    invoke-static {v2, v1, v0}, Lcom/google/longrunning/Operation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 970
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/longrunning/Operation$Builder;

    invoke-direct {v0, v1}, Lcom/google/longrunning/Operation$Builder;-><init>(Lcom/google/longrunning/Operation$1;)V

    return-object v0

    .line 967
    :pswitch_6
    new-instance v0, Lcom/google/longrunning/Operation;

    invoke-direct {v0}, Lcom/google/longrunning/Operation;-><init>()V

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

.method public getDone()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/google/longrunning/Operation;->done_:Z

    return v0
.end method

.method public getError()Lcom/google/rpc/Status;
    .locals 2

    .line 290
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/rpc/Status;

    return-object v0

    .line 293
    :cond_0
    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/protobuf/Any;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/longrunning/Operation;->metadata_:Lcom/google/protobuf/Any;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/longrunning/Operation;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/longrunning/Operation;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/Any;
    .locals 2

    .line 374
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/longrunning/Operation;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Any;

    return-object v0

    .line 377
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getResultCase()Lcom/google/longrunning/Operation$ResultCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    invoke-static {v0}, Lcom/google/longrunning/Operation$ResultCase;->forNumber(I)Lcom/google/longrunning/Operation$ResultCase;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .line 279
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/longrunning/Operation;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasResponse()Z
    .locals 2

    .line 356
    iget v0, p0, Lcom/google/longrunning/Operation;->resultCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
