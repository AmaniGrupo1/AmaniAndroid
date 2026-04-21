.class public final Lcom/google/rpc/BadRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/BadRequest$FieldViolation;,
        Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;,
        Lcom/google/rpc/BadRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/BadRequest;",
        "Lcom/google/rpc/BadRequest$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

.field public static final FIELD_VIOLATIONS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/BadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1002
    new-instance v0, Lcom/google/rpc/BadRequest;

    invoke-direct {v0}, Lcom/google/rpc/BadRequest;-><init>()V

    .line 1005
    .local v0, "defaultInstance":Lcom/google/rpc/BadRequest;
    sput-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    .line 1006
    const-class v1, Lcom/google/rpc/BadRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1008
    .end local v0    # "defaultInstance":Lcom/google/rpc/BadRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    invoke-static {}, Lcom/google/rpc/BadRequest;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    return-void
.end method

.method static synthetic access$1000(Lcom/google/rpc/BadRequest;Lcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest;
    .param p1, "x1"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest;->addFieldViolations(Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/BadRequest;->addFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/rpc/BadRequest;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest;->addAllFieldViolations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/rpc/BadRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest;

    .line 15
    invoke-direct {p0}, Lcom/google/rpc/BadRequest;->clearFieldViolations()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/rpc/BadRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/rpc/BadRequest;->removeFieldViolations(I)V

    return-void
.end method

.method static synthetic access$800()Lcom/google/rpc/BadRequest;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/BadRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/BadRequest;->setFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-void
.end method

.method private addAllFieldViolations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;)V"
        }
    .end annotation

    .line 668
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/rpc/BadRequest$FieldViolation;>;"
    invoke-direct {p0}, Lcom/google/rpc/BadRequest;->ensureFieldViolationsIsMutable()V

    .line 669
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 671
    return-void
.end method

.method private addFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 655
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    invoke-direct {p0}, Lcom/google/rpc/BadRequest;->ensureFieldViolationsIsMutable()V

    .line 657
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 658
    return-void
.end method

.method private addFieldViolations(Lcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    invoke-direct {p0}, Lcom/google/rpc/BadRequest;->ensureFieldViolationsIsMutable()V

    .line 644
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method private clearFieldViolations()V
    .locals 1

    .line 680
    invoke-static {}, Lcom/google/rpc/BadRequest;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 681
    return-void
.end method

.method private ensureFieldViolationsIsMutable()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 615
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/rpc/BadRequest$FieldViolation;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    nop

    .line 617
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 619
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/BadRequest;
    .locals 1

    .line 1011
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 771
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/BadRequest;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/BadRequest;

    .line 774
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-virtual {v0, p0}, Lcom/google/rpc/BadRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0}, Lcom/google/rpc/BadRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/BadRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 710
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 717
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 704
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 722
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/BadRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 729
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/BadRequest;",
            ">;"
        }
    .end annotation

    .line 1017
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFieldViolations(I)V
    .locals 1
    .param p1, "index"    # I

    .line 690
    invoke-direct {p0}, Lcom/google/rpc/BadRequest;->ensureFieldViolationsIsMutable()V

    .line 691
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method private setFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/BadRequest$FieldViolation;

    .line 630
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    invoke-direct {p0}, Lcom/google/rpc/BadRequest;->ensureFieldViolationsIsMutable()V

    .line 632
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 633
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/google/rpc/BadRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 995
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 992
    :pswitch_0
    return-object v1

    .line 989
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 974
    :pswitch_2
    sget-object v0, Lcom/google/rpc/BadRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 975
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/BadRequest;>;"
    if-nez v0, :cond_1

    .line 976
    const-class v1, Lcom/google/rpc/BadRequest;

    monitor-enter v1

    .line 977
    :try_start_0
    sget-object v2, Lcom/google/rpc/BadRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 978
    if-nez v0, :cond_0

    .line 979
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 982
    sput-object v0, Lcom/google/rpc/BadRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 984
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 986
    :cond_1
    :goto_0
    return-object v0

    .line 971
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/BadRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    return-object v0

    .line 961
    :pswitch_4
    const-string v0, "fieldViolations_"

    const-class v1, Lcom/google/rpc/BadRequest$FieldViolation;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 965
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 967
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/BadRequest;->DEFAULT_INSTANCE:Lcom/google/rpc/BadRequest;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/BadRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 958
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/BadRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/rpc/BadRequest$Builder;-><init>(Lcom/google/rpc/BadRequest$1;)V

    return-object v0

    .line 955
    :pswitch_6
    new-instance v0, Lcom/google/rpc/BadRequest;

    invoke-direct {v0}, Lcom/google/rpc/BadRequest;-><init>()V

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

.method public getFieldViolations(I)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1
    .param p1, "index"    # I

    .line 600
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolation;

    return-object v0
.end method

.method public getFieldViolationsCount()I
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFieldViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFieldViolationsOrBuilder(I)Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 611
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;

    return-object v0
.end method

.method public getFieldViolationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/rpc/BadRequest$FieldViolationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/google/rpc/BadRequest;->fieldViolations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
