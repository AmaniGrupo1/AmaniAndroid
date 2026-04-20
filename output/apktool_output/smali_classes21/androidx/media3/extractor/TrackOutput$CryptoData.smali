.class public final Landroidx/media3/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/TrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# instance fields
.field public final clearBlocks:I

.field public final cryptoMode:I

.field public final encryptedBlocks:I

.field public final encryptionKey:[B


# direct methods
.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "cryptoMode"    # I
    .param p2, "encryptionKey"    # [B
    .param p3, "encryptedBlocks"    # I
    .param p4, "clearBlocks"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 68
    iput-object p2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 69
    iput p3, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    .line 70
    iput p4, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 76
    return v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 82
    .local v2, "other":Landroidx/media3/extractor/TrackOutput$CryptoData;
    iget v3, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v4, v2, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v4, v2, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v4, v2, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v4, v2, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 85
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 79
    .end local v2    # "other":Landroidx/media3/extractor/TrackOutput$CryptoData;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 90
    iget v0, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 91
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 92
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v0, v2

    .line 93
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v1, v2

    .line 94
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
