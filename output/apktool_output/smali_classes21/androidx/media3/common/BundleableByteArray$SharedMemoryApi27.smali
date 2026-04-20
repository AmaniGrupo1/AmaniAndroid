.class final Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;
.super Ljava/lang/Object;
.source "BundleableByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/BundleableByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedMemoryApi27"
.end annotation


# instance fields
.field private final sharedMemory:Landroid/os/SharedMemory;


# direct methods
.method private constructor <init>(Landroid/os/SharedMemory;)V
    .locals 0
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->sharedMemory:Landroid/os/SharedMemory;

    .line 141
    return-void
.end method

.method static synthetic access$100([B)Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;
    .locals 1
    .param p0, "x0"    # [B

    .line 116
    invoke-static {p0}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->create([B)Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 116
    invoke-direct {p0, p1}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->writeToBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Landroid/os/Bundle;)[B
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .line 116
    invoke-static {p0}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->readFromBundle(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0
.end method

.method private static create([B)Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;
    .locals 5
    .param p0, "byteArray"    # [B

    .line 120
    const-string v0, "BundleableByteArray"

    const/4 v1, 0x0

    .line 122
    .local v1, "sharedMemory":Landroid/os/SharedMemory;
    :try_start_0
    array-length v2, p0

    invoke-static {v0, v2}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v2

    move-object v1, v2

    .line 123
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 124
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 126
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v1, v3}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 127
    new-instance v3, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;

    invoke-direct {v3, v1}, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;-><init>(Landroid/os/SharedMemory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 128
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to allocate shared memory for byte array, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readFromBundle(Landroid/os/Bundle;)[B
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 149
    invoke-static {}, Landroidx/media3/common/BundleableByteArray;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/SharedMemory;

    .line 150
    .local v0, "sharedMemory":Landroid/os/SharedMemory;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return-object v1

    .line 153
    :cond_0
    const/4 v2, 0x0

    .line 155
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 156
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v3

    new-array v3, v3, [B

    .line 157
    .local v3, "byteArray":[B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    nop

    .line 163
    if-eqz v2, :cond_1

    .line 164
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 166
    :cond_1
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 158
    return-object v3

    .line 163
    .end local v3    # "byteArray":[B
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "BundleableByteArray"

    const-string v5, "Failed to read byte array from shared memory"

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    nop

    .line 163
    if-eqz v2, :cond_2

    .line 164
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 166
    :cond_2
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 161
    return-object v1

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_3

    .line 164
    invoke-static {v2}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 166
    :cond_3
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 167
    throw v1
.end method

.method private writeToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 144
    invoke-static {}, Landroidx/media3/common/BundleableByteArray;->access$800()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/BundleableByteArray$SharedMemoryApi27;->sharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    return-void
.end method
