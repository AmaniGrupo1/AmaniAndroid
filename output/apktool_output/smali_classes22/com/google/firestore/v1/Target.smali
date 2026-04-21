.class public final Lcom/google/firestore/v1/Target;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$PipelineQueryTarget;,
        Lcom/google/firestore/v1/Target$DocumentsTarget;,
        Lcom/google/firestore/v1/Target$QueryTarget;,
        Lcom/google/firestore/v1/Target$TargetTypeCase;,
        Lcom/google/firestore/v1/Target$ResumeTypeCase;,
        Lcom/google/firestore/v1/Target$Builder;,
        Lcom/google/firestore/v1/Target$PipelineQueryTargetOrBuilder;,
        Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;,
        Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target;",
        "Lcom/google/firestore/v1/Target$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x3

.field public static final EXPECTED_COUNT_FIELD_NUMBER:I = 0xc

.field public static final ONCE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIPELINE_QUERY_FIELD_NUMBER:I = 0xd

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final READ_TIME_FIELD_NUMBER:I = 0xb

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private expectedCount_:Lcom/google/protobuf/Int32Value;

.field private once_:Z

.field private resumeTypeCase_:I

.field private resumeType_:Ljava/lang/Object;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3066
    new-instance v0, Lcom/google/firestore/v1/Target;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target;-><init>()V

    .line 3069
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Target;
    sput-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    .line 3070
    const-class v1, Lcom/google/firestore/v1/Target;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3072
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Target;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1621
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1666
    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 20
    return-void
.end method

.method static synthetic access$2200()Lcom/google/firestore/v1/Target;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearTargetType()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearResumeType()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearQuery()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearDocuments()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setPipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergePipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearPipelineQuery()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearResumeToken()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearReadTime()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firestore/v1/Target;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearTargetId()V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/firestore/v1/Target;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Z

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setOnce(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearOnce()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setExpectedCount(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeExpectedCount(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearExpectedCount()V

    return-void
.end method

.method private clearDocuments()V
    .locals 2

    .line 1843
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1847
    :cond_0
    return-void
.end method

.method private clearExpectedCount()V
    .locals 1

    .line 2277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 2278
    iget v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    .line 2279
    return-void
.end method

.method private clearOnce()V
    .locals 1

    .line 2187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firestore/v1/Target;->once_:Z

    .line 2188
    return-void
.end method

.method private clearPipelineQuery()V
    .locals 2

    .line 1913
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1914
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1917
    :cond_0
    return-void
.end method

.method private clearQuery()V
    .locals 2

    .line 1773
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1774
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1777
    :cond_0
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 2060
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2061
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 2064
    :cond_0
    return-void
.end method

.method private clearResumeToken()V
    .locals 2

    .line 1980
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1981
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1984
    :cond_0
    return-void
.end method

.method private clearResumeType()V
    .locals 1

    .line 1705
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1707
    return-void
.end method

.method private clearTargetId()V
    .locals 1

    .line 2149
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    .line 2150
    return-void
.end method

.method private clearTargetType()V
    .locals 1

    .line 1662
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1664
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target;
    .locals 1

    .line 3075
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method private mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1826
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1827
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->newBuilder(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    move-result-object v0

    .line 1829
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 1831
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1833
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1834
    return-void
.end method

.method private mergeExpectedCount(Lcom/google/protobuf/Int32Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 2255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2256
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 2257
    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 2259
    invoke-static {v0}, Lcom/google/protobuf/Int32Value;->newBuilder(Lcom/google/protobuf/Int32Value;)Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int32Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Int32Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value;

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    goto :goto_0

    .line 2261
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 2263
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    .line 2264
    return-void
.end method

.method private mergePipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 1895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1896
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1897
    invoke-static {}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1898
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->newBuilder(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    move-result-object v0

    .line 1899
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 1901
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1903
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1904
    return-void
.end method

.method private mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1755
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1756
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1757
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->newBuilder(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    move-result-object v0

    .line 1759
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 1761
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1763
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1764
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 2040
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2041
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 2042
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 2044
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    goto :goto_0

    .line 2046
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 2048
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 2049
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 2358
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Target;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Target;

    .line 2361
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Target;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2334
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2341
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2297
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2304
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2346
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2353
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2321
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2328
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2284
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2291
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2309
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2316
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target;",
            ">;"
        }
    .end annotation

    .line 3081
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1813
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1814
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1815
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1816
    return-void
.end method

.method private setExpectedCount(Lcom/google/protobuf/Int32Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 2237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2238
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 2239
    iget v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    .line 2240
    return-void
.end method

.method private setOnce(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 2176
    iput-boolean p1, p0, Lcom/google/firestore/v1/Target;->once_:Z

    .line 2177
    return-void
.end method

.method private setPipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 1883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1884
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1885
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1886
    return-void
.end method

.method private setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1744
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1745
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1746
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 2026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2027
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 2028
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 2029
    return-void
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1966
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1967
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1968
    return-void
.end method

.method private setTargetId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 2122
    iput p1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    .line 2123
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3006
    sget-object v0, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3059
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3056
    :pswitch_0
    return-object v1

    .line 3053
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3038
    :pswitch_2
    sget-object v1, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 3039
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target;>;"
    if-nez v1, :cond_1

    .line 3040
    const-class v2, Lcom/google/firestore/v1/Target;

    monitor-enter v2

    .line 3041
    :try_start_0
    sget-object v0, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 3042
    if-nez v1, :cond_0

    .line 3043
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 3046
    sput-object v1, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 3048
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3050
    :cond_1
    :goto_0
    return-object v1

    .line 3035
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0

    .line 3014
    :pswitch_4
    const-string v1, "targetType_"

    const-string v2, "targetTypeCase_"

    const-string v3, "resumeType_"

    const-string v4, "resumeTypeCase_"

    const-string v5, "bitField0_"

    const-class v6, Lcom/google/firestore/v1/Target$QueryTarget;

    const-class v7, Lcom/google/firestore/v1/Target$DocumentsTarget;

    const-string v8, "targetId_"

    const-string v9, "once_"

    const-class v10, Lcom/google/protobuf/Timestamp;

    const-string v11, "expectedCount_"

    const-class v12, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 3028
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0008\u0002\u0001\u0002\r\u0008\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004=\u0001\u0005\u0004\u0006\u0007\u000b<\u0001\u000c\u1009\u0000\r<\u0000"

    .line 3031
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Target;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3011
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Target$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Target$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object v0

    .line 3008
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Target;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target;-><init>()V

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

.method public getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 2

    .line 1800
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0

    .line 1803
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedCount()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 2222
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    :goto_0
    return-object v0
.end method

.method public getOnce()Z
    .locals 1

    .line 2164
    iget-boolean v0, p0, Lcom/google/firestore/v1/Target;->once_:Z

    return v0
.end method

.method public getPipelineQuery()Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 2

    .line 1870
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object v0

    .line 1873
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 2

    .line 1730
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0

    .line 1733
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 2011
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 2014
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1948
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 1951
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResumeTypeCase()Lcom/google/firestore/v1/Target$ResumeTypeCase;
    .locals 1

    .line 1700
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$ResumeTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$ResumeTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 2094
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1657
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$TargetTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 2

    .line 1789
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpectedCount()Z
    .locals 2

    .line 2206
    iget v0, p0, Lcom/google/firestore/v1/Target;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPipelineQuery()Z
    .locals 2

    .line 1859
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuery()Z
    .locals 2

    .line 1719
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

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

    .line 1998
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResumeToken()Z
    .locals 2

    .line 1933
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
