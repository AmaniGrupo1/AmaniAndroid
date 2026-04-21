.class public final Landroidx/media3/common/Tracks$Group;
.super Ljava/lang/Object;
.source "Tracks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Tracks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field private static final FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

.field private static final FIELD_TRACK_GROUP:Ljava/lang/String;

.field private static final FIELD_TRACK_SELECTED:Ljava/lang/String;

.field private static final FIELD_TRACK_SUPPORT:Ljava/lang/String;


# instance fields
.field private final adaptiveSupported:Z

.field public final length:I

.field private final mediaTrackGroup:Landroidx/media3/common/TrackGroup;

.field private final trackSelected:[Z

.field private final trackSupport:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    .line 243
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    .line 244
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V
    .locals 4
    .param p1, "mediaTrackGroup"    # Landroidx/media3/common/TrackGroup;
    .param p2, "adaptiveSupported"    # Z
    .param p3, "trackSupport"    # [I
    .param p4, "trackSelected"    # [Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Landroidx/media3/common/TrackGroup;->length:I

    iput v0, p0, Landroidx/media3/common/Tracks$Group;->length:I

    .line 67
    iget v0, p0, Landroidx/media3/common/Tracks$Group;->length:I

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/Tracks$Group;->length:I

    array-length v1, p4

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 68
    iput-object p1, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 69
    if-eqz p2, :cond_1

    iget v0, p0, Landroidx/media3/common/Tracks$Group;->length:I

    if-le v0, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    .line 70
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    .line 71
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    .line 72
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Tracks$Group;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 259
    sget-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/media3/common/TrackGroup;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    .line 261
    .local v0, "trackGroup":Landroidx/media3/common/TrackGroup;
    sget-object v1, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    .line 263
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/TrackGroup;->length:I

    new-array v2, v2, [I

    .line 262
    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 264
    .local v1, "trackSupport":[I
    sget-object v2, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    .line 266
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iget v3, v0, Landroidx/media3/common/TrackGroup;->length:I

    new-array v3, v3, [Z

    .line 265
    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 267
    .local v2, "selected":[Z
    sget-object v3, Landroidx/media3/common/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 268
    .local v3, "adaptiveSupported":Z
    new-instance v4, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v4, v0, v3, v1, v2}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    return-object v4
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Landroidx/media3/common/Tracks$Group;
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;

    .line 213
    new-instance v0, Landroidx/media3/common/Tracks$Group;

    iget-object v1, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 214
    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackGroup;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/TrackGroup;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    iget-object v3, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    iget-object v4, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    .line 213
    return-object v0
.end method

.method public copyWithMediaTrackGroup(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/Tracks$Group;
    .locals 4
    .param p1, "trackGroup"    # Landroidx/media3/common/TrackGroup;

    .line 202
    new-instance v0, Landroidx/media3/common/Tracks$Group;

    iget-boolean v1, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    iget-object v3, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 219
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 220
    return v0

    .line 222
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 225
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    .line 226
    .local v2, "that":Landroidx/media3/common/Tracks$Group;
    iget-boolean v3, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    iget-boolean v4, v2, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v4, v2, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    .line 227
    invoke-virtual {v3, v4}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    iget-object v4, v2, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    .line 228
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    iget-object v4, v2, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    .line 229
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 226
    :goto_0
    return v0

    .line 223
    .end local v2    # "that":Landroidx/media3/common/Tracks$Group;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMediaTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    return-object v0
.end method

.method public getTrackFormat(I)Landroidx/media3/common/Format;
    .locals 1
    .param p1, "trackIndex"    # I

    .line 93
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, p1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSupport(I)I
    .locals 1
    .param p1, "trackIndex"    # I

    .line 104
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    aget v0, v0, p1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v0, v0, Landroidx/media3/common/TrackGroup;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 234
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0}, Landroidx/media3/common/TrackGroup;->hashCode()I

    move-result v0

    .line 235
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    add-int/2addr v1, v2

    .line 236
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 237
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 238
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAdaptiveSupported()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .line 137
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->contains([ZZ)Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Tracks$Group;->isSupported(Z)Z

    move-result v0

    return v0
.end method

.method public isSupported(Z)Z
    .locals 2
    .param p1, "allowExceedsCapabilities"    # Z

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 164
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    return v1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTrackSelected(I)Z
    .locals 1
    .param p1, "trackIndex"    # I

    .line 186
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isTrackSupported(I)Z
    .locals 1
    .param p1, "trackIndex"    # I

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(IZ)Z

    move-result v0

    return v0
.end method

.method public isTrackSupported(IZ)Z
    .locals 2
    .param p1, "trackIndex"    # I
    .param p2, "allowExceedsCapabilities"    # Z

    .line 130
    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    aget v0, v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v2}, Landroidx/media3/common/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    sget-object v1, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 250
    sget-object v1, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 251
    sget-object v1, Landroidx/media3/common/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    return-object v0
.end method
