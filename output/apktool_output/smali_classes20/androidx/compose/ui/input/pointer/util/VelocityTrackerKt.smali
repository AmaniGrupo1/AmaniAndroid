.class public final Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocityTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n+ 2 MathHelpers.kt\nandroidx/compose/ui/util/MathHelpersKt\n*L\n1#1,621:1\n593#1:622\n600#1,2:623\n596#1,6:625\n593#1:631\n593#1:632\n588#1:633\n575#1:635\n575#1:636\n69#2:634\n*S KotlinDebug\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n*L\n412#1:622\n414#1:623,2\n416#1:625,6\n423#1:631\n425#1:632\n438#1:633\n560#1:635\n566#1:636\n438#1:634\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a!\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a1\u0010\r\u001a\u00020\u0005*\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015\u001a2\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0018H\u0000\u001a(\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010 \u001a\u00020!H\u0002\u001a\u0011\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u0014H\u0082\u0008\u001a\u0014\u0010%\u001a\u00020\u0014*\u00020\u00182\u0006\u0010&\u001a\u00020\u0018H\u0002\u001a\r\u0010\'\u001a\u00020\u0014*\u00020\u0018H\u0082\u0008\u001a(\u0010(\u001a\u000c\u0012\u0008\u0012\u00060\u0018j\u0002`)0\u000e2\u0006\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0010,\u001a,\u0010-\u001a\u00020\u0014*\u000c\u0012\u0004\u0012\u00020\u00180\u000ej\u0002`.2\u0006\u0010/\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u0001H\u0082\n\u00a2\u0006\u0002\u00101\u001a4\u0010\r\u001a\u00020\u0005*\u000c\u0012\u0004\u0012\u00020\u00180\u000ej\u0002`.2\u0006\u0010/\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u0014H\u0082\n\u00a2\u0006\u0002\u00103\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000\"$\u00104\u001a\u00020!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:*\u000c\u0008\u0002\u0010$\"\u00020\u00182\u00020\u0018*\u0018\u0008\u0002\u0010(\"\u0008\u0012\u0004\u0012\u00020\u00180\u000e2\u0008\u0012\u0004\u0012\u00020\u00180\u000e\u00a8\u0006;"
    }
    d2 = {
        "AssumePointerMoveStoppedMilliseconds",
        "",
        "HistorySize",
        "HorizonMilliseconds",
        "addPointerInputChange",
        "",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "event",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "addPointerInputChange-0AR0LA0",
        "(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V",
        "set",
        "",
        "Landroidx/compose/ui/input/pointer/util/DataPointAtTime;",
        "index",
        "time",
        "",
        "dataPoint",
        "",
        "([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V",
        "DefaultWeight",
        "polyFitLeastSquares",
        "",
        "x",
        "y",
        "sampleCount",
        "degree",
        "coefficients",
        "calculateImpulseVelocity",
        "dataPoints",
        "isDataDifferential",
        "",
        "kineticEnergyToVelocity",
        "kineticEnergy",
        "Vector",
        "dot",
        "a",
        "norm",
        "Matrix",
        "Landroidx/compose/ui/input/pointer/util/Vector;",
        "rows",
        "cols",
        "(II)[[F",
        "get",
        "Landroidx/compose/ui/input/pointer/util/Matrix;",
        "row",
        "col",
        "([[FII)F",
        "value",
        "([[FIIF)V",
        "VelocityTrackerAddPointsFix",
        "getVelocityTrackerAddPointsFix$annotations",
        "()V",
        "getVelocityTrackerAddPointsFix",
        "()Z",
        "setVelocityTrackerAddPointsFix",
        "(Z)V",
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AssumePointerMoveStoppedMilliseconds:I = 0x28

.field private static final DefaultWeight:F = 1.0f

.field private static final HistorySize:I = 0x14

.field private static final HorizonMilliseconds:I = 0x64

.field private static VelocityTrackerAddPointsFix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 613
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->VelocityTrackerAddPointsFix:Z

    return-void
.end method

.method private static final Matrix(II)[[F
    .locals 4
    .param p0, "rows"    # I
    .param p1, "cols"    # I

    const/4 v0, 0x0

    .line 593
    .local v0, "$i$f$Matrix":I
    new-array v1, p0, [[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    new-array v3, p1, [F

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final synthetic access$calculateImpulseVelocity([F[FIZ)F
    .locals 1
    .param p0, "dataPoints"    # [F
    .param p1, "time"    # [F
    .param p2, "sampleCount"    # I
    .param p3, "isDataDifferential"    # Z

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->calculateImpulseVelocity([F[FIZ)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V
    .locals 0
    .param p0, "$receiver"    # [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    .param p1, "index"    # I
    .param p2, "time"    # J
    .param p4, "dataPoint"    # F

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V

    return-void
.end method

.method public static final addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 2
    .param p0, "$this$addPointerInputChange"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 111
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange-0AR0LA0(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    return-void
.end method

.method public static final addPointerInputChange-0AR0LA0(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 1
    .param p0, "$this$addPointerInputChange_u2d0AR0LA0"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/pointer/PointerInputChange;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-offset$0"    # J

    .line 131
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getPlatformVelocityTracker$ui()Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;->addPointerInputChange-Uv8p0NA(Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    return-void
.end method

.method private static final calculateImpulseVelocity([F[FIZ)F
    .locals 13
    .param p0, "dataPoints"    # [F
    .param p1, "time"    # [F
    .param p2, "sampleCount"    # I
    .param p3, "isDataDifferential"    # Z

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "work":F
    add-int/lit8 v1, p2, -0x1

    .line 550
    .local v1, "start":I
    aget v2, p1, v1

    .line 551
    .local v2, "nextTime":F
    move v3, v1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-lez v3, :cond_4

    .line 552
    move v5, v2

    .line 553
    .local v5, "currentTime":F
    add-int/lit8 v6, v3, -0x1

    aget v2, p1, v6

    .line 554
    cmpg-float v6, v5, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 555
    goto :goto_3

    .line 558
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v6, v3, -0x1

    aget v6, p0, v6

    neg-float v6, v6

    goto :goto_2

    :cond_2
    aget v6, p0, v3

    add-int/lit8 v7, v3, -0x1

    aget v7, p0, v7

    sub-float/2addr v6, v7

    .line 557
    :goto_2
    nop

    .line 559
    .local v6, "dataPointsDelta":F
    sub-float v7, v5, v2

    div-float v7, v6, v7

    .line 560
    .local v7, "vCurr":F
    move v8, v0

    .local v8, "kineticEnergy$iv":F
    const/4 v9, 0x0

    .line 635
    .local v9, "$i$f$kineticEnergyToVelocity":I
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v10

    int-to-float v4, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v4, v11

    float-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float/2addr v10, v4

    .line 560
    .end local v8    # "kineticEnergy$iv":F
    .end local v9    # "$i$f$kineticEnergyToVelocity":I
    nop

    .line 561
    .local v10, "vPrev":F
    sub-float v4, v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v4, v8

    add-float/2addr v0, v4

    .line 562
    if-ne v3, v1, :cond_3

    .line 563
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    .line 551
    .end local v5    # "currentTime":F
    .end local v6    # "dataPointsDelta":F
    .end local v7    # "vCurr":F
    .end local v10    # "vPrev":F
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 566
    .end local v3    # "i":I
    :cond_4
    move v3, v0

    .local v3, "kineticEnergy$iv":F
    const/4 v5, 0x0

    .line 636
    .local v5, "$i$f$kineticEnergyToVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v6

    int-to-float v4, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v6, v4

    .line 566
    .end local v3    # "kineticEnergy$iv":F
    .end local v5    # "$i$f$kineticEnergyToVelocity":I
    return v6
.end method

.method private static final dot([F[F)F
    .locals 5
    .param p0, "$this$dot"    # [F
    .param p1, "a"    # [F

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "result":F
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 583
    aget v3, p0, v1

    aget v4, p1, v1

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static final get([[FII)F
    .locals 2
    .param p0, "$this$get"    # [[F
    .param p1, "row"    # I
    .param p2, "col"    # I

    const/4 v0, 0x0

    .line 596
    .local v0, "$i$f$get":I
    aget-object v1, p0, p1

    aget v1, v1, p2

    return v1
.end method

.method public static final getVelocityTrackerAddPointsFix()Z
    .locals 1

    .line 613
    sget-boolean v0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->VelocityTrackerAddPointsFix:Z

    return v0
.end method

.method public static synthetic getVelocityTrackerAddPointsFix$annotations()V
    .locals 0

    return-void
.end method

.method private static final kineticEnergyToVelocity(F)F
    .locals 4
    .param p0, "kineticEnergy"    # F

    const/4 v0, 0x0

    .line 575
    .local v0, "$i$f$kineticEnergyToVelocity":I
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    return v1
.end method

.method private static final norm([F)F
    .locals 3
    .param p0, "$this$norm"    # [F

    const/4 v0, 0x0

    .line 588
    .local v0, "$i$f$norm":I
    invoke-static {p0, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final polyFitLeastSquares([F[FII[F)[F
    .locals 17
    .param p0, "x"    # [F
    .param p1, "y"    # [F
    .param p2, "sampleCount"    # I
    .param p3, "degree"    # I
    .param p4, "coefficients"    # [F

    .line 393
    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 394
    const-string v2, "The degree must be at positive integer"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 396
    :cond_0
    if-nez v0, :cond_1

    .line 397
    const-string v2, "At least one point must be provided"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 401
    :cond_1
    if-lt v1, v0, :cond_2

    .line 402
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 404
    :cond_2
    move v2, v1

    .line 401
    :goto_0
    nop

    .line 400
    nop

    .line 408
    .local v2, "truncatedDegree":I
    move/from16 v3, p2

    .line 409
    .local v3, "m":I
    add-int/lit8 v4, v2, 0x1

    .line 412
    .local v4, "n":I
    move v5, v3

    .local v5, "cols$iv":I
    move v6, v4

    .local v6, "rows$iv":I
    const/4 v7, 0x0

    .line 622
    .local v7, "$i$f$Matrix":I
    new-array v8, v6, [[F

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v6, :cond_3

    new-array v11, v5, [F

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 412
    .end local v5    # "cols$iv":I
    .end local v6    # "rows$iv":I
    .end local v7    # "$i$f$Matrix":I
    :cond_3
    nop

    .line 413
    .local v8, "a":[[F
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_2
    if-ge v5, v3, :cond_5

    .line 414
    const/4 v6, 0x0

    .local v6, "row$iv":I
    const/high16 v7, 0x3f800000    # 1.0f

    .local v7, "value$iv":F
    move v10, v5

    .local v10, "col$iv":I
    move-object v11, v8

    .local v11, "$this$set$iv":[[F
    const/4 v12, 0x0

    .line 623
    .local v12, "$i$f$set":I
    aget-object v13, v11, v6

    aput v7, v13, v10

    .line 624
    nop

    .line 415
    .end local v6    # "row$iv":I
    .end local v7    # "value$iv":F
    .end local v10    # "col$iv":I
    .end local v11    # "$this$set$iv":[[F
    .end local v12    # "$i$f$set":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_3
    if-ge v6, v4, :cond_4

    .line 416
    add-int/lit8 v7, v6, -0x1

    .local v7, "row$iv":I
    move v10, v5

    .restart local v10    # "col$iv":I
    move-object v11, v8

    .local v11, "$this$get$iv":[[F
    const/4 v12, 0x0

    .line 625
    .local v12, "$i$f$get":I
    aget-object v13, v11, v7

    aget v7, v13, v10

    .line 416
    .end local v7    # "row$iv":I
    .end local v10    # "col$iv":I
    .end local v11    # "$this$get$iv":[[F
    .end local v12    # "$i$f$get":I
    aget v10, p0, v5

    mul-float/2addr v7, v10

    .local v7, "value$iv":F
    move v10, v6

    .local v10, "row$iv":I
    move v11, v5

    .local v11, "col$iv":I
    move-object v12, v8

    .local v12, "$this$set$iv":[[F
    const/4 v13, 0x0

    .line 629
    .local v13, "$i$f$set":I
    aget-object v14, v12, v10

    aput v7, v14, v11

    .line 630
    nop

    .line 415
    .end local v7    # "value$iv":F
    .end local v10    # "row$iv":I
    .end local v11    # "col$iv":I
    .end local v12    # "$this$set$iv":[[F
    .end local v13    # "$i$f$set":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 413
    .end local v6    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 423
    .end local v5    # "h":I
    :cond_5
    move v5, v3

    .local v5, "cols$iv":I
    move v6, v4

    .local v6, "rows$iv":I
    const/4 v7, 0x0

    .line 631
    .local v7, "$i$f$Matrix":I
    new-array v10, v6, [[F

    move v11, v9

    :goto_4
    if-ge v11, v6, :cond_6

    new-array v12, v5, [F

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 423
    .end local v5    # "cols$iv":I
    .end local v6    # "rows$iv":I
    .end local v7    # "$i$f$Matrix":I
    :cond_6
    nop

    .line 425
    .local v10, "q":[[F
    move v5, v4

    .restart local v5    # "cols$iv":I
    move v6, v4

    .restart local v6    # "rows$iv":I
    const/4 v7, 0x0

    .line 632
    .restart local v7    # "$i$f$Matrix":I
    new-array v11, v6, [[F

    move v12, v9

    :goto_5
    if-ge v12, v6, :cond_7

    new-array v13, v5, [F

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 425
    .end local v5    # "cols$iv":I
    .end local v6    # "rows$iv":I
    .end local v7    # "$i$f$Matrix":I
    :cond_7
    nop

    .line 426
    .local v11, "r":[[F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v4, :cond_e

    .line 427
    aget-object v6, v10, v5

    .line 428
    .local v6, "w":[F
    aget-object v7, v8, v5

    invoke-static {v7, v6, v9, v9, v3}, Lkotlin/collections/ArraysKt;->copyInto([F[FIII)[F

    .line 430
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v5, :cond_9

    .line 431
    aget-object v12, v10, v7

    .line 432
    .local v12, "z":[F
    invoke-static {v6, v12}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v13

    .line 433
    .local v13, "dot":F
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_8
    if-ge v14, v3, :cond_8

    .line 434
    aget v15, v6, v14

    aget v16, v12, v14

    mul-float v16, v16, v13

    sub-float v15, v15, v16

    aput v15, v6, v14

    .line 433
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 430
    .end local v12    # "z":[F
    .end local v13    # "dot":F
    .end local v14    # "h":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 438
    .end local v7    # "i":I
    :cond_9
    move-object v7, v6

    .local v7, "$this$norm$iv":[F
    const/4 v12, 0x0

    .line 633
    .local v12, "$i$f$norm":I
    invoke-static {v7, v7}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 438
    .end local v7    # "$this$norm$iv":[F
    .end local v12    # "$i$f$norm":I
    const v7, 0x358637bd    # 1.0E-6f

    .local v7, "minimumValue$iv":F
    .local v13, "$this$fastCoerceAtLeast$iv":F
    const/4 v12, 0x0

    .line 634
    .local v12, "$i$f$fastCoerceAtLeast":I
    cmpg-float v14, v13, v7

    if-gez v14, :cond_a

    goto :goto_9

    :cond_a
    move v7, v13

    .line 438
    .end local v7    # "minimumValue$iv":F
    .end local v12    # "$i$f$fastCoerceAtLeast":I
    .end local v13    # "$this$fastCoerceAtLeast$iv":F
    :goto_9
    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v7

    .line 439
    .local v12, "inverseNorm":F
    const/4 v7, 0x0

    .local v7, "h":I
    :goto_a
    if-ge v7, v3, :cond_b

    .line 440
    aget v13, v6, v7

    mul-float/2addr v13, v12

    aput v13, v6, v7

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 443
    .end local v7    # "h":I
    :cond_b
    aget-object v7, v11, v5

    .line 444
    .local v7, "v":[F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b
    if-ge v13, v4, :cond_d

    .line 445
    if-ge v13, v5, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    aget-object v14, v8, v13

    invoke-static {v6, v14}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v14

    :goto_c
    aput v14, v7, v13

    .line 444
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 426
    .end local v6    # "w":[F
    .end local v7    # "v":[F
    .end local v12    # "inverseNorm":F
    .end local v13    # "i":I
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 451
    .end local v5    # "j":I
    :cond_e
    move-object/from16 v5, p1

    .line 456
    .local v5, "wy":[F
    nop

    .line 466
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    :goto_d
    const/4 v7, -0x1

    if-ge v7, v6, :cond_10

    .line 467
    aget-object v7, v10, v6

    invoke-static {v7, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v7

    .line 468
    .local v7, "c":F
    aget-object v9, v11, v6

    .line 469
    .local v9, "ri":[F
    add-int/lit8 v12, v4, -0x1

    .local v12, "j":I
    add-int/lit8 v13, v6, 0x1

    if-gt v13, v12, :cond_f

    .line 470
    :goto_e
    aget v14, v9, v12

    aget v15, p4, v12

    mul-float/2addr v14, v15

    sub-float/2addr v7, v14

    .line 469
    if-eq v12, v13, :cond_f

    add-int/lit8 v12, v12, -0x1

    goto :goto_e

    .line 472
    .end local v12    # "j":I
    :cond_f
    aget v12, v9, v6

    div-float v12, v7, v12

    aput v12, p4, v6

    .line 466
    .end local v7    # "c":F
    .end local v9    # "ri":[F
    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    .line 475
    .end local v6    # "i":I
    :cond_10
    return-object p4
.end method

.method public static synthetic polyFitLeastSquares$default([F[FII[FILjava/lang/Object;)[F
    .locals 0

    .line 383
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    .line 391
    add-int/lit8 p4, p3, 0x1

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    new-array p4, p4, [F

    .line 383
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares([F[FII[F)[F

    move-result-object p0

    return-object p0
.end method

.method private static final set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V
    .locals 2
    .param p0, "$this$set"    # [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    .param p1, "index"    # I
    .param p2, "time"    # J
    .param p4, "dataPoint"    # F

    .line 352
    aget-object v0, p0, p1

    .line 353
    .local v0, "currentEntry":Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    if-nez v0, :cond_0

    .line 354
    new-instance v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-direct {v1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;-><init>(JF)V

    aput-object v1, p0, p1

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->setTime(J)V

    .line 357
    invoke-virtual {v0, p4}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->setDataPoint(F)V

    .line 359
    :goto_0
    return-void
.end method

.method private static final set([[FIIF)V
    .locals 2
    .param p0, "$this$set"    # [[F
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # F

    const/4 v0, 0x0

    .line 600
    .local v0, "$i$f$set":I
    aget-object v1, p0, p1

    aput p3, v1, p2

    .line 601
    return-void
.end method

.method public static final setVelocityTrackerAddPointsFix(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 613
    sput-boolean p0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->VelocityTrackerAddPointsFix:Z

    return-void
.end method
