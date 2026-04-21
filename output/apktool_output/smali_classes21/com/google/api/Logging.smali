.class public final Lcom/google/api/Logging;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Logging.java"

# interfaces
.implements Lcom/google/api/LoggingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Logging$LoggingDestination;,
        Lcom/google/api/Logging$LoggingDestinationOrBuilder;,
        Lcom/google/api/Logging$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Logging;",
        "Lcom/google/api/Logging$Builder;",
        ">;",
        "Lcom/google/api/LoggingOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONSUMER_DESTINATIONS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Logging;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Logging;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_DESTINATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation
.end field

.field private producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1684
    new-instance v0, Lcom/google/api/Logging;

    invoke-direct {v0}, Lcom/google/api/Logging;-><init>()V

    .line 1687
    .local v0, "defaultInstance":Lcom/google/api/Logging;
    sput-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    .line 1688
    const-class v1, Lcom/google/api/Logging;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1690
    .end local v0    # "defaultInstance":Lcom/google/api/Logging;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 49
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 50
    return-void
.end method

.method static synthetic access$1000()Lcom/google/api/Logging;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Logging$LoggingDestination;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # Lcom/google/api/Logging$LoggingDestination;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Logging$LoggingDestination;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Logging;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addAllProducerDestinations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/Logging;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;

    .line 42
    invoke-direct {p0}, Lcom/google/api/Logging;->clearProducerDestinations()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/Logging;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->removeProducerDestinations(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Logging$LoggingDestination;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # Lcom/google/api/Logging$LoggingDestination;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Logging$LoggingDestination;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/Logging;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addAllConsumerDestinations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/Logging;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;

    .line 42
    invoke-direct {p0}, Lcom/google/api/Logging;->clearConsumerDestinations()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/Logging;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Logging;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->removeConsumerDestinations(I)V

    return-void
.end method

.method private addAllConsumerDestinations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)V"
        }
    .end annotation

    .line 1092
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Logging$LoggingDestination;>;"
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1093
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1095
    return-void
.end method

.method private addAllProducerDestinations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)V"
        }
    .end annotation

    .line 921
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Logging$LoggingDestination;>;"
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 922
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 924
    return-void
.end method

.method private addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1076
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1078
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1079
    return-void
.end method

.method private addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1062
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1063
    return-void
.end method

.method private addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 905
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 907
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 908
    return-void
.end method

.method private addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 889
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 891
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method private clearConsumerDestinations()V
    .locals 1

    .line 1107
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1108
    return-void
.end method

.method private clearProducerDestinations()V
    .locals 1

    .line 936
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 937
    return-void
.end method

.method private ensureConsumerDestinationsIsMutable()V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1027
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Logging$LoggingDestination;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    nop

    .line 1029
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1031
    :cond_0
    return-void
.end method

.method private ensureProducerDestinationsIsMutable()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 856
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Logging$LoggingDestination;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    nop

    .line 858
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 860
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Logging;
    .locals 1

    .line 1693
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1201
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Logging;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Logging;

    .line 1204
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-virtual {v0, p0}, Lcom/google/api/Logging;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/api/Logging;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/api/Logging;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1140
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1147
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1196
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1127
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1134
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Logging;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1152
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1159
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Logging;",
            ">;"
        }
    .end annotation

    .line 1699
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeConsumerDestinations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1120
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1121
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1122
    return-void
.end method

.method private removeProducerDestinations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 949
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 950
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 951
    return-void
.end method

.method private setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1045
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1047
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1048
    return-void
.end method

.method private setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 874
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 876
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 877
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1632
    sget-object v0, Lcom/google/api/Logging$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1677
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1674
    :pswitch_0
    return-object v1

    .line 1671
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1656
    :pswitch_2
    sget-object v0, Lcom/google/api/Logging;->PARSER:Lcom/google/protobuf/Parser;

    .line 1657
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Logging;>;"
    if-nez v0, :cond_1

    .line 1658
    const-class v1, Lcom/google/api/Logging;

    monitor-enter v1

    .line 1659
    :try_start_0
    sget-object v2, Lcom/google/api/Logging;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1660
    if-nez v0, :cond_0

    .line 1661
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1664
    sput-object v0, Lcom/google/api/Logging;->PARSER:Lcom/google/protobuf/Parser;

    .line 1666
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1668
    :cond_1
    :goto_0
    return-object v0

    .line 1653
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Logging;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    return-object v0

    .line 1640
    :pswitch_4
    const-string/jumbo v0, "producerDestinations_"

    const-class v1, Lcom/google/api/Logging$LoggingDestination;

    const-string v2, "consumerDestinations_"

    const-class v3, Lcom/google/api/Logging$LoggingDestination;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1646
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    .line 1649
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v2, v1, v0}, Lcom/google/api/Logging;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1637
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Logging$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Logging$Builder;-><init>(Lcom/google/api/Logging$1;)V

    return-object v0

    .line 1634
    :pswitch_6
    new-instance v0, Lcom/google/api/Logging;

    invoke-direct {v0}, Lcom/google/api/Logging;-><init>()V

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

.method public getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .param p1, "index"    # I

    .line 1009
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$LoggingDestination;

    return-object v0
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getConsumerDestinationsOrBuilder(I)Lcom/google/api/Logging$LoggingDestinationOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1023
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$LoggingDestinationOrBuilder;

    return-object v0
.end method

.method public getConsumerDestinationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Logging$LoggingDestinationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .param p1, "index"    # I

    .line 838
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$LoggingDestination;

    return-object v0
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProducerDestinationsOrBuilder(I)Lcom/google/api/Logging$LoggingDestinationOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 852
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$LoggingDestinationOrBuilder;

    return-object v0
.end method

.method public getProducerDestinationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Logging$LoggingDestinationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
