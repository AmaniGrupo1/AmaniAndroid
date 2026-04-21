.class public final Lcom/google/firestore/v1/Pipeline$Stage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Pipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/Pipeline$StageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Pipeline$Stage$Builder;,
        Lcom/google/firestore/v1/Pipeline$Stage$OptionsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Pipeline$Stage;",
        "Lcom/google/firestore/v1/Pipeline$Stage$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Pipeline$StageOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private args_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1056
    new-instance v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-direct {v0}, Lcom/google/firestore/v1/Pipeline$Stage;-><init>()V

    .line 1059
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Pipeline$Stage;
    sput-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    .line 1060
    const-class v1, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1062
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Pipeline$Stage;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 406
    nop

    .line 408
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->options_:Lcom/google/protobuf/MapFieldLite;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->name_:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/google/firestore/v1/Pipeline$Stage;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 169
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1

    .line 161
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Pipeline$Stage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Pipeline$Stage;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 161
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->getMutableOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 161
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 161
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Value;

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->setArgs(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Pipeline$Stage;Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # Lcom/google/firestore/v1/Value;

    .line 161
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->addArgs(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Pipeline$Stage;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Value;

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Pipeline$Stage;->addArgs(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Pipeline$Stage;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 161
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->addAllArgs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Pipeline$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 161
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->clearArgs()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Pipeline$Stage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Pipeline$Stage;
    .param p1, "x1"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->removeArgs(I)V

    return-void
.end method

.method private addAllArgs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->ensureArgsIsMutable()V

    .line 370
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 372
    return-void
.end method

.method private addArgs(ILcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 356
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->ensureArgsIsMutable()V

    .line 358
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 359
    return-void
.end method

.method private addArgs(Lcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->ensureArgsIsMutable()V

    .line 345
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method private clearArgs()V
    .locals 1

    .line 381
    invoke-static {}, Lcom/google/firestore/v1/Pipeline$Stage;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 382
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 236
    invoke-static {}, Lcom/google/firestore/v1/Pipeline$Stage;->getDefaultInstance()Lcom/google/firestore/v1/Pipeline$Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->name_:Ljava/lang/String;

    .line 237
    return-void
.end method

.method private ensureArgsIsMutable()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 316
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    nop

    .line 318
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 320
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1

    .line 1065
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method private getMutableOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->internalGetMutableOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableOptions()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->options_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->options_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->options_:Lcom/google/protobuf/MapFieldLite;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->options_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetOptions()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->options_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1

    .line 587
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Pipeline$Stage;)Lcom/google/firestore/v1/Pipeline$Stage$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Pipeline$Stage;

    .line 590
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Pipeline$Stage;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Pipeline$Stage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Pipeline$Stage;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 538
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Pipeline$Stage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Pipeline$Stage;",
            ">;"
        }
    .end annotation

    .line 1071
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Pipeline$Stage;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeArgs(I)V
    .locals 1
    .param p1, "index"    # I

    .line 391
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->ensureArgsIsMutable()V

    .line 392
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method private setArgs(ILcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 331
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->ensureArgsIsMutable()V

    .line 333
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/Pipeline$Stage;->name_:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 252
    invoke-static {p1}, Lcom/google/firestore/v1/Pipeline$Stage;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->name_:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public containsOptions(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 437
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/google/firestore/v1/Pipeline$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1049
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1046
    :pswitch_0
    return-object v1

    .line 1043
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1028
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1029
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Pipeline$Stage;>;"
    if-nez v0, :cond_1

    .line 1030
    const-class v1, Lcom/google/firestore/v1/Pipeline$Stage;

    monitor-enter v1

    .line 1031
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Pipeline$Stage;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1032
    if-nez v0, :cond_0

    .line 1033
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1036
    sput-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1038
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1040
    :cond_1
    :goto_0
    return-object v0

    .line 1025
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Pipeline$Stage;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    return-object v0

    .line 1011
    :pswitch_4
    const-string v0, "name_"

    const-string v1, "args_"

    const-class v2, Lcom/google/firestore/v1/Value;

    const-string v3, "options_"

    sget-object v4, Lcom/google/firestore/v1/Pipeline$Stage$OptionsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1018
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0001\u0000\u0001\u0208\u0002\u001b\u00032"

    .line 1021
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Pipeline$Stage;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Pipeline$Stage;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1008
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Pipeline$Stage$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Pipeline$Stage$Builder;-><init>(Lcom/google/firestore/v1/Pipeline$1;)V

    return-object v0

    .line 1005
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Pipeline$Stage;

    invoke-direct {v0}, Lcom/google/firestore/v1/Pipeline$Stage;-><init>()V

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

.method public getArgs(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 301
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public getArgsCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getArgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getArgsOrBuilder(I)Lcom/google/firestore/v1/ValueOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 312
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ValueOrBuilder;

    return-object v0
.end method

.method public getArgsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->args_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/firestore/v1/Pipeline$Stage;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 423
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 457
    nop

    .line 458
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 457
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 475
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 476
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 477
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getOptionsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 491
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 492
    invoke-direct {p0}, Lcom/google/firestore/v1/Pipeline$Stage;->internalGetOptions()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 493
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 494
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
