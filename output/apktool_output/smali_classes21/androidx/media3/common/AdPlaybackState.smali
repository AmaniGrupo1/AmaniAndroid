.class public final Landroidx/media3/common/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/AdPlaybackState$AdGroup;,
        Landroidx/media3/common/AdPlaybackState$SkipInfo;,
        Landroidx/media3/common/AdPlaybackState$AdState;
    }
.end annotation


# static fields
.field public static final AD_STATE_AVAILABLE:I = 0x1

.field public static final AD_STATE_ERROR:I = 0x4

.field public static final AD_STATE_PLAYED:I = 0x3

.field public static final AD_STATE_SKIPPED:I = 0x2

.field public static final AD_STATE_UNAVAILABLE:I

.field private static final FIELD_AD_GROUPS:Ljava/lang/String;

.field private static final FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

.field private static final FIELD_CONTENT_DURATION_US:Ljava/lang/String;

.field private static final FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

.field public static final NONE:Landroidx/media3/common/AdPlaybackState;

.field private static final REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field private final adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final adsId:Ljava/lang/Object;

.field public final contentDurationUs:J

.field public final removedAdGroupCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 900
    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    const/4 v8, 0x0

    new-array v2, v8, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    .line 908
    new-instance v0, Landroidx/media3/common/AdPlaybackState$AdGroup;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    invoke-virtual {v0, v8}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1736
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    .line 1737
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    .line 1738
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    .line 1739
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8
    .param p1, "adsId"    # Ljava/lang/Object;
    .param p2, "adGroupTimesUs"    # [J

    .line 1009
    nop

    .line 1011
    invoke-static {p2}, Landroidx/media3/common/AdPlaybackState;->createEmptyAdGroups([J)[Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 1009
    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "adsId":Ljava/lang/Object;
    .local v1, "adsId":Ljava/lang/Object;
    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    .line 1015
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V
    .locals 1
    .param p1, "adsId"    # Ljava/lang/Object;
    .param p2, "adGroups"    # [Landroidx/media3/common/AdPlaybackState$AdGroup;
    .param p3, "adResumePositionUs"    # J
    .param p5, "contentDurationUs"    # J
    .param p7, "removedAdGroupCount"    # I

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    .line 1024
    iput-wide p3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    .line 1025
    iput-wide p5, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 1026
    array-length v0, p2

    add-int/2addr v0, p7

    iput v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 1027
    iput-object p2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1028
    iput p7, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 1029
    return-void
.end method

.method private static createEmptyAdGroups([J)[Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 5
    .param p0, "adGroupTimesUs"    # [J

    .line 1816
    array-length v0, p0

    new-array v0, v0, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1817
    .local v0, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1818
    new-instance v2, Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    aput-object v2, v0, v1

    .line 1817
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fromAdPlaybackState(Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/AdPlaybackState;
    .locals 21
    .param p0, "adsId"    # Ljava/lang/Object;
    .param p1, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 1612
    move-object/from16 v0, p1

    iget v1, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v2, v0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr v1, v2

    new-array v4, v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1614
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v4

    if-ge v1, v2, :cond_0

    .line 1615
    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v2, v2, v1

    .line 1616
    .local v2, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    new-instance v5, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v6, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget v8, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v9, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget-object v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v10, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v10, v10

    .line 1621
    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iget-object v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v11, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    array-length v11, v11

    .line 1622
    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Landroidx/media3/common/MediaItem;

    iget-object v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v12, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v12, v12

    .line 1623
    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    iget-wide v13, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-boolean v15, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    iget-object v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    move/from16 v20, v1

    .end local v1    # "i":I
    .local v20, "i":I
    iget-object v1, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->skipInfos:[Landroidx/media3/common/AdPlaybackState$SkipInfo;

    move-object/from16 v17, v1

    iget-boolean v1, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    const/16 v19, 0x0

    move/from16 v18, v1

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v19}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroidx/media3/common/MediaItem;[JJZ[Ljava/lang/String;[Landroidx/media3/common/AdPlaybackState$SkipInfo;ZLandroidx/media3/common/AdPlaybackState$1;)V

    aput-object v5, v4, v20

    .line 1614
    .end local v2    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v1, v20, 0x1

    .end local v20    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1630
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-wide v5, v0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, v0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, v0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1785
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroidx/media3/common/AdPlaybackState;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "interfaceVersion"    # I

    .line 1795
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1797
    .local v0, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v0, :cond_0

    .line 1798
    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-object v5, v1

    .local v1, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    goto :goto_1

    .line 1800
    .end local v1    # "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1801
    .restart local v1    # "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1802
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1801
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 1805
    .end local v1    # "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    .end local v2    # "i":I
    .local v5, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    :goto_1
    sget-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v2, v2, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    .line 1806
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1807
    .local v6, "adResumePositionUs":J
    sget-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v2, v2, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    .line 1808
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1809
    .local v8, "contentDurationUs":J
    sget-object v1, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget v2, v2, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 1810
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1811
    .local v10, "removedAdGroupCount":I
    new-instance v3, Landroidx/media3/common/AdPlaybackState;

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v3
.end method

.method private isPositionBeforeAdGroup(JJI)Z
    .locals 8
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J
    .param p5, "adGroupIndex"    # I

    .line 1718
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1720
    return v3

    .line 1722
    :cond_0
    invoke-virtual {p0, p5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    .line 1723
    .local v2, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 1724
    .local v4, "adGroupPositionUs":J
    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1729
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v6

    if-eqz v0, :cond_1

    .line 1730
    invoke-virtual {v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result v0

    if-nez v0, :cond_1

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    :cond_1
    move v3, v1

    .line 1729
    :cond_2
    return v3

    .line 1733
    :cond_3
    cmp-long v0, p1, v4

    if-gez v0, :cond_4

    move v3, v1

    :cond_4
    return v3
.end method


# virtual methods
.method public copy()Landroidx/media3/common/AdPlaybackState;
    .locals 9

    .line 1171
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v0, v0

    new-array v3, v0, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1172
    .local v3, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_0

    .line 1173
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->copy()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method public endsWithLivePostrollPlaceHolder()Z
    .locals 3

    .line 1550
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1551
    .local v0, "adGroupIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public endsWithLivePostrollPlaceHolder(Z)Z
    .locals 3
    .param p1, "isServerSideInserted"    # Z

    .line 1562
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1563
    .local v0, "adGroupIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1640
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1641
    return v0

    .line 1643
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1646
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/AdPlaybackState;

    .line 1647
    .local v2, "that":Landroidx/media3/common/AdPlaybackState;
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v4, v2, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    iget v4, v2, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1652
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1647
    :goto_0
    return v0

    .line 1644
    .end local v2    # "that":Landroidx/media3/common/AdPlaybackState;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 1033
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ge p1, v0, :cond_0

    .line 1034
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    .line 1033
    :goto_0
    return-object v0
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .locals 8
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 1073
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v4

    if-eqz v2, :cond_0

    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    goto :goto_2

    .line 1079
    :cond_0
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 1080
    .local v2, "index":I
    :goto_0
    iget v6, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v2, v6, :cond_3

    .line 1081
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    iget-wide v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_1

    .line 1082
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    iget-wide v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_2

    .line 1083
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/AdPlaybackState$AdGroup;->shouldPlayAdGroup()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1084
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    :cond_3
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v2, v0, :cond_5

    cmp-long v0, p3, v4

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_5

    .line 1088
    :cond_4
    move v3, v2

    goto :goto_1

    .line 1089
    :cond_5
    nop

    .line 1086
    :goto_1
    return v3

    .line 1075
    .end local v2    # "index":I
    :cond_6
    :goto_2
    return v3
.end method

.method public getAdGroupIndexForPositionUs(JJ)I
    .locals 7
    .param p1, "positionUs"    # J
    .param p3, "periodDurationUs"    # J

    .line 1053
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1054
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->isLivePostrollPlaceholder(I)Z

    move-result v1

    sub-int/2addr v0, v1

    move v6, v0

    .line 1055
    .end local v0    # "index":I
    .local v6, "index":I
    :goto_0
    if-ltz v6, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "positionUs":J
    .end local p3    # "periodDurationUs":J
    .local v2, "positionUs":J
    .local v4, "periodDurationUs":J
    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/AdPlaybackState;->isPositionBeforeAdGroup(JJI)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1056
    add-int/lit8 v6, v6, -0x1

    move-wide p1, v2

    move-wide p3, v4

    goto :goto_0

    .line 1055
    .end local v2    # "positionUs":J
    .end local v4    # "periodDurationUs":J
    .restart local p1    # "positionUs":J
    .restart local p3    # "periodDurationUs":J
    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1058
    .end local p1    # "positionUs":J
    .end local p3    # "periodDurationUs":J
    .restart local v2    # "positionUs":J
    .restart local v4    # "periodDurationUs":J
    :cond_1
    if-ltz v6, :cond_2

    invoke-virtual {p0, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v6

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public getAdIndexOfAdId(ILjava/lang/String;)I
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "adId"    # Ljava/lang/String;

    .line 1601
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getIndexOfAdId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1657
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 1658
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 1659
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1660
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1661
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v0, v2

    .line 1662
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1663
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isAdInErrorState(II)Z
    .locals 4
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 1095
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 1096
    return v1

    .line 1098
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 1099
    .local v0, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-lt p2, v2, :cond_1

    goto :goto_0

    .line 1102
    :cond_1
    iget-object v2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v2, v2, p2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1100
    :cond_3
    :goto_0
    return v1
.end method

.method public isLivePostrollPlaceholder(I)Z
    .locals 2
    .param p1, "adGroupIndex"    # I

    .line 1576
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLivePostrollPlaceholder(IZ)Z
    .locals 2
    .param p1, "adGroupIndex"    # I
    .param p2, "isServerSideInserted"    # Z

    .line 1588
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 1589
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->isLivePostrollPlaceholder(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1588
    :goto_0
    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1746
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->toBundle(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(I)Landroid/os/Bundle;
    .locals 7
    .param p1, "interfaceVersion"    # I

    .line 1760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1761
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    .local v1, "adGroupBundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1763
    .local v5, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    invoke-virtual {v5, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->toBundle(I)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    .end local v5    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1765
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1766
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1768
    :cond_1
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1769
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1771
    :cond_2
    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    sget-object v4, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1772
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1774
    :cond_3
    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sget-object v3, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget v3, v3, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-eq v2, v3, :cond_4

    .line 1775
    sget-object v2, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1777
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1669
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1671
    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1673
    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    const-string v3, "])"

    if-ge v1, v2, :cond_3

    .line 1675
    const-string v2, "adGroup(timeUs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v2, v2, v1

    iget-wide v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1677
    const-string v2, ", ads=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v4

    const-string v5, ", "

    if-ge v2, v4, :cond_1

    .line 1679
    const-string v4, "ad(state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_0

    .line 1697
    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1685
    :pswitch_0
    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1686
    goto :goto_2

    .line 1691
    :pswitch_1
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1692
    goto :goto_2

    .line 1694
    :pswitch_2
    const/16 v4, 0x53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1695
    goto :goto_2

    .line 1688
    :pswitch_3
    const/16 v4, 0x52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1689
    goto :goto_2

    .line 1682
    :pswitch_4
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1683
    nop

    .line 1700
    :goto_2
    const-string v4, ", durationUs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v6, v4, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1702
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1703
    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 1704
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1707
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1709
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1712
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public withAdCount(II)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adCount"    # I

    .line 1154
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1155
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1156
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v1, p2, :cond_1

    .line 1157
    return-object p0

    .line 1159
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1160
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1161
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public varargs withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adDurationsUs"    # [J

    .line 1352
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1353
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1354
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1355
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withAdDurationsUs([[J)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .param p1, "adDurationUs"    # [[J

    .line 1332
    array-length v0, p1

    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1333
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v1, v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1334
    .local v3, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    const/4 v0, 0x0

    .line 1335
    .local v0, "correctedAdGroupIndex":I
    :goto_1
    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1337
    aget-object v1, v3, v0

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    add-int/2addr v2, v0

    aget-object v2, p1, v2

    .line 1338
    invoke-virtual {v1, v2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdDurationsUs([J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1336
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1341
    .end local v0    # "correctedAdGroupIndex":I
    :cond_1
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method public withAdGroupTimeUs(IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adGroupTimeUs"    # J

    .line 1116
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1117
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1118
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withTimeUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1119
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withAdId(IILjava/lang/String;)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "adId"    # Ljava/lang/String;

    .line 1287
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1288
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1289
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1, p3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdId(Ljava/lang/String;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1290
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withAdLoadError(II)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 1276
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1277
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1278
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1279
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withAdResumePositionUs(J)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .param p1, "adResumePositionUs"    # J

    .line 1365
    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1366
    return-object p0

    .line 1368
    :cond_0
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-wide v4, p1

    .end local p1    # "adResumePositionUs":J
    .local v4, "adResumePositionUs":J
    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method public withAdSkipInfo(IILandroidx/media3/common/AdPlaybackState$SkipInfo;)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "skipInfo"    # Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 1300
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1301
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1302
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1, p3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdSkipInfo(Landroidx/media3/common/AdPlaybackState$SkipInfo;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1303
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withAdsId(Ljava/lang/Object;)Landroidx/media3/common/AdPlaybackState;
    .locals 8
    .param p1, "adsId"    # Ljava/lang/Object;

    .line 1216
    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v7, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-object v1, p1

    .end local p1    # "adsId":Ljava/lang/Object;
    .local v1, "adsId":Ljava/lang/Object;
    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v0
.end method

.method public withAvailableAd(II)Landroidx/media3/common/AdPlaybackState;
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 1232
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 1202
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1203
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1204
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    iget-boolean v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-nez v1, :cond_1

    iget-object v1, p3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p3, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1207
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1204
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1208
    aget-object v1, v4, v0

    invoke-virtual {v1, p3, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdMediaItem(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1209
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withAvailableAdUri(IILandroid/net/Uri;)Landroidx/media3/common/AdPlaybackState;
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1186
    invoke-static {p3}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/common/AdPlaybackState;->withAvailableAdMediaItem(IILandroidx/media3/common/MediaItem;)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public withContentDurationUs(J)Landroidx/media3/common/AdPlaybackState;
    .locals 9
    .param p1, "contentDurationUs"    # J

    .line 1376
    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1377
    return-object p0

    .line 1379
    :cond_0
    new-instance v1, Landroidx/media3/common/AdPlaybackState;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-wide v4, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget v8, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move-wide v6, p1

    .end local p1    # "contentDurationUs":J
    .local v6, "contentDurationUs":J
    invoke-direct/range {v1 .. v8}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v1
.end method

.method public withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "contentResumeOffsetUs"    # J

    .line 1437
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1438
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 1439
    return-object p0

    .line 1441
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1442
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    .line 1443
    invoke-virtual {v1, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withContentResumeOffsetUs(J)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1444
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method withIsPlaceholder(IZZ)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "isPlaceholder"    # Z
    .param p3, "isServerSideInserted"    # Z

    .line 1527
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1528
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isPlaceholder:Z

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v1, p3, :cond_0

    .line 1530
    return-object p0

    .line 1532
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1533
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    .line 1534
    invoke-static {v1, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;->access$000(Landroidx/media3/common/AdPlaybackState$AdGroup;ZZ)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1535
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withIsServerSideInserted(IZ)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "isServerSideInserted"    # Z

    .line 1472
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1473
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    if-ne v1, p2, :cond_0

    .line 1474
    return-object p0

    .line 1476
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1477
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    .line 1478
    invoke-virtual {v1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withIsServerSideInserted(Z)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1479
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withLastAdRemoved(I)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I

    .line 1262
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1263
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1264
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withLastAdRemoved()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1265
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withLivePostrollPlaceholderAppended()Landroidx/media3/common/AdPlaybackState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->withLivePostrollPlaceholderAppended(Z)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public withLivePostrollPlaceholderAppended(Z)Landroidx/media3/common/AdPlaybackState;
    .locals 3
    .param p1, "isServerSideInserted"    # Z

    .line 1520
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 1521
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/media3/common/AdPlaybackState;->withIsPlaceholder(IZZ)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    .line 1520
    return-object v0
.end method

.method public withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;
    .locals 11
    .param p1, "adGroupIndex"    # I
    .param p2, "adGroupTimeUs"    # J

    .line 1133
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1134
    .local v0, "adjustedIndex":I
    new-instance v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-direct {v1, p2, p3}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(J)V

    .line 1135
    .local v1, "newAdGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1136
    .local v5, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v5, v0, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    aput-object v1, v5, v0

    .line 1143
    new-instance v3, Landroidx/media3/common/AdPlaybackState;

    iget-object v4, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v6, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v8, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v10, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v3 .. v10}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v3
.end method

.method public withOriginalAdCount(II)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "originalAdCount"    # I

    .line 1455
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1456
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object v1, v1, v0

    iget v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v1, p2, :cond_0

    .line 1457
    return-object p0

    .line 1459
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1460
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withOriginalAdCount(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1461
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 1239
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1240
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1241
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    .line 1242
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1243
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withRemovedAdGroupCount(I)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "removedAdGroupCount"    # I

    .line 1393
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-ne v0, p1, :cond_0

    .line 1394
    return-object p0

    .line 1396
    :cond_0
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1397
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    sub-int/2addr v0, p1

    new-array v4, v0, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1398
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v2, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v2, p1, v2

    array-length v3, v4

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1404
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    move v9, p1

    .end local p1    # "removedAdGroupCount":I
    .local v9, "removedAdGroupCount":I
    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withRemovedAdGroupCountBefore(J)Landroidx/media3/common/AdPlaybackState;
    .locals 6
    .param p1, "timeUs"    # J

    .line 1419
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    .line 1420
    .local v0, "newRemovedAdGroupCount":I
    :goto_0
    iget v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v0, v1, :cond_1

    .line 1422
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    .line 1423
    .local v1, "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    iget-wide v2, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    iget-wide v2, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1424
    goto :goto_1

    .line 1421
    .end local v1    # "adGroup":Landroidx/media3/common/AdPlaybackState$AdGroup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media3/common/AdPlaybackState;->withRemovedAdGroupCount(I)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    return-object v1
.end method

.method public withResetAdGroup(I)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I

    .line 1489
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1490
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1491
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAllAdsReset()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1492
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I
    .param p2, "adIndexInAdGroup"    # I

    .line 1251
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1252
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1253
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    .line 1254
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAdState(II)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1255
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method

.method public withSkippedAdGroup(I)Landroidx/media3/common/AdPlaybackState;
    .locals 10
    .param p1, "adGroupIndex"    # I

    .line 1313
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    sub-int v0, p1, v0

    .line 1314
    .local v0, "adjustedIndex":I
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v2, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 1315
    .local v4, "adGroups":[Landroidx/media3/common/AdPlaybackState$AdGroup;
    aget-object v1, v4, v0

    invoke-virtual {v1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->withAllAdsSkipped()Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1316
    new-instance v2, Landroidx/media3/common/AdPlaybackState;

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    iget-wide v5, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    iget-wide v7, p0, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    iget v9, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v2
.end method
