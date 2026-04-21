.class public final Lcom/google/firestore/v1/StructuredAggregationQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQueryOrBuilder;"
    }
.end annotation


# static fields
.field public static final AGGREGATIONS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x1


# instance fields
.field private aggregations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation
.end field

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3416
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;-><init>()V

    .line 3419
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery;
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 3420
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3422
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2656
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    .line 21
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    return-void
.end method

.method static synthetic access$3000()Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->clearQueryType()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->clearStructuredQuery()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->setAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->addAggregations(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->addAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/firestore/v1/StructuredAggregationQuery;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->addAllAggregations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firestore/v1/StructuredAggregationQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->clearAggregations()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firestore/v1/StructuredAggregationQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->removeAggregations(I)V

    return-void
.end method

.method private addAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2906
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2907
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->ensureAggregationsIsMutable()V

    .line 2908
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 2909
    return-void
.end method

.method private addAggregations(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2889
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->ensureAggregationsIsMutable()V

    .line 2890
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 2891
    return-void
.end method

.method private addAllAggregations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;)V"
        }
    .end annotation

    .line 2924
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->ensureAggregationsIsMutable()V

    .line 2925
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2927
    return-void
.end method

.method private clearAggregations()V
    .locals 1

    .line 2941
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2942
    return-void
.end method

.method private clearQueryType()V
    .locals 1

    .line 2693
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    .line 2694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    .line 2695
    return-void
.end method

.method private clearStructuredQuery()V
    .locals 2

    .line 2761
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2762
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    .line 2763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    .line 2765
    :cond_0
    return-void
.end method

.method private ensureAggregationsIsMutable()V
    .locals 2

    .line 2850
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2851
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2852
    nop

    .line 2853
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2855
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1

    .line 3425
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method private mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 2743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2744
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    .line 2745
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2746
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->newBuilder(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    move-result-object v0

    .line 2747
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    goto :goto_0

    .line 2749
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    .line 2751
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    .line 2752
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 3037
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 3040
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3013
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3020
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2976
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2983
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3025
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3032
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3000
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3007
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2963
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2970
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2988
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2995
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery;",
            ">;"
        }
    .end annotation

    .line 3431
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAggregations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 2956
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->ensureAggregationsIsMutable()V

    .line 2957
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 2958
    return-void
.end method

.method private setAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2871
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2872
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->ensureAggregationsIsMutable()V

    .line 2873
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2874
    return-void
.end method

.method private setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 2731
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2732
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    .line 2733
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    .line 2734
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3363
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3406
    :pswitch_0
    return-object v1

    .line 3403
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3388
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 3389
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery;>;"
    if-nez v0, :cond_1

    .line 3390
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery;

    monitor-enter v1

    .line 3391
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 3392
    if-nez v0, :cond_0

    .line 3393
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 3396
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 3398
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3400
    :cond_1
    :goto_0
    return-object v0

    .line 3385
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v0

    .line 3371
    :pswitch_4
    const-string v0, "queryType_"

    const-string v1, "queryTypeCase_"

    const-class v2, Lcom/google/firestore/v1/StructuredQuery;

    const-string v3, "aggregations_"

    const-class v4, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 3378
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0001\u0000\u0001\u0003\u0002\u0000\u0001\u0000\u0001<\u0000\u0003\u001b"

    .line 3381
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3368
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;-><init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V

    return-object v0

    .line 3365
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;-><init>()V

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

.method public getAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p1, "index"    # I

    .line 2831
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public getAggregationsCount()I
    .locals 1

    .line 2815
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAggregationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation

    .line 2783
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAggregationsOrBuilder(I)Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 2847
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;

    return-object v0
.end method

.method public getAggregationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2799
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->aggregations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;
    .locals 1

    .line 2688
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;->forNumber(I)Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 2

    .line 2718
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 2721
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 2

    .line 2707
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery;->queryTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
