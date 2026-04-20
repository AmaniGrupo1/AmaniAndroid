.class final Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 34
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 52
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    goto :goto_1

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 55
    move-object v0, v1

    .line 58
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 59
    invoke-static {v0}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 61
    :cond_1
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 71
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    iput-object p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->count:I

    .line 74
    iput-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    .line 75
    return-void
.end method
