.class public Lcom/google/firebase/firestore/util/CustomClassMapper;
.super Ljava/lang/Object;
.source "CustomClassMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;,
        Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;,
        Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;
    }
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0x1f4

.field private static final mappers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/util/CustomClassMapper;->mappers:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/reflect/Type;
    .param p2, "x2"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 61
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    .line 61
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private static convertBean(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 579
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    move-result-object v0

    .line 580
    .local v0, "mapper":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 581
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->expectMap(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 583
    :cond_0
    iget-object v1, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 585
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static convertBlob(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/Blob;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 539
    instance-of v0, p0, Lcom/google/firebase/firestore/Blob;

    if-eqz v0, :cond_0

    .line 540
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/Blob;

    return-object v0

    .line 542
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertBoolean(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 481
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 482
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 484
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertDate(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/util/Date;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 501
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 502
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 503
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/Timestamp;

    if-eqz v0, :cond_1

    .line 504
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/Timestamp;

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 506
    :cond_1
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertDocumentReference(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 569
    instance-of v0, p0, Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v0, :cond_0

    .line 570
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/DocumentReference;

    return-object v0

    .line 572
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to DocumentReference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertDouble(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Double;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 456
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 457
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 459
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    .line 460
    .local v0, "value":Ljava/lang/Long;
    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 461
    .local v1, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 462
    return-object v1

    .line 464
    :cond_1
    iget-object v2, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loss of precision while converting number to double: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Did you mean to use a 64-bit long instead?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 471
    .end local v0    # "value":Ljava/lang/Long;
    .end local v1    # "doubleValue":Ljava/lang/Double;
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 472
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 474
    :cond_3
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertGeoPoint(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/GeoPoint;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 549
    instance-of v0, p0, Lcom/google/firebase/firestore/GeoPoint;

    if-eqz v0, :cond_0

    .line 550
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/GeoPoint;

    return-object v0

    .line 552
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to GeoPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertInstant(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lj$/time/Instant;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 526
    instance-of v0, p0, Lcom/google/firebase/Timestamp;

    if-eqz v0, :cond_0

    .line 527
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/Timestamp;

    .line 528
    .local v0, "timestamp":Lcom/google/firebase/Timestamp;
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v1

    return-object v1

    .line 529
    .end local v0    # "timestamp":Lcom/google/firebase/Timestamp;
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 530
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 532
    :cond_1
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Instant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertInteger(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Integer;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 412
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 413
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 414
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 415
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 416
    .local v0, "value":D
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    .line 417
    move-object v2, p0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 419
    :cond_3
    iget-object v2, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Numeric value out of 32-bit integer range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Did you mean to use a long or double instead of an int?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static convertLong(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Long;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 433
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 434
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 435
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 436
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 437
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 438
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    .line 439
    .local v0, "value":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    .line 440
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 442
    :cond_2
    iget-object v1, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric value out of 64-bit long range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Did you mean to use a double instead of a long?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 449
    .end local v0    # "value":Ljava/lang/Double;
    :cond_3
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertString(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 491
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 492
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 494
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static convertTimestamp(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/Timestamp;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 513
    instance-of v0, p0, Lcom/google/firebase/Timestamp;

    if-eqz v0, :cond_0

    .line 514
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/Timestamp;

    return-object v0

    .line 515
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 516
    new-instance v0, Lcom/google/firebase/Timestamp;

    move-object v1, p0

    check-cast v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    return-object v0

    .line 518
    :cond_1
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentReference;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "docRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/DocumentReference;",
            ")TT;"
        }
    .end annotation

    .line 107
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    sget-object v1, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->EMPTY:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;-><init>(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Lcom/google/firebase/firestore/DocumentReference;)V

    invoke-static {p0, p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertToPlainJavaTypes(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 89
    .local p0, "update":Ljava/util/Map;, "Ljava/util/Map<*Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "converted":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    invoke-static {v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->hardAssert(Z)V

    .line 92
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 93
    .local v1, "convertedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v1
.end method

.method private static convertVectorValue(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/VectorValue;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    .line 559
    instance-of v0, p0, Lcom/google/firebase/firestore/VectorValue;

    if-eqz v0, :cond_0

    .line 560
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/VectorValue;

    return-object v0

    .line 562
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to VectorValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "path"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .param p1, "reason"    # Ljava/lang/String;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not deserialize object. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (found in field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 233
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Number;

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Boolean;

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Character;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 240
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertString(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_2
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertDate(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 244
    :cond_3
    const-class v0, Lcom/google/firebase/Timestamp;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertTimestamp(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    return-object v0

    .line 246
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    const-class v0, Lj$/time/Instant;

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertInstant(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lj$/time/Instant;

    move-result-object v0

    return-object v0

    .line 249
    :cond_5
    const-class v0, Lcom/google/firebase/firestore/Blob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertBlob(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/Blob;

    move-result-object v0

    return-object v0

    .line 251
    :cond_6
    const-class v0, Lcom/google/firebase/firestore/GeoPoint;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertGeoPoint(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/GeoPoint;

    move-result-object v0

    return-object v0

    .line 253
    :cond_7
    const-class v0, Lcom/google/firebase/firestore/DocumentReference;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertDocumentReference(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    return-object v0

    .line 255
    :cond_8
    const-class v0, Lcom/google/firebase/firestore/VectorValue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertVectorValue(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Lcom/google/firebase/firestore/VectorValue;

    move-result-object v0

    return-object v0

    .line 257
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_d

    .line 260
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_c

    .line 263
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    return-object p0

    .line 265
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 266
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 268
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertBean(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 261
    :cond_c
    iget-object v0, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has generic type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 258
    :cond_d
    iget-object v0, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    const-string v1, "Converting to Arrays is not supported, please use Lists instead"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 239
    :cond_e
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToPrimitive(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static deserializeToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 354
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 355
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 361
    .local v1, "enumFields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 362
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    invoke-static {v4}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 366
    goto :goto_1

    .line 361
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_1
    :goto_1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find enum value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 376
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for value \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-static {v3, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 379
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "enumFields":[Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v0, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a String while deserializing to enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static deserializeToParameterizedType(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 11
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 276
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 277
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 279
    .local v1, "genericType":Ljava/lang/reflect/Type;
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 280
    move-object v2, p0

    check-cast v2, Ljava/util/List;

    .line 281
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 283
    nop

    .line 285
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 287
    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    move-result-object v6

    .line 284
    invoke-static {v5, v1, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v5

    .line 283
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 291
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a List, but got a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 293
    .end local v1    # "genericType":Ljava/lang/reflect/Type;
    :cond_2
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 295
    .local v1, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 296
    .local v2, "valueType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 301
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->expectMap(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/util/Map;

    move-result-object v3

    .line 302
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 304
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 305
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 307
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    .line 309
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    move-result-object v9

    .line 306
    invoke-static {v8, v2, v9}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v8

    .line 304
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 311
    :cond_3
    return-object v4

    .line 297
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v3, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only Maps with string keys are supported, but found Map with key type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 312
    .end local v1    # "keyType":Ljava/lang/reflect/Type;
    .end local v2    # "valueType":Ljava/lang/reflect/Type;
    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 316
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->expectMap(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/util/Map;

    move-result-object v1

    .line 317
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    move-result-object v2

    .line 318
    .local v2, "mapper":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v3, "typeMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    invoke-static {v2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->access$100(Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 320
    .local v4, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 321
    .local v5, "types":[Ljava/lang/reflect/Type;
    array-length v6, v5

    array-length v7, v4

    if-ne v6, v7, :cond_7

    .line 324
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_6

    .line 325
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 327
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {v2, v1, v3, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->deserialize(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 322
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Mismatched lengths for type variables and actual types"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 313
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "mapper":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    .end local v3    # "typeMapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;Ljava/lang/reflect/Type;>;"
    .end local v4    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;"
    .end local v5    # "types":[Ljava/lang/reflect/Type;
    :cond_8
    iget-object v1, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    const-string v2, "Collections are not supported, please use Lists instead"

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static deserializeToPrimitive(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 334
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 336
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 338
    :cond_1
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 340
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 342
    :cond_3
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 345
    :cond_4
    iget-object v0, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    .line 347
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Deserializing values to %s is not supported"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 343
    :cond_5
    :goto_0
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertDouble(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 341
    :cond_6
    :goto_1
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertLong(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 339
    :cond_7
    :goto_2
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertDouble(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 337
    :cond_8
    :goto_3
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertBoolean(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 335
    :cond_9
    :goto_4
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertInteger(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")TT;"
        }
    .end annotation

    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 200
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToParameterizedType(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 202
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v0, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 203
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 204
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 205
    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v3, v0

    if-gtz v3, :cond_4

    .line 214
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/WildcardType;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 215
    .local v3, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v4, v3

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type bounds on wildcard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->hardAssert(ZLjava/lang/String;)V

    .line 216
    aget-object v1, v3, v2

    invoke-static {p0, v1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 206
    .end local v3    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_4
    iget-object v1, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    const-string v2, "Generic lower-bounded wildcard types are not supported"

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 217
    .end local v0    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_7

    .line 219
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 220
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v0

    if-lez v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type bounds on type variable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/firebase/firestore/util/CustomClassMapper;->hardAssert(ZLjava/lang/String;)V

    .line 221
    aget-object v1, v0, v2

    invoke-static {p0, v1, p2}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 223
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    const-string v1, "Generic Arrays are not supported, please use Lists instead"

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 227
    :cond_8
    iget-object v0, p2, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static expectMap(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;)Ljava/util/Map;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 402
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 404
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 406
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a Map while deserializing, but got a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->deserializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static hardAssert(Z)V
    .locals 1
    .param p0, "assertion"    # Z

    .line 68
    const-string v0, "Internal inconsistency"

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->hardAssert(ZLjava/lang/String;)V

    .line 69
    return-void
.end method

.method private static hardAssert(ZLjava/lang/String;)V
    .locals 3
    .param p0, "assertion"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 72
    if-eqz p0, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hard assert failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<",
            "TT;>;"
        }
    .end annotation

    .line 390
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/firebase/firestore/util/CustomClassMapper;->mappers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    .line 391
    .local v0, "mapper":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    if-nez v0, :cond_0

    .line 392
    new-instance v1, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    .line 395
    sget-object v1, Lcom/google/firebase/firestore/util/CustomClassMapper;->mappers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    return-object v0
.end method

.method private static serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    .local p0, "o":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->EMPTY:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    .local p0, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->getLength()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_14

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 126
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    nop

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 131
    const-string v1, "Numbers of type %s are not supported, please use an int, long, float or double"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 127
    :cond_2
    :goto_0
    return-object p0

    .line 135
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 136
    return-object p0

    .line 137
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 138
    return-object p0

    .line 139
    :cond_5
    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_13

    .line 141
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, "key":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 146
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "keyString":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v4    # "keyString":Ljava/lang/String;
    nop

    .line 151
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 149
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v3    # "key":Ljava/lang/Object;
    :cond_6
    const-string v1, "Maps with non-string keys are not supported"

    invoke-static {p1, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 152
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_7
    return-object v0

    .line 153
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 154
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 155
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 156
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 158
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    .end local v2    # "i":I
    :cond_9
    return-object v1

    .line 162
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_a
    const-string v0, "Serializing Collections is not supported, please use Lists instead"

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 165
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_12

    .line 167
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    .line 168
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "enumName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 171
    .local v1, "enumField":Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 172
    .end local v1    # "enumField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    return-object v0

    .line 175
    .end local v0    # "enumName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_c
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/google/firebase/Timestamp;

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/google/firebase/firestore/GeoPoint;

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/google/firebase/firestore/Blob;

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/google/firebase/firestore/DocumentReference;

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/google/firebase/firestore/FieldValue;

    if-nez v0, :cond_11

    instance-of v0, p0, Lcom/google/firebase/firestore/VectorValue;

    if-eqz v0, :cond_d

    goto :goto_4

    .line 183
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    instance-of v0, p0, Lj$/time/Instant;

    if-eqz v0, :cond_e

    .line 184
    move-object v0, p0

    check-cast v0, Lj$/time/Instant;

    .line 185
    .local v0, "instant":Lj$/time/Instant;
    new-instance v1, Lcom/google/firebase/Timestamp;

    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v0}, Lj$/time/Instant;->getNano()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v1

    .line 186
    .end local v0    # "instant":Lj$/time/Instant;
    :cond_e
    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/net/URI;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_f

    goto :goto_3

    .line 189
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 190
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;

    move-result-object v1

    .line 191
    .local v1, "mapper":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    invoke-virtual {v1, p0, p1}, Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;->serialize(Ljava/lang/Object;Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 187
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "mapper":Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper;, "Lcom/google/firebase/firestore/util/CustomClassMapper$BeanMapper<TT;>;"
    :cond_10
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_11
    :goto_4
    return-object p0

    .line 166
    :cond_12
    const-string v0, "Serializing Arrays is not supported, please use Lists instead"

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 140
    :cond_13
    const-string v0, "Characters are not supported, please use Strings"

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 117
    :cond_14
    const-string v0, "Exceeded maximum depth of 500, which likely indicates there\'s an object cycle"

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/CustomClassMapper;->serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static serializeError(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "path"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .param p1, "reason"    # Ljava/lang/String;

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not serialize object. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (found in field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
