.class public final Lcom/google/longrunning/WaitOperationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WaitOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/WaitOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/longrunning/WaitOperationRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/longrunning/WaitOperationRequest;",
        "Lcom/google/longrunning/WaitOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/WaitOperationRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private timeout_:Lcom/google/protobuf/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 477
    new-instance v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-direct {v0}, Lcom/google/longrunning/WaitOperationRequest;-><init>()V

    .line 480
    .local v0, "defaultInstance":Lcom/google/longrunning/WaitOperationRequest;
    sput-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    .line 481
    const-class v1, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 483
    .end local v0    # "defaultInstance":Lcom/google/longrunning/WaitOperationRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->name_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/longrunning/WaitOperationRequest;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/longrunning/WaitOperationRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/WaitOperationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/longrunning/WaitOperationRequest;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/longrunning/WaitOperationRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/WaitOperationRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/longrunning/WaitOperationRequest;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/WaitOperationRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/longrunning/WaitOperationRequest;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/WaitOperationRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/longrunning/WaitOperationRequest;->setTimeout(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/WaitOperationRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/longrunning/WaitOperationRequest;->mergeTimeout(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/longrunning/WaitOperationRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/longrunning/WaitOperationRequest;

    .line 14
    invoke-direct {p0}, Lcom/google/longrunning/WaitOperationRequest;->clearTimeout()V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/google/longrunning/WaitOperationRequest;->getDefaultInstance()Lcom/google/longrunning/WaitOperationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->name_:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private clearTimeout()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    .line 163
    iget v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    .line 164
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/longrunning/WaitOperationRequest;
    .locals 1

    .line 486
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method private mergeTimeout(Lcom/google/protobuf/Duration;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    .line 145
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    .line 147
    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration;

    iput-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    .line 151
    :goto_0
    iget v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    .line 152
    return-void
.end method

.method public static newBuilder()Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 243
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/longrunning/WaitOperationRequest;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/longrunning/WaitOperationRequest;

    .line 246
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0, p0}, Lcom/google/longrunning/WaitOperationRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0}, Lcom/google/longrunning/WaitOperationRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/longrunning/WaitOperationRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/WaitOperationRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            ">;"
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/longrunning/WaitOperationRequest;->name_:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 85
    invoke-static {p1}, Lcom/google/longrunning/WaitOperationRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->name_:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private setTimeout(Lcom/google/protobuf/Duration;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iput-object p1, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    .line 130
    iget v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    .line 131
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 470
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 467
    :pswitch_0
    return-object v1

    .line 464
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 449
    :pswitch_2
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 450
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/longrunning/WaitOperationRequest;>;"
    if-nez v0, :cond_1

    .line 451
    const-class v1, Lcom/google/longrunning/WaitOperationRequest;

    monitor-enter v1

    .line 452
    :try_start_0
    sget-object v2, Lcom/google/longrunning/WaitOperationRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 453
    if-nez v0, :cond_0

    .line 454
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 457
    sput-object v0, Lcom/google/longrunning/WaitOperationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 459
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 461
    :cond_1
    :goto_0
    return-object v0

    .line 446
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/longrunning/WaitOperationRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    return-object v0

    .line 434
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "name_"

    const-string v2, "timeout_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000"

    .line 442
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/longrunning/WaitOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v2, v1, v0}, Lcom/google/longrunning/WaitOperationRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 431
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/longrunning/WaitOperationRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/longrunning/WaitOperationRequest$Builder;-><init>(Lcom/google/longrunning/WaitOperationRequest$1;)V

    return-object v0

    .line 428
    :pswitch_6
    new-instance v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-direct {v0}, Lcom/google/longrunning/WaitOperationRequest;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest;->timeout_:Lcom/google/protobuf/Duration;

    :goto_0
    return-object v0
.end method

.method public hasTimeout()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/google/longrunning/WaitOperationRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
