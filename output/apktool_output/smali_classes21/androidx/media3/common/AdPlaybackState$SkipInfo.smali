.class public final Landroidx/media3/common/AdPlaybackState$SkipInfo;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkipInfo"
.end annotation


# static fields
.field private static final FIELD_LABEL_ID:Ljava/lang/String;

.field private static final FIELD_SKIP_DURATION_US:Ljava/lang/String;

.field private static final FIELD_SKIP_OFFSET_US:Ljava/lang/String;


# instance fields
.field public final labelId:Ljava/lang/String;

.field public final skipDurationUs:J

.field public final skipOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 953
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_OFFSET_US:Ljava/lang/String;

    .line 954
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_DURATION_US:Ljava/lang/String;

    .line 955
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_LABEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 3
    .param p1, "skipOffsetUs"    # J
    .param p3, "skipDurationUs"    # J
    .param p5, "labelId"    # Ljava/lang/String;

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 929
    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    move-wide v0, p1

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    .line 930
    iput-wide p3, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    .line 931
    iput-object p5, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 932
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/AdPlaybackState$SkipInfo;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 968
    new-instance v0, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_OFFSET_US:Ljava/lang/String;

    .line 969
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_DURATION_US:Ljava/lang/String;

    .line 970
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_LABEL_ID:Ljava/lang/String;

    .line 971
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/AdPlaybackState$SkipInfo;-><init>(JJLjava/lang/String;)V

    .line 968
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 936
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 937
    return v0

    .line 939
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 942
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/AdPlaybackState$SkipInfo;

    .line 943
    .local v2, "skipInfo":Landroidx/media3/common/AdPlaybackState$SkipInfo;
    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    iget-wide v5, v2, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    .line 945
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 943
    :goto_0
    return v0

    .line 940
    .end local v2    # "skipInfo":Landroidx/media3/common/AdPlaybackState$SkipInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 950
    iget-wide v0, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 959
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 960
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_OFFSET_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 961
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_SKIP_DURATION_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->skipDurationUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 962
    sget-object v1, Landroidx/media3/common/AdPlaybackState$SkipInfo;->FIELD_LABEL_ID:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$SkipInfo;->labelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-object v0
.end method
