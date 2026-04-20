.class public final Lcom/google/firestore/v1/TransactionOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TransactionOptions.java"

# interfaces
.implements Lcom/google/firestore/v1/TransactionOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/TransactionOptions$ReadWrite;,
        Lcom/google/firestore/v1/TransactionOptions$ReadOnly;,
        Lcom/google/firestore/v1/TransactionOptions$ModeCase;,
        Lcom/google/firestore/v1/TransactionOptions$Builder;,
        Lcom/google/firestore/v1/TransactionOptions$ReadOnlyOrBuilder;,
        Lcom/google/firestore/v1/TransactionOptions$ReadWriteOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/TransactionOptions;",
        "Lcom/google/firestore/v1/TransactionOptions$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TransactionOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TransactionOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_ONLY_FIELD_NUMBER:I = 0x2

.field public static final READ_WRITE_FIELD_NUMBER:I = 0x3


# instance fields
.field private modeCase_:I

.field private mode_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1272
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-direct {v0}, Lcom/google/firestore/v1/TransactionOptions;-><init>()V

    .line 1275
    .local v0, "defaultInstance":Lcom/google/firestore/v1/TransactionOptions;
    sput-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    .line 1276
    const-class v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1278
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/TransactionOptions;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 773
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 20
    return-void
.end method

.method static synthetic access$1000()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions;->clearMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions;->setReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions;->mergeReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions;->clearReadOnly()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions;->setReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions;->mergeReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions;->clearReadWrite()V

    return-void
.end method

.method private clearMode()V
    .locals 1

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 814
    return-void
.end method

.method private clearReadOnly()V
    .locals 2

    .line 880
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 884
    :cond_0
    return-void
.end method

.method private clearReadWrite()V
    .locals 2

    .line 950
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 951
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 954
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 1281
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method private mergeReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 862
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 864
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 865
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->newBuilder(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;

    move-result-object v0

    .line 866
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    goto :goto_0

    .line 868
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 870
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 871
    return-void
.end method

.method private mergeReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 932
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 934
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 935
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->newBuilder(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;

    move-result-object v0

    .line 936
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    goto :goto_0

    .line 938
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 940
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 941
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1

    .line 1033
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 1036
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/TransactionOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/TransactionOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/TransactionOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 972
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 979
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 996
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 959
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 966
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 991
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TransactionOptions;",
            ">;"
        }
    .end annotation

    .line 1287
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 852
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 853
    return-void
.end method

.method private setReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    .line 922
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    .line 923
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1262
    :pswitch_0
    return-object v1

    .line 1259
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1244
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 1245
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/TransactionOptions;>;"
    if-nez v0, :cond_1

    .line 1246
    const-class v1, Lcom/google/firestore/v1/TransactionOptions;

    monitor-enter v1

    .line 1247
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/TransactionOptions;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1248
    if-nez v0, :cond_0

    .line 1249
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1252
    sput-object v0, Lcom/google/firestore/v1/TransactionOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 1254
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1256
    :cond_1
    :goto_0
    return-object v0

    .line 1241
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/TransactionOptions;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    return-object v0

    .line 1228
    :pswitch_4
    const-string v0, "mode_"

    const-string v1, "modeCase_"

    const-class v2, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    const-class v3, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1234
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0001\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000"

    .line 1237
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/TransactionOptions;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/TransactionOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1225
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/TransactionOptions$Builder;-><init>(Lcom/google/firestore/v1/TransactionOptions$1;)V

    return-object v0

    .line 1222
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-direct {v0}, Lcom/google/firestore/v1/TransactionOptions;-><init>()V

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

.method public getModeCase()Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 1

    .line 807
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ModeCase;->forNumber(I)Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 2

    .line 837
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0

    .line 840
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    move-result-object v0

    return-object v0
.end method

.method public getReadWrite()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 2

    .line 907
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 908
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions;->mode_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    return-object v0

    .line 910
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    move-result-object v0

    return-object v0
.end method

.method public hasReadOnly()Z
    .locals 2

    .line 826
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadWrite()Z
    .locals 2

    .line 896
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions;->modeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
