.class final Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;
.super Ljava/lang/Object;
.source "MediaExtractorCompatInternal.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExtractorOutputImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 875
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/exoplayer/MediaExtractorCompatInternal$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal;
    .param p2, "x1"    # Landroidx/media3/exoplayer/MediaExtractorCompatInternal$1;

    .line 875
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 2

    .line 897
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->access$402(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Z)Z

    .line 898
    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 1
    .param p1, "seekMap"    # Landroidx/media3/extractor/SeekMap;

    .line 902
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->access$602(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/extractor/SeekMap;)Landroidx/media3/extractor/SeekMap;

    .line 903
    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 879
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->access$300(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    .line 880
    .local v0, "sampleQueue":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    if-eqz v0, :cond_0

    .line 883
    return-object v0

    .line 885
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->access$400(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    new-instance v1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {v1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object v1

    .line 890
    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    invoke-static {v3}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->access$500(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Landroidx/media3/exoplayer/upstream/Allocator;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;Landroidx/media3/exoplayer/upstream/Allocator;I)V

    .line 891
    .end local v0    # "sampleQueue":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    .local v1, "sampleQueue":Landroidx/media3/exoplayer/MediaExtractorCompatInternal$MediaExtractorSampleQueue;
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompatInternal$ExtractorOutputImpl;->this$0:Landroidx/media3/exoplayer/MediaExtractorCompatInternal;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaExtractorCompatInternal;->access$300(Landroidx/media3/exoplayer/MediaExtractorCompatInternal;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 892
    return-object v1
.end method
