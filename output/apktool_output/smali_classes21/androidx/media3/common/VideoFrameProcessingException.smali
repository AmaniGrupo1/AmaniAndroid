.class public final Landroidx/media3/common/VideoFrameProcessingException;
.super Ljava/lang/Exception;
.source "VideoFrameProcessingException.java"


# instance fields
.field public final presentationTimeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 60
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/String;J)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "presentationTimeUs"    # J

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Landroidx/media3/common/VideoFrameProcessingException;->getPresentationTimeUsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    iput-wide p2, p0, Landroidx/media3/common/VideoFrameProcessingException;->presentationTimeUs:J

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 81
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;J)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "presentationTimeUs"    # J

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Landroidx/media3/common/VideoFrameProcessingException;->getPresentationTimeUsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    iput-wide p3, p0, Landroidx/media3/common/VideoFrameProcessingException;->presentationTimeUs:J

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 102
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "presentationTimeUs"    # J

    .line 112
    invoke-static {p2, p3}, Landroidx/media3/common/VideoFrameProcessingException;->getPresentationTimeUsString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iput-wide p2, p0, Landroidx/media3/common/VideoFrameProcessingException;->presentationTimeUs:J

    .line 114
    return-void
.end method

.method public static from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 32
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, v1}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;J)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;J)Landroidx/media3/common/VideoFrameProcessingException;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "presentationTimeUs"    # J

    .line 41
    instance-of v0, p0, Landroidx/media3/common/VideoFrameProcessingException;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Landroidx/media3/common/VideoFrameProcessingException;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    return-object v0
.end method

.method private static getPresentationTimeUsString(J)Ljava/lang/String;
    .locals 2
    .param p0, "presentationTimeUs"    # J

    .line 117
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, " @UNSET"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
