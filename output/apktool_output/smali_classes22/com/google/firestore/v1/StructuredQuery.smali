.class public final Lcom/google/firestore/v1/StructuredQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Order;,
        Lcom/google/firestore/v1/StructuredQuery$Filter;,
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;,
        Lcom/google/firestore/v1/StructuredQuery$Projection;,
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$Builder;,
        Lcom/google/firestore/v1/StructuredQuery$ProjectionOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$FieldReference;,
        Lcom/google/firestore/v1/StructuredQuery$FieldReferenceOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$FieldFilter;,
        Lcom/google/firestore/v1/StructuredQuery$FieldFilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;,
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery;",
        "Lcom/google/firestore/v1/StructuredQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQueryOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

.field public static final END_AT_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x6

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final START_AT_FIELD_NUMBER:I = 0x7

.field public static final WHERE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private endAt_:Lcom/google/firestore/v1/Cursor;

.field private from_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation
.end field

.field private limit_:Lcom/google/protobuf/Int32Value;

.field private offset_:I

.field private orderBy_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation
.end field

.field private select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

.field private startAt_:Lcom/google/firestore/v1/Cursor;

.field private where_:Lcom/google/firestore/v1/StructuredQuery$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8026
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery;-><init>()V

    .line 8029
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredQuery;
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    .line 8030
    const-class v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8032
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 29
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 30
    return-void
.end method

.method static synthetic access$10000(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearLimit()V

    return-void
.end method

.method static synthetic access$7100()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearSelect()V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addAllFrom(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearFrom()V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/firestore/v1/StructuredQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->removeFrom(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearWhere()V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addAllOrderBy(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearOrderBy()V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/firestore/v1/StructuredQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->removeOrderBy(I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setStartAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeStartAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearStartAt()V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setEndAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeEndAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearEndAt()V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/firestore/v1/StructuredQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setOffset(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 22
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearOffset()V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setLimit(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeLimit(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method private addAllFrom(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;)V"
        }
    .end annotation

    .line 5702
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5703
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5705
    return-void
.end method

.method private addAllOrderBy(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;)V"
        }
    .end annotation

    .line 6077
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$Order;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 6078
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6080
    return-void
.end method

.method private addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 5689
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5690
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5691
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 5692
    return-void
.end method

.method private addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 5676
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5677
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5678
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 5679
    return-void
.end method

.method private addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6045
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6046
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 6047
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 6048
    return-void
.end method

.method private addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6014
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 6015
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 6016
    return-void
.end method

.method private clearEndAt()V
    .locals 1

    .line 6459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 6460
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6461
    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 5714
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5715
    return-void
.end method

.method private clearLimit()V
    .locals 1

    .line 6614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 6615
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6616
    return-void
.end method

.method private clearOffset()V
    .locals 1

    .line 6519
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->offset_:I

    .line 6520
    return-void
.end method

.method private clearOrderBy()V
    .locals 1

    .line 6108
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6109
    return-void
.end method

.method private clearSelect()V
    .locals 1

    .line 5586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5587
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 5588
    return-void
.end method

.method private clearStartAt()V
    .locals 1

    .line 6353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 6354
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6355
    return-void
.end method

.method private clearWhere()V
    .locals 1

    .line 5790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5791
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 5792
    return-void
.end method

.method private ensureFromIsMutable()V
    .locals 2

    .line 5648
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5649
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5650
    nop

    .line 5651
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5653
    :cond_0
    return-void
.end method

.method private ensureOrderByIsMutable()V
    .locals 2

    .line 5947
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5948
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/StructuredQuery$Order;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5949
    nop

    .line 5950
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5952
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 8035
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method private mergeEndAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6435
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 6436
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6437
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 6438
    invoke-static {v0}, Lcom/google/firestore/v1/Cursor;->newBuilder(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/Cursor$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Cursor$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    goto :goto_0

    .line 6440
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 6442
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6443
    return-void
.end method

.method private mergeLimit(Lcom/google/protobuf/Int32Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 6591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6592
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 6593
    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6594
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 6595
    invoke-static {v0}, Lcom/google/protobuf/Int32Value;->newBuilder(Lcom/google/protobuf/Int32Value;)Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int32Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Int32Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    goto :goto_0

    .line 6597
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 6599
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6600
    return-void
.end method

.method private mergeSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5566
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5567
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Projection;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Projection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5568
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5569
    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    goto :goto_0

    .line 5571
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5573
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 5574
    return-void
.end method

.method private mergeStartAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6307
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 6308
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6309
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 6310
    invoke-static {v0}, Lcom/google/firestore/v1/Cursor;->newBuilder(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/Cursor$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Cursor$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    goto :goto_0

    .line 6312
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 6314
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6315
    return-void
.end method

.method private mergeWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5773
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5774
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5775
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5776
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5777
    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    goto :goto_0

    .line 5779
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5781
    :goto_0
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 5782
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6695
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 6698
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6671
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6678
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6634
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6641
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6683
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6690
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6658
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6665
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6621
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6628
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6646
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6653
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery;",
            ">;"
        }
    .end annotation

    .line 8041
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFrom(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5724
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5725
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 5726
    return-void
.end method

.method private removeOrderBy(I)V
    .locals 1
    .param p1, "index"    # I

    .line 6137
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 6138
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 6139
    return-void
.end method

.method private setEndAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6414
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 6415
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6416
    return-void
.end method

.method private setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 5664
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5665
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5666
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5667
    return-void
.end method

.method private setLimit(Lcom/google/protobuf/Int32Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 6572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6573
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 6574
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6575
    return-void
.end method

.method private setOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .line 6501
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery;->offset_:I

    .line 6502
    return-void
.end method

.method private setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 5982
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5983
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5984
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5985
    return-void
.end method

.method private setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5549
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5550
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 5551
    return-void
.end method

.method private setStartAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6264
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 6265
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 6266
    return-void
.end method

.method private setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5761
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5762
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    .line 5763
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 7966
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8019
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 8016
    :pswitch_0
    return-object v1

    .line 8013
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7998
    :pswitch_2
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 7999
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery;>;"
    if-nez v1, :cond_1

    .line 8000
    const-class v2, Lcom/google/firestore/v1/StructuredQuery;

    monitor-enter v2

    .line 8001
    :try_start_0
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 8002
    if-nez v1, :cond_0

    .line 8003
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 8006
    sput-object v1, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 8008
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8010
    :cond_1
    :goto_0
    return-object v1

    .line 7995
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 7974
    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "select_"

    const-string v3, "from_"

    const-class v4, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    const-string v5, "where_"

    const-string v6, "orderBy_"

    const-class v7, Lcom/google/firestore/v1/StructuredQuery$Order;

    const-string v8, "limit_"

    const-string v9, "offset_"

    const-string v10, "startAt_"

    const-string v11, "endAt_"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 7987
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b\u0005\u1009\u0004\u0006\u0004\u0007\u1009\u0002\u0008\u1009\u0003"

    .line 7991
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 7971
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object v0

    .line 7968
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery;-><init>()V

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

.method public getEndAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 6395
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    :goto_0
    return-object v0
.end method

.method public getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .param p1, "index"    # I

    .line 5634
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object v0
.end method

.method public getFromCount()I
    .locals 1

    .line 5623
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFromList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation

    .line 5601
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFromOrBuilder(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 5645
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;

    return-object v0
.end method

.method public getFromOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5612
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLimit()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 6556
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    :goto_0
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 6482
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->offset_:I

    return v0
.end method

.method public getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .param p1, "index"    # I

    .line 5914
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v0
.end method

.method public getOrderByCount()I
    .locals 1

    .line 5884
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation

    .line 5824
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOrderByOrBuilder(I)Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 5944
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;

    return-object v0
.end method

.method public getOrderByOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5854
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelect()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 5534
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Projection;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Projection;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    :goto_0
    return-object v0
.end method

.method public getStartAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 6223
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    :goto_0
    return-object v0
.end method

.method public getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 5750
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    :goto_0
    return-object v0
.end method

.method public hasEndAt()Z
    .locals 1

    .line 6376
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 6539
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelect()Z
    .locals 2

    .line 5519
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStartAt()Z
    .locals 1

    .line 6182
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .line 5739
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
