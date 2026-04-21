.class Landroidx/media3/extractor/text/SubtitleParser$Factory$1;
.super Ljava/lang/Object;
.source "SubtitleParser.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/SubtitleParser$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This SubtitleParser.Factory doesn\'t support any formats."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCueReplacementBehavior(Landroidx/media3/common/Format;)I
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 45
    const/4 v0, 0x0

    return v0
.end method
