.class final Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;Landroidx/media3/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/extractor/ogg/DefaultOggSeeker;
    .param p2, "x1"    # Landroidx/media3/extractor/ogg/DefaultOggSeeker$1;

    .line 251
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    .line 277
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$100(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)Landroidx/media3/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$300(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 12
    .param p1, "timeUs"    # J

    .line 260
    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$100(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)Landroidx/media3/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    .line 261
    .local v0, "targetGranule":J
    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 262
    invoke-static {v2}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    .line 265
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 266
    invoke-static {v5}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$400(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v7}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 267
    invoke-static {v5}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$300(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 268
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    sub-long v6, v2, v4

    .line 270
    .local v6, "estimatedPosition":J
    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 271
    invoke-static {v2}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v8

    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v2}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$400(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v10, v2, v4

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 272
    .end local v6    # "estimatedPosition":J
    .local v2, "estimatedPosition":J
    new-instance v4, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v5, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v5, p1, p2, v2, v3}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v4, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v4
.end method

.method public isSeekable()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method
