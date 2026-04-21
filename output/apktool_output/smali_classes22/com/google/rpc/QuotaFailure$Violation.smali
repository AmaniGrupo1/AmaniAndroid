.class public final Lcom/google/rpc/QuotaFailure$Violation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "QuotaFailure.java"

# interfaces
.implements Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/QuotaFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Violation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/QuotaFailure$Violation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/QuotaFailure$Violation;",
        "Lcom/google/rpc/QuotaFailure$Violation$Builder;",
        ">;",
        "Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBJECT_FIELD_NUMBER:I = 0x1


# instance fields
.field private description_:Ljava/lang/String;

.field private subject_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 620
    new-instance v0, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-direct {v0}, Lcom/google/rpc/QuotaFailure$Violation;-><init>()V

    .line 623
    .local v0, "defaultInstance":Lcom/google/rpc/QuotaFailure$Violation;
    sput-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    .line 624
    const-class v1, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 626
    .end local v0    # "defaultInstance":Lcom/google/rpc/QuotaFailure$Violation;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    .line 108
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/QuotaFailure$Violation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/QuotaFailure$Violation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setSubject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/QuotaFailure$Violation;

    .line 100
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure$Violation;->clearSubject()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/QuotaFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/QuotaFailure$Violation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setSubjectBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/QuotaFailure$Violation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/QuotaFailure$Violation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/QuotaFailure$Violation;

    .line 100
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure$Violation;->clearDescription()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/QuotaFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/QuotaFailure$Violation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 100
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 260
    invoke-static {}, Lcom/google/rpc/QuotaFailure$Violation;->getDefaultInstance()Lcom/google/rpc/QuotaFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    .line 261
    return-void
.end method

.method private clearSubject()V
    .locals 1

    .line 167
    invoke-static {}, Lcom/google/rpc/QuotaFailure$Violation;->getDefaultInstance()Lcom/google/rpc/QuotaFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 629
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/QuotaFailure$Violation$Builder;
    .locals 1

    .line 360
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/QuotaFailure$Violation;)Lcom/google/rpc/QuotaFailure$Violation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/QuotaFailure$Violation;

    .line 363
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-virtual {v0, p0}, Lcom/google/rpc/QuotaFailure$Violation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/rpc/QuotaFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/QuotaFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure$Violation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 243
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    .line 244
    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 278
    invoke-static {p1}, Lcom/google/rpc/QuotaFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 279
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    .line 281
    return-void
.end method

.method private setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private setSubjectBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 181
    invoke-static {p1}, Lcom/google/rpc/QuotaFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/google/rpc/QuotaFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 613
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 610
    :pswitch_0
    return-object v1

    .line 607
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 592
    :pswitch_2
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    .line 593
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/QuotaFailure$Violation;>;"
    if-nez v0, :cond_1

    .line 594
    const-class v1, Lcom/google/rpc/QuotaFailure$Violation;

    monitor-enter v1

    .line 595
    :try_start_0
    sget-object v2, Lcom/google/rpc/QuotaFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 596
    if-nez v0, :cond_0

    .line 597
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 600
    sput-object v0, Lcom/google/rpc/QuotaFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    .line 602
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 604
    :cond_1
    :goto_0
    return-object v0

    .line 589
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/QuotaFailure$Violation;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    return-object v0

    .line 578
    :pswitch_4
    const-string v0, "subject_"

    const-string v1, "description_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 582
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 585
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/QuotaFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure$Violation;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/QuotaFailure$Violation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 575
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/QuotaFailure$Violation$Builder;

    invoke-direct {v0, v1}, Lcom/google/rpc/QuotaFailure$Violation$Builder;-><init>(Lcom/google/rpc/QuotaFailure$1;)V

    return-object v0

    .line 572
    :pswitch_6
    new-instance v0, Lcom/google/rpc/QuotaFailure$Violation;

    invoke-direct {v0}, Lcom/google/rpc/QuotaFailure$Violation;-><init>()V

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

    .line 204
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure$Violation;->subject_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
