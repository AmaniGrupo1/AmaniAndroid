.class public final Landroidx/media3/extractor/metadata/scte35/PrivateCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "PrivateCommand.java"


# instance fields
.field public final commandBytes:[B

.field public final identifier:J

.field public final ptsAdjustment:J


# direct methods
.method private constructor <init>(J[BJ)V
    .locals 0
    .param p1, "identifier"    # J
    .param p3, "commandBytes"    # [B
    .param p4, "ptsAdjustment"    # J

    .line 34
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 35
    iput-wide p4, p0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    .line 36
    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->identifier:J

    .line 37
    iput-object p3, p0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->commandBytes:[B

    .line 38
    return-void
.end method

.method static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;IJ)Landroidx/media3/extractor/metadata/scte35/PrivateCommand;
    .locals 6
    .param p0, "sectionData"    # Landroidx/media3/common/util/ParsableByteArray;
    .param p1, "commandLength"    # I
    .param p2, "ptsAdjustment"    # J

    .line 42
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    .line 43
    .local v1, "identifier":J
    add-int/lit8 v0, p1, -0x4

    new-array v3, v0, [B

    .line 44
    .local v3, "privateBytes":[B
    const/4 v0, 0x0

    array-length v4, v3

    invoke-virtual {p0, v3, v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 45
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    move-wide v4, p2

    .end local p2    # "ptsAdjustment":J
    .local v4, "ptsAdjustment":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 PrivateCommand { ptsAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->ptsAdjustment:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;->identifier:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
