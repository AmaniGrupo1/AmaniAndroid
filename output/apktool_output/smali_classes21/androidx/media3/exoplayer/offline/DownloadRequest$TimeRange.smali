.class public final Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRange"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final durationUs:J

.field public final startPositionUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 503
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange$1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange$1;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 2
    .param p1, "startPositionUs"    # J
    .param p3, "durationUs"    # J

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 468
    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->startPositionUs:J

    .line 469
    iput-wide p3, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->durationUs:J

    .line 470
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;-><init>(JJ)V

    .line 474
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 478
    instance-of v0, p1, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 479
    return v1

    .line 481
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;

    .line 482
    .local v0, "that":Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;
    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->startPositionUs:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->startPositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->durationUs:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->durationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 487
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->startPositionUs:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 488
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->durationUs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 489
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 499
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->startPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 500
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$TimeRange;->durationUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 501
    return-void
.end method
