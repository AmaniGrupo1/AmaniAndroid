.class public final Landroidx/compose/animation/AndroidFlingSpline;
.super Ljava/lang/Object;
.source "SplineBasedDecay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/AndroidFlingSpline$FlingResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/animation/AndroidFlingSpline;",
        "",
        "<init>",
        "()V",
        "NbSamples",
        "",
        "SplinePositions",
        "",
        "SplineTimes",
        "flingPosition",
        "Landroidx/compose/animation/AndroidFlingSpline$FlingResult;",
        "time",
        "",
        "deceleration",
        "",
        "velocity",
        "friction",
        "FlingResult",
        "animation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

.field private static final NbSamples:I = 0x64

.field private static final SplinePositions:[F

.field private static final SplineTimes:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/animation/AndroidFlingSpline;

    invoke-direct {v0}, Landroidx/compose/animation/AndroidFlingSpline;-><init>()V

    sput-object v0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    .line 75
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    .line 76
    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/animation/AndroidFlingSpline;->SplineTimes:[F

    .line 78
    nop

    .line 81
    sget-object v0, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    sget-object v1, Landroidx/compose/animation/AndroidFlingSpline;->SplineTimes:[F

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/SplineBasedDecayKt;->access$computeSplineInfo([F[FI)V

    .line 82
    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/AndroidFlingSpline;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deceleration(FF)D
    .locals 4
    .param p1, "velocity"    # F
    .param p2, "friction"    # F

    .line 109
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-double v0, v1

    float-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;
    .locals 10
    .param p1, "time"    # F

    .line 92
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 93
    .local v0, "clampedTime":F
    const/16 v1, 0x64

    int-to-float v2, v1

    mul-float v3, v2, v0

    float-to-int v3, v3

    .line 94
    .local v3, "index":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 95
    .local v4, "distanceCoef":F
    const/4 v5, 0x0

    .line 96
    .local v5, "velocityCoef":F
    if-ge v3, v1, :cond_0

    .line 97
    int-to-float v1, v3

    div-float/2addr v1, v2

    .line 98
    .local v1, "tInf":F
    add-int/lit8 v6, v3, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v2

    .line 99
    .local v6, "tSup":F
    sget-object v2, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    aget v2, v2, v3

    .line 100
    .local v2, "dInf":F
    sget-object v7, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    .line 101
    .local v7, "dSup":F
    sub-float v8, v7, v2

    sub-float v9, v6, v1

    div-float v5, v8, v9

    .line 102
    sub-float v8, v0, v1

    mul-float/2addr v8, v5

    add-float v4, v2, v8

    .line 104
    .end local v1    # "tInf":F
    .end local v2    # "dInf":F
    .end local v6    # "tSup":F
    .end local v7    # "dSup":F
    :cond_0
    new-instance v1, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    invoke-direct {v1, v4, v5}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;-><init>(FF)V

    return-object v1
.end method
