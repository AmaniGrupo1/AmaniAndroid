.class public final Lcom/google/protobuf/Api;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api.java"

# interfaces
.implements Lcom/google/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Api$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/Api;",
        "Lcom/google/protobuf/Api$Builder;",
        ">;",
        "Lcom/google/protobuf/ApiOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

.field public static final METHODS_FIELD_NUMBER:I = 0x2

.field public static final MIXINS_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private methods_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mixins_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Lcom/google/protobuf/SourceContext;

.field private syntax_:I

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1147
    new-instance v0, Lcom/google/protobuf/Api;

    invoke-direct {v0}, Lcom/google/protobuf/Api;-><init>()V

    .line 1150
    .local v0, "defaultInstance":Lcom/google/protobuf/Api;
    sput-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    .line 1151
    const-class v1, Lcom/google/protobuf/Api;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1153
    .end local v0    # "defaultInstance":Lcom/google/protobuf/Api;
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 18
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 19
    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Api;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/Api;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Option;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->setOptions(ILcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/protobuf/Api;Lcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Option;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addOptions(Lcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Option;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->addOptions(ILcom/google/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearOptions()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/Api;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearVersion()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setSourceContext(Lcom/google/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->mergeSourceContext(Lcom/google/protobuf/SourceContext;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearSourceContext()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Mixin;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->setMixins(ILcom/google/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/Api;Lcom/google/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Mixin;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addMixins(Lcom/google/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Mixin;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->addMixins(ILcom/google/protobuf/Mixin;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addAllMixins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearMixins()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->removeMixins(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setSyntaxValue(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/Api;Lcom/google/protobuf/Syntax;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Syntax;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setSyntax(Lcom/google/protobuf/Syntax;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearSyntax()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Method;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->setMethods(ILcom/google/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/Api;Lcom/google/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/Method;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addMethods(Lcom/google/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/protobuf/Method;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;->addMethods(ILcom/google/protobuf/Method;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->addAllMethods(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/protobuf/Api;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/Api;->clearMethods()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/protobuf/Api;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;->removeMethods(I)V

    return-void
.end method

.method private addAllMethods(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Method;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Method;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 147
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 149
    return-void
.end method

.method private addAllMixins(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Mixin;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Mixin;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 428
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 430
    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Option;>;"
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 241
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 243
    return-void
.end method

.method private addMethods(ILcom/google/protobuf/Method;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 139
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method private addMethods(Lcom/google/protobuf/Method;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 130
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private addMixins(ILcom/google/protobuf/Mixin;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Mixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 418
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 420
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 421
    return-void
.end method

.method private addMixins(Lcom/google/protobuf/Mixin;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Mixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 411
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method private addOptions(ILcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 231
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 233
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 234
    return-void
.end method

.method private addOptions(Lcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 224
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method private clearMethods()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 155
    return-void
.end method

.method private clearMixins()V
    .locals 1

    .line 435
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 436
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/google/protobuf/Api;->getDefaultInstance()Lcom/google/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 248
    invoke-static {}, Lcom/google/protobuf/Api;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 249
    return-void
.end method

.method private clearSourceContext()V
    .locals 1

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 348
    iget v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    .line 349
    return-void
.end method

.method private clearSyntax()V
    .locals 1

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 485
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 292
    invoke-static {}, Lcom/google/protobuf/Api;->getDefaultInstance()Lcom/google/protobuf/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 293
    return-void
.end method

.method private ensureMethodsIsMutable()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 109
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Method;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    nop

    .line 111
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 113
    :cond_0
    return-void
.end method

.method private ensureMixinsIsMutable()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 390
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Mixin;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    nop

    .line 392
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 394
    :cond_0
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 203
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/protobuf/Option;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    nop

    .line 205
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 207
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Api;
    .locals 1

    .line 1156
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0
.end method

.method private mergeSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/SourceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 336
    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 338
    invoke-static {v0}, Lcom/google/protobuf/SourceContext;->newBuilder(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SourceContext;

    iput-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_0

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 342
    :goto_0
    iget v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    .line 343
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 564
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Api;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Api;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Api;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/Api;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/Api;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 490
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 1162
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeMethods(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 161
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private removeMixins(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 441
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 442
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private removeOptions(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 255
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private setMethods(ILcom/google/protobuf/Method;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMethodsIsMutable()V

    .line 122
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private setMixins(ILcom/google/protobuf/Mixin;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Mixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 401
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureMixinsIsMutable()V

    .line 403
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/google/protobuf/Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private setOptions(ILcom/google/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 214
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-direct {p0}, Lcom/google/protobuf/Api;->ensureOptionsIsMutable()V

    .line 216
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method private setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/SourceContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    iput-object p1, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 327
    iget v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    .line 328
    return-void
.end method

.method private setSyntax(Lcom/google/protobuf/Syntax;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Syntax;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 476
    invoke-virtual {p1}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 478
    return-void
.end method

.method private setSyntaxValue(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 469
    iput p1, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 470
    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 285
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 286
    return-void
.end method

.method private setVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 300
    invoke-static {p1}, Lcom/google/protobuf/Api;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 301
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1088
    sget-object v0, Lcom/google/protobuf/Api$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1137
    :pswitch_0
    return-object v1

    .line 1134
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1119
    :pswitch_2
    sget-object v1, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 1120
    .local v1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/protobuf/Api;>;"
    if-nez v1, :cond_1

    .line 1121
    const-class v2, Lcom/google/protobuf/Api;

    monitor-enter v2

    .line 1122
    :try_start_0
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    move-object v1, v0

    .line 1123
    if-nez v1, :cond_0

    .line 1124
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1127
    sput-object v1, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 1129
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1131
    :cond_1
    :goto_0
    return-object v1

    .line 1116
    .end local v1    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/protobuf/Api;>;"
    :pswitch_3
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0

    .line 1096
    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "name_"

    const-string v3, "methods_"

    const-class v4, Lcom/google/protobuf/Method;

    const-string v5, "options_"

    const-class v6, Lcom/google/protobuf/Option;

    const-string v7, "version_"

    const-string v8, "sourceContext_"

    const-string v9, "mixins_"

    const-class v10, Lcom/google/protobuf/Mixin;

    const-string v11, "syntax_"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 1109
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0003\u0000\u0001\u0208\u0002\u001b\u0003\u001b\u0004\u0208\u0005\u1009\u0000\u0006\u001b\u0007\u000c"

    .line 1112
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/Api;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1093
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/protobuf/Api$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Api$Builder;-><init>(Lcom/google/protobuf/Api$1;)V

    return-object v0

    .line 1090
    :pswitch_6
    new-instance v0, Lcom/google/protobuf/Api;

    invoke-direct {v0}, Lcom/google/protobuf/Api;-><init>()V

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

.method public getMethods(I)Lcom/google/protobuf/Method;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMethodsOrBuilder(I)Lcom/google/protobuf/MethodOrBuilder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MethodOrBuilder;

    return-object v0
.end method

.method public getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMixins(I)Lcom/google/protobuf/Mixin;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Mixin;

    return-object v0
.end method

.method public getMixinsCount()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMixinsOrBuilder(I)Lcom/google/protobuf/MixinOrBuilder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MixinOrBuilder;

    return-object v0
.end method

.method public getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/OptionOrBuilder;

    return-object v0
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    :goto_0
    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .line 461
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    invoke-static {v0}, Lcom/google/protobuf/Syntax;->forNumber(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    .line 462
    .local v0, "result":Lcom/google/protobuf/Syntax;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/protobuf/Syntax;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 2

    .line 312
    iget v0, p0, Lcom/google/protobuf/Api;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
