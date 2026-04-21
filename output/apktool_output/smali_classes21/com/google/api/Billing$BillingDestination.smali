.class public final Lcom/google/api/Billing$BillingDestination;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Billing.java"

# interfaces
.implements Lcom/google/api/Billing$BillingDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Billing$BillingDestination$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Billing$BillingDestination;",
        "Lcom/google/api/Billing$BillingDestination$Builder;",
        ">;",
        "Lcom/google/api/Billing$BillingDestinationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

.field public static final METRICS_FIELD_NUMBER:I = 0x2

.field public static final MONITORED_RESOURCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Billing$BillingDestination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private metrics_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monitoredResource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 710
    new-instance v0, Lcom/google/api/Billing$BillingDestination;

    invoke-direct {v0}, Lcom/google/api/Billing$BillingDestination;-><init>()V

    .line 713
    .local v0, "defaultInstance":Lcom/google/api/Billing$BillingDestination;
    sput-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    .line 714
    const-class v1, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 716
    .end local v0    # "defaultInstance":Lcom/google/api/Billing$BillingDestination;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Billing$BillingDestination;->monitoredResource_:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 129
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Billing$BillingDestination;
    .locals 1

    .line 121
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Billing$BillingDestination;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/Billing$BillingDestination;->setMonitoredResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Billing$BillingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;

    .line 121
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination;->clearMonitoredResource()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Billing$BillingDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/Billing$BillingDestination;->setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Billing$BillingDestination;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/google/api/Billing$BillingDestination;->setMetrics(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Billing$BillingDestination;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/Billing$BillingDestination;->addMetrics(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Billing$BillingDestination;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/Billing$BillingDestination;->addAllMetrics(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Billing$BillingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;

    .line 121
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination;->clearMetrics()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Billing$BillingDestination;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Billing$BillingDestination;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/Billing$BillingDestination;->addMetricsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllMetrics(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination;->ensureMetricsIsMutable()V

    .line 310
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 312
    return-void
.end method

.method private addMetrics(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 295
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination;->ensureMetricsIsMutable()V

    .line 296
    iget-object v1, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private addMetricsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 335
    invoke-static {p1}, Lcom/google/api/Billing$BillingDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 336
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination;->ensureMetricsIsMutable()V

    .line 337
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method private clearMetrics()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 323
    return-void
.end method

.method private clearMonitoredResource()V
    .locals 1

    .line 184
    invoke-static {}, Lcom/google/api/Billing$BillingDestination;->getDefaultInstance()Lcom/google/api/Billing$BillingDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Billing$BillingDestination;->monitoredResource_:Ljava/lang/String;

    .line 185
    return-void
.end method

.method private ensureMetricsIsMutable()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 262
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    nop

    .line 264
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 266
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Billing$BillingDestination;
    .locals 1

    .line 719
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Billing$BillingDestination;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Billing$BillingDestination;

    .line 420
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0, p0}, Lcom/google/api/Billing$BillingDestination;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0}, Lcom/google/api/Billing$BillingDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/api/Billing$BillingDestination;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Billing$BillingDestination;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Billing$BillingDestination;",
            ">;"
        }
    .end annotation

    .line 725
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMetrics(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination;->ensureMetricsIsMutable()V

    .line 281
    iget-object v1, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method private setMonitoredResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 172
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/Billing$BillingDestination;->monitoredResource_:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 197
    invoke-static {p1}, Lcom/google/api/Billing$BillingDestination;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 198
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Billing$BillingDestination;->monitoredResource_:Ljava/lang/String;

    .line 200
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/google/api/Billing$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 703
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 700
    :pswitch_0
    return-object v1

    .line 697
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 682
    :pswitch_2
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 683
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Billing$BillingDestination;>;"
    if-nez v0, :cond_1

    .line 684
    const-class v1, Lcom/google/api/Billing$BillingDestination;

    monitor-enter v1

    .line 685
    :try_start_0
    sget-object v2, Lcom/google/api/Billing$BillingDestination;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 686
    if-nez v0, :cond_0

    .line 687
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 690
    sput-object v0, Lcom/google/api/Billing$BillingDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 692
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 694
    :cond_1
    :goto_0
    return-object v0

    .line 679
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Billing$BillingDestination;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    return-object v0

    .line 668
    :pswitch_4
    const-string/jumbo v0, "monitoredResource_"

    const-string v1, "metrics_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 672
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u021a"

    .line 675
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Billing$BillingDestination;->DEFAULT_INSTANCE:Lcom/google/api/Billing$BillingDestination;

    invoke-static {v2, v1, v0}, Lcom/google/api/Billing$BillingDestination;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 665
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Billing$BillingDestination$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Billing$BillingDestination$Builder;-><init>(Lcom/google/api/Billing$1;)V

    return-object v0

    .line 662
    :pswitch_6
    new-instance v0, Lcom/google/api/Billing$BillingDestination;

    invoke-direct {v0}, Lcom/google/api/Billing$BillingDestination;-><init>()V

    return-object v0

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

.method public getMetrics(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 242
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 257
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 258
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->monitoredResource_:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination;->monitoredResource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
