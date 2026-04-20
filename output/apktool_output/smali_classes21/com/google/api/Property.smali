.class public final Lcom/google/api/Property;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Property.java"

# interfaces
.implements Lcom/google/api/PropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Property$PropertyType;,
        Lcom/google/api/Property$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Property;",
        "Lcom/google/api/Property$Builder;",
        ">;",
        "Lcom/google/api/PropertyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Property;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private description_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 760
    new-instance v0, Lcom/google/api/Property;

    invoke-direct {v0}, Lcom/google/api/Property;-><init>()V

    .line 763
    .local v0, "defaultInstance":Lcom/google/api/Property;
    sput-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    .line 764
    const-class v1, Lcom/google/api/Property;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 766
    .end local v0    # "defaultInstance":Lcom/google/api/Property;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Property;->name_:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/google/api/Property;->description_:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Property;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Property;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/api/Property;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Property;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;

    .line 23
    invoke-direct {p0}, Lcom/google/api/Property;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Property;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/api/Property;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Property;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/google/api/Property;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Property;Lcom/google/api/Property$PropertyType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;
    .param p1, "x1"    # Lcom/google/api/Property$PropertyType;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/api/Property;->setType(Lcom/google/api/Property$PropertyType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Property;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;

    .line 23
    invoke-direct {p0}, Lcom/google/api/Property;->clearType()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Property;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/api/Property;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Property;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;

    .line 23
    invoke-direct {p0}, Lcom/google/api/Property;->clearDescription()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Property;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Property;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 23
    invoke-direct {p0, p1}, Lcom/google/api/Property;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 371
    invoke-static {}, Lcom/google/api/Property;->getDefaultInstance()Lcom/google/api/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Property;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Property;->description_:Ljava/lang/String;

    .line 372
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 242
    invoke-static {}, Lcom/google/api/Property;->getDefaultInstance()Lcom/google/api/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Property;->name_:Ljava/lang/String;

    .line 243
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/Property;->type_:I

    .line 319
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Property;
    .locals 1

    .line 769
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Property$Builder;
    .locals 1

    .line 465
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Property;)Lcom/google/api/Property$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Property;

    .line 468
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-virtual {v0, p0}, Lcom/google/api/Property;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Property;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0}, Lcom/google/api/Property;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Property;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0, p1}, Lcom/google/api/Property;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Property;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Property;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Property;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Property;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Property;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Property;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Property;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Property;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Property;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Property;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Property;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation

    .line 775
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-virtual {v0}, Lcom/google/api/Property;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 360
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/Property;->description_:Ljava/lang/String;

    .line 361
    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 383
    invoke-static {p1}, Lcom/google/api/Property;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 384
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Property;->description_:Ljava/lang/String;

    .line 386
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 231
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/Property;->name_:Ljava/lang/String;

    .line 232
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 254
    invoke-static {p1}, Lcom/google/api/Property;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 255
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Property;->name_:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private setType(Lcom/google/api/Property$PropertyType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/Property$PropertyType;

    .line 306
    invoke-virtual {p1}, Lcom/google/api/Property$PropertyType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/api/Property;->type_:I

    .line 308
    return-void
.end method

.method private setTypeValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 295
    iput p1, p0, Lcom/google/api/Property;->type_:I

    .line 296
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 709
    sget-object v0, Lcom/google/api/Property$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 753
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 750
    :pswitch_0
    return-object v1

    .line 747
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 732
    :pswitch_2
    sget-object v0, Lcom/google/api/Property;->PARSER:Lcom/google/protobuf/Parser;

    .line 733
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Property;>;"
    if-nez v0, :cond_1

    .line 734
    const-class v1, Lcom/google/api/Property;

    monitor-enter v1

    .line 735
    :try_start_0
    sget-object v2, Lcom/google/api/Property;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 736
    if-nez v0, :cond_0

    .line 737
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 740
    sput-object v0, Lcom/google/api/Property;->PARSER:Lcom/google/protobuf/Parser;

    .line 742
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 744
    :cond_1
    :goto_0
    return-object v0

    .line 729
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Property;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    return-object v0

    .line 717
    :pswitch_4
    const-string/jumbo v0, "name_"

    const-string/jumbo v1, "type_"

    const-string v2, "description_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 722
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u0208"

    .line 725
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Property;->DEFAULT_INSTANCE:Lcom/google/api/Property;

    invoke-static {v2, v1, v0}, Lcom/google/api/Property;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 714
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Property$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Property$Builder;-><init>(Lcom/google/api/Property$1;)V

    return-object v0

    .line 711
    :pswitch_6
    new-instance v0, Lcom/google/api/Property;

    invoke-direct {v0}, Lcom/google/api/Property;-><init>()V

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/api/Property;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/api/Property;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/api/Property;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/api/Property;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/api/Property$PropertyType;
    .locals 2

    .line 283
    iget v0, p0, Lcom/google/api/Property;->type_:I

    invoke-static {v0}, Lcom/google/api/Property$PropertyType;->forNumber(I)Lcom/google/api/Property$PropertyType;

    move-result-object v0

    .line 284
    .local v0, "result":Lcom/google/api/Property$PropertyType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/api/Property$PropertyType;->UNRECOGNIZED:Lcom/google/api/Property$PropertyType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getTypeValue()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/google/api/Property;->type_:I

    return v0
.end method
