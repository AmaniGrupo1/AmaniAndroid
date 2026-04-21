.class public final Lcom/google/api/Distribution;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/DistributionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$Exemplar;,
        Lcom/google/api/Distribution$BucketOptions;,
        Lcom/google/api/Distribution$Range;,
        Lcom/google/api/Distribution$ExemplarOrBuilder;,
        Lcom/google/api/Distribution$Builder;,
        Lcom/google/api/Distribution$BucketOptionsOrBuilder;,
        Lcom/google/api/Distribution$RangeOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Distribution;",
        "Lcom/google/api/Distribution$Builder;",
        ">;",
        "Lcom/google/api/DistributionOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUCKET_COUNTS_FIELD_NUMBER:I = 0x7

.field public static final BUCKET_OPTIONS_FIELD_NUMBER:I = 0x6

.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution;

.field public static final EXEMPLARS_FIELD_NUMBER:I = 0xa

.field public static final MEAN_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANGE_FIELD_NUMBER:I = 0x4

.field public static final SUM_OF_SQUARED_DEVIATION_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private bucketCountsMemoizedSerializedSize:I

.field private bucketCounts_:Lcom/google/protobuf/Internal$LongList;

.field private bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

.field private count_:J

.field private exemplars_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation
.end field

.field private mean_:D

.field private range_:Lcom/google/api/Distribution$Range;

.field private sumOfSquaredDeviation_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5054
    new-instance v0, Lcom/google/api/Distribution;

    invoke-direct {v0}, Lcom/google/api/Distribution;-><init>()V

    .line 5057
    .local v0, "defaultInstance":Lcom/google/api/Distribution;
    sput-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    .line 5058
    const-class v1, Lcom/google/api/Distribution;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5060
    .end local v0    # "defaultInstance":Lcom/google/api/Distribution;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3971
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/Distribution;->bucketCountsMemoizedSerializedSize:I

    .line 33
    invoke-static {}, Lcom/google/api/Distribution;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    .line 34
    invoke-static {}, Lcom/google/api/Distribution;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 35
    return-void
.end method

.method static synthetic access$5300()Lcom/google/api/Distribution;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/google/api/Distribution;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # J

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;->setCount(J)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearCount()V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/api/Distribution;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # D

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;->setMean(D)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearMean()V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/api/Distribution;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # D

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;->setSumOfSquaredDeviation(D)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearSumOfSquaredDeviation()V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Lcom/google/api/Distribution$Range;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->setRange(Lcom/google/api/Distribution$Range;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Lcom/google/api/Distribution$Range;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->mergeRange(Lcom/google/api/Distribution$Range;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearRange()V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Lcom/google/api/Distribution$BucketOptions;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->setBucketOptions(Lcom/google/api/Distribution$BucketOptions;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Lcom/google/api/Distribution$BucketOptions;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->mergeBucketOptions(Lcom/google/api/Distribution$BucketOptions;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearBucketOptions()V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/api/Distribution;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/Distribution;->setBucketCounts(IJ)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/api/Distribution;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # J

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;->addBucketCounts(J)V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->addAllBucketCounts(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearBucketCounts()V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Distribution$Exemplar;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;->setExemplars(ILcom/google/api/Distribution$Exemplar;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Lcom/google/api/Distribution$Exemplar;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->addExemplars(Lcom/google/api/Distribution$Exemplar;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Distribution$Exemplar;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution;->addExemplars(ILcom/google/api/Distribution$Exemplar;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->addAllExemplars(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/api/Distribution;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;

    .line 27
    invoke-direct {p0}, Lcom/google/api/Distribution;->clearExemplars()V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/api/Distribution;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution;
    .param p1, "x1"    # I

    .line 27
    invoke-direct {p0, p1}, Lcom/google/api/Distribution;->removeExemplars(I)V

    return-void
.end method

.method private addAllBucketCounts(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 4057
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureBucketCountsIsMutable()V

    .line 4058
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4060
    return-void
.end method

.method private addAllExemplars(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;)V"
        }
    .end annotation

    .line 4198
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Distribution$Exemplar;>;"
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureExemplarsIsMutable()V

    .line 4199
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 4201
    return-void
.end method

.method private addBucketCounts(J)V
    .locals 1
    .param p1, "value"    # J

    .line 4030
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureBucketCountsIsMutable()V

    .line 4031
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

    .line 4032
    return-void
.end method

.method private addExemplars(ILcom/google/api/Distribution$Exemplar;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Distribution$Exemplar;

    .line 4185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4186
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureExemplarsIsMutable()V

    .line 4187
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 4188
    return-void
.end method

.method private addExemplars(Lcom/google/api/Distribution$Exemplar;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$Exemplar;

    .line 4172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4173
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureExemplarsIsMutable()V

    .line 4174
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 4175
    return-void
.end method

.method private clearBucketCounts()V
    .locals 1

    .line 4083
    invoke-static {}, Lcom/google/api/Distribution;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    .line 4084
    return-void
.end method

.method private clearBucketOptions()V
    .locals 1

    .line 3885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    .line 3886
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    .line 3887
    return-void
.end method

.method private clearCount()V
    .locals 2

    .line 3641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/Distribution;->count_:J

    .line 3642
    return-void
.end method

.method private clearExemplars()V
    .locals 1

    .line 4210
    invoke-static {}, Lcom/google/api/Distribution;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4211
    return-void
.end method

.method private clearMean()V
    .locals 2

    .line 3682
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/Distribution;->mean_:D

    .line 3683
    return-void
.end method

.method private clearRange()V
    .locals 1

    .line 3814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    .line 3815
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    .line 3816
    return-void
.end method

.method private clearSumOfSquaredDeviation()V
    .locals 2

    .line 3744
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    .line 3745
    return-void
.end method

.method private ensureBucketCountsIsMutable()V
    .locals 2

    .line 3973
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    .line 3974
    .local v0, "tmp":Lcom/google/protobuf/Internal$LongList;
    invoke-interface {v0}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3975
    nop

    .line 3976
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    .line 3978
    :cond_0
    return-void
.end method

.method private ensureExemplarsIsMutable()V
    .locals 2

    .line 4144
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4145
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Distribution$Exemplar;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4146
    nop

    .line 4147
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4149
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution;
    .locals 1

    .line 5063
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    return-object v0
.end method

.method private mergeBucketOptions(Lcom/google/api/Distribution$BucketOptions;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions;

    .line 3867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3868
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    .line 3869
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3870
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    .line 3871
    invoke-static {v0}, Lcom/google/api/Distribution$BucketOptions;->newBuilder(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$BucketOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$BucketOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Builder;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions;

    iput-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    goto :goto_0

    .line 3873
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    .line 3875
    :goto_0
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    .line 3876
    return-void
.end method

.method private mergeRange(Lcom/google/api/Distribution$Range;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/Distribution$Range;

    .line 3796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3797
    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    .line 3798
    invoke-static {}, Lcom/google/api/Distribution$Range;->getDefaultInstance()Lcom/google/api/Distribution$Range;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3799
    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    .line 3800
    invoke-static {v0}, Lcom/google/api/Distribution$Range;->newBuilder(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$Range$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Range$Builder;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Range;

    iput-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    goto :goto_0

    .line 3802
    :cond_0
    iput-object p1, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    .line 3804
    :goto_0
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    .line 3805
    return-void
.end method

.method public static newBuilder()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4301
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Distribution;

    .line 4304
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4277
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0}, Lcom/google/api/Distribution;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4284
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0, p1}, Lcom/google/api/Distribution;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4240
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4247
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4289
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4296
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4264
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4271
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4227
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4234
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4252
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4259
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution;",
            ">;"
        }
    .end annotation

    .line 5069
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeExemplars(I)V
    .locals 1
    .param p1, "index"    # I

    .line 4220
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureExemplarsIsMutable()V

    .line 4221
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 4222
    return-void
.end method

.method private setBucketCounts(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 4004
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureBucketCountsIsMutable()V

    .line 4005
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$LongList;->setLong(IJ)J

    .line 4006
    return-void
.end method

.method private setBucketOptions(Lcom/google/api/Distribution$BucketOptions;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$BucketOptions;

    .line 3853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3854
    iput-object p1, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    .line 3855
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    .line 3856
    return-void
.end method

.method private setCount(J)V
    .locals 0
    .param p1, "value"    # J

    .line 3628
    iput-wide p1, p0, Lcom/google/api/Distribution;->count_:J

    .line 3629
    return-void
.end method

.method private setExemplars(ILcom/google/api/Distribution$Exemplar;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Distribution$Exemplar;

    .line 4160
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4161
    invoke-direct {p0}, Lcom/google/api/Distribution;->ensureExemplarsIsMutable()V

    .line 4162
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4163
    return-void
.end method

.method private setMean(D)V
    .locals 0
    .param p1, "value"    # D

    .line 3670
    iput-wide p1, p0, Lcom/google/api/Distribution;->mean_:D

    .line 3671
    return-void
.end method

.method private setRange(Lcom/google/api/Distribution$Range;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Distribution$Range;

    .line 3782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3783
    iput-object p1, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    .line 3784
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    .line 3785
    return-void
.end method

.method private setSumOfSquaredDeviation(D)V
    .locals 0
    .param p1, "value"    # D

    .line 3725
    iput-wide p1, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    .line 3726
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 4997
    sget-object v0, Lcom/google/api/Distribution$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5047
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5044
    :pswitch_0
    return-object v1

    .line 5041
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5026
    :pswitch_2
    sget-object v1, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/Parser;

    .line 5027
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Distribution;>;"
    if-nez v1, :cond_1

    .line 5028
    const-class v2, Lcom/google/api/Distribution;

    monitor-enter v2

    .line 5029
    :try_start_0
    sget-object v0, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 5030
    if-nez v1, :cond_0

    .line 5031
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 5034
    sput-object v1, Lcom/google/api/Distribution;->PARSER:Lcom/google/protobuf/Parser;

    .line 5036
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5038
    :cond_1
    :goto_0
    return-object v1

    .line 5023
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Distribution;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    return-object v0

    .line 5005
    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "count_"

    const-string v3, "mean_"

    const-string/jumbo v4, "sumOfSquaredDeviation_"

    const-string/jumbo v5, "range_"

    const-string v6, "bucketOptions_"

    const-string v7, "bucketCounts_"

    const-string v8, "exemplars_"

    const-class v9, Lcom/google/api/Distribution$Exemplar;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 5016
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0000\u0001\u0001\n\u0007\u0000\u0002\u0000\u0001\u0002\u0002\u0000\u0003\u0000\u0004\u1009\u0000\u0006\u1009\u0001\u0007%\n\u001b"

    .line 5019
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Distribution;->DEFAULT_INSTANCE:Lcom/google/api/Distribution;

    invoke-static {v2, v1, v0}, Lcom/google/api/Distribution;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5002
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Distribution$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Distribution$Builder;-><init>(Lcom/google/api/Distribution$1;)V

    return-object v0

    .line 4999
    :pswitch_6
    new-instance v0, Lcom/google/api/Distribution;

    invoke-direct {v0}, Lcom/google/api/Distribution;-><init>()V

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

.method public getBucketCounts(I)J
    .locals 2
    .param p1, "index"    # I

    .line 3969
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketCountsCount()I
    .locals 1

    .line 3942
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    return v0
.end method

.method public getBucketCountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3916
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketCounts_:Lcom/google/protobuf/Internal$LongList;

    return-object v0
.end method

.method public getBucketOptions()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 3842
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Distribution$BucketOptions;->getDefaultInstance()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/Distribution;->bucketOptions_:Lcom/google/api/Distribution$BucketOptions;

    :goto_0
    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 3614
    iget-wide v0, p0, Lcom/google/api/Distribution;->count_:J

    return-wide v0
.end method

.method public getExemplars(I)Lcom/google/api/Distribution$Exemplar;
    .locals 1
    .param p1, "index"    # I

    .line 4130
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    return-object v0
.end method

.method public getExemplarsCount()I
    .locals 1

    .line 4119
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getExemplarsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation

    .line 4097
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getExemplarsOrBuilder(I)Lcom/google/api/Distribution$ExemplarOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 4141
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$ExemplarOrBuilder;

    return-object v0
.end method

.method public getExemplarsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Distribution$ExemplarOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4108
    iget-object v0, p0, Lcom/google/api/Distribution;->exemplars_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMean()D
    .locals 2

    .line 3657
    iget-wide v0, p0, Lcom/google/api/Distribution;->mean_:D

    return-wide v0
.end method

.method public getRange()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 3771
    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Distribution$Range;->getDefaultInstance()Lcom/google/api/Distribution$Range;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/Distribution;->range_:Lcom/google/api/Distribution$Range;

    :goto_0
    return-object v0
.end method

.method public getSumOfSquaredDeviation()D
    .locals 2

    .line 3705
    iget-wide v0, p0, Lcom/google/api/Distribution;->sumOfSquaredDeviation_:D

    return-wide v0
.end method

.method public hasBucketOptions()Z
    .locals 1

    .line 3830
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRange()Z
    .locals 2

    .line 3759
    iget v0, p0, Lcom/google/api/Distribution;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
