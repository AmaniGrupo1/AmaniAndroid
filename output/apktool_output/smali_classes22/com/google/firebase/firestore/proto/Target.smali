.class public final Lcom/google/firebase/firestore/proto/Target;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;,
        Lcom/google/firebase/firestore/proto/Target$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/Target;",
        "Lcom/google/firebase/firestore/proto/Target$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x6

.field public static final LAST_LIMBO_FREE_SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final LAST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/Target;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIPELINE_QUERY_FIELD_NUMBER:I = 0xd

.field public static final QUERY_FIELD_NUMBER:I = 0x5

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private lastListenSequenceNumber_:J

.field private resumeToken_:Lcom/google/protobuf/ByteString;

.field private snapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1388
    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

    .line 1391
    .local v0, "defaultInstance":Lcom/google/firebase/firestore/proto/Target;
    sput-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    .line 1392
    const-class v1, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1394
    .end local v0    # "defaultInstance":Lcom/google/firebase/firestore/proto/Target;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 23
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearTargetType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastListenSequenceNumber()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearDocuments()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setPipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergePipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearPipelineQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/Target;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastLimboFreeSnapshotVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearTargetId()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearSnapshotVersion()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 17
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearResumeToken()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/firestore/proto/Target;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # J

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->setLastListenSequenceNumber(J)V

    return-void
.end method

.method private clearDocuments()V
    .locals 2

    .line 479
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 483
    :cond_0
    return-void
.end method

.method private clearLastLimboFreeSnapshotVersion()V
    .locals 1

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 623
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    .line 624
    return-void
.end method

.method private clearLastListenSequenceNumber()V
    .locals 2

    .line 342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    .line 343
    return-void
.end method

.method private clearPipelineQuery()V
    .locals 2

    .line 549
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 553
    :cond_0
    return-void
.end method

.method private clearQuery()V
    .locals 2

    .line 409
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 413
    :cond_0
    return-void
.end method

.method private clearResumeToken()V
    .locals 1

    .line 271
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->getDefaultInstance()Lcom/google/firebase/firestore/proto/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 272
    return-void
.end method

.method private clearSnapshotVersion()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 190
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    .line 191
    return-void
.end method

.method private clearTargetId()V
    .locals 1

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    .line 110
    return-void
.end method

.method private clearTargetType()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 1397
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method private mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 463
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 464
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->newBuilder(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    move-result-object v0

    .line 465
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 469
    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 470
    return-void
.end method

.method private mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 606
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 608
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 610
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 612
    :goto_0
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    .line 613
    return-void
.end method

.method private mergePipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 533
    invoke-static {}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->newBuilder(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$PipelineQueryTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 537
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 539
    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 540
    return-void
.end method

.method private mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 393
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->newBuilder(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 399
    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 400
    return-void
.end method

.method private mergeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 171
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 173
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 177
    :goto_0
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    .line 178
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 703
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/firestore/proto/Target;

    .line 706
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/proto/Target;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/proto/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/firestore/proto/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 642
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 649
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 636
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 661
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/Target;",
            ">;"
        }
    .end annotation

    .line 1403
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 451
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 452
    return-void
.end method

.method private setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 592
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    .line 593
    return-void
.end method

.method private setLastListenSequenceNumber(J)V
    .locals 0
    .param p1, "value"    # J

    .line 320
    iput-wide p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    .line 321
    return-void
.end method

.method private setPipelineQuery(Lcom/google/firestore/v1/Target$PipelineQueryTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 521
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 522
    return-void
.end method

.method private setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 381
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 382
    return-void
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 246
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 247
    return-void
.end method

.method private setSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 155
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    .line 156
    return-void
.end method

.method private setTargetId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 97
    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    .line 98
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1329
    sget-object v0, Lcom/google/firebase/firestore/proto/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1381
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1378
    :pswitch_0
    return-object v1

    .line 1375
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1360
    :pswitch_2
    sget-object v1, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 1361
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/Target;>;"
    if-nez v1, :cond_1

    .line 1362
    const-class v2, Lcom/google/firebase/firestore/proto/Target;

    monitor-enter v2

    .line 1363
    :try_start_0
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1364
    if-nez v1, :cond_0

    .line 1365
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1368
    sput-object v1, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 1370
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1372
    :cond_1
    :goto_0
    return-object v1

    .line 1357
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/Target;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0

    .line 1337
    :pswitch_4
    const-string v1, "targetType_"

    const-string v2, "targetTypeCase_"

    const-string v3, "bitField0_"

    const-string v4, "targetId_"

    const-string v5, "snapshotVersion_"

    const-string v6, "resumeToken_"

    const-string v7, "lastListenSequenceNumber_"

    const-class v8, Lcom/google/firestore/v1/Target$QueryTarget;

    const-class v9, Lcom/google/firestore/v1/Target$DocumentsTarget;

    const-string v10, "lastLimboFreeSnapshotVersion_"

    const-class v11, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 1350
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0008\u0001\u0001\u0001\r\u0008\u0000\u0000\u0000\u0001\u0004\u0002\u1009\u0000\u0003\n\u0004\u0002\u0005<\u0000\u0006<\u0000\u0007\u1009\u0001\r<\u0000"

    .line 1353
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/proto/Target;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1334
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>(Lcom/google/firebase/firestore/proto/Target$1;)V

    return-object v0

    .line 1331
    :pswitch_6
    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

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

    .line 436
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0

    .line 439
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    .line 297
    iget-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-wide v0
.end method

.method public getPipelineQuery()Lcom/google/firestore/v1/Target$PipelineQueryTarget;
    .locals 2

    .line 506
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    return-object v0

    .line 509
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$PipelineQueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$PipelineQueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 2

    .line 366
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0

    .line 369
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 2

    .line 425
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    .line 567
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPipelineQuery()Z
    .locals 2

    .line 495
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

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

    .line 355
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSnapshotVersion()Z
    .locals 2

    .line 126
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
