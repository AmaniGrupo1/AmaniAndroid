.class public final Lcom/google/firestore/v1/ListDocumentsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListDocumentsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;,
        Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListDocumentsRequest;",
        "Lcom/google/firestore/v1/ListDocumentsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLLECTION_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

.field public static final MASK_FIELD_NUMBER:I = 0x7

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x6

.field public static final PAGE_SIZE_FIELD_NUMBER:I = 0x3

.field public static final PAGE_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0xa

.field public static final SHOW_MISSING_FIELD_NUMBER:I = 0xc

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x8


# instance fields
.field private bitField0_:I

.field private collectionId_:Ljava/lang/String;

.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private mask_:Lcom/google/firestore/v1/DocumentMask;

.field private orderBy_:Ljava/lang/String;

.field private pageSize_:I

.field private pageToken_:Ljava/lang/String;

.field private parent_:Ljava/lang/String;

.field private showMissing_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1683
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;-><init>()V

    .line 1686
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ListDocumentsRequest;
    sput-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 1687
    const-class v1, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1689
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ListDocumentsRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setPageToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearPageToken()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setPageTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setOrderBy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearOrderBy()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setOrderByBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearMask()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearTransaction()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/ListDocumentsRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Z

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setShowMissing(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearShowMissing()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearParent()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setCollectionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListDocumentsRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setPageSize(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearPageSize()V

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    .line 237
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 238
    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 565
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

    .line 566
    return-void
.end method

.method private clearOrderBy()V
    .locals 1

    .line 464
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 465
    return-void
.end method

.method private clearPageSize()V
    .locals 1

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageSize_:I

    .line 301
    return-void
.end method

.method private clearPageToken()V
    .locals 1

    .line 369
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 370
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 144
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 707
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 708
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 711
    :cond_0
    return-void
.end method

.method private clearShowMissing()V
    .locals 1

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->showMissing_:Z

    .line 773
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 617
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 621
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1

    .line 1692
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 544
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 546
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 548
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 550
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 552
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

    .line 553
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 687
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 688
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 689
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 691
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 693
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 694
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 852
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ListDocumentsRequest;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 855
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 791
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 798
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 778
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 785
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 810
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            ">;"
        }
    .end annotation

    .line 1698
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCollectionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 254
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 255
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 530
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

    .line 531
    return-void
.end method

.method private setOrderBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 447
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 448
    return-void
.end method

.method private setOrderByBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 482
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 483
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 485
    return-void
.end method

.method private setPageSize(I)V
    .locals 0
    .param p1, "value"    # I

    .line 287
    iput p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageSize_:I

    .line 288
    return-void
.end method

.method private setPageToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 354
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 355
    return-void
.end method

.method private setPageTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 385
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 386
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 388
    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 162
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 163
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 165
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 671
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 672
    return-void
.end method

.method private setShowMissing(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 753
    iput-boolean p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->showMissing_:Z

    .line 754
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 605
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 606
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x8

    iput v1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 607
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 608
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1624
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1676
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1673
    :pswitch_0
    return-object v1

    .line 1670
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1655
    :pswitch_2
    sget-object v1, Lcom/google/firestore/v1/ListDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1656
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListDocumentsRequest;>;"
    if-nez v1, :cond_1

    .line 1657
    const-class v2, Lcom/google/firestore/v1/ListDocumentsRequest;

    monitor-enter v2

    .line 1658
    :try_start_0
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1659
    if-nez v1, :cond_0

    .line 1660
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1663
    sput-object v1, Lcom/google/firestore/v1/ListDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1665
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1667
    :cond_1
    :goto_0
    return-object v1

    .line 1652
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListDocumentsRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0

    .line 1632
    :pswitch_4
    const-string v1, "consistencySelector_"

    const-string v2, "consistencySelectorCase_"

    const-string v3, "bitField0_"

    const-string v4, "parent_"

    const-string v5, "collectionId_"

    const-string v6, "pageSize_"

    const-string v7, "pageToken_"

    const-string v8, "orderBy_"

    const-string v9, "mask_"

    const-class v10, Lcom/google/protobuf/Timestamp;

    const-string v11, "showMissing_"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 1645
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\t\u0001\u0001\u0001\u000c\t\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0004\u0004\u0208\u0006\u0208\u0007\u1009\u0000\u0008=\u0000\n<\u0000\u000c\u0007"

    .line 1648
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1629
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;-><init>(Lcom/google/firestore/v1/ListDocumentsRequest$1;)V

    return-object v0

    .line 1626
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;-><init>()V

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

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    :goto_0
    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderByBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageSize_:I

    return v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 652
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 655
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getShowMissing()Z
    .locals 1

    .line 733
    iget-boolean v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->showMissing_:Z

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 591
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 594
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMask()Z
    .locals 2

    .line 501
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->bitField0_:I

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
    .locals 2

    .line 637
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 2

    .line 579
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
