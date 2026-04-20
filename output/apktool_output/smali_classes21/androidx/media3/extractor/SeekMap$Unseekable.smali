.class public Landroidx/media3/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field private final durationUs:J

.field private final startSeekPoints:Landroidx/media3/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "durationUs"    # J

    .line 41
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    .line 42
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4
    .param p1, "durationUs"    # J
    .param p3, "startPosition"    # J

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    .line 51
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 52
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    sget-object v1, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v3, v1, v2, p3, p4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    move-object v1, v3

    :goto_0
    invoke-direct {v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    iput-object v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 53
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 62
    iget-wide v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 1
    .param p1, "timeUs"    # J

    .line 67
    iget-object v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Landroidx/media3/extractor/SeekMap$SeekPoints;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method
