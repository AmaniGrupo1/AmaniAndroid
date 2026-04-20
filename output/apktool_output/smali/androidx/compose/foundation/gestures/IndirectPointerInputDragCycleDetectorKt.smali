.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;
.super Ljava/lang/Object;
.source "IndirectPointerInputDragCycleDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndirectPointerInputDragCycleDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 4 InlineClassHelper.jvm.kt\nandroidx/compose/ui/util/InlineClassHelper_jvmKt\n+ 5 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n1#1,784:1\n65#2:785\n69#2:788\n65#2:799\n69#2:802\n65#2:813\n69#2:816\n60#3:786\n70#3:789\n53#3,3:792\n53#3,3:796\n60#3:800\n70#3:803\n53#3,3:806\n53#3,3:810\n60#3:814\n70#3:817\n53#3,3:820\n53#3,3:824\n22#4:787\n22#4:790\n22#4:801\n22#4:804\n22#4:815\n22#4:818\n30#5:791\n30#5:795\n30#5:805\n30#5:809\n30#5:819\n30#5:823\n*S KotlinDebug\n*F\n+ 1 IndirectPointerInputDragCycleDetector.kt\nandroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt\n*L\n641#1:785\n642#1:788\n661#1:799\n662#1:802\n681#1:813\n682#1:816\n641#1:786\n642#1:789\n647#1:792,3\n649#1:796,3\n661#1:800\n662#1:803\n667#1:806,3\n669#1:810,3\n681#1:814\n682#1:817\n687#1:820,3\n689#1:824,3\n641#1:787\n642#1:790\n661#1:801\n662#1:804\n681#1:815\n682#1:818\n647#1:791\n649#1:795\n667#1:805\n669#1:809\n687#1:819\n689#1:823\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\'\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0008\u001a\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u0002H\u0003\u001a\u000c\u0010\r\u001a\u00020\u000c*\u00020\u0002H\u0003\u001a\u000c\u0010\u000e\u001a\u00020\u000c*\u00020\u0002H\u0003\u001a1\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a\'\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0008\u001a\'\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\'\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0008\u001a?\u0010\u0019\u001a\u00020\u001a*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008 \u0010!\"\u000e\u0010\"\u001a\u00020#X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020#X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "positionChange",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "primaryDirectionalMotionAxis",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;",
        "positionChange-_bfSUIo",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J",
        "positionChangeIgnoreConsumed",
        "positionChangeIgnoreConsumed-_bfSUIo",
        "changedToUpIgnoreConsumed",
        "",
        "changedToDown",
        "changedToDownIgnoreConsumed",
        "positionChangeInternal",
        "ignoreConsumed",
        "positionChangeInternal-wfG_k4k",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J",
        "primaryAxisPosition",
        "primaryAxisPosition-_bfSUIo",
        "primaryAxisPosition-grjNGvw",
        "(JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J",
        "primaryAxisPreviousPosition",
        "primaryAxisPreviousPosition-_bfSUIo",
        "addIndirectPointerInputChange",
        "",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "event",
        "smoother",
        "Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;",
        "nodeOffset",
        "addIndirectPointerInputChange-Qf4Zb88",
        "(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V",
        "SmoothingFactor",
        "",
        "PixelSensibility",
        "foundation"
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
.field private static final PixelSensibility:I = 0x2

.field private static final SmoothingFactor:I = 0x3


# direct methods
.method public static final synthetic access$addIndirectPointerInputChange-Qf4Zb88(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p3, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .param p4, "smoother"    # Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;
    .param p5, "$v$c$androidx-compose-ui-geometry-Offset$-nodeOffset$0"    # J

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->addIndirectPointerInputChange-Qf4Zb88(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V

    return-void
.end method

.method public static final synthetic access$changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$positionChange-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 2
    .param p0, "$receiver"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->positionChange-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$positionChangeIgnoreConsumed-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 2
    .param p0, "$receiver"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->positionChangeIgnoreConsumed-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 2
    .param p0, "$receiver"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$primaryAxisPreviousPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 2
    .param p0, "$receiver"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->primaryAxisPreviousPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final addIndirectPointerInputChange-Qf4Zb88(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;J)V
    .locals 6
    .param p0, "$this$addIndirectPointerInputChange_u2dQf4Zb88"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p3, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .param p4, "smoother"    # Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;
    .param p5, "$v$c$androidx-compose-ui-geometry-Offset$-nodeOffset$0"    # J

    .line 702
    nop

    .line 703
    invoke-virtual {p4, p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->smoothEventPosition-tuRUvjQ(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)J

    move-result-wide v0

    .line 704
    invoke-static {v0, v1, p2, p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->primaryAxisPosition-grjNGvw(JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    .line 701
    nop

    .line 705
    .local v0, "smoothedPosition":J
    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getUptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, p5, p6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 706
    return-void
.end method

.method private static final changedToDown(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1
    .param p0, "$this$changedToDown"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 602
    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1
    .param p0, "$this$changedToDownIgnoreConsumed"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 605
    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 1
    .param p0, "$this$changedToUpIgnoreConsumed"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 599
    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPressed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final positionChange-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 2
    .param p0, "$this$positionChange_u2d_bfSUIo"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 590
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final positionChangeIgnoreConsumed-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 2
    .param p0, "$this$positionChangeIgnoreConsumed_u2d_bfSUIo"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 596
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J
    .locals 8
    .param p0, "$this$positionChangeInternal_u2dwfG_k4k"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .param p3, "ignoreConsumed"    # Z

    .line 613
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->primaryAxisPreviousPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v0

    .line 614
    .local v0, "previousPosition":J
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    move-result-wide v2

    .line 616
    .local v2, "currentPosition":J
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v4

    .line 618
    .local v4, "offset":J
    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 619
    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    goto :goto_0

    .line 621
    :cond_0
    move-wide v6, v4

    .line 618
    :goto_0
    return-wide v6
.end method

.method static synthetic positionChangeInternal-wfG_k4k$default(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;ZILjava/lang/Object;)J
    .locals 0

    .line 608
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 611
    const/4 p3, 0x0

    .line 608
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 17
    .param p0, "$this$primaryAxisPosition_u2d_bfSUIo"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 638
    move-object/from16 v0, p1

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    return-wide v1

    .line 640
    :cond_0
    nop

    .line 641
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getX-nZO2Niw()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->equals-impl0(II)Z

    move-result v1

    :goto_0
    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 785
    .local v6, "$i$f$getX-impl":I
    move-wide v7, v1

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 786
    .local v9, "$i$f$unpackFloat1":I
    shr-long v10, v7, v5

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 787
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 786
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 785
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    goto :goto_2

    .line 642
    :cond_2
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getY-nZO2Niw()I

    move-result v1

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->equals-impl0(II)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 788
    .local v6, "$i$f$getY-impl":I
    move-wide v7, v1

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 789
    .local v9, "$i$f$unpackFloat2":I
    and-long v10, v7, v3

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 790
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 789
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 788
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 640
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getY-impl":I
    :goto_2
    nop

    .line 639
    nop

    .line 646
    .local v10, "delta":F
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_4

    .line 647
    const/4 v1, 0x0

    .local v1, "y$iv":F
    move v2, v10

    .local v2, "x$iv":F
    const/4 v6, 0x0

    .line 791
    .local v6, "$i$f$Offset":I
    move v7, v1

    .local v7, "val2$iv$iv":F
    move v8, v2

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 792
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 793
    .local v11, "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 794
    .local v13, "v2$iv$iv":J
    shl-long v15, v11, v5

    and-long/2addr v3, v13

    or-long/2addr v3, v15

    .line 791
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .end local v1    # "y$iv":F
    .end local v2    # "x$iv":F
    .end local v6    # "$i$f$Offset":I
    goto :goto_3

    .line 649
    :cond_4
    const/4 v1, 0x0

    .local v1, "x$iv":F
    move v2, v10

    .local v2, "y$iv":F
    const/4 v6, 0x0

    .line 795
    .restart local v6    # "$i$f$Offset":I
    move v7, v2

    .restart local v7    # "val2$iv$iv":F
    move v8, v1

    .restart local v8    # "val1$iv$iv":F
    const/4 v9, 0x0

    .line 796
    .restart local v9    # "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 797
    .restart local v11    # "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 798
    .restart local v13    # "v2$iv$iv":J
    shl-long v15, v11, v5

    and-long/2addr v3, v13

    or-long/2addr v3, v15

    .line 795
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    move-wide v1, v3

    .line 646
    .end local v1    # "x$iv":F
    .end local v2    # "y$iv":F
    .end local v6    # "$i$f$Offset":I
    :goto_3
    return-wide v1

    .line 644
    .end local v10    # "delta":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    return-wide v1
.end method

.method private static final primaryAxisPosition-grjNGvw(JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 17
    .param p0, "$v$c$androidx-compose-ui-geometry-Offset$-$this$primaryAxisPosition$0"    # J
    .param p2, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p3, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 658
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    return-wide p0

    .line 660
    :cond_0
    nop

    .line 661
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getX-nZO2Niw()I

    move-result v1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->equals-impl0(II)Z

    move-result v1

    :goto_0
    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v1, :cond_2

    move-wide/from16 v1, p0

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 799
    .local v6, "$i$f$getX-impl":I
    move-wide v7, v1

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 800
    .local v9, "$i$f$unpackFloat1":I
    shr-long v10, v7, v5

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 801
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 800
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 799
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    goto :goto_2

    .line 662
    :cond_2
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getY-nZO2Niw()I

    move-result v1

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->equals-impl0(II)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    move-wide/from16 v1, p0

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 802
    .local v6, "$i$f$getY-impl":I
    move-wide v7, v1

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 803
    .local v9, "$i$f$unpackFloat2":I
    and-long v10, v7, v3

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 804
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 803
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 802
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 660
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getY-impl":I
    :goto_2
    nop

    .line 659
    nop

    .line 666
    .local v10, "delta":F
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_4

    .line 667
    const/4 v1, 0x0

    .local v1, "y$iv":F
    move v2, v10

    .local v2, "x$iv":F
    const/4 v6, 0x0

    .line 805
    .local v6, "$i$f$Offset":I
    move v7, v1

    .local v7, "val2$iv$iv":F
    move v8, v2

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 806
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 807
    .local v11, "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 808
    .local v13, "v2$iv$iv":J
    shl-long v15, v11, v5

    and-long/2addr v3, v13

    or-long/2addr v3, v15

    .line 805
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .end local v1    # "y$iv":F
    .end local v2    # "x$iv":F
    .end local v6    # "$i$f$Offset":I
    goto :goto_3

    .line 669
    :cond_4
    const/4 v1, 0x0

    .local v1, "x$iv":F
    move v2, v10

    .local v2, "y$iv":F
    const/4 v6, 0x0

    .line 809
    .restart local v6    # "$i$f$Offset":I
    move v7, v2

    .restart local v7    # "val2$iv$iv":F
    move v8, v1

    .restart local v8    # "val1$iv$iv":F
    const/4 v9, 0x0

    .line 810
    .restart local v9    # "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 811
    .restart local v11    # "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 812
    .restart local v13    # "v2$iv$iv":J
    shl-long v15, v11, v5

    and-long/2addr v3, v13

    or-long/2addr v3, v15

    .line 809
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    move-wide v1, v3

    .line 666
    .end local v1    # "x$iv":F
    .end local v2    # "y$iv":F
    .end local v6    # "$i$f$Offset":I
    :goto_3
    return-wide v1

    .line 664
    .end local v10    # "delta":F
    :cond_5
    return-wide p0
.end method

.method private static final primaryAxisPreviousPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J
    .locals 17
    .param p0, "$this$primaryAxisPreviousPosition_u2d_bfSUIo"    # Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;
    .param p1, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;
    .param p2, "primaryDirectionalMotionAxis"    # Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 678
    move-object/from16 v0, p1

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v1

    return-wide v1

    .line 680
    :cond_0
    nop

    .line 681
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getX-nZO2Niw()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->unbox-impl()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->equals-impl0(II)Z

    move-result v1

    :goto_0
    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v1

    .local v1, "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 813
    .local v6, "$i$f$getX-impl":I
    move-wide v7, v1

    .local v7, "value$iv$iv":J
    const/4 v9, 0x0

    .line 814
    .local v9, "$i$f$unpackFloat1":I
    shr-long v10, v7, v5

    long-to-int v10, v10

    .local v10, "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 815
    .local v11, "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 814
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 813
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat1":I
    nop

    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getX-impl":I
    goto :goto_2

    .line 682
    :cond_2
    sget-object v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getY-nZO2Niw()I

    move-result v1

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->unbox-impl()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->equals-impl0(II)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v1

    .restart local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    const/4 v6, 0x0

    .line 816
    .local v6, "$i$f$getY-impl":I
    move-wide v7, v1

    .restart local v7    # "value$iv$iv":J
    const/4 v9, 0x0

    .line 817
    .local v9, "$i$f$unpackFloat2":I
    and-long v10, v7, v3

    long-to-int v10, v10

    .restart local v10    # "bits$iv$iv$iv":I
    const/4 v11, 0x0

    .line 818
    .restart local v11    # "$i$f$floatFromBits":I
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 817
    .end local v10    # "bits$iv$iv$iv":I
    .end local v11    # "$i$f$floatFromBits":I
    nop

    .line 816
    .end local v7    # "value$iv$iv":J
    .end local v9    # "$i$f$unpackFloat2":I
    nop

    .line 680
    .end local v1    # "$v$c$androidx-compose-ui-geometry-Offset$-this$0$iv":J
    .end local v6    # "$i$f$getY-impl":I
    :goto_2
    nop

    .line 679
    nop

    .line 686
    .local v10, "delta":F
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_4

    .line 687
    const/4 v1, 0x0

    .local v1, "y$iv":F
    move v2, v10

    .local v2, "x$iv":F
    const/4 v6, 0x0

    .line 819
    .local v6, "$i$f$Offset":I
    move v7, v1

    .local v7, "val2$iv$iv":F
    move v8, v2

    .local v8, "val1$iv$iv":F
    const/4 v9, 0x0

    .line 820
    .local v9, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 821
    .local v11, "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 822
    .local v13, "v2$iv$iv":J
    shl-long v15, v11, v5

    and-long/2addr v3, v13

    or-long/2addr v3, v15

    .line 819
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v1

    .end local v1    # "y$iv":F
    .end local v2    # "x$iv":F
    .end local v6    # "$i$f$Offset":I
    goto :goto_3

    .line 689
    :cond_4
    const/4 v1, 0x0

    .local v1, "x$iv":F
    move v2, v10

    .local v2, "y$iv":F
    const/4 v6, 0x0

    .line 823
    .restart local v6    # "$i$f$Offset":I
    move v7, v2

    .restart local v7    # "val2$iv$iv":F
    move v8, v1

    .restart local v8    # "val1$iv$iv":F
    const/4 v9, 0x0

    .line 824
    .restart local v9    # "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 825
    .restart local v11    # "v1$iv$iv":J
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 826
    .restart local v13    # "v2$iv$iv":J
    shl-long v15, v11, v5

    and-long/2addr v3, v13

    or-long/2addr v3, v15

    .line 823
    .end local v7    # "val2$iv$iv":F
    .end local v8    # "val1$iv$iv":F
    .end local v9    # "$i$f$packFloats":I
    .end local v11    # "v1$iv$iv":J
    .end local v13    # "v2$iv$iv":J
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    move-wide v1, v3

    .line 686
    .end local v1    # "x$iv":F
    .end local v2    # "y$iv":F
    .end local v6    # "$i$f$Offset":I
    :goto_3
    return-wide v1

    .line 684
    .end local v10    # "delta":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v1

    return-wide v1
.end method
