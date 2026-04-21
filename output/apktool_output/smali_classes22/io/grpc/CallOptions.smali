.class public final Lio/grpc/CallOptions;
.super Ljava/lang/Object;
.source "CallOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/CallOptions$Key;,
        Lio/grpc/CallOptions$Builder;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final DEFAULT:Lio/grpc/CallOptions;


# instance fields
.field private final authority:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final compressorName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final credentials:Lio/grpc/CallCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final customOptions:[[Ljava/lang/Object;

.field private final deadline:Lio/grpc/Deadline;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final maxInboundMessageSize:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final maxOutboundMessageSize:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final waitForReady:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lio/grpc/CallOptions$Builder;

    invoke-direct {v0}, Lio/grpc/CallOptions$Builder;-><init>()V

    .line 48
    .local v0, "b":Lio/grpc/CallOptions$Builder;
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v1, v2, v1

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->streamTracerFactories:Ljava/util/List;

    .line 50
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    sput-object v1, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    .line 51
    .end local v0    # "b":Lio/grpc/CallOptions$Builder;
    return-void
.end method

.method private constructor <init>(Lio/grpc/CallOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lio/grpc/CallOptions$Builder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->deadline:Lio/grpc/Deadline;

    iput-object v0, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    .line 85
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->executor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    .line 86
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->authority:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->credentials:Lio/grpc/CallCredentials;

    iput-object v0, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    .line 88
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->compressorName:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    .line 90
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->streamTracerFactories:Ljava/util/List;

    iput-object v0, p0, Lio/grpc/CallOptions;->streamTracerFactories:Ljava/util/List;

    .line 91
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->waitForReady:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/grpc/CallOptions;->waitForReady:Ljava/lang/Boolean;

    .line 92
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->maxInboundMessageSize:Ljava/lang/Integer;

    iput-object v0, p0, Lio/grpc/CallOptions;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lio/grpc/CallOptions$Builder;->maxOutboundMessageSize:Ljava/lang/Integer;

    iput-object v0, p0, Lio/grpc/CallOptions;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/CallOptions$Builder;Lio/grpc/CallOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/CallOptions$Builder;
    .param p2, "x1"    # Lio/grpc/CallOptions$1;

    .line 40
    invoke-direct {p0, p1}, Lio/grpc/CallOptions;-><init>(Lio/grpc/CallOptions$Builder;)V

    return-void
.end method

.method private static toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;
    .locals 2
    .param p0, "other"    # Lio/grpc/CallOptions;

    .line 460
    new-instance v0, Lio/grpc/CallOptions$Builder;

    invoke-direct {v0}, Lio/grpc/CallOptions$Builder;-><init>()V

    .line 461
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    iget-object v1, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->deadline:Lio/grpc/Deadline;

    .line 462
    iget-object v1, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 463
    iget-object v1, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->authority:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->credentials:Lio/grpc/CallCredentials;

    .line 465
    iget-object v1, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->compressorName:Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lio/grpc/CallOptions;->streamTracerFactories:Ljava/util/List;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->streamTracerFactories:Ljava/util/List;

    .line 468
    iget-object v1, p0, Lio/grpc/CallOptions;->waitForReady:Ljava/lang/Boolean;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->waitForReady:Ljava/lang/Boolean;

    .line 469
    iget-object v1, p0, Lio/grpc/CallOptions;->maxInboundMessageSize:Ljava/lang/Integer;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 470
    iget-object v1, p0, Lio/grpc/CallOptions;->maxOutboundMessageSize:Ljava/lang/Integer;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 471
    return-object v0
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 226
    iget-object v0, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressor()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 211
    iget-object v0, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lio/grpc/CallCredentials;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 234
    iget-object v0, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    return-object v0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 180
    iget-object v0, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 399
    iget-object v0, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getMaxInboundMessageSize()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 444
    iget-object v0, p0, Lio/grpc/CallOptions;->maxInboundMessageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxOutboundMessageSize()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 453
    iget-object v0, p0, Lio/grpc/CallOptions;->maxOutboundMessageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/CallOptions$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 383
    .local p1, "key":Lio/grpc/CallOptions$Key;, "Lio/grpc/CallOptions$Key<TT;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 384
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Lio/grpc/CallOptions$Key;->access$200(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTracerFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lio/grpc/CallOptions;->streamTracerFactories:Ljava/util/List;

    return-object v0
.end method

.method getWaitForReady()Ljava/lang/Boolean;
    .locals 1

    .line 412
    iget-object v0, p0, Lio/grpc/CallOptions;->waitForReady:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isWaitForReady()Z
    .locals 2

    .line 408
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lio/grpc/CallOptions;->waitForReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 476
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    .line 477
    const-string v2, "deadline"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    .line 478
    const-string v2, "authority"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    .line 479
    const-string v2, "callCredentials"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "executor"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    .line 481
    const-string v2, "compressorName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    .line 482
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v1

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 484
    const-string v2, "maxInboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 485
    const-string v2, "maxOutboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/CallOptions;->streamTracerFactories:Ljava/util/List;

    .line 486
    const-string v2, "streamTracerFactories"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    return-object v0
.end method

.method public withAuthority(Ljava/lang/String;)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 126
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    iput-object p1, v0, Lio/grpc/CallOptions$Builder;->authority:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "credentials"    # Lio/grpc/CallCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 135
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    iput-object p1, v0, Lio/grpc/CallOptions$Builder;->credentials:Lio/grpc/CallCredentials;

    .line 136
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withCompression(Ljava/lang/String;)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "compressorName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 149
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    iput-object p1, v0, Lio/grpc/CallOptions$Builder;->compressorName:Ljava/lang/String;

    .line 150
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "deadline"    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 163
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    iput-object p1, v0, Lio/grpc/CallOptions$Builder;->deadline:Lio/grpc/Deadline;

    .line 164
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/CallOptions;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 172
    invoke-static {p1, p2, p3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object v0

    return-object v0
.end method

.method public withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 242
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 243
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    iput-object p1, v0, Lio/grpc/CallOptions$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 244
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withMaxInboundMessageSize(I)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "maxSize"    # I

    .line 421
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid maxsize %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 422
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 423
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->maxInboundMessageSize:Ljava/lang/Integer;

    .line 424
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;
    .locals 2
    .param p1, "maxSize"    # I

    .line 432
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid maxsize %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 433
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 434
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->maxOutboundMessageSize:Ljava/lang/Integer;

    .line 435
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/CallOptions$Key<",
            "TT;>;TT;)",
            "Lio/grpc/CallOptions;"
        }
    .end annotation

    .line 350
    .local p1, "key":Lio/grpc/CallOptions$Key;, "Lio/grpc/CallOptions$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 354
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    const/4 v1, -0x1

    .line 355
    .local v1, "existingIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 356
    iget-object v3, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    move v1, v2

    .line 358
    goto :goto_1

    .line 355
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-ne v1, v3, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    add-int/2addr v2, v6

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v6, v7, v5

    aput v2, v7, v4

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, v0, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    .line 363
    iget-object v2, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    iget-object v5, v0, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    iget-object v6, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    if-ne v1, v3, :cond_3

    .line 367
    iget-object v2, v0, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    array-length v3, v3

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_3

    .line 370
    :cond_3
    iget-object v2, v0, Lio/grpc/CallOptions$Builder;->customOptions:[[Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 373
    :goto_3
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v2

    return-object v2
.end method

.method public withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;
    .locals 3
    .param p1, "factory"    # Lio/grpc/ClientStreamTracer$Factory;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/CallOptions;->streamTracerFactories:Ljava/util/List;

    .line 256
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/ClientStreamTracer$Factory;>;"
    iget-object v1, p0, Lio/grpc/CallOptions;->streamTracerFactories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v1

    .line 260
    .local v1, "builder":Lio/grpc/CallOptions$Builder;
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lio/grpc/CallOptions$Builder;->streamTracerFactories:Ljava/util/List;

    .line 261
    invoke-static {v1}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v2

    return-object v2
.end method

.method public withWaitForReady()Lio/grpc/CallOptions;
    .locals 2

    .line 191
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 192
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->waitForReady:Ljava/lang/Boolean;

    .line 193
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method

.method public withoutWaitForReady()Lio/grpc/CallOptions;
    .locals 2

    .line 201
    invoke-static {p0}, Lio/grpc/CallOptions;->toBuilder(Lio/grpc/CallOptions;)Lio/grpc/CallOptions$Builder;

    move-result-object v0

    .line 202
    .local v0, "builder":Lio/grpc/CallOptions$Builder;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lio/grpc/CallOptions$Builder;->waitForReady:Ljava/lang/Boolean;

    .line 203
    invoke-static {v0}, Lio/grpc/CallOptions$Builder;->access$000(Lio/grpc/CallOptions$Builder;)Lio/grpc/CallOptions;

    move-result-object v1

    return-object v1
.end method
