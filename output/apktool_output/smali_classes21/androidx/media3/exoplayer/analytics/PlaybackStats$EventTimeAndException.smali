.class public final Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndException"
.end annotation


# instance fields
.field public final eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "eventTime"    # Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 143
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    .line 144
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 148
    if-ne p0, p1, :cond_0

    .line 149
    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;

    .line 155
    .local v1, "that":Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v3, v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    return v0

    .line 158
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 152
    .end local v1    # "that":Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    .line 164
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 165
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
