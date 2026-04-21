.class abstract Landroidx/media3/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final output:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Landroidx/media3/extractor/TrackOutput;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 41
    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 1
    .param p1, "data"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader;->parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/flv/TagPayloadReader;->parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
