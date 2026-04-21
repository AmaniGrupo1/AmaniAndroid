.class public final Lcom/google/api/Page;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Page.java"

# interfaces
.implements Lcom/google/api/PageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Page$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Page;",
        "Lcom/google/api/Page$Builder;",
        ">;",
        "Lcom/google/api/PageOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Page;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBPAGES_FIELD_NUMBER:I = 0x3


# instance fields
.field private content_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private subpages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 909
    new-instance v0, Lcom/google/api/Page;

    invoke-direct {v0}, Lcom/google/api/Page;-><init>()V

    .line 912
    .local v0, "defaultInstance":Lcom/google/api/Page;
    sput-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    .line 913
    const-class v1, Lcom/google/api/Page;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 915
    .end local v0    # "defaultInstance":Lcom/google/api/Page;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Page;->name_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/api/Page;->content_:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/google/api/Page;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Page;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Page;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Page;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->addAllSubpages(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;

    .line 15
    invoke-direct {p0}, Lcom/google/api/Page;->clearSubpages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Page;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->removeSubpages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;

    .line 15
    invoke-direct {p0}, Lcom/google/api/Page;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Page;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Page;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;

    .line 15
    invoke-direct {p0}, Lcom/google/api/Page;->clearContent()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Page;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->setContentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Page;ILcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Page;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/Page;->setSubpages(ILcom/google/api/Page;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Page;Lcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # Lcom/google/api/Page;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/Page;->addSubpages(Lcom/google/api/Page;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Page;ILcom/google/api/Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Page;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Page;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/api/Page;->addSubpages(ILcom/google/api/Page;)V

    return-void
.end method

.method private addAllSubpages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Page;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Page;>;"
    invoke-direct {p0}, Lcom/google/api/Page;->ensureSubpagesIsMutable()V

    .line 351
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 353
    return-void
.end method

.method private addSubpages(ILcom/google/api/Page;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 336
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    invoke-direct {p0}, Lcom/google/api/Page;->ensureSubpagesIsMutable()V

    .line 338
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 339
    return-void
.end method

.method private addSubpages(Lcom/google/api/Page;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Page;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    invoke-direct {p0}, Lcom/google/api/Page;->ensureSubpagesIsMutable()V

    .line 324
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method private clearContent()V
    .locals 1

    .line 211
    invoke-static {}, Lcom/google/api/Page;->getDefaultInstance()Lcom/google/api/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Page;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Page;->content_:Ljava/lang/String;

    .line 212
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 127
    invoke-static {}, Lcom/google/api/Page;->getDefaultInstance()Lcom/google/api/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Page;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Page;->name_:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private clearSubpages()V
    .locals 1

    .line 363
    invoke-static {}, Lcom/google/api/Page;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 364
    return-void
.end method

.method private ensureSubpagesIsMutable()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 293
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Page;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    nop

    .line 295
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 297
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Page;
    .locals 1

    .line 918
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Page$Builder;
    .locals 1

    .line 455
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Page;

    .line 458
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-virtual {v0, p0}, Lcom/google/api/Page;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Page;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0}, Lcom/google/api/Page;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Page;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0, p1}, Lcom/google/api/Page;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Page;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Page;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Page;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Page;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Page;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Page;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Page;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Page;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Page;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Page;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 924
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSubpages(I)V
    .locals 1
    .param p1, "index"    # I

    .line 374
    invoke-direct {p0}, Lcom/google/api/Page;->ensureSubpagesIsMutable()V

    .line 375
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method private setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/Page;->content_:Ljava/lang/String;

    .line 200
    return-void
.end method

.method private setContentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 224
    invoke-static {p1}, Lcom/google/api/Page;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Page;->content_:Ljava/lang/String;

    .line 227
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/Page;->name_:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 152
    invoke-static {p1}, Lcom/google/api/Page;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 153
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Page;->name_:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private setSubpages(ILcom/google/api/Page;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 309
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    invoke-direct {p0}, Lcom/google/api/Page;->ensureSubpagesIsMutable()V

    .line 311
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/google/api/Page$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 899
    :pswitch_0
    return-object v1

    .line 896
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 881
    :pswitch_2
    sget-object v0, Lcom/google/api/Page;->PARSER:Lcom/google/protobuf/Parser;

    .line 882
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Page;>;"
    if-nez v0, :cond_1

    .line 883
    const-class v1, Lcom/google/api/Page;

    monitor-enter v1

    .line 884
    :try_start_0
    sget-object v2, Lcom/google/api/Page;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 885
    if-nez v0, :cond_0

    .line 886
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 889
    sput-object v0, Lcom/google/api/Page;->PARSER:Lcom/google/protobuf/Parser;

    .line 891
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 893
    :cond_1
    :goto_0
    return-object v0

    .line 878
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Page;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    return-object v0

    .line 865
    :pswitch_4
    const-string/jumbo v0, "name_"

    const-string v1, "content_"

    const-string/jumbo v2, "subpages_"

    const-class v3, Lcom/google/api/Page;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 871
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u001b"

    .line 874
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Page;->DEFAULT_INSTANCE:Lcom/google/api/Page;

    invoke-static {v2, v1, v0}, Lcom/google/api/Page;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 862
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Page$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Page$Builder;-><init>(Lcom/google/api/Page$1;)V

    return-object v0

    .line 859
    :pswitch_6
    new-instance v0, Lcom/google/api/Page;

    invoke-direct {v0}, Lcom/google/api/Page;-><init>()V

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

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/api/Page;->content_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/api/Page;->content_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/api/Page;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/Page;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubpages(I)Lcom/google/api/Page;
    .locals 1
    .param p1, "index"    # I

    .line 277
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Page;

    return-object v0
.end method

.method public getSubpagesCount()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSubpagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSubpagesOrBuilder(I)Lcom/google/api/PageOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/PageOrBuilder;

    return-object v0
.end method

.method public getSubpagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/PageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/api/Page;->subpages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
