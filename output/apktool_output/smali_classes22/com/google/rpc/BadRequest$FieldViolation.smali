.class public final Lcom/google/rpc/BadRequest$FieldViolation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/BadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldViolation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/BadRequest$FieldViolation;",
        "Lcom/google/rpc/BadRequest$FieldViolation$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description_:Ljava/lang/String;

.field private field_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 537
    new-instance v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-direct {v0}, Lcom/google/rpc/BadRequest$FieldViolation;-><init>()V

    .line 540
    .local v0, "defaultInstance":Lcom/google/rpc/BadRequest$FieldViolation;
    sput-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    .line 541
    const-class v1, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 543
    .end local v0    # "defaultInstance":Lcom/google/rpc/BadRequest$FieldViolation;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1

    .line 78
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest$FieldViolation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setField(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 78
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$FieldViolation;->clearField()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest$FieldViolation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 78
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setFieldBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/BadRequest$FieldViolation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest$FieldViolation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 78
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$FieldViolation;->clearDescription()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/BadRequest$FieldViolation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest$FieldViolation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 78
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 214
    invoke-static {}, Lcom/google/rpc/BadRequest$FieldViolation;->getDefaultInstance()Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private clearField()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/google/rpc/BadRequest$FieldViolation;->getDefaultInstance()Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1

    .line 546
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1

    .line 308
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$FieldViolation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 311
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0, p0}, Lcom/google/rpc/BadRequest$FieldViolation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/rpc/BadRequest$FieldViolation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/BadRequest$FieldViolation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest$FieldViolation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 203
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    .line 204
    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 226
    invoke-static {p1}, Lcom/google/rpc/BadRequest$FieldViolation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private setField(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private setFieldBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 159
    invoke-static {p1}, Lcom/google/rpc/BadRequest$FieldViolation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 160
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/google/rpc/BadRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 530
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 527
    :pswitch_0
    return-object v1

    .line 524
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 509
    :pswitch_2
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->PARSER:Lcom/google/protobuf/Parser;

    .line 510
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/BadRequest$FieldViolation;>;"
    if-nez v0, :cond_1

    .line 511
    const-class v1, Lcom/google/rpc/BadRequest$FieldViolation;

    monitor-enter v1

    .line 512
    :try_start_0
    sget-object v2, Lcom/google/rpc/BadRequest$FieldViolation;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 513
    if-nez v0, :cond_0

    .line 514
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 517
    sput-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->PARSER:Lcom/google/protobuf/Parser;

    .line 519
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 521
    :cond_1
    :goto_0
    return-object v0

    .line 506
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/BadRequest$FieldViolation;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0

    .line 495
    :pswitch_4
    const-string v0, "field_"

    const-string v1, "description_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 499
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 502
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/BadRequest$FieldViolation;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/BadRequest$FieldViolation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 492
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/BadRequest$FieldViolation$Builder;

    invoke-direct {v0, v1}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;-><init>(Lcom/google/rpc/BadRequest$1;)V

    return-object v0

    .line 489
    :pswitch_6
    new-instance v0, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-direct {v0}, Lcom/google/rpc/BadRequest$FieldViolation;-><init>()V

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

    .line 176
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/rpc/BadRequest$FieldViolation;->field_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
