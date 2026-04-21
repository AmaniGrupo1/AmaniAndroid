.class public final Landroidx/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/jpeg/JpegExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_READ_IMAGE:I = 0x1

.field private static final JPEG_FILE_SIGNATURE:I = 0xffd8

.field private static final JPEG_FILE_SIGNATURE_LENGTH:I = 0x2


# instance fields
.field private final extractor:Landroidx/media3/extractor/Extractor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Landroidx/media3/extractor/SingleSampleExtractor;

    const/4 v1, 0x2

    const-string v2, "image/jpeg"

    const v3, 0xffd8

    invoke-direct {v0, v3, v1, v2}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 78
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Landroidx/media3/extractor/ExtractorOutput;

    .line 87
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 88
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Landroidx/media3/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    .line 104
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 98
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    .line 99
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Landroidx/media3/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
