.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTraceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParallelTestTrace"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTraceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEST_TRACE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11068
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;-><init>()V

    .line 11071
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    .line 11072
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11074
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10815
    return-void
.end method

.method static synthetic access$21100()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1

    .line 10809
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method static synthetic access$21200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10809
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    return-void
.end method

.method static synthetic access$21300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10809
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    return-void
.end method

.method static synthetic access$21400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    .line 10809
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->clearTestTrace()V

    return-void
.end method

.method private clearTestTrace()V
    .locals 1

    .line 10859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10860
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    .line 10861
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1

    .line 11077
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method private mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 2
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10846
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10847
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10848
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10849
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10850
    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    goto :goto_0

    .line 10852
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10854
    :goto_0
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    .line 10855
    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1

    .line 10940
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    .line 10943
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10916
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10923
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10879
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10886
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10928
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10935
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10903
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10910
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10866
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10873
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10891
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10898
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
            ">;"
        }
    .end annotation

    .line 11083
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 1
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10837
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10838
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10839
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    .line 10840
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 11019
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11061
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11058
    :pswitch_0
    return-object v1

    .line 11055
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 11040
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    .line 11041
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;>;"
    if-nez v0, :cond_1

    .line 11042
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    monitor-enter v1

    .line 11043
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 11044
    if-nez v0, :cond_0

    .line 11045
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 11048
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    .line 11050
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 11052
    :cond_1
    :goto_0
    return-object v0

    .line 11037
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0

    .line 11027
    :pswitch_4
    const-string v0, "bitField0_"

    const-string/jumbo v1, "testTrace_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 11031
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    .line 11033
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 11024
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 11021
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;-><init>()V

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

.method public getTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;
    .locals 1

    .line 10831
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    :goto_0
    return-object v0
.end method

.method public hasTestTrace()Z
    .locals 2

    .line 10824
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
