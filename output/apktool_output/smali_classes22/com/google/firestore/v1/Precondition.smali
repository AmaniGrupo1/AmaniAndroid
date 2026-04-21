.class public final Lcom/google/firestore/v1/Precondition;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Precondition.java"

# interfaces
.implements Lcom/google/firestore/v1/PreconditionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Precondition$ConditionTypeCase;,
        Lcom/google/firestore/v1/Precondition$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Precondition;",
        "Lcom/google/firestore/v1/Precondition$Builder;",
        ">;",
        "Lcom/google/firestore/v1/PreconditionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

.field public static final EXISTS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Precondition;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field private conditionTypeCase_:I

.field private conditionType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 502
    new-instance v0, Lcom/google/firestore/v1/Precondition;

    invoke-direct {v0}, Lcom/google/firestore/v1/Precondition;-><init>()V

    .line 505
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Precondition;
    sput-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    .line 506
    const-class v1, Lcom/google/firestore/v1/Precondition;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 508
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Precondition;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Precondition;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Precondition;->clearConditionType()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Precondition;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Precondition;
    .param p1, "x1"    # Z

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Precondition;->setExists(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Precondition;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Precondition;->clearExists()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Precondition;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Precondition;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Precondition;->setUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Precondition;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Precondition;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Precondition;->mergeUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Precondition;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Precondition;->clearUpdateTime()V

    return-void
.end method

.method private clearConditionType()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private clearExists()V
    .locals 2

    .line 116
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method

.method private clearUpdateTime()V
    .locals 2

    .line 191
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 195
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 511
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method private mergeUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 180
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 181
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1

    .line 274
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Precondition$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Precondition;

    .line 277
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Precondition;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Precondition;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Precondition;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Precondition;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Precondition;",
            ">;"
        }
    .end annotation

    .line 517
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExists(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method private setUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    iput-object p1, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    .line 161
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    .line 162
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/google/firestore/v1/Precondition$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 495
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 492
    :pswitch_0
    return-object v1

    .line 489
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 474
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Precondition;->PARSER:Lcom/google/protobuf/Parser;

    .line 475
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Precondition;>;"
    if-nez v0, :cond_1

    .line 476
    const-class v1, Lcom/google/firestore/v1/Precondition;

    monitor-enter v1

    .line 477
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Precondition;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 478
    if-nez v0, :cond_0

    .line 479
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 482
    sput-object v0, Lcom/google/firestore/v1/Precondition;->PARSER:Lcom/google/protobuf/Parser;

    .line 484
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 486
    :cond_1
    :goto_0
    return-object v0

    .line 471
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Precondition;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    return-object v0

    .line 459
    :pswitch_4
    const-string v0, "conditionType_"

    const-string v1, "conditionTypeCase_"

    const-class v2, Lcom/google/protobuf/Timestamp;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001:\u0000\u0002<\u0000"

    .line 467
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Precondition;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Precondition;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Precondition;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 456
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Precondition$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Precondition$Builder;-><init>(Lcom/google/firestore/v1/Precondition$1;)V

    return-object v0

    .line 453
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Precondition;

    invoke-direct {v0}, Lcom/google/firestore/v1/Precondition;-><init>()V

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

.method public getConditionTypeCase()Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->forNumber(I)Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getExists()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 145
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/firestore/v1/Precondition;->conditionType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 148
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasExists()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUpdateTime()Z
    .locals 2

    .line 133
    iget v0, p0, Lcom/google/firestore/v1/Precondition;->conditionTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
