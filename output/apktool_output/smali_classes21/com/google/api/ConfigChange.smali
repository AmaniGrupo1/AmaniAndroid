.class public final Lcom/google/api/ConfigChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigChange.java"

# interfaces
.implements Lcom/google/api/ConfigChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ConfigChange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ConfigChange;",
        "Lcom/google/api/ConfigChange$Builder;",
        ">;",
        "Lcom/google/api/ConfigChangeOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADVICES_FIELD_NUMBER:I = 0x5

.field public static final CHANGE_TYPE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

.field public static final ELEMENT_FIELD_NUMBER:I = 0x1

.field public static final NEW_VALUE_FIELD_NUMBER:I = 0x3

.field public static final OLD_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ConfigChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private advices_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation
.end field

.field private changeType_:I

.field private element_:Ljava/lang/String;

.field private newValue_:Ljava/lang/String;

.field private oldValue_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1144
    new-instance v0, Lcom/google/api/ConfigChange;

    invoke-direct {v0}, Lcom/google/api/ConfigChange;-><init>()V

    .line 1147
    .local v0, "defaultInstance":Lcom/google/api/ConfigChange;
    sput-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    .line 1148
    const-class v1, Lcom/google/api/ConfigChange;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1150
    .end local v0    # "defaultInstance":Lcom/google/api/ConfigChange;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/google/api/ConfigChange;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 29
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ConfigChange;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ConfigChange;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setElement(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ConfigChange;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setChangeTypeValue(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/ConfigChange;Lcom/google/api/ChangeType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Lcom/google/api/ChangeType;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setChangeType(Lcom/google/api/ChangeType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/ConfigChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;

    .line 19
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearChangeType()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Advice;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/api/ConfigChange;->setAdvices(ILcom/google/api/Advice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Lcom/google/api/Advice;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->addAdvices(Lcom/google/api/Advice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/Advice;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/api/ConfigChange;->addAdvices(ILcom/google/api/Advice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/ConfigChange;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->addAllAdvices(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/ConfigChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;

    .line 19
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearAdvices()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/ConfigChange;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->removeAdvices(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ConfigChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;

    .line 19
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearElement()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setElementBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ConfigChange;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setOldValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ConfigChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;

    .line 19
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearOldValue()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setOldValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/ConfigChange;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setNewValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/ConfigChange;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;

    .line 19
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearNewValue()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/ConfigChange;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setNewValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAdvices(ILcom/google/api/Advice;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Advice;

    .line 450
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 452
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 453
    return-void
.end method

.method private addAdvices(Lcom/google/api/Advice;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Advice;

    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 438
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method private addAllAdvices(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Advice;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Advice;>;"
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 465
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 467
    return-void
.end method

.method private clearAdvices()V
    .locals 1

    .line 477
    invoke-static {}, Lcom/google/api/ConfigChange;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 478
    return-void
.end method

.method private clearChangeType()V
    .locals 1

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    .line 341
    return-void
.end method

.method private clearElement()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private clearNewValue()V
    .locals 1

    .line 263
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    .line 264
    return-void
.end method

.method private clearOldValue()V
    .locals 1

    .line 191
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    .line 192
    return-void
.end method

.method private ensureAdvicesIsMutable()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 407
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/Advice;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    nop

    .line 409
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 411
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ConfigChange;
    .locals 1

    .line 1153
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 569
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ConfigChange;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/ConfigChange;

    .line 572
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-virtual {v0, p0}, Lcom/google/api/ConfigChange;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/api/ConfigChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/api/ConfigChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ConfigChange;",
            ">;"
        }
    .end annotation

    .line 1159
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAdvices(I)V
    .locals 1
    .param p1, "index"    # I

    .line 488
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 489
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method private setAdvices(ILcom/google/api/Advice;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Advice;

    .line 423
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 425
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method private setChangeType(Lcom/google/api/ChangeType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/ChangeType;

    .line 328
    invoke-virtual {p1}, Lcom/google/api/ChangeType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    .line 330
    return-void
.end method

.method private setChangeTypeValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 317
    iput p1, p0, Lcom/google/api/ConfigChange;->changeType_:I

    .line 318
    return-void
.end method

.method private setElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private setElementBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 132
    invoke-static {p1}, Lcom/google/api/ConfigChange;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private setNewValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    .line 252
    return-void
.end method

.method private setNewValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 276
    invoke-static {p1}, Lcom/google/api/ConfigChange;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 277
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    .line 279
    return-void
.end method

.method private setOldValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    .line 180
    return-void
.end method

.method private setOldValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 204
    invoke-static {p1}, Lcom/google/api/ConfigChange;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 205
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    .line 207
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/google/api/ConfigChange$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1134
    :pswitch_0
    return-object v1

    .line 1131
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1116
    :pswitch_2
    sget-object v1, Lcom/google/api/ConfigChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 1117
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/ConfigChange;>;"
    if-nez v1, :cond_1

    .line 1118
    const-class v2, Lcom/google/api/ConfigChange;

    monitor-enter v2

    .line 1119
    :try_start_0
    sget-object v0, Lcom/google/api/ConfigChange;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1120
    if-nez v1, :cond_0

    .line 1121
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1124
    sput-object v1, Lcom/google/api/ConfigChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 1126
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1128
    :cond_1
    :goto_0
    return-object v1

    .line 1113
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/ConfigChange;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    return-object v0

    .line 1098
    :pswitch_4
    const-string v1, "element_"

    const-string/jumbo v2, "oldValue_"

    const-string/jumbo v3, "newValue_"

    const-string v4, "changeType_"

    const-string v5, "advices_"

    const-class v6, Lcom/google/api/Advice;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 1106
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u000c\u0005\u001b"

    .line 1109
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v2, v1, v0}, Lcom/google/api/ConfigChange;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1095
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/ConfigChange$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/ConfigChange$Builder;-><init>(Lcom/google/api/ConfigChange$1;)V

    return-object v0

    .line 1092
    :pswitch_6
    new-instance v0, Lcom/google/api/ConfigChange;

    invoke-direct {v0}, Lcom/google/api/ConfigChange;-><init>()V

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

.method public getAdvices(I)Lcom/google/api/Advice;
    .locals 1
    .param p1, "index"    # I

    .line 391
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/Advice;

    return-object v0
.end method

.method public getAdvicesCount()I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAdvicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAdvicesOrBuilder(I)Lcom/google/api/AdviceOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 403
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AdviceOrBuilder;

    return-object v0
.end method

.method public getAdvicesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AdviceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getChangeType()Lcom/google/api/ChangeType;
    .locals 2

    .line 305
    iget v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    invoke-static {v0}, Lcom/google/api/ChangeType;->forNumber(I)Lcom/google/api/ChangeType;

    move-result-object v0

    .line 306
    .local v0, "result":Lcom/google/api/ChangeType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/api/ChangeType;->UNRECOGNIZED:Lcom/google/api/ChangeType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getChangeTypeValue()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    return v0
.end method

.method public getElement()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    return-object v0
.end method

.method public getElementBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
