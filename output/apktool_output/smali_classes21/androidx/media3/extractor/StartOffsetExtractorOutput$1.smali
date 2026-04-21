.class Landroidx/media3/extractor/StartOffsetExtractorOutput$1;
.super Landroidx/media3/extractor/ForwardingSeekMap;
.source "StartOffsetExtractorOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/extractor/StartOffsetExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/extractor/StartOffsetExtractorOutput;

.field final synthetic val$seekMap:Landroidx/media3/extractor/SeekMap;


# direct methods
.method constructor <init>(Landroidx/media3/extractor/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/extractor/StartOffsetExtractorOutput;
    .param p2, "seekMap"    # Landroidx/media3/extractor/SeekMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/StartOffsetExtractorOutput;

    iput-object p3, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/ForwardingSeekMap;-><init>(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method


# virtual methods
.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 10
    .param p1, "timeUs"    # J

    .line 58
    iget-object v0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 59
    .local v0, "seekPoints":Landroidx/media3/extractor/SeekMap$SeekPoints;
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-object v3, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, v3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-object v5, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v5, v5, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object v7, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/StartOffsetExtractorOutput;

    .line 60
    invoke-static {v7}, Landroidx/media3/extractor/StartOffsetExtractorOutput;->access$000(Landroidx/media3/extractor/StartOffsetExtractorOutput;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    iget-object v4, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v4, v4, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-object v6, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v6, v6, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object v8, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/StartOffsetExtractorOutput;

    .line 61
    invoke-static {v8}, Landroidx/media3/extractor/StartOffsetExtractorOutput;->access$000(Landroidx/media3/extractor/StartOffsetExtractorOutput;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 59
    return-object v1
.end method
