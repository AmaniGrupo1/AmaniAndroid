.class final Landroidx/media3/extractor/mp4/BoxParser$MdhdData;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MdhdData"
.end annotation


# instance fields
.field private final language:Ljava/lang/String;

.field private final mediaDurationUs:J

.field private final timescale:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0
    .param p1, "timescale"    # J
    .param p3, "mediaDurationUs"    # J
    .param p5, "language"    # Ljava/lang/String;

    .line 2887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2888
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->timescale:J

    .line 2889
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->mediaDurationUs:J

    .line 2890
    iput-object p5, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->language:Ljava/lang/String;

    .line 2891
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    .line 2882
    iget-object v0, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    .line 2882
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->timescale:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/media3/extractor/mp4/BoxParser$MdhdData;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    .line 2882
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->mediaDurationUs:J

    return-wide v0
.end method
