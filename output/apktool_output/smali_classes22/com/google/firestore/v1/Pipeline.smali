.class public final Lcom/google/firestore/v1/Pipeline;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Pipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/PipelineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Pipeline$Stage;,
        Lcom/google/firestore/v1/Pipeline$StageOrBuilder;,
        Lcom/google/firestore/v1/Pipeline$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Pipeline;",
        "Lcom/google/firestore/v1/Pipeline$Builder;",
        ">;",
        "Lcom/google/firestore/v1/PipelineOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Pipeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAGES_FIELD_NUMBER:I = 0x1


# instance fields
.field private stages_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1520
    new-instance v0, Lcom/google/firestore/v1/Pipeline;

    invoke-direct {v0}, Lcom/google/firestore/v1/Pipeline;-><init>()V

    .line 1523
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Pipeline;
    sput-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    .line 1524
    const-class v1, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1526
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Pipeline;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method static synthetic access$1200()Lcom/google/firestore/v1/Pipeline;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/Pipeline;ILcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Pipeline;->setStages(ILcom/google/firestore/v1/Pipeline$Stage;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/Pipeline;Lcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline;
    .param p1, "x1"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline;->addStages(Lcom/google/firestore/v1/Pipeline$Stage;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/Pipeline;ILcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Pipeline;->addStages(ILcom/google/firestore/v1/Pipeline$Stage;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/Pipeline;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline;->addAllStages(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/Pipeline;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline;->clearStages()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/Pipeline;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline;->removeStages(I)V

    return-void
.end method

.method private addAllStages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;)V"
        }
    .end annotation

    .line 1187
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Pipeline$Stage;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline;->ensureStagesIsMutable()V

    .line 1188
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1190
    return-void
.end method

.method private addStages(ILcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1174
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline;->ensureStagesIsMutable()V

    .line 1176
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1177
    return-void
.end method

.method private addStages(Lcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline;->ensureStagesIsMutable()V

    .line 1163
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1164
    return-void
.end method

.method private clearStages()V
    .locals 1

    .line 1199
    invoke-static {}, Lcom/google/firestore/v1/Pipeline;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1200
    return-void
.end method

.method private ensureStagesIsMutable()V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1134
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Pipeline$Stage;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    nop

    .line 1136
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1138
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Pipeline;
    .locals 1

    .line 1529
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1

    .line 1290
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/Pipeline$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Pipeline;

    .line 1293
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Pipeline;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1266
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Pipeline;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1273
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Pipeline;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1229
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1236
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1285
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1253
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1260
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1216
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1223
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1241
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1248
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Pipeline;",
            ">;"
        }
    .end annotation

    .line 1535
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeStages(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1209
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline;->ensureStagesIsMutable()V

    .line 1210
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1211
    return-void
.end method

.method private setStages(ILcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1149
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline;->ensureStagesIsMutable()V

    .line 1151
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1152
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1471
    sget-object v0, Lcom/google/firestore/v1/Pipeline$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1513
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1510
    :pswitch_0
    return-object v1

    .line 1507
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1492
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->PARSER:Lcom/google/protobuf/Parser;

    .line 1493
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Pipeline;>;"
    if-nez v0, :cond_1

    .line 1494
    const-class v1, Lcom/google/firestore/v1/Pipeline;

    monitor-enter v1

    .line 1495
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Pipeline;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1496
    if-nez v0, :cond_0

    .line 1497
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1500
    sput-object v0, Lcom/google/firestore/v1/Pipeline;->PARSER:Lcom/google/protobuf/Parser;

    .line 1502
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1504
    :cond_1
    :goto_0
    return-object v0

    .line 1489
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Pipeline;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    return-object v0

    .line 1479
    :pswitch_4
    const-string v0, "stages_"

    const-class v1, Lcom/google/firestore/v1/Pipeline$Stage;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1483
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 1485
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Pipeline;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Pipeline;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1476
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Pipeline$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Pipeline$Builder;-><init>(Lcom/google/firestore/v1/Pipeline$1;)V

    return-object v0

    .line 1473
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Pipeline;

    invoke-direct {v0}, Lcom/google/firestore/v1/Pipeline;-><init>()V

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

.method public getStages(I)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p1, "index"    # I

    .line 1119
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public getStagesCount()I
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getStagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getStagesOrBuilder(I)Lcom/google/firestore/v1/Pipeline$StageOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1130
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$StageOrBuilder;

    return-object v0
.end method

.method public getStagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/Pipeline$StageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline;->stages_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
