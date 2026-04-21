.class public interface abstract Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionSupplier"
.end annotation


# static fields
.field public static final ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2139
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-void
.end method

.method public static getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 1
    .param p0, "positionMs"    # J

    .line 2147
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;-><init>(J)V

    return-object v0
.end method

.method public static getExtrapolating(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 6
    .param p0, "currentPositionMs"    # J
    .param p2, "playbackSpeed"    # F

    .line 2157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2158
    .local v3, "startTimeMs":J
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;

    move-wide v1, p0

    move v5, p2

    .end local p0    # "currentPositionMs":J
    .end local p2    # "playbackSpeed":F
    .local v1, "currentPositionMs":J
    .local v5, "playbackSpeed":F
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0;-><init>(JJF)V

    return-object v0
.end method

.method public static synthetic lambda$getConstant$0(J)J
    .locals 0
    .param p0, "positionMs"    # J

    .line 2147
    return-wide p0
.end method

.method public static synthetic lambda$getExtrapolating$1(JJF)J
    .locals 4
    .param p0, "currentPositionMs"    # J
    .param p2, "startTimeMs"    # J
    .param p4, "playbackSpeed"    # F

    .line 2159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2160
    .local v0, "currentTimeMs":J
    sub-long v2, v0, p2

    long-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-long v2, v2

    add-long/2addr v2, p0

    return-wide v2
.end method


# virtual methods
.method public abstract get()J
.end method
