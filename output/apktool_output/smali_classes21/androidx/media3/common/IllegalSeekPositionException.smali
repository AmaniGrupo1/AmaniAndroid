.class public final Landroidx/media3/common/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final positionMs:J

.field public final timeline:Landroidx/media3/common/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;IJ)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/media3/common/IllegalSeekPositionException;->timeline:Landroidx/media3/common/Timeline;

    .line 43
    iput p2, p0, Landroidx/media3/common/IllegalSeekPositionException;->windowIndex:I

    .line 44
    iput-wide p3, p0, Landroidx/media3/common/IllegalSeekPositionException;->positionMs:J

    .line 45
    return-void
.end method
