.class public final Landroidx/media3/extractor/DtsUtil$DtsHeader;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/DtsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DtsHeader"
.end annotation


# instance fields
.field public final bitrate:I

.field public final channelCount:I

.field public final frameDurationUs:J

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleRate:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIJI)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "channelCount"    # I
    .param p3, "sampleRate"    # I
    .param p4, "frameSize"    # I
    .param p5, "frameDurationUs"    # J
    .param p7, "bitrate"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->mimeType:Ljava/lang/String;

    .line 73
    iput p2, p0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    .line 74
    iput p3, p0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    .line 75
    iput p4, p0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameSize:I

    .line 76
    iput-wide p5, p0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    .line 77
    iput p7, p0, Landroidx/media3/extractor/DtsUtil$DtsHeader;->bitrate:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIJILandroidx/media3/extractor/DtsUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # Landroidx/media3/extractor/DtsUtil$1;

    .line 46
    invoke-direct/range {p0 .. p7}, Landroidx/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJI)V

    return-void
.end method
