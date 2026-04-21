.class public final Lcom/google/api/AuthenticationRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AuthenticationRule.java"

# interfaces
.implements Lcom/google/api/AuthenticationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/AuthenticationRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/AuthenticationRule;",
        "Lcom/google/api/AuthenticationRule$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationRuleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOW_WITHOUT_CREDENTIAL_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

.field public static final OAUTH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIREMENTS_FIELD_NUMBER:I = 0x7

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private allowWithoutCredential_:Z

.field private bitField0_:I

.field private oauth_:Lcom/google/api/OAuthRequirements;

.field private requirements_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/AuthRequirement;",
            ">;"
        }
    .end annotation
.end field

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 861
    new-instance v0, Lcom/google/api/AuthenticationRule;

    invoke-direct {v0}, Lcom/google/api/AuthenticationRule;-><init>()V

    .line 864
    .local v0, "defaultInstance":Lcom/google/api/AuthenticationRule;
    sput-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    .line 865
    const-class v1, Lcom/google/api/AuthenticationRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 867
    .end local v0    # "defaultInstance":Lcom/google/api/AuthenticationRule;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->selector_:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/google/api/AuthenticationRule;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 30
    return-void
.end method

.method static synthetic access$000()Lcom/google/api/AuthenticationRule;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/AuthenticationRule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/AuthenticationRule;Lcom/google/api/AuthRequirement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Lcom/google/api/AuthRequirement;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->addRequirements(Lcom/google/api/AuthRequirement;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/AuthRequirement;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/api/AuthenticationRule;->addRequirements(ILcom/google/api/AuthRequirement;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/AuthenticationRule;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->addAllRequirements(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;

    .line 22
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->clearRequirements()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/AuthenticationRule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->removeRequirements(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;

    .line 22
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/AuthenticationRule;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Lcom/google/api/OAuthRequirements;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->setOauth(Lcom/google/api/OAuthRequirements;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Lcom/google/api/OAuthRequirements;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->mergeOauth(Lcom/google/api/OAuthRequirements;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;

    .line 22
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->clearOauth()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/AuthenticationRule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # Z

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/AuthenticationRule;->setAllowWithoutCredential(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/AuthenticationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;

    .line 22
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->clearAllowWithoutCredential()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/AuthenticationRule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/api/AuthRequirement;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/api/AuthenticationRule;->setRequirements(ILcom/google/api/AuthRequirement;)V

    return-void
.end method

.method private addAllRequirements(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthRequirement;",
            ">;)V"
        }
    .end annotation

    .line 325
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/AuthRequirement;>;"
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->ensureRequirementsIsMutable()V

    .line 326
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 328
    return-void
.end method

.method private addRequirements(ILcom/google/api/AuthRequirement;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthRequirement;

    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->ensureRequirementsIsMutable()V

    .line 314
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 315
    return-void
.end method

.method private addRequirements(Lcom/google/api/AuthRequirement;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/AuthRequirement;

    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->ensureRequirementsIsMutable()V

    .line 301
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method private clearAllowWithoutCredential()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/AuthenticationRule;->allowWithoutCredential_:Z

    .line 211
    return-void
.end method

.method private clearOauth()V
    .locals 1

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    .line 172
    iget v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    .line 173
    return-void
.end method

.method private clearRequirements()V
    .locals 1

    .line 337
    invoke-static {}, Lcom/google/api/AuthenticationRule;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 338
    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/google/api/AuthenticationRule;->getDefaultInstance()Lcom/google/api/AuthenticationRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->selector_:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private ensureRequirementsIsMutable()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 272
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/api/AuthRequirement;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    nop

    .line 274
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 276
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/AuthenticationRule;
    .locals 1

    .line 870
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method private mergeOauth(Lcom/google/api/OAuthRequirements;)V
    .locals 2
    .param p1, "value"    # Lcom/google/api/OAuthRequirements;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    .line 156
    invoke-static {}, Lcom/google/api/OAuthRequirements;->getDefaultInstance()Lcom/google/api/OAuthRequirements;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    .line 158
    invoke-static {v0}, Lcom/google/api/OAuthRequirements;->newBuilder(Lcom/google/api/OAuthRequirements;)Lcom/google/api/OAuthRequirements$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/OAuthRequirements$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements$Builder;

    invoke-virtual {v0}, Lcom/google/api/OAuthRequirements$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/OAuthRequirements;

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    goto :goto_0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    .line 162
    :goto_0
    iget v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    .line 163
    return-void
.end method

.method public static newBuilder()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 428
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/AuthenticationRule;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/AuthenticationRule;

    .line 431
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0, p0}, Lcom/google/api/AuthenticationRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0}, Lcom/google/api/AuthenticationRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/AuthenticationRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthenticationRule;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthenticationRule;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation

    .line 876
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRequirements(I)V
    .locals 1
    .param p1, "index"    # I

    .line 347
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->ensureRequirementsIsMutable()V

    .line 348
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method private setAllowWithoutCredential(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/google/api/AuthenticationRule;->allowWithoutCredential_:Z

    .line 200
    return-void
.end method

.method private setOauth(Lcom/google/api/OAuthRequirements;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/OAuthRequirements;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    iput-object p1, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    .line 143
    iget v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    .line 144
    return-void
.end method

.method private setRequirements(ILcom/google/api/AuthRequirement;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/AuthRequirement;

    .line 287
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule;->ensureRequirementsIsMutable()V

    .line 289
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/api/AuthenticationRule;->selector_:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 104
    invoke-static {p1}, Lcom/google/api/AuthenticationRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthenticationRule;->selector_:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 807
    sget-object v0, Lcom/google/api/AuthenticationRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 854
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 851
    :pswitch_0
    return-object v1

    .line 848
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 833
    :pswitch_2
    sget-object v1, Lcom/google/api/AuthenticationRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 834
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/AuthenticationRule;>;"
    if-nez v1, :cond_1

    .line 835
    const-class v2, Lcom/google/api/AuthenticationRule;

    monitor-enter v2

    .line 836
    :try_start_0
    sget-object v0, Lcom/google/api/AuthenticationRule;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 837
    if-nez v1, :cond_0

    .line 838
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 841
    sput-object v1, Lcom/google/api/AuthenticationRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 843
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 845
    :cond_1
    :goto_0
    return-object v1

    .line 830
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/AuthenticationRule;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    return-object v0

    .line 815
    :pswitch_4
    const-string v1, "bitField0_"

    const-string/jumbo v2, "selector_"

    const-string/jumbo v3, "oauth_"

    const-string v4, "allowWithoutCredential_"

    const-string/jumbo v5, "requirements_"

    const-class v6, Lcom/google/api/AuthRequirement;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 823
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0001\u0001\u0007\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u1009\u0000\u0005\u0007\u0007\u001b"

    .line 826
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/AuthenticationRule;->DEFAULT_INSTANCE:Lcom/google/api/AuthenticationRule;

    invoke-static {v2, v1, v0}, Lcom/google/api/AuthenticationRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 812
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/AuthenticationRule$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/AuthenticationRule$Builder;-><init>(Lcom/google/api/AuthenticationRule$1;)V

    return-object v0

    .line 809
    :pswitch_6
    new-instance v0, Lcom/google/api/AuthenticationRule;

    invoke-direct {v0}, Lcom/google/api/AuthenticationRule;-><init>()V

    return-object v0

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

.method public getAllowWithoutCredential()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/google/api/AuthenticationRule;->allowWithoutCredential_:Z

    return v0
.end method

.method public getOauth()Lcom/google/api/OAuthRequirements;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/OAuthRequirements;->getDefaultInstance()Lcom/google/api/OAuthRequirements;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->oauth_:Lcom/google/api/OAuthRequirements;

    :goto_0
    return-object v0
.end method

.method public getRequirements(I)Lcom/google/api/AuthRequirement;
    .locals 1
    .param p1, "index"    # I

    .line 257
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirement;

    return-object v0
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthRequirement;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequirementsOrBuilder(I)Lcom/google/api/AuthRequirementOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 268
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthRequirementOrBuilder;

    return-object v0
.end method

.method public getRequirementsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AuthRequirementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->requirements_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/api/AuthenticationRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOauth()Z
    .locals 2

    .line 120
    iget v0, p0, Lcom/google/api/AuthenticationRule;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
