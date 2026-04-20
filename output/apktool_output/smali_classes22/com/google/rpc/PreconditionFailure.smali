.class public final Lcom/google/rpc/PreconditionFailure;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/PreconditionFailure$Violation;,
        Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;,
        Lcom/google/rpc/PreconditionFailure$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/PreconditionFailure;",
        "Lcom/google/rpc/PreconditionFailure$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailureOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIOLATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private violations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1226
    new-instance v0, Lcom/google/rpc/PreconditionFailure;

    invoke-direct {v0}, Lcom/google/rpc/PreconditionFailure;-><init>()V

    .line 1229
    .local v0, "defaultInstance":Lcom/google/rpc/PreconditionFailure;
    sput-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    .line 1230
    const-class v1, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1232
    .end local v0    # "defaultInstance":Lcom/google/rpc/PreconditionFailure;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/rpc/PreconditionFailure;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 25
    return-void
.end method

.method static synthetic access$1100()Lcom/google/rpc/PreconditionFailure;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->setViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/rpc/PreconditionFailure;Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure;
    .param p1, "x1"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure;->addViolations(Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->addViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/rpc/PreconditionFailure;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure;->addAllViolations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/rpc/PreconditionFailure;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure;

    .line 18
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->clearViolations()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/rpc/PreconditionFailure;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure;->removeViolations(I)V

    return-void
.end method

.method private addAllViolations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;)V"
        }
    .end annotation

    .line 889
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/rpc/PreconditionFailure$Violation;>;"
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 890
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 892
    return-void
.end method

.method private addViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 876
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 878
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 879
    return-void
.end method

.method private addViolations(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 865
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method

.method private clearViolations()V
    .locals 1

    .line 901
    invoke-static {}, Lcom/google/rpc/PreconditionFailure;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 902
    return-void
.end method

.method private ensureViolationsIsMutable()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 836
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/rpc/PreconditionFailure$Violation;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    nop

    .line 838
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 840
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/PreconditionFailure;
    .locals 1

    .line 1235
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 992
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/PreconditionFailure;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/PreconditionFailure;

    .line 995
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0, p0}, Lcom/google/rpc/PreconditionFailure;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/rpc/PreconditionFailure;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/PreconditionFailure;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 931
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 938
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 987
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 918
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 925
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 943
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 950
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure;",
            ">;"
        }
    .end annotation

    .line 1241
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeViolations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 911
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 912
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 913
    return-void
.end method

.method private setViolations(ILcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 851
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure;->ensureViolationsIsMutable()V

    .line 853
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 854
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1177
    sget-object v0, Lcom/google/rpc/PreconditionFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1216
    :pswitch_0
    return-object v1

    .line 1213
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1198
    :pswitch_2
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->PARSER:Lcom/google/protobuf/Parser;

    .line 1199
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/PreconditionFailure;>;"
    if-nez v0, :cond_1

    .line 1200
    const-class v1, Lcom/google/rpc/PreconditionFailure;

    monitor-enter v1

    .line 1201
    :try_start_0
    sget-object v2, Lcom/google/rpc/PreconditionFailure;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1202
    if-nez v0, :cond_0

    .line 1203
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1206
    sput-object v0, Lcom/google/rpc/PreconditionFailure;->PARSER:Lcom/google/protobuf/Parser;

    .line 1208
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1210
    :cond_1
    :goto_0
    return-object v0

    .line 1195
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/PreconditionFailure;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    return-object v0

    .line 1185
    :pswitch_4
    const-string v0, "violations_"

    const-class v1, Lcom/google/rpc/PreconditionFailure$Violation;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1189
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 1191
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/PreconditionFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/PreconditionFailure;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1182
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/PreconditionFailure$Builder;

    invoke-direct {v0, v1}, Lcom/google/rpc/PreconditionFailure$Builder;-><init>(Lcom/google/rpc/PreconditionFailure$1;)V

    return-object v0

    .line 1179
    :pswitch_6
    new-instance v0, Lcom/google/rpc/PreconditionFailure;

    invoke-direct {v0}, Lcom/google/rpc/PreconditionFailure;-><init>()V

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

.method public getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p1, "index"    # I

    .line 821
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public getViolationsCount()I
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getViolationsOrBuilder(I)Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 832
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;

    return-object v0
.end method

.method public getViolationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
