.class public final Landroidx/media3/common/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# static fields
.field private static final FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_COUNT:Ljava/lang/String;

.field private static final FIELD_DURATIONS_US:Ljava/lang/String;

.field static final FIELD_IDS:Ljava/lang/String;

.field static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

.field static final FIELD_MEDIA_ITEMS:Ljava/lang/String;

.field private static final FIELD_ORIGINAL_COUNT:Ljava/lang/String;

.field private static final FIELD_SKIP_INFOS:Ljava/lang/String;

.field private static final FIELD_STATES:Ljava/lang/String;

.field private static final FIELD_TIME_US:Ljava/lang/String;

.field private static final FIELD_URIS:Ljava/lang/String;


# instance fields
.field public final contentResumeOffsetUs:J

.field public final count:I

.field public final durationsUs:[J

.field public final ids:[Ljava/lang/String;

.field public final isPlaceholder:Z

.field public final isServerSideInserted:Z

.field public final mediaItems:[Landroidx/media3/common/MediaItem;

.field public final originalCount:I

.field public final skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

.field public final states:[I

.field public final timeUs:J

.field public final uris:[Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 709
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    .line 710
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    .line 711
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    .line 712
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    .line 713
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    .line 714
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    .line 715
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    .line 716
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    .line 717
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    .line 718
    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    .line 719
    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 720
    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_SKIP_INFOS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 15
    .param p1, "timeUs"    # J

    .line 121
    const/4 v0, 0x0

    new-array v6, v0, [I

    new-array v7, v0, [Landroidx/media3/common/MediaItem;

    new-array v8, v0, [J

    new-array v12, v0, [Ljava/lang/String;

    new-array v13, v0, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    const/4 v14, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 133
    return-void
.end method

.method private constructor <init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V
    .locals 14
    .param p1, "timeUs"    # J
    .param p3, "count"    # I
    .param p4, "originalCount"    # I
    .param p5, "states"    # [I
    .param p6, "mediaItems"    # [Landroidx/media3/common/MediaItem;
    .param p7, "durationsUs"    # [J
    .param p8, "contentResumeOffsetUs"    # J
    .param p10, "isServerSideInserted"    # Z
    .param p11, "ids"    # [Ljava/lang/String;
    .param p12, "skipInfos"    # [Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .param p13, "isPlaceholder"    # Z

    .line 147
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    array-length v3, v0

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 149
    array-length v3, v0

    array-length v4, v2

    if-ne v3, v4, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 150
    move-wide v3, p1

    iput-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 151
    move/from16 v5, p3

    iput v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 152
    move/from16 v6, p4

    iput v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 153
    iput-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 154
    iput-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 155
    move-object/from16 v7, p7

    iput-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 156
    move-wide/from16 v8, p8

    iput-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    .line 157
    move/from16 v10, p10

    iput-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    .line 158
    array-length v11, v1

    new-array v11, v11, [Landroid/net/Uri;

    iput-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 159
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 160
    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v13, v1, v11

    if-nez v13, :cond_2

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    aget-object v13, v1, v11

    iget-object v13, v13, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v13, v13, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    :goto_2
    aput-object v13, v12, v11

    .line 159
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 162
    .end local v11    # "i":I
    :cond_3
    move-object/from16 v11, p11

    iput-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 163
    iput-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 164
    move/from16 v12, p13

    iput-boolean v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    .line 165
    return-void
.end method

.method synthetic constructor <init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;ZLandroidx/media3/common/AdPlaybackState$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [I
    .param p6, "x4"    # [Landroidx/media3/common/MediaItem;
    .param p7, "x5"    # [J
    .param p8, "x6"    # J
    .param p10, "x7"    # Z
    .param p11, "x8"    # [Ljava/lang/String;
    .param p12, "x9"    # [Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .param p13, "x10"    # Z
    .param p14, "x11"    # Landroidx/media3/common/AdPlaybackState$1;

    .line 63
    invoke-direct/range {p0 .. p13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/common/AdPlaybackState$AdGroup;ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/AdPlaybackState$AdGroup;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withIsPlaceholder(ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    return-object v0
.end method

.method private static copyDurationsUsWithSpaceForAdCount([JI)[J
    .locals 4
    .param p0, "durationsUs"    # [J
    .param p1, "count"    # I

    .line 693
    array-length v0, p0

    .line 694
    .local v0, "oldDurationsUsCount":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 695
    .local v1, "newDurationsUsCount":I
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    .line 696
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 697
    return-object p0
.end method

.method private static copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .locals 3
    .param p0, "skipInfos"    # [Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .param p1, "count"    # I

    .line 703
    array-length v0, p0

    .line 704
    .local v0, "oldSkipInfoCount":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 705
    .local v1, "newSkipInfoCount":I
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object p0, v2

    check-cast p0, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 706
    return-object p0
.end method

.method private static copyStatesWithSpaceForAdCount([II)[I
    .locals 3
    .param p0, "states"    # [I
    .param p1, "count"    # I

    .line 684
    array-length v0, p0

    .line 685
    .local v0, "oldStateCount":I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 686
    .local v1, "newStateCount":I
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 687
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 688
    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 21
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "interfaceVersion"    # I

    .line 775
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 776
    .local v3, "timeUs":J
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 777
    .local v5, "count":I
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 778
    .local v6, "originalCount":I
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 780
    .local v1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    .line 781
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 784
    .local v2, "mediaItemBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    .line 785
    .local v16, "states":[I
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v17

    .line 786
    .local v17, "durationsUs":[J
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 787
    .local v10, "contentResumeOffsetUs":J
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 788
    .local v12, "isServerSideInserted":Z
    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 790
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_SKIP_INFOS:Ljava/lang/String;

    .line 791
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 792
    .local v18, "skipInfoBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 793
    .local v15, "isPlaceholder":Z
    new-instance v8, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 797
    const/4 v9, 0x0

    if-nez v16, :cond_0

    new-array v13, v9, [I

    goto :goto_0

    :cond_0
    move-object/from16 v13, v16

    .line 798
    :goto_0
    move/from16 v14, p1

    move-object/from16 v19, v8

    invoke-static {v2, v1, v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getMediaItemsFromBundleArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroidx/media3/common/MediaItem;

    move-result-object v8

    .line 799
    if-nez v17, :cond_1

    new-array v0, v9, [J

    goto :goto_1

    :cond_1
    move-object/from16 v0, v17

    .line 802
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v20, v0

    new-array v0, v9, [Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v20, v0

    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 803
    :goto_2
    if-nez v18, :cond_3

    .line 804
    new-array v9, v9, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    goto :goto_3

    .line 805
    :cond_3
    invoke-static/range {v18 .. v18}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getSkipInfosFromBundleArrays(Ljava/util/List;)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-result-object v9

    :goto_3
    move-object v14, v13

    move-object v13, v0

    move-object v0, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v7

    move-object v7, v14

    move-object v14, v9

    move-object/from16 v9, v20

    .end local v2    # "mediaItemBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "mediaItemBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local v19, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v2 .. v15}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 793
    return-object v2
.end method

.method private getMediaItemsArrayBundles(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "interfaceVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 820
    .local v4, "mediaItem":Landroidx/media3/common/MediaItem;
    nop

    .line 821
    if-nez v4, :cond_0

    .line 822
    const/4 v5, 0x0

    goto :goto_1

    .line 823
    :cond_0
    invoke-virtual {v4, p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration(I)Landroid/os/Bundle;

    move-result-object v5

    .line 820
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    .end local v4    # "mediaItem":Landroidx/media3/common/MediaItem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    :cond_1
    return-object v0
.end method

.method private static getMediaItemsFromBundleArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroidx/media3/common/MediaItem;
    .locals 5
    .param p2, "interfaceVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;I)[",
            "Landroidx/media3/common/MediaItem;"
        }
    .end annotation

    .line 832
    .local p0, "mediaItemBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 833
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media3/common/MediaItem;

    .line 834
    .local v1, "mediaItems":[Landroidx/media3/common/MediaItem;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 835
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 836
    .local v3, "mediaItemBundle":Landroid/os/Bundle;
    nop

    .line 837
    if-nez v3, :cond_0

    .line 838
    move-object v4, v0

    goto :goto_1

    .line 839
    :cond_0
    invoke-static {v3, p2}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/MediaItem;

    move-result-object v4

    :goto_1
    aput-object v4, v1, v2

    .line 834
    .end local v3    # "mediaItemBundle":Landroid/os/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 842
    .end local v1    # "mediaItems":[Landroidx/media3/common/MediaItem;
    :cond_2
    if-eqz p1, :cond_5

    .line 843
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media3/common/MediaItem;

    .line 844
    .restart local v1    # "mediaItems":[Landroidx/media3/common/MediaItem;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 845
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 846
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_3

    move-object v4, v0

    goto :goto_3

    :cond_3
    invoke-static {v3}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v4

    :goto_3
    aput-object v4, v1, v2

    .line 844
    .end local v3    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 848
    .end local v2    # "i":I
    :cond_4
    return-object v1

    .line 850
    .end local v1    # "mediaItems":[Landroidx/media3/common/MediaItem;
    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method private getSkipInfoArrayBundles()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 812
    .local v4, "skipInfo":Landroidx/media3/common/AdPlaybackState$SkipInfo;
    if-nez v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroidx/media3/common/AdPlaybackState$SkipInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v4    # "skipInfo":Landroidx/media3/common/AdPlaybackState$SkipInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 814
    :cond_1
    return-object v0
.end method

.method private static getSkipInfosFromBundleArrays(Ljava/util/List;)[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)[",
            "Landroidx/media3/common/AdPlaybackState$SkipInfo;"
        }
    .end annotation

    .line 856
    .local p0, "skipInfoBundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 857
    .local v0, "skipInfos":[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 858
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 859
    .local v2, "skipInfoBundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Landroidx/media3/common/AdPlaybackState$SkipInfo;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v1

    .line 857
    .end local v2    # "skipInfoBundle":Landroid/os/Bundle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private withIsPlaceholder(ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "isPlaceholder"    # Z
    .param p2, "isServerSideInserted"    # Z

    .line 639
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move v13, p1

    move/from16 v10, p2

    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method


# virtual methods
.method public copy()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14

    .line 668
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v6

    .line 672
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v7, v7

    .line 673
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v8, v8

    .line 674
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    array-length v12, v12

    .line 677
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-object v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    array-length v13, v13

    .line 678
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 668
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 238
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 239
    return v0

    .line 241
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 245
    .local v2, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 248
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    .line 249
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 250
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    .line 253
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 254
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    iget-boolean v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 245
    :goto_0
    return v0

    .line 242
    .end local v2    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .locals 1

    .line 172
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getIndexOfAdId(Ljava/lang/String;)I
    .locals 2
    .param p1, "adId"    # Ljava/lang/String;

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    return v0

    .line 658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNextAdIndexToPlay(I)I
    .locals 3
    .param p1, "lastPlayedAdIndex"    # I

    .line 184
    add-int/lit8 v0, p1, 0x1

    .line 185
    .local v0, "nextAdIndexToPlay":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 186
    iget-boolean v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 189
    goto :goto_1

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    return v0
.end method

.method public hasUnplayedAds()Z
    .locals 3

    .line 205
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    return v2

    .line 208
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v0, v1, :cond_3

    .line 209
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    :goto_1
    return v2

    .line 213
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 260
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 261
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    add-int/2addr v1, v2

    .line 262
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 263
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 264
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    .line 266
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 267
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    add-int/2addr v1, v2

    .line 268
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 270
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    add-int/2addr v0, v2

    .line 271
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isLivePostrollPlaceholder()Z
    .locals 4

    .line 233
    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLivePostrollPlaceholder(Z)Z
    .locals 1
    .param p1, "isServerSideInserted"    # Z

    .line 223
    iget-boolean v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldPlayAdGroup()Z
    .locals 2

    .line 198
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v0, v1, :cond_0

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
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->toBundle(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "interfaceVersion"    # I

    .line 740
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 741
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 742
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 745
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 746
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_MEDIA_ITEMS:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getMediaItemsArrayBundles(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 747
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 748
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 749
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 750
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IDS:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 752
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_SKIP_INFOS:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getSkipInfoArrayBundles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 753
    sget-object v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    return-object v0
.end method

.method public withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "count"    # I

    .line 294
    move v3, p1

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v5

    .line 295
    .local v5, "states":[I
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v7

    .line 296
    .local v7, "durationsUs":[J
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroidx/media3/common/MediaItem;

    .line 297
    .local v6, "mediaItems":[Landroidx/media3/common/MediaItem;
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Ljava/lang/String;

    .line 298
    .local v11, "ids":[Ljava/lang/String;
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    invoke-static {v0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-result-object v12

    .line 299
    .local v12, "skipInfos":[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method

.method public withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "durationsUs"    # [J

    .line 409
    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v0, v0

    invoke-static {p1, v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    .line 411
    :cond_0
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 412
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    .line 414
    :cond_1
    move-object v7, p1

    .end local p1    # "durationsUs":[J
    .local v7, "durationsUs":[J
    :goto_0
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method

.method public withAdId(Ljava/lang/String;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17
    .param p1, "adId"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v8

    .line 433
    .local v8, "states":[I
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v1

    array-length v2, v8

    .line 435
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 433
    if-ne v1, v2, :cond_0

    .line 434
    move-object v10, v3

    goto :goto_0

    .line 435
    :cond_0
    array-length v1, v8

    invoke-static {v3, v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v3

    move-object v10, v3

    :goto_0
    nop

    .line 438
    .local v10, "durationsUs":[J
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v1, v1

    array-length v2, v8

    .line 440
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 438
    if-ne v1, v2, :cond_1

    .line 439
    move-object v9, v3

    goto :goto_1

    .line 440
    :cond_1
    array-length v1, v8

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroidx/media3/common/MediaItem;

    move-object v9, v3

    :goto_1
    nop

    .line 441
    .local v9, "mediaItems":[Landroidx/media3/common/MediaItem;
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    array-length v2, v8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 442
    .local v14, "ids":[Ljava/lang/String;
    aput-object p1, v14, p2

    .line 443
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v15, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v3
.end method

.method public withAdMediaItem(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "index"    # I

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v8

    .line 330
    .local v8, "states":[I
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v1

    array-length v2, v8

    .line 332
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 330
    if-ne v1, v2, :cond_0

    .line 331
    move-object v10, v3

    goto :goto_0

    .line 332
    :cond_0
    array-length v1, v8

    invoke-static {v3, v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v3

    move-object v10, v3

    :goto_0
    nop

    .line 333
    .local v10, "durationsUs":[J
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v2, v8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroidx/media3/common/MediaItem;

    .line 334
    .local v9, "mediaItems":[Landroidx/media3/common/MediaItem;
    aput-object p1, v9, p2

    .line 335
    const/4 v1, 0x1

    aput v1, v8, p2

    .line 338
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    array-length v1, v1

    array-length v2, v8

    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v8

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    :goto_1
    move-object v14, v3

    .line 341
    .local v14, "ids":[Ljava/lang/String;
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    array-length v1, v1

    array-length v2, v8

    .line 343
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 341
    if-ne v1, v2, :cond_2

    .line 342
    move-object v15, v3

    goto :goto_2

    .line 343
    :cond_2
    array-length v1, v8

    invoke-static {v3, v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-result-object v3

    move-object v15, v3

    :goto_2
    nop

    .line 344
    .local v15, "skipInfos":[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v3
.end method

.method public withAdSkipInfo(Landroidx/media3/common/AdPlaybackState$SkipInfo;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17
    .param p1, "skipInfo"    # Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .param p2, "index"    # I

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v8

    .line 462
    .local v8, "states":[I
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v1

    array-length v2, v8

    .line 464
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 462
    if-ne v1, v2, :cond_0

    .line 463
    move-object v10, v3

    goto :goto_0

    .line 464
    :cond_0
    array-length v1, v8

    invoke-static {v3, v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v3

    move-object v10, v3

    :goto_0
    nop

    .line 467
    .local v10, "durationsUs":[J
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v1, v1

    array-length v2, v8

    .line 469
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 467
    if-ne v1, v2, :cond_1

    .line 468
    move-object v9, v3

    goto :goto_1

    .line 469
    :cond_1
    array-length v1, v8

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroidx/media3/common/MediaItem;

    move-object v9, v3

    :goto_1
    nop

    .line 472
    .local v9, "mediaItems":[Landroidx/media3/common/MediaItem;
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    array-length v1, v1

    array-length v2, v8

    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    array-length v1, v8

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    :goto_2
    move-object v14, v3

    .line 474
    .local v14, "ids":[Ljava/lang/String;
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    array-length v2, v8

    invoke-static {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-result-object v15

    .line 475
    .local v15, "skipInfos":[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    aput-object p1, v15, p2

    .line 476
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v3
.end method

.method public withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 21
    .param p1, "state"    # I
    .param p2, "index"    # I

    .line 368
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 369
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyStatesWithSpaceForAdCount([II)[I

    move-result-object v12

    .line 370
    .local v12, "states":[I
    aget v3, v12, v2

    if-eqz v3, :cond_2

    aget v3, v12, v2

    if-eq v3, v6, :cond_2

    aget v3, v12, v2

    if-ne v3, v1, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 375
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v3, v3

    array-length v4, v12

    .line 377
    iget-object v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 375
    if-ne v3, v4, :cond_4

    .line 376
    move-object v14, v5

    goto :goto_2

    .line 377
    :cond_4
    array-length v3, v12

    invoke-static {v5, v3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copyDurationsUsWithSpaceForAdCount([JI)[J

    move-result-object v5

    move-object v14, v5

    :goto_2
    nop

    .line 380
    .local v14, "durationsUs":[J
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v3, v3

    array-length v4, v12

    .line 382
    iget-object v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    .line 380
    if-ne v3, v4, :cond_5

    .line 381
    move-object v13, v5

    goto :goto_3

    .line 382
    :cond_5
    array-length v3, v12

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Landroidx/media3/common/MediaItem;

    move-object v13, v5

    :goto_3
    nop

    .line 385
    .local v13, "mediaItems":[Landroidx/media3/common/MediaItem;
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    array-length v3, v3

    array-length v4, v12

    iget-object v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    if-ne v3, v4, :cond_6

    goto :goto_4

    :cond_6
    array-length v3, v12

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Ljava/lang/String;

    :goto_4
    move-object/from16 v18, v5

    .line 386
    .local v18, "ids":[Ljava/lang/String;
    aput v1, v12, v2

    .line 389
    iget-object v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    array-length v3, v3

    array-length v4, v12

    .line 391
    iget-object v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 389
    if-ne v3, v4, :cond_7

    .line 390
    move-object/from16 v19, v5

    goto :goto_5

    .line 391
    :cond_7
    array-length v3, v12

    invoke-static {v5, v3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copySkipInfosWithSpaceForAdCount([Landroidx/media3/common/AdPlaybackState$SkipInfo;I)[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-result-object v5

    move-object/from16 v19, v5

    :goto_5
    nop

    .line 392
    .local v19, "skipInfos":[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    new-instance v7, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v8, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v10, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-wide v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v5, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move-wide v15, v3

    move/from16 v17, v5

    move/from16 v20, v6

    invoke-direct/range {v7 .. v20}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v7
.end method

.method public withAdUri(Landroid/net/Uri;I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdMediaItem(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    return-object v0
.end method

.method public withAllAdsReset()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 15

    .line 612
    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 613
    return-object p0

    .line 615
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v0

    .line 616
    .local v4, "count":I
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 617
    .local v6, "states":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 618
    aget v1, v6, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    aget v1, v6, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    aget v1, v6, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 621
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    aput v1, v6, v0

    .line 617
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    .end local v0    # "i":I
    :cond_4
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v9, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v14, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-direct/range {v1 .. v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v1
.end method

.method public withAllAdsSkipped()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 17

    .line 571
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 572
    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v7, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    const/4 v1, 0x0

    new-array v8, v1, [I

    new-array v9, v1, [Landroidx/media3/common/MediaItem;

    new-array v10, v1, [J

    iget-wide v11, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v14, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v15, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    const/4 v6, 0x0

    move/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v3

    .line 585
    :cond_0
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v5, v1

    .line 586
    .local v5, "count":I
    iget-object v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 587
    .local v7, "states":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 588
    aget v2, v7, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    aget v2, v7, v1

    if-nez v2, :cond_2

    .line 589
    :cond_1
    const/4 v2, 0x2

    aput v2, v7, v1

    .line 587
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "i":I
    :cond_3
    new-instance v2, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v3, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v6, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v8, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v9, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v10, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v12, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v13, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v14, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v15, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-direct/range {v2 .. v15}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v2
.end method

.method public withContentResumeOffsetUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "contentResumeOffsetUs"    # J

    .line 493
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move-wide v8, p1

    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method

.method public withIsServerSideInserted(Z)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "isServerSideInserted"    # Z

    .line 510
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move v10, p1

    .end local p1    # "isServerSideInserted":Z
    .local v10, "isServerSideInserted":Z
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method

.method public withLastAdRemoved()Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 15

    .line 542
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v0, v0

    add-int/lit8 v4, v0, -0x1

    .line 543
    .local v4, "newCount":I
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 544
    .local v6, "newStates":[I
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroidx/media3/common/MediaItem;

    .line 545
    .local v7, "newMediaItems":[Landroidx/media3/common/MediaItem;
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 546
    .local v0, "newDurationsUs":[J
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v1

    if-le v1, v4, :cond_0

    .line 547
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 546
    :cond_0
    move-object v8, v0

    .line 549
    .end local v0    # "newDurationsUs":[J
    .local v8, "newDurationsUs":[J
    :goto_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    .line 550
    .local v12, "newIds":[Ljava/lang/String;
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 551
    .local v13, "newSkipInfos":[Landroidx/media3/common/AdPlaybackState$SkipInfo;
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    .line 558
    invoke-static {v8}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v9

    iget-boolean v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-boolean v14, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    invoke-direct/range {v1 .. v14}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    .line 551
    return-object v1
.end method

.method public withOriginalAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "originalCount"    # I

    .line 526
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move v4, p1

    .end local p1    # "originalCount":I
    .local v4, "originalCount":I
    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method

.method public withTimeUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 14
    .param p1, "timeUs"    # J

    .line 277
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v7, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v10, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v11, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object v12, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    iget-boolean v13, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    move-wide v1, p1

    invoke-direct/range {v0 .. v13}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;Z)V

    return-object v0
.end method
