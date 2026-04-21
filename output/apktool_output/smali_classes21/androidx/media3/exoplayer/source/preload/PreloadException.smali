.class public final Landroidx/media3/exoplayer/source/preload/PreloadException;
.super Ljava/lang/Exception;
.source "PreloadException.java"


# instance fields
.field public final mediaItem:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 39
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreloadException;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 41
    return-void
.end method


# virtual methods
.method public errorInfoEquals(Landroidx/media3/exoplayer/source/preload/PreloadException;)Z
    .locals 6
    .param p1, "other"    # Landroidx/media3/exoplayer/source/preload/PreloadException;

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 51
    return v0

    .line 53
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 58
    .local v2, "thisCause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/preload/PreloadException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 59
    .local v3, "thatCause":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 60
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    return v1

    .line 63
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 64
    return v1

    .line 66
    :cond_3
    if-nez v2, :cond_6

    if-eqz v3, :cond_4

    goto :goto_1

    .line 69
    :cond_4
    iget-object v4, p0, Landroidx/media3/exoplayer/source/preload/PreloadException;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v5, p1, Landroidx/media3/exoplayer/source/preload/PreloadException;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 70
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreloadException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/preload/PreloadException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_6
    :goto_1
    return v1

    .line 54
    .end local v2    # "thisCause":Ljava/lang/Throwable;
    .end local v3    # "thatCause":Ljava/lang/Throwable;
    :cond_7
    :goto_2
    return v1
.end method
