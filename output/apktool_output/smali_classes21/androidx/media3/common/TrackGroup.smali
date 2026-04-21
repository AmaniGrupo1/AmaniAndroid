.class public final Landroidx/media3/common/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"


# static fields
.field private static final FIELD_FORMATS:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TrackGroup"


# instance fields
.field private final formats:[Landroidx/media3/common/Format;

.field private hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "formats"    # [Landroidx/media3/common/Format;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    iput-object p1, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 91
    array-length v0, p2

    iput v0, p0, Landroidx/media3/common/TrackGroup;->length:I

    .line 92
    aget-object v0, p2, v1

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 93
    .local v0, "sampleMimeType":Ljava/lang/String;
    nop

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    aget-object v1, p2, v1

    iget-object v1, v1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 96
    :cond_1
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Landroidx/media3/common/TrackGroup;->type:I

    .line 97
    invoke-direct {p0}, Landroidx/media3/common/TrackGroup;->verifyCorrectness()V

    .line 98
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/Format;)V
    .locals 1
    .param p1, "formats"    # [Landroidx/media3/common/Format;

    .line 77
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 78
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackGroup;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 188
    sget-object v0, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    .local v0, "formatBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 192
    :cond_0
    new-instance v1, Landroidx/media3/common/TrackGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/common/TrackGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    nop

    .line 193
    .local v1, "formats":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Format;>;"
    sget-object v2, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "id":Ljava/lang/String;
    new-instance v3, Landroidx/media3/common/TrackGroup;

    const/4 v4, 0x0

    new-array v4, v4, [Landroidx/media3/common/Format;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/media3/common/Format;

    invoke-direct {v3, v2, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object v3
.end method

.method private static logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "mismatchField"    # Ljava/lang/String;
    .param p1, "valueIndex0"    # Ljava/lang/String;
    .param p2, "otherValue"    # Ljava/lang/String;
    .param p3, "otherIndex"    # I

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " combined in one TrackGroup: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (track 0) and \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "TrackGroup"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    return-void
.end method

.method private static normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .line 226
    if-eqz p0, :cond_1

    const-string/jumbo v0, "und"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private static normalizeRoleFlags(I)I
    .locals 1
    .param p0, "roleFlags"    # I

    .line 231
    or-int/lit16 v0, p0, 0x4000

    return v0
.end method

.method private verifyCorrectness()V
    .locals 6

    .line 202
    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "language":Ljava/lang/String;
    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v2, v2, v1

    iget v2, v2, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {v2}, Landroidx/media3/common/TrackGroup;->normalizeRoleFlags(I)I

    move-result v2

    .line 204
    .local v2, "roleFlags":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 205
    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 213
    iget-object v5, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 205
    if-nez v4, :cond_0

    .line 206
    aget-object v1, v5, v1

    iget-object v1, v1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const-string v5, "languages"

    invoke-static {v5, v1, v4, v3}, Landroidx/media3/common/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    return-void

    .line 213
    :cond_0
    aget-object v4, v5, v3

    iget v4, v4, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {v4}, Landroidx/media3/common/TrackGroup;->normalizeRoleFlags(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 214
    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v1, v4, v1

    iget v1, v1, Landroidx/media3/common/Format;->roleFlags:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v4, v4, v3

    iget v4, v4, Landroidx/media3/common/Format;->roleFlags:I

    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    const-string/jumbo v5, "role flags"

    invoke-static {v5, v1, v4, v3}, Landroidx/media3/common/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    return-void

    .line 204
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Landroidx/media3/common/TrackGroup;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 109
    new-instance v0, Landroidx/media3/common/TrackGroup;

    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-direct {v0, p1, v1}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 156
    return v0

    .line 158
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/TrackGroup;

    .line 162
    .local v2, "other":Landroidx/media3/common/TrackGroup;
    iget-object v3, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    iget-object v4, v2, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 159
    .end local v2    # "other":Landroidx/media3/common/TrackGroup;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFormat(I)Landroidx/media3/common/Format;
    .locals 1
    .param p1, "index"    # I

    .line 120
    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 144
    iget v0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    .line 145
    const/16 v0, 0x11

    .line 146
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 148
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    .line 150
    .end local v0    # "result":I
    :cond_0
    iget v0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Landroidx/media3/common/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 136
    return v0

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 7

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 178
    .local v5, "format":Landroidx/media3/common/Format;
    invoke-virtual {v5}, Landroidx/media3/common/Format;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v5    # "format":Landroidx/media3/common/Format;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    :cond_0
    sget-object v2, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    sget-object v2, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
