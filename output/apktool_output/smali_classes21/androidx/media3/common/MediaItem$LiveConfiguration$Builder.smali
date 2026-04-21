.class public final Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem$LiveConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxOffsetMs:J

.field private maxPlaybackSpeed:F

.field private minOffsetMs:J

.field private minPlaybackSpeed:F

.field private targetOffsetMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1335
    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1336
    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1337
    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1338
    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 1339
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 2
    .param p1, "liveConfiguration"    # Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1343
    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1344
    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1345
    iget v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1346
    iget v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 1347
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/MediaItem$LiveConfiguration;
    .param p2, "x1"    # Landroidx/media3/common/MediaItem$1;

    .line 1325
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method static synthetic access$2000(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 1325
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2100(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 1325
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 1325
    iget-wide v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$2300(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 1325
    iget v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    return v0
.end method

.method static synthetic access$2400(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 1325
    iget v0, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/common/MediaItem$LiveConfiguration;
    .locals 2

    .line 1412
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public setMaxOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0
    .param p1, "maxOffsetMs"    # J

    .line 1384
    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    .line 1385
    return-object p0
.end method

.method public setMaxPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0
    .param p1, "maxPlaybackSpeed"    # F

    .line 1406
    iput p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    .line 1407
    return-object p0
.end method

.method public setMinOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0
    .param p1, "minOffsetMs"    # J

    .line 1371
    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    .line 1372
    return-object p0
.end method

.method public setMinPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0
    .param p1, "minPlaybackSpeed"    # F

    .line 1395
    iput p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    .line 1396
    return-object p0
.end method

.method public setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;
    .locals 0
    .param p1, "targetOffsetMs"    # J

    .line 1358
    iput-wide p1, p0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    .line 1359
    return-object p0
.end method
