.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field private static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_TRACKS:Ljava/lang/String;

.field private static final FIELD_TRACK_TYPE:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2393
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    .line 2394
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    .line 2395
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "tracks"    # [I

    .line 2344
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[II)V

    .line 2345
    return-void
.end method

.method public constructor <init>(I[II)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "tracks"    # [I
    .param p3, "type"    # I

    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2356
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2357
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2358
    array-length v0, p2

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 2359
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    .line 2360
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 2361
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2409
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2410
    .local v0, "groupIndex":I
    sget-object v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 2411
    .local v2, "tracks":[I
    sget-object v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2412
    .local v1, "trackType":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2413
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    new-instance v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v3, v0, v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[II)V

    return-object v3
.end method


# virtual methods
.method public containsTrack(I)Z
    .locals 5
    .param p1, "track"    # I

    .line 2365
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 2366
    .local v4, "overrideTrack":I
    if-ne v4, p1, :cond_0

    .line 2367
    const/4 v0, 0x1

    return v0

    .line 2365
    .end local v4    # "overrideTrack":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2370
    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2381
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2382
    return v0

    .line 2384
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2387
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 2388
    .local v2, "other":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    iget v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    iget v4, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2389
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    iget v4, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2388
    :goto_0
    return v0

    .line 2385
    .end local v2    # "other":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 2375
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2376
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 2399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2400
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2401
    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2402
    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2403
    return-object v0
.end method
