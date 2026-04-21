.class final Landroidx/media3/datasource/cache/CacheFileMetadata;
.super Ljava/lang/Object;
.source "CacheFileMetadata.java"


# instance fields
.field public final lastTouchTimestamp:J

.field public final length:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "length"    # J
    .param p3, "lastTouchTimestamp"    # J

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheFileMetadata;->length:J

    .line 26
    iput-wide p3, p0, Landroidx/media3/datasource/cache/CacheFileMetadata;->lastTouchTimestamp:J

    .line 27
    return-void
.end method
