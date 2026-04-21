.class public final Landroidx/media3/extractor/text/pgs/PgsParser;
.super Ljava/lang/Object;
.source "PgsParser.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
    }
.end annotation


# static fields
.field public static final CUE_REPLACEMENT_BEHAVIOR:I = 0x2

.field private static final SECTION_TYPE_BITMAP_PICTURE:I = 0x15

.field private static final SECTION_TYPE_END:I = 0x80

.field private static final SECTION_TYPE_IDENTIFIER:I = 0x16

.field private static final SECTION_TYPE_PALETTE:I = 0x14


# instance fields
.field private final buffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final cueBuilder:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

.field private final inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 59
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 60
    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    .line 61
    return-void
.end method

.method private static readNextSection(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;)Landroidx/media3/common/text/Cue;
    .locals 5
    .param p0, "buffer"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "cueBuilder"    # Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    .line 97
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    .line 98
    .local v0, "limit":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 99
    .local v1, "sectionType":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 101
    .local v2, "sectionLength":I
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 102
    .local v3, "nextSectionPosition":I
    if-le v3, v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 104
    const/4 v4, 0x0

    return-object v4

    .line 107
    :cond_0
    const/4 v4, 0x0

    .line 108
    .local v4, "cue":Landroidx/media3/common/text/Cue;
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 119
    :sswitch_0
    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v4

    .line 120
    invoke-virtual {p1}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->reset()V

    .line 121
    goto :goto_0

    .line 116
    :sswitch_1
    invoke-static {p1, p0, v2}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->access$200(Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 117
    goto :goto_0

    .line 113
    :sswitch_2
    invoke-static {p1, p0, v2}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->access$100(Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 114
    goto :goto_0

    .line 110
    :sswitch_3
    invoke-static {p1, p0, v2}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->access$000(Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 111
    nop

    .line 126
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 127
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "outputOptions"    # Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p5, "output":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/extractor/text/CuesWithTiming;>;"
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    add-int v1, p2, p3

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 76
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 77
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/util/zip/Inflater;

    .line 80
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/util/zip/Inflater;

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->maybeInflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 83
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->reset()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 85
    .local v2, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/common/text/Cue;>;"
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 86
    iget-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-static {v0, v1}, Landroidx/media3/extractor/text/pgs/PgsParser;->readNextSection(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;)Landroidx/media3/common/text/Cue;

    move-result-object v0

    .line 87
    .local v0, "cue":Landroidx/media3/common/text/Cue;
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v0    # "cue":Landroidx/media3/common/text/Cue;
    :cond_2
    goto :goto_0

    .line 91
    :cond_3
    new-instance v1, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 93
    return-void
.end method
