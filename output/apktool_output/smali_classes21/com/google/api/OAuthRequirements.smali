.class public final Lcom/google/api/OAuthRequirements;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OAuthRequirements.java"

# interfaces
.implements Lcom/google/api/OAuthRequirementsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/OAuthRequirements$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/OAuthRequirements;",
        "Lcom/google/api/OAuthRequirements$Builder;",
        ">;",
        "Lcom/google/api/OAuthRequirementsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CANONICAL_SCOPES_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/OAuthRequirements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canonicalScopes_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 408
    new-instance v0, Lcom/google/api/OAuthRequirements;

    invoke-direct {v0}, Lcom/google/api/OAuthRequirements;-><init>()V

    .line 411
    .local v0, "defaultInstance":Lcom/google/api/OAuthRequirements;
    sput-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    .line 412
    const-class v1, Lcom/google/api/OAuthRequirements;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 414
    .end local v0    # "defaultInstance":Lcom/google/api/OAuthRequirements;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/OAuthRequirements;->canonicalScopes_:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/OAuthRequirements;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/OAuthRequirements;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/OAuthRequirements;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/google/api/OAuthRequirements;->setCanonicalScopes(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/OAuthRequirements;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/OAuthRequirements;

    .line 31
    invoke-direct {p0}, Lcom/google/api/OAuthRequirements;->clearCanonicalScopes()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/OAuthRequirements;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/OAuthRequirements;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 31
    invoke-direct {p0, p1}, Lcom/google/api/OAuthRequirements;->setCanonicalScopesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCanonicalScopes()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/google/api/OAuthRequirements;->getDefaultInstance()Lcom/google/api/OAuthRequirements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/OAuthRequirements;->getCanonicalScopes()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/OAuthRequirements;->canonicalScopes_:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/OAuthRequirements;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/OAuthRequirements$Builder;
    .locals 1

    .line 213
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-virtual {v0}, Lcom/google/api/OAuthRequirements;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/OAuthRequirements;)Lcom/google/api/OAuthRequirements$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/OAuthRequirements;

    .line 216
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-virtual {v0, p0}, Lcom/google/api/OAuthRequirements;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0}, Lcom/google/api/OAuthRequirements;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0, p1}, Lcom/google/api/OAuthRequirements;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 164
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/OAuthRequirements;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/OAuthRequirements;",
            ">;"
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-virtual {v0}, Lcom/google/api/OAuthRequirements;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCanonicalScopes(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/OAuthRequirements;->canonicalScopes_:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private setCanonicalScopesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-static {p1}, Lcom/google/api/OAuthRequirements;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/OAuthRequirements;->canonicalScopes_:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/google/api/OAuthRequirements$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 398
    :pswitch_0
    return-object v1

    .line 395
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 380
    :pswitch_2
    sget-object v0, Lcom/google/api/OAuthRequirements;->PARSER:Lcom/google/protobuf/Parser;

    .line 381
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/OAuthRequirements;>;"
    if-nez v0, :cond_1

    .line 382
    const-class v1, Lcom/google/api/OAuthRequirements;

    monitor-enter v1

    .line 383
    :try_start_0
    sget-object v2, Lcom/google/api/OAuthRequirements;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 384
    if-nez v0, :cond_0

    .line 385
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 388
    sput-object v0, Lcom/google/api/OAuthRequirements;->PARSER:Lcom/google/protobuf/Parser;

    .line 390
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 392
    :cond_1
    :goto_0
    return-object v0

    .line 377
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/OAuthRequirements;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    return-object v0

    .line 368
    :pswitch_4
    const-string v0, "canonicalScopes_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 373
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/OAuthRequirements;->DEFAULT_INSTANCE:Lcom/google/api/OAuthRequirements;

    invoke-static {v2, v1, v0}, Lcom/google/api/OAuthRequirements;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 365
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/OAuthRequirements$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/OAuthRequirements$Builder;-><init>(Lcom/google/api/OAuthRequirements$1;)V

    return-object v0

    .line 362
    :pswitch_6
    new-instance v0, Lcom/google/api/OAuthRequirements;

    invoke-direct {v0}, Lcom/google/api/OAuthRequirements;-><init>()V

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

.method public getCanonicalScopes()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/api/OAuthRequirements;->canonicalScopes_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalScopesBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/OAuthRequirements;->canonicalScopes_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
