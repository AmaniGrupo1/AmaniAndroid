.class public final Lcom/google/firestore/v1/StructuredQuery$Projection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$ProjectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Projection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$Projection;",
        "Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$ProjectionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Projection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$FieldReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5484
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;-><init>()V

    .line 5487
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredQuery$Projection;
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5488
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5490
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredQuery$Projection;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4967
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4968
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Projection;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4969
    return-void
.end method

.method static synthetic access$6300()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 4962
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/google/firestore/v1/StructuredQuery$Projection;ILcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Projection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4962
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery$Projection;->setFields(ILcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/firestore/v1/StructuredQuery$Projection;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Projection;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4962
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Projection;->addFields(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/firestore/v1/StructuredQuery$Projection;ILcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Projection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 4962
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery$Projection;->addFields(ILcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/firestore/v1/StructuredQuery$Projection;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Projection;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 4962
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Projection;->addAllFields(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 4962
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->clearFields()V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/firestore/v1/StructuredQuery$Projection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Projection;
    .param p1, "x1"    # I

    .line 4962
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Projection;->removeFields(I)V

    return-void
.end method

.method private addAllFields(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$FieldReference;",
            ">;)V"
        }
    .end annotation

    .line 5109
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$FieldReference;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->ensureFieldsIsMutable()V

    .line 5110
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5112
    return-void
.end method

.method private addFields(ILcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 5093
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5094
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->ensureFieldsIsMutable()V

    .line 5095
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 5096
    return-void
.end method

.method private addFields(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 5077
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5078
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->ensureFieldsIsMutable()V

    .line 5079
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 5080
    return-void
.end method

.method private clearFields()V
    .locals 1

    .line 5124
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Projection;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5125
    return-void
.end method

.method private ensureFieldsIsMutable()V
    .locals 2

    .line 5043
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5044
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/StructuredQuery$FieldReference;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5045
    nop

    .line 5046
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5048
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 5493
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;
    .locals 1

    .line 5218
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5221
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5194
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5201
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Projection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5157
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5164
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5206
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5213
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5181
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5188
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5144
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5151
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5169
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5176
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Projection;",
            ">;"
        }
    .end annotation

    .line 5499
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFields(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5137
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->ensureFieldsIsMutable()V

    .line 5138
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 5139
    return-void
.end method

.method private setFields(ILcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 5062
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5063
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->ensureFieldsIsMutable()V

    .line 5064
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5065
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 5435
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5474
    :pswitch_0
    return-object v1

    .line 5471
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5456
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    .line 5457
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery$Projection;>;"
    if-nez v0, :cond_1

    .line 5458
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$Projection;

    monitor-enter v1

    .line 5459
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 5460
    if-nez v0, :cond_0

    .line 5461
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 5464
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->PARSER:Lcom/google/protobuf/Parser;

    .line 5466
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5468
    :cond_1
    :goto_0
    return-object v0

    .line 5453
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery$Projection;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    return-object v0

    .line 5443
    :pswitch_4
    const-string v0, "fields_"

    const-class v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 5447
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u001b"

    .line 5449
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery$Projection;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5440
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object v0

    .line 5437
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;-><init>()V

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

.method public getFields(I)Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1
    .param p1, "index"    # I

    .line 5026
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 5012
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$FieldReference;",
            ">;"
        }
    .end annotation

    .line 4984
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFieldsOrBuilder(I)Lcom/google/firestore/v1/StructuredQuery$FieldReferenceOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 5040
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReferenceOrBuilder;

    return-object v0
.end method

.method public getFieldsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$FieldReferenceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4998
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Projection;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
