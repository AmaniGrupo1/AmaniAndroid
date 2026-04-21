.class public final Lcom/google/api/Quota;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Quota.java"

# interfaces
.implements Lcom/google/api/QuotaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Quota$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Quota;",
        "Lcom/google/api/Quota$Builder;",
        ">;",
        "Lcom/google/api/QuotaOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Quota;

.field public static final LIMITS_FIELD_NUMBER:I = 0x3

.field public static final METRIC_RULES_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Quota;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private limits_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation
.end field

.field private metricRules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/MetricRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 878
    new-instance v0, Lcom/google/api/Quota;

    invoke-direct {v0}, Lcom/google/api/Quota;-><init>()V

    .line 881
    .local v0, "defaultInstance":Lcom/google/api/Quota;
    sput-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    .line 882
    const-class v1, Lcom/google/api/Quota;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 884
    .end local v0    # "defaultInstance":Lcom/google/api/Quota;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/api/Quota;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 69
    invoke-static {}, Lcom/google/api/Quota;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 70
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Quota;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/QuotaLimit;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Quota;->setLimits(ILcom/google/api/QuotaLimit;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Quota;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Quota;->addAllMetricRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Quota;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Quota;->clearMetricRules()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Quota;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Quota;->removeMetricRules(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # Lcom/google/api/QuotaLimit;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Quota;->addLimits(Lcom/google/api/QuotaLimit;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/QuotaLimit;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Quota;->addLimits(ILcom/google/api/QuotaLimit;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Quota;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Quota;->addAllLimits(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Quota;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;

    .line 62
    invoke-direct {p0}, Lcom/google/api/Quota;->clearLimits()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Quota;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Quota;->removeLimits(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/MetricRule;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Quota;->setMetricRules(ILcom/google/api/MetricRule;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # Lcom/google/api/MetricRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/google/api/Quota;->addMetricRules(Lcom/google/api/MetricRule;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Quota;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/MetricRule;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/api/Quota;->addMetricRules(ILcom/google/api/MetricRule;)V

    return-void
.end method

.method private addAllLimits(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/QuotaLimit;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/QuotaLimit;>;"
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureLimitsIsMutable()V

    .line 184
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 186
    return-void
.end method

.method private addAllMetricRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricRule;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MetricRule;>;"
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureMetricRulesIsMutable()V

    .line 331
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 333
    return-void
.end method

.method private addLimits(ILcom/google/api/QuotaLimit;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/QuotaLimit;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureLimitsIsMutable()V

    .line 172
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 173
    return-void
.end method

.method private addLimits(Lcom/google/api/QuotaLimit;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/QuotaLimit;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureLimitsIsMutable()V

    .line 159
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method private addMetricRules(ILcom/google/api/MetricRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricRule;

    .line 316
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureMetricRulesIsMutable()V

    .line 318
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method private addMetricRules(Lcom/google/api/MetricRule;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/MetricRule;

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureMetricRulesIsMutable()V

    .line 304
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method private clearLimits()V
    .locals 1

    .line 195
    invoke-static {}, Lcom/google/api/Quota;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 196
    return-void
.end method

.method private clearMetricRules()V
    .locals 1

    .line 343
    invoke-static {}, Lcom/google/api/Quota;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 344
    return-void
.end method

.method private ensureLimitsIsMutable()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 130
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/QuotaLimit;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    nop

    .line 132
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 134
    :cond_0
    return-void
.end method

.method private ensureMetricRulesIsMutable()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 273
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/MetricRule;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    nop

    .line 275
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 277
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Quota;
    .locals 1

    .line 887
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 435
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Quota;)Lcom/google/api/Quota$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Quota;

    .line 438
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-virtual {v0, p0}, Lcom/google/api/Quota;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0}, Lcom/google/api/Quota;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0, p1}, Lcom/google/api/Quota;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Quota;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Quota;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 393
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Quota;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Quota;",
            ">;"
        }
    .end annotation

    .line 893
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLimits(I)V
    .locals 1
    .param p1, "index"    # I

    .line 205
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureLimitsIsMutable()V

    .line 206
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method private removeMetricRules(I)V
    .locals 1
    .param p1, "index"    # I

    .line 354
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureMetricRulesIsMutable()V

    .line 355
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method private setLimits(ILcom/google/api/QuotaLimit;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/QuotaLimit;

    .line 145
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureLimitsIsMutable()V

    .line 147
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method private setMetricRules(ILcom/google/api/MetricRule;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricRule;

    .line 289
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-direct {p0}, Lcom/google/api/Quota;->ensureMetricRulesIsMutable()V

    .line 291
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 826
    sget-object v0, Lcom/google/api/Quota$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 871
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 868
    :pswitch_0
    return-object v1

    .line 865
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 850
    :pswitch_2
    sget-object v0, Lcom/google/api/Quota;->PARSER:Lcom/google/protobuf/Parser;

    .line 851
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Quota;>;"
    if-nez v0, :cond_1

    .line 852
    const-class v1, Lcom/google/api/Quota;

    monitor-enter v1

    .line 853
    :try_start_0
    sget-object v2, Lcom/google/api/Quota;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 854
    if-nez v0, :cond_0

    .line 855
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 858
    sput-object v0, Lcom/google/api/Quota;->PARSER:Lcom/google/protobuf/Parser;

    .line 860
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 862
    :cond_1
    :goto_0
    return-object v0

    .line 847
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Quota;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    return-object v0

    .line 834
    :pswitch_4
    const-string v0, "limits_"

    const-class v1, Lcom/google/api/QuotaLimit;

    const-string v2, "metricRules_"

    const-class v3, Lcom/google/api/MetricRule;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 840
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0003\u0004\u0002\u0000\u0002\u0000\u0003\u001b\u0004\u001b"

    .line 843
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Quota;->DEFAULT_INSTANCE:Lcom/google/api/Quota;

    invoke-static {v2, v1, v0}, Lcom/google/api/Quota;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 831
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Quota$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Quota$Builder;-><init>(Lcom/google/api/Quota$1;)V

    return-object v0

    .line 828
    :pswitch_6
    new-instance v0, Lcom/google/api/Quota;

    invoke-direct {v0}, Lcom/google/api/Quota;-><init>()V

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

.method public getLimits(I)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p1, "index"    # I

    .line 115
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public getLimitsCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLimitsOrBuilder(I)Lcom/google/api/QuotaLimitOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 126
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimitOrBuilder;

    return-object v0
.end method

.method public getLimitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/QuotaLimitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/api/Quota;->limits_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMetricRules(I)Lcom/google/api/MetricRule;
    .locals 1
    .param p1, "index"    # I

    .line 257
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricRule;

    return-object v0
.end method

.method public getMetricRulesCount()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMetricRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricRule;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMetricRulesOrBuilder(I)Lcom/google/api/MetricRuleOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 269
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricRuleOrBuilder;

    return-object v0
.end method

.method public getMetricRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/MetricRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/api/Quota;->metricRules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
