.class Landroidx/media3/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Landroidx/media3/common/util/ParsableBitArray;

.field final synthetic this$0:Landroidx/media3/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 632
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 634
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 11
    .param p1, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;

    .line 646
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 647
    .local v0, "tableId":I
    if-eqz v0, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 653
    .local v1, "secondHeaderByte":I
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_1

    .line 655
    return-void

    .line 659
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 661
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    .line 662
    .local v2, "programCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 663
    iget-object v5, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 664
    iget-object v5, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 665
    .local v5, "programNumber":I
    iget-object v6, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 666
    nop

    .line 669
    iget-object v6, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->patScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 666
    const/16 v7, 0xd

    if-nez v5, :cond_2

    .line 667
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 669
    :cond_2
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 670
    .local v6, "pid":I
    iget-object v7, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 671
    iget-object v7, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v7

    new-instance v8, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v9, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;

    iget-object v10, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {v9, v10, v6}, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;I)V

    invoke-direct {v8, v9}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 672
    iget-object v7, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v7}, Landroidx/media3/extractor/ts/TsExtractor;->access$108(Landroidx/media3/extractor/ts/TsExtractor;)I

    .line 662
    .end local v5    # "programNumber":I
    .end local v6    # "pid":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 676
    .end local v4    # "i":I
    :cond_4
    iget-object v3, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v3}, Landroidx/media3/extractor/ts/TsExtractor;->access$200(Landroidx/media3/extractor/ts/TsExtractor;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    .line 677
    iget-object v3, p0, Landroidx/media3/extractor/ts/TsExtractor$PatReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-static {v3}, Landroidx/media3/extractor/ts/TsExtractor;->access$000(Landroidx/media3/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 679
    :cond_5
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0
    .param p1, "timestampAdjuster"    # Landroidx/media3/common/util/TimestampAdjuster;
    .param p2, "extractorOutput"    # Landroidx/media3/extractor/ExtractorOutput;
    .param p3, "idGenerator"    # Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 642
    return-void
.end method
