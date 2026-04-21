.class public final Lcom/google/firestore/bundle/NamedQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NamedQuery.java"

# interfaces
.implements Lcom/google/firestore/bundle/NamedQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/NamedQuery$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/NamedQuery;",
        "Lcom/google/firestore/bundle/NamedQuery$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/NamedQueryOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUNDLED_QUERY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

.field private name_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 626
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/NamedQuery;-><init>()V

    .line 629
    .local v0, "defaultInstance":Lcom/google/firestore/bundle/NamedQuery;
    sput-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    .line 630
    const-class v1, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 632
    .end local v0    # "defaultInstance":Lcom/google/firestore/bundle/NamedQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/NamedQuery;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearBundledQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 15
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearReadTime()V

    return-void
.end method

.method private clearBundledQuery()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 164
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    .line 165
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 82
    invoke-static {}, Lcom/google/firestore/bundle/NamedQuery;->getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 235
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    .line 236
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 635
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method private mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 148
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 150
    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->newBuilder(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundledQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    goto :goto_0

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 154
    :goto_0
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    .line 155
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 218
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 220
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 224
    :goto_0
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    .line 225
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 315
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 318
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/NamedQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/NamedQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 135
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    .line 136
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 96
    invoke-static {p1}, Lcom/google/firestore/bundle/NamedQuery;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 204
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    .line 205
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 619
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 616
    :pswitch_0
    return-object v1

    .line 613
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 598
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 599
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/NamedQuery;>;"
    if-nez v0, :cond_1

    .line 600
    const-class v1, Lcom/google/firestore/bundle/NamedQuery;

    monitor-enter v1

    .line 601
    :try_start_0
    sget-object v2, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 602
    if-nez v0, :cond_0

    .line 603
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 606
    sput-object v0, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 608
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 610
    :cond_1
    :goto_0
    return-object v0

    .line 595
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/NamedQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0

    .line 582
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "name_"

    const-string v2, "bundledQuery_"

    const-string v3, "readTime_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 588
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u1009\u0001"

    .line 591
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/bundle/NamedQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 579
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/bundle/NamedQuery$Builder;-><init>(Lcom/google/firestore/bundle/NamedQuery$1;)V

    return-object v0

    .line 576
    :pswitch_6
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/NamedQuery;-><init>()V

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

.method public getBundledQuery()Lcom/google/firestore/bundle/BundledQuery;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    :goto_0
    return-object v0
.end method

.method public hasBundledQuery()Z
    .locals 2

    .line 112
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

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
    .locals 1

    .line 179
    iget v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
