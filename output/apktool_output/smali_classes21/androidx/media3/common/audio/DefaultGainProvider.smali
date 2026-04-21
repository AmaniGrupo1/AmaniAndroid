.class public final Landroidx/media3/common/audio/DefaultGainProvider;
.super Ljava/lang/Object;
.source "DefaultGainProvider.java"

# interfaces
.implements Landroidx/media3/common/audio/GainProcessor$GainProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;,
        Landroidx/media3/common/audio/DefaultGainProvider$Builder;
    }
.end annotation


# static fields
.field public static final FADE_IN_EQUAL_POWER:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

.field public static final FADE_IN_LINEAR:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

.field public static final FADE_OUT_EQUAL_POWER:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

.field public static final FADE_OUT_LINEAR:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

.field private static final GAIN_UNSET:F = -3.4028235E38f


# instance fields
.field private final defaultGain:F

.field private final gainMap:Lcom/google/common/collect/TreeRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeRangeMap<",
            "Ljava/lang/Long;",
            "Lcom/google/common/base/Function<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/audio/DefaultGainProvider;->FADE_IN_LINEAR:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    .line 136
    new-instance v0, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/common/audio/DefaultGainProvider;->FADE_OUT_LINEAR:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    .line 147
    new-instance v0, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/media3/common/audio/DefaultGainProvider;->FADE_IN_EQUAL_POWER:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    .line 158
    new-instance v0, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/media3/common/audio/DefaultGainProvider$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroidx/media3/common/audio/DefaultGainProvider;->FADE_OUT_EQUAL_POWER:Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/TreeRangeMap;F)V
    .locals 1
    .param p2, "defaultGain"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeRangeMap<",
            "Ljava/lang/Long;",
            "Lcom/google/common/base/Function<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Float;",
            ">;>;F)V"
        }
    .end annotation

    .line 176
    .local p1, "gainMap":Lcom/google/common/collect/TreeRangeMap;, "Lcom/google/common/collect/TreeRangeMap<Ljava/lang/Long;Lcom/google/common/base/Function<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;Ljava/lang/Float;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {}, Lcom/google/common/collect/TreeRangeMap;->create()Lcom/google/common/collect/TreeRangeMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/DefaultGainProvider;->gainMap:Lcom/google/common/collect/TreeRangeMap;

    .line 178
    iget-object v0, p0, Landroidx/media3/common/audio/DefaultGainProvider;->gainMap:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap;->putAll(Lcom/google/common/collect/RangeMap;)V

    .line 179
    iput p2, p0, Landroidx/media3/common/audio/DefaultGainProvider;->defaultGain:F

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeRangeMap;FLandroidx/media3/common/audio/DefaultGainProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/TreeRangeMap;
    .param p2, "x1"    # F
    .param p3, "x2"    # Landroidx/media3/common/audio/DefaultGainProvider$1;

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/audio/DefaultGainProvider;-><init>(Lcom/google/common/collect/TreeRangeMap;F)V

    return-void
.end method

.method static synthetic lambda$static$0(JJ)F
    .locals 2
    .param p0, "index"    # J
    .param p2, "duration"    # J

    .line 126
    long-to-float v0, p0

    long-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$static$1(JJ)F
    .locals 2
    .param p0, "index"    # J
    .param p2, "duration"    # J

    .line 137
    sub-long v0, p2, p0

    long-to-float v0, v0

    long-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$static$2(JJ)F
    .locals 4
    .param p0, "index"    # J
    .param p2, "duration"    # J

    .line 148
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    long-to-double v2, p0

    mul-double/2addr v2, v0

    long-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic lambda$static$3(JJ)F
    .locals 4
    .param p0, "index"    # J
    .param p2, "duration"    # J

    .line 159
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    long-to-double v2, p0

    mul-double/2addr v2, v0

    long-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getGainFactorAtSamplePosition(JI)F
    .locals 4
    .param p1, "samplePosition"    # J
    .param p3, "sampleRate"    # I

    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 189
    iget-object v0, p0, Landroidx/media3/common/audio/DefaultGainProvider;->gainMap:Lcom/google/common/collect/TreeRangeMap;

    .line 190
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 192
    .local v0, "gain":F
    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 193
    iget v1, p0, Landroidx/media3/common/audio/DefaultGainProvider;->defaultGain:F

    return v1

    .line 195
    :cond_2
    return v0
.end method

.method public isUnityUntil(JI)J
    .locals 6
    .param p1, "samplePosition"    # J
    .param p3, "sampleRate"    # I

    .line 202
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 203
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 205
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    .line 206
    .local v0, "positionUs":J
    iget-object v2, p0, Landroidx/media3/common/audio/DefaultGainProvider;->gainMap:Lcom/google/common/collect/TreeRangeMap;

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<Ljava/lang/Long;>;Lcom/google/common/base/Function<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;Ljava/lang/Float;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Function;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 211
    .local v3, "gainFactor":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-nez v5, :cond_2

    .line 212
    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    return-wide v4

    .line 215
    :cond_2
    iget v5, p0, Landroidx/media3/common/audio/DefaultGainProvider;->defaultGain:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_5

    const v4, -0x800001

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 219
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    invoke-virtual {v4}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v4

    if-nez v4, :cond_4

    .line 220
    const-wide/high16 v4, -0x8000000000000000L

    return-wide v4

    .line 223
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    invoke-virtual {v4}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, p3}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v4

    return-wide v4

    .line 216
    :cond_5
    :goto_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v4
.end method
