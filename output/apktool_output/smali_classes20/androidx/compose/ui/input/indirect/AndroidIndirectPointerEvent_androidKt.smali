.class public final Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent_androidKt;
.super Ljava/lang/Object;
.source "AndroidIndirectPointerEvent.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidIndirectPointerEvent.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidIndirectPointerEvent.android.kt\nandroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent_androidKt\n+ 2 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,183:1\n30#2:184\n30#2:188\n53#3,3:185\n53#3,3:189\n*S KotlinDebug\n*F\n+ 1 AndroidIndirectPointerEvent.android.kt\nandroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent_androidKt\n*L\n93#1:184\n108#1:188\n93#1:185,3\n108#1:189,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\u001a-\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0010\u0010\u001a\u0015\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0010\u0012\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u000e\u0010\u0013\u001a\u00020\u0014X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "nativeEvent",
        "Landroid/view/MotionEvent;",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEvent;",
        "getNativeEvent",
        "(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)Landroid/view/MotionEvent;",
        "IndirectPointerEvent",
        "motionEvent",
        "primaryDirectionalMotionAxis",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;",
        "previousMotionEvent",
        "IndirectPointerEvent-eAXfkT4",
        "(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;)Landroidx/compose/ui/input/indirect/IndirectPointerEvent;",
        "convertActionToIndirectPointerEventType",
        "Landroidx/compose/ui/input/indirect/IndirectPointerEventType;",
        "actionMasked",
        "",
        "(I)I",
        "indirectPrimaryDirectionalScrollAxis",
        "(Landroid/view/MotionEvent;)I",
        "RATIO_CUTOFF",
        "",
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
.field private static final RATIO_CUTOFF:F = 5.0f


# direct methods
.method public static final IndirectPointerEvent-eAXfkT4(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;)Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .locals 43
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;
    .param p1, "$v$c$androidx-compose-ui-input-indirect-IndirectPointerEventPrimaryDirectionalMotionAxis$-primaryDirectionalMotionAxis$0"    # I
    .param p2, "previousMotionEvent"    # Landroid/view/MotionEvent;

    .line 69
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 71
    .local v7, "action":I
    sparse-switch v7, :sswitch_data_0

    .line 74
    const/4 v2, -0x1

    goto :goto_0

    .line 73
    :sswitch_0
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    goto :goto_0

    .line 72
    :sswitch_1
    const/4 v2, 0x0

    .line 71
    :goto_0
    nop

    .line 70
    move v8, v2

    .line 77
    .local v8, "upIndex":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move-object v9, v2

    .line 79
    .local v9, "previousAction":Ljava/lang/Integer;
    nop

    .line 80
    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    .line 81
    :goto_2
    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    .line 82
    :goto_3
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    goto :goto_5

    .line 83
    :cond_4
    :goto_4
    const/4 v3, 0x0

    goto :goto_6

    .line 82
    :cond_5
    :goto_5
    const/4 v3, 0x1

    .line 79
    :goto_6
    nop

    .line 78
    move v10, v3

    .line 86
    .local v10, "previousMotionEventWasPressed":Z
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 88
    .local v14, "uptimeMillis":J
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v3, :cond_9

    move v12, v11

    .local v12, "index":I
    const/16 v26, 0x0

    .line 91
    .local v26, "$i$a$-List-AndroidIndirectPointerEvent_androidKt$IndirectPointerEvent$changes$1":I
    invoke-virtual {v4, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 92
    .local v13, "motionEventPointerId":I
    int-to-long v0, v13

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    move-result-wide v0

    .line 93
    .local v0, "pointerId":J
    invoke-virtual {v4, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .local v16, "x$iv":F
    invoke-virtual {v4, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .local v17, "y$iv":F
    const/16 v18, 0x0

    .line 184
    .local v18, "$i$f$Offset":I
    move/from16 v19, v17

    .local v19, "val2$iv$iv":F
    move/from16 v20, v16

    .local v20, "val1$iv$iv":F
    const/16 v21, 0x0

    .line 185
    .local v21, "$i$f$packFloats":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move-wide/from16 v22, v0

    .end local v0    # "pointerId":J
    .local v22, "pointerId":J
    int-to-long v0, v2

    .line 186
    .local v0, "v1$iv$iv":J
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move-wide/from16 v24, v0

    .end local v0    # "v1$iv$iv":J
    .local v24, "v1$iv$iv":J
    int-to-long v0, v2

    .line 187
    .local v0, "v2$iv$iv":J
    const/16 v2, 0x20

    shl-long v27, v24, v2

    const-wide v29, 0xffffffffL

    and-long v31, v0, v29

    or-long v0, v27, v31

    .line 184
    .end local v0    # "v2$iv$iv":J
    .end local v19    # "val2$iv$iv":F
    .end local v20    # "val1$iv$iv":F
    .end local v21    # "$i$f$packFloats":I
    .end local v24    # "v1$iv$iv":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v16

    .line 93
    .end local v16    # "x$iv":F
    .end local v17    # "y$iv":F
    .end local v18    # "$i$f$Offset":I
    nop

    .line 95
    .local v16, "position":J
    if-eq v12, v8, :cond_6

    const/16 v18, 0x1

    goto :goto_8

    :cond_6
    const/16 v18, 0x0

    .line 98
    .local v18, "pressed":Z
    :goto_8
    if-eqz v6, :cond_7

    invoke-virtual {v6, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    goto :goto_9

    :cond_7
    const/4 v0, -0x1

    .line 97
    :goto_9
    nop

    .line 100
    .local v0, "matchedPointerIdInPreviousMotionEventIndex":I
    const-wide/16 v19, 0x0

    .line 101
    .local v19, "previousUptimeMillis":J
    const-wide/16 v24, 0x0

    .line 102
    .local v24, "previousPosition":J
    const/4 v1, 0x0

    .line 104
    .local v1, "previousPressed":Z
    if-ltz v0, :cond_8

    .line 106
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v19

    .line 108
    nop

    .line 109
    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 110
    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    .line 108
    nop

    .local v21, "x$iv":F
    .local v27, "y$iv":F
    const/16 v28, 0x0

    .line 188
    .local v28, "$i$f$Offset":I
    move/from16 v31, v27

    .local v31, "val2$iv$iv":F
    move/from16 v32, v21

    .local v32, "val1$iv$iv":F
    const/16 v33, 0x0

    .line 189
    .local v33, "$i$f$packFloats":I
    move/from16 v34, v2

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move/from16 v35, v0

    move/from16 v36, v1

    .end local v0    # "matchedPointerIdInPreviousMotionEventIndex":I
    .end local v1    # "previousPressed":Z
    .local v35, "matchedPointerIdInPreviousMotionEventIndex":I
    .local v36, "previousPressed":Z
    int-to-long v0, v2

    .line 190
    .local v0, "v1$iv$iv":J
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move-wide/from16 v37, v0

    .end local v0    # "v1$iv$iv":J
    .local v37, "v1$iv$iv":J
    int-to-long v0, v2

    .line 191
    .local v0, "v2$iv$iv":J
    shl-long v39, v37, v34

    and-long v29, v0, v29

    or-long v0, v39, v29

    .line 188
    .end local v0    # "v2$iv$iv":J
    .end local v31    # "val2$iv$iv":F
    .end local v32    # "val1$iv$iv":F
    .end local v33    # "$i$f$packFloats":I
    .end local v37    # "v1$iv$iv":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 107
    .end local v21    # "x$iv":F
    .end local v27    # "y$iv":F
    .end local v28    # "$i$f$Offset":I
    nop

    .line 112
    .end local v24    # "previousPosition":J
    .local v0, "previousPosition":J
    move v2, v10

    move/from16 v24, v2

    move-wide/from16 v20, v19

    .end local v36    # "previousPressed":Z
    .local v2, "previousPressed":Z
    goto :goto_a

    .line 116
    .end local v2    # "previousPressed":Z
    .end local v35    # "matchedPointerIdInPreviousMotionEventIndex":I
    .local v0, "matchedPointerIdInPreviousMotionEventIndex":I
    .restart local v1    # "previousPressed":Z
    .restart local v24    # "previousPosition":J
    :cond_8
    move/from16 v35, v0

    move/from16 v36, v1

    .end local v0    # "matchedPointerIdInPreviousMotionEventIndex":I
    .end local v1    # "previousPressed":Z
    .restart local v35    # "matchedPointerIdInPreviousMotionEventIndex":I
    .restart local v36    # "previousPressed":Z
    move-wide/from16 v19, v14

    .line 117
    move-wide/from16 v0, v16

    .line 118
    .end local v24    # "previousPosition":J
    .local v0, "previousPosition":J
    const/4 v2, 0x0

    move/from16 v24, v2

    move-wide/from16 v20, v19

    .line 121
    .end local v19    # "previousUptimeMillis":J
    .end local v36    # "previousPressed":Z
    .local v20, "previousUptimeMillis":J
    .local v24, "previousPressed":Z
    :goto_a
    move v2, v11

    new-instance v11, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    invoke-virtual {v4, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v19

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 121
    const/16 v25, 0x0

    move-wide/from16 v41, v0

    move v0, v12

    move v1, v13

    move-wide/from16 v12, v22

    move-wide/from16 v22, v41

    .end local v13    # "motionEventPointerId":I
    .local v0, "index":I
    .local v1, "motionEventPointerId":I
    .local v12, "pointerId":J
    .local v22, "previousPosition":J
    invoke-direct/range {v11 .. v25}, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;-><init>(JJJZFJJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    move-wide/from16 v22, v12

    move-wide/from16 v12, v41

    .line 88
    .end local v0    # "index":I
    .end local v1    # "motionEventPointerId":I
    .end local v12    # "pointerId":J
    .end local v16    # "position":J
    .end local v18    # "pressed":Z
    .end local v20    # "previousUptimeMillis":J
    .end local v22    # "previousPosition":J
    .end local v24    # "previousPressed":Z
    .end local v26    # "$i$a$-List-AndroidIndirectPointerEvent_androidKt$IndirectPointerEvent$changes$1":I
    .end local v35    # "matchedPointerIdInPreviousMotionEventIndex":I
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v2, 0x1

    goto/16 :goto_7

    :cond_9
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 87
    nop

    .line 133
    .local v1, "changes":Ljava/util/List;
    new-instance v0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;

    .line 134
    nop

    .line 135
    invoke-static {v7}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent_androidKt;->convertActionToIndirectPointerEventType(I)I

    move-result v2

    .line 136
    nop

    .line 137
    nop

    .line 133
    const/4 v5, 0x0

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;-><init>(Ljava/util/List;IILandroid/view/MotionEvent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerEvent;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic IndirectPointerEvent-eAXfkT4$default(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;ILjava/lang/Object;)Landroidx/compose/ui/input/indirect/IndirectPointerEvent;
    .locals 0

    .line 63
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    .line 66
    sget-object p1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getNone-nZO2Niw()I

    move-result p1

    .line 63
    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 67
    const/4 p2, 0x0

    .line 63
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent_androidKt;->IndirectPointerEvent-eAXfkT4(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;)Landroidx/compose/ui/input/indirect/IndirectPointerEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final convertActionToIndirectPointerEventType(I)I
    .locals 1
    .param p0, "actionMasked"    # I

    .line 142
    packed-switch p0, :pswitch_data_0

    .line 148
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;->getUnknown-4ZHQPSE()I

    move-result v0

    goto :goto_0

    .line 147
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;->getMove-4ZHQPSE()I

    move-result v0

    goto :goto_0

    .line 144
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;->getRelease-4ZHQPSE()I

    move-result v0

    goto :goto_0

    .line 146
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventType;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEventType$Companion;->getPress-4ZHQPSE()I

    move-result v0

    .line 142
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final getNativeEvent(Landroidx/compose/ui/input/indirect/IndirectPointerEvent;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "$this$nativeEvent"    # Landroidx/compose/ui/input/indirect/IndirectPointerEvent;

    .line 44
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->getNativeEvent$ui()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static final indirectPrimaryDirectionalScrollAxis(Landroid/view/MotionEvent;)I
    .locals 11
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;

    .line 155
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 159
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    .local v0, "inputDevice":Landroid/view/InputDevice;
    const/4 v1, 0x0

    .line 160
    .local v1, "$i$a$-let-AndroidIndirectPointerEvent_androidKt$indirectPrimaryDirectionalScrollAxis$2":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    .line 161
    .local v3, "xMotionRange":Landroid/view/InputDevice$MotionRange;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    .line 163
    .local v5, "yMotionRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    .line 164
    sget-object v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getX-nZO2Niw()I

    move-result v2

    return v2

    .line 165
    :cond_0
    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 166
    sget-object v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getY-nZO2Niw()I

    move-result v2

    return v2

    .line 167
    :cond_1
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    .line 168
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v6

    .line 169
    .local v6, "xRange":F
    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v7

    .line 171
    .local v7, "yRange":F
    cmpl-float v8, v6, v7

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x0

    if-lez v8, :cond_4

    cmpg-float v8, v7, v10

    if-nez v8, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    if-nez v8, :cond_3

    div-float v8, v6, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 172
    :cond_3
    sget-object v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getX-nZO2Niw()I

    move-result v2

    return v2

    .line 173
    :cond_4
    cmpl-float v8, v7, v6

    if-lez v8, :cond_7

    cmpg-float v8, v6, v10

    if-nez v8, :cond_5

    move v2, v4

    :cond_5
    if-nez v2, :cond_6

    div-float v2, v7, v6

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_7

    .line 174
    :cond_6
    sget-object v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getY-nZO2Niw()I

    move-result v2

    return v2

    .line 177
    .end local v6    # "xRange":F
    .end local v7    # "yRange":F
    :cond_7
    nop

    .line 159
    .end local v0    # "inputDevice":Landroid/view/InputDevice;
    .end local v1    # "$i$a$-let-AndroidIndirectPointerEvent_androidKt$indirectPrimaryDirectionalScrollAxis$2":I
    .end local v3    # "xMotionRange":Landroid/view/InputDevice$MotionRange;
    .end local v5    # "yMotionRange":Landroid/view/InputDevice$MotionRange;
    nop

    .line 178
    :cond_8
    sget-object v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->Companion:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis$Companion;->getNone-nZO2Niw()I

    move-result v0

    return v0

    .line 155
    :cond_9
    const/4 v0, 0x0

    .line 156
    .local v0, "$i$a$-require-AndroidIndirectPointerEvent_androidKt$indirectPrimaryDirectionalScrollAxis$1":I
    nop

    .line 155
    .end local v0    # "$i$a$-require-AndroidIndirectPointerEvent_androidKt$indirectPrimaryDirectionalScrollAxis$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MotionEvent must be a touch navigation source"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
