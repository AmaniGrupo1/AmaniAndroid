.class public Landroidx/media3/extractor/text/CuesWithTiming;
.super Ljava/lang/Object;
.source "CuesWithTiming.java"


# instance fields
.field public final cues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final durationUs:J

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 3
    .param p2, "startTimeUs"    # J
    .param p4, "durationUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;JJ)V"
        }
    .end annotation

    .line 70
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    .line 72
    iput-wide p2, p0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 73
    iput-wide p4, p0, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 74
    nop

    .line 75
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    add-long v0, p2, p4

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    nop

    .line 77
    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/text/CuesWithTiming;->endTimeUs:J

    .line 78
    return-void
.end method
