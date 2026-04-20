.class final Landroidx/media3/extractor/Ac4Util$Ac4Presentation;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ac4Presentation"
.end annotation


# instance fields
.field public channelMode:I

.field public hasBackChannels:Z

.field public isChannelCoded:Z

.field public level:I

.field public numOfUmxObjects:I

.field public topChannelPairs:I

.field public version:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    .line 831
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    .line 832
    iput v1, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    .line 833
    iput-boolean v0, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    .line 834
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    .line 835
    iput v0, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->version:I

    .line 836
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/Ac4Util$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/extractor/Ac4Util$1;

    .line 820
    invoke-direct {p0}, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;-><init>()V

    return-void
.end method
