.class Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;
    .locals 4
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 78
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 79
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "application/x-scte35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "application/id3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 90
    :pswitch_0
    new-instance v1, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;

    invoke-direct {v1}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;-><init>()V

    return-object v1

    .line 88
    :pswitch_1
    new-instance v1, Landroidx/media3/extractor/metadata/icy/IcyDecoder;

    invoke-direct {v1}, Landroidx/media3/extractor/metadata/icy/IcyDecoder;-><init>()V

    return-object v1

    .line 86
    :pswitch_2
    new-instance v1, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {v1}, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object v1

    .line 84
    :pswitch_3
    new-instance v1, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {v1}, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object v1

    .line 82
    :pswitch_4
    new-instance v1, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>()V

    return-object v1

    .line 95
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x50bb4913 -> :sswitch_4
        -0x505c61b5 -> :sswitch_3
        -0x4a682ec7 -> :sswitch_2
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 68
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 69
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/id3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const-string v1, "application/x-emsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string v1, "application/x-scte35"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const-string v1, "application/x-icy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 69
    :goto_1
    return v1
.end method
