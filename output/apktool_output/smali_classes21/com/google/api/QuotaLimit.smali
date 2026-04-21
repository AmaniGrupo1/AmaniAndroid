.class public final Lcom/google/api/QuotaLimit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "QuotaLimit.java"

# interfaces
.implements Lcom/google/api/QuotaLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/QuotaLimit$Builder;,
        Lcom/google/api/QuotaLimit$ValuesDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/QuotaLimit;",
        "Lcom/google/api/QuotaLimit$Builder;",
        ">;",
        "Lcom/google/api/QuotaLimitOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

.field public static final DEFAULT_LIMIT_FIELD_NUMBER:I = 0x3

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0xc

.field public static final DURATION_FIELD_NUMBER:I = 0x5

.field public static final FREE_TIER_FIELD_NUMBER:I = 0x7

.field public static final MAX_LIMIT_FIELD_NUMBER:I = 0x4

.field public static final METRIC_FIELD_NUMBER:I = 0x8

.field public static final NAME_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIT_FIELD_NUMBER:I = 0x9

.field public static final VALUES_FIELD_NUMBER:I = 0xa


# instance fields
.field private defaultLimit_:J

.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private duration_:Ljava/lang/String;

.field private freeTier_:J

.field private maxLimit_:J

.field private metric_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private unit_:Ljava/lang/String;

.field private values_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1905
    new-instance v0, Lcom/google/api/QuotaLimit;

    invoke-direct {v0}, Lcom/google/api/QuotaLimit;-><init>()V

    .line 1908
    .local v0, "defaultInstance":Lcom/google/api/QuotaLimit;
    sput-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    .line 1909
    const-class v1, Lcom/google/api/QuotaLimit;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1911
    .end local v0    # "defaultInstance":Lcom/google/api/QuotaLimit;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 671
    nop

    .line 673
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/QuotaLimit;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearMaxLimit()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/QuotaLimit;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/api/QuotaLimit;->setFreeTier(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearFreeTier()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDuration(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDuration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDurationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setMetric(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearMetric()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setMetricBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setUnit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearUnit()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setUnitBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/QuotaLimit;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->getMutableValuesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDisplayName()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/QuotaLimit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDescription()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/QuotaLimit;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/QuotaLimit;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/QuotaLimit;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/api/QuotaLimit;->setDefaultLimit(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/QuotaLimit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;

    .line 16
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->clearDefaultLimit()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/QuotaLimit;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/QuotaLimit;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/api/QuotaLimit;->setMaxLimit(J)V

    return-void
.end method

.method private clearDefaultLimit()V
    .locals 2

    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/QuotaLimit;->defaultLimit_:J

    .line 261
    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    .line 180
    return-void
.end method

.method private clearDisplayName()V
    .locals 1

    .line 845
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    .line 846
    return-void
.end method

.method private clearDuration()V
    .locals 1

    .line 454
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getDuration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    .line 455
    return-void
.end method

.method private clearFreeTier()V
    .locals 2

    .line 381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/QuotaLimit;->freeTier_:J

    .line 382
    return-void
.end method

.method private clearMaxLimit()V
    .locals 2

    .line 322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/QuotaLimit;->maxLimit_:J

    .line 323
    return-void
.end method

.method private clearMetric()V
    .locals 1

    .line 534
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getMetric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    .line 535
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private clearUnit()V
    .locals 1

    .line 635
    invoke-static {}, Lcom/google/api/QuotaLimit;->getDefaultInstance()Lcom/google/api/QuotaLimit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getUnit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/QuotaLimit;
    .locals 1

    .line 1914
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method private getMutableValuesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 780
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetMutableValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableValues()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetValues()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->values_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/QuotaLimit$Builder;
    .locals 1

    .line 942
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/QuotaLimit;)Lcom/google/api/QuotaLimit$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/QuotaLimit;

    .line 945
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-virtual {v0, p0}, Lcom/google/api/QuotaLimit;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/api/QuotaLimit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/api/QuotaLimit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 881
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 888
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 868
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 875
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 893
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/QuotaLimit;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 900
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/QuotaLimit;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation

    .line 1920
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-virtual {v0}, Lcom/google/api/QuotaLimit;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDefaultLimit(J)V
    .locals 0
    .param p1, "value"    # J

    .line 240
    iput-wide p1, p0, Lcom/google/api/QuotaLimit;->defaultLimit_:J

    .line 241
    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 166
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    .line 167
    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 193
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 194
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 829
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 831
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    .line 832
    return-void
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 860
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 861
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    .line 863
    return-void
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 438
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    .line 439
    return-void
.end method

.method private setDurationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 471
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 472
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    .line 474
    return-void
.end method

.method private setFreeTier(J)V
    .locals 0
    .param p1, "value"    # J

    .line 363
    iput-wide p1, p0, Lcom/google/api/QuotaLimit;->freeTier_:J

    .line 364
    return-void
.end method

.method private setMaxLimit(J)V
    .locals 0
    .param p1, "value"    # J

    .line 303
    iput-wide p1, p0, Lcom/google/api/QuotaLimit;->maxLimit_:J

    .line 304
    return-void
.end method

.method private setMetric(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 521
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    .line 522
    return-void
.end method

.method private setMetricBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 548
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 549
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    .line 551
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 116
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private setUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 616
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    .line 617
    return-void
.end method

.method private setUnitBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 655
    invoke-static {p1}, Lcom/google/api/QuotaLimit;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 656
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    .line 658
    return-void
.end method


# virtual methods
.method public containsValues(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 703
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 704
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1846
    sget-object v0, Lcom/google/api/QuotaLimit$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1895
    :pswitch_0
    return-object v1

    .line 1892
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1877
    :pswitch_2
    sget-object v1, Lcom/google/api/QuotaLimit;->PARSER:Lcom/google/protobuf/Parser;

    .line 1878
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/QuotaLimit;>;"
    if-nez v1, :cond_1

    .line 1879
    const-class v2, Lcom/google/api/QuotaLimit;

    monitor-enter v2

    .line 1880
    :try_start_0
    sget-object v0, Lcom/google/api/QuotaLimit;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1881
    if-nez v1, :cond_0

    .line 1882
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1885
    sput-object v1, Lcom/google/api/QuotaLimit;->PARSER:Lcom/google/protobuf/Parser;

    .line 1887
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1889
    :cond_1
    :goto_0
    return-object v1

    .line 1874
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/QuotaLimit;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    return-object v0

    .line 1854
    :pswitch_4
    const-string v1, "description_"

    const-string v2, "defaultLimit_"

    const-string v3, "maxLimit_"

    const-string v4, "duration_"

    const-string/jumbo v5, "name_"

    const-string v6, "freeTier_"

    const-string v7, "metric_"

    const-string/jumbo v8, "unit_"

    const-string/jumbo v9, "values_"

    sget-object v10, Lcom/google/api/QuotaLimit$ValuesDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const-string v11, "displayName_"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 1867
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\n\u0000\u0000\u0002\u000c\n\u0001\u0000\u0000\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0208\u0006\u0208\u0007\u0002\u0008\u0208\t\u0208\n2\u000c\u0208"

    .line 1870
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/QuotaLimit;->DEFAULT_INSTANCE:Lcom/google/api/QuotaLimit;

    invoke-static {v2, v1, v0}, Lcom/google/api/QuotaLimit;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1851
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/QuotaLimit$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/QuotaLimit$Builder;-><init>(Lcom/google/api/QuotaLimit$1;)V

    return-object v0

    .line 1848
    :pswitch_6
    new-instance v0, Lcom/google/api/QuotaLimit;

    invoke-direct {v0}, Lcom/google/api/QuotaLimit;-><init>()V

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

.method public getDefaultLimit()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/google/api/QuotaLimit;->defaultLimit_:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->displayName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->duration_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFreeTier()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lcom/google/api/QuotaLimit;->freeTier_:J

    return-wide v0
.end method

.method public getMaxLimit()J
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/google/api/QuotaLimit;->maxLimit_:J

    return-wide v0
.end method

.method public getMetric()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->metric_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/api/QuotaLimit;->unit_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    invoke-virtual {p0}, Lcom/google/api/QuotaLimit;->getValuesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getValuesCount()I
    .locals 1

    .line 688
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getValuesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 726
    nop

    .line 727
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 726
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getValuesOrDefault(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 744
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 745
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 746
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    return-wide v2
.end method

.method public getValuesOrThrow(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 762
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 763
    invoke-direct {p0}, Lcom/google/api/QuotaLimit;->internalGetValues()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 764
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 767
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 765
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
