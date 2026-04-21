.class public Lcom/google/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/google/protobuf/ByteString;

.field private extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/google/protobuf/ByteString;

.field protected volatile value:Lcom/google/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p2, "bytes"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1, p2}, Lcom/google/protobuf/LazyFieldLite;->checkArguments(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    .line 97
    iput-object p1, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 98
    iput-object p2, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    .line 99
    return-void
.end method

.method private static checkArguments(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p0, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p1, "bytes"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    .line 411
    if-eqz p0, :cond_1

    .line 414
    if-eqz p1, :cond_0

    .line 417
    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/LazyFieldLite;
    .locals 1
    .param p0, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    .line 110
    .local v0, "lf":Lcom/google/protobuf/LazyFieldLite;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/LazyFieldLite;->setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    .line 111
    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    .locals 1
    .param p0, "value"    # Lcom/google/protobuf/MessageLite;
    .param p1, "otherBytes"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "otherBytes",
            "extensionRegistry"
        }
    .end annotation

    .line 310
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    .line 170
    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 171
    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 172
    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Lcom/google/protobuf/MessageLite;)V
    .locals 3
    .param p1, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 388
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 391
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 393
    nop

    .line 394
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 395
    .local v0, "parsedValue":Lcom/google/protobuf/MessageLite;
    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 396
    iget-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 397
    .end local v0    # "parsedValue":Lcom/google/protobuf/MessageLite;
    goto :goto_0

    .line 398
    :cond_2
    iput-object p1, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 399
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :goto_0
    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2
    iput-object p1, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 405
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 407
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :goto_1
    monitor-exit p0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyFieldLite;

    .line 130
    .local v0, "other":Lcom/google/protobuf/LazyFieldLite;
    iget-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 131
    .local v1, "value1":Lcom/google/protobuf/MessageLite;
    iget-object v2, v0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 132
    .local v2, "value2":Lcom/google/protobuf/MessageLite;
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/google/protobuf/LazyFieldLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/protobuf/LazyFieldLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 134
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 136
    :cond_3
    if-eqz v1, :cond_4

    .line 137
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/LazyFieldLite;->getValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 139
    :cond_4
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/LazyFieldLite;->getValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getSerializedSize()I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 341
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .locals 1
    .param p1, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyFieldLite;->ensureInitialized(Lcom/google/protobuf/MessageLite;)V

    .line 201
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/google/protobuf/LazyFieldLite;)V
    .locals 3
    .param p1, "other"    # Lcom/google/protobuf/LazyFieldLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lcom/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyFieldLite;->set(Lcom/google/protobuf/LazyFieldLite;)V

    .line 233
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v1, p1, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    .line 249
    return-void

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    iget-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/LazyFieldLite;->setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    .line 257
    return-void

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    iget-object v1, p1, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    iget-object v2, p1, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/LazyFieldLite;->setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    .line 260
    return-void

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/LazyFieldLite;->setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    .line 265
    return-void
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
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

    .line 275
    invoke-virtual {p0}, Lcom/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/LazyFieldLite;->setByteString(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 277
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 283
    iput-object p2, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/LazyFieldLite;->setByteString(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 293
    return-void

    .line 300
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/LazyFieldLite;->setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 305
    :goto_0
    return-void
.end method

.method public set(Lcom/google/protobuf/LazyFieldLite;)V
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/LazyFieldLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 181
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    .line 182
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 183
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 188
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p1, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 191
    :cond_0
    return-void
.end method

.method public setByteString(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "bytes"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "extensionRegistry"
        }
    .end annotation

    .line 320
    invoke-static {p2, p1}, Lcom/google/protobuf/LazyFieldLite;->checkArguments(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    .line 321
    iput-object p1, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    .line 322
    iput-object p2, p0, Lcom/google/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 324
    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 325
    return-void
.end method

.method public setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 212
    .local v0, "originalValue":Lcom/google/protobuf/MessageLite;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    .line 213
    iput-object v1, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 214
    iput-object p1, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    .line 215
    return-object v0
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    return-object v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    return-object v0

    .line 355
    :cond_1
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 360
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeTo(Lcom/google/protobuf/Writer;I)V
    .locals 1
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/google/protobuf/LazyFieldLite;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 377
    :cond_2
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 379
    :goto_0
    return-void
.end method
