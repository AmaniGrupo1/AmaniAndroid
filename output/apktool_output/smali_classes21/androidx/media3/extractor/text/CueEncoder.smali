.class public final Landroidx/media3/extractor/text/CueEncoder;
.super Ljava/lang/Object;
.source "CueEncoder.java"


# direct methods
.method public static synthetic $r8$lambda$AMv7MpVkqkrty0kJZwXfmY2n-Eo(Landroidx/media3/common/text/Cue;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/text/Cue;->toSerializableBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;J)[B
    .locals 4
    .param p2, "durationUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;J)[B"
        }
    .end annotation

    .line 39
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/text/Cue;>;"
    new-instance v0, Landroidx/media3/extractor/text/CueEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/text/CueEncoder$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    invoke-static {p1, v0}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, "bundledCues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v1, "allCuesBundle":Landroid/os/Bundle;
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    const-string v2, "d"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 45
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 47
    .local v3, "bytes":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object v3
.end method
