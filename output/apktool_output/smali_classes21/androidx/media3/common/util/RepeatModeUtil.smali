.class public final Landroidx/media3/common/util/RepeatModeUtil;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/RepeatModeUtil$RepeatToggleModes;
    }
.end annotation


# static fields
.field public static final REPEAT_TOGGLE_MODE_ALL:I = 0x2

.field public static final REPEAT_TOGGLE_MODE_NONE:I = 0x0

.field public static final REPEAT_TOGGLE_MODE_ONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getNextRepeatMode(II)I
    .locals 3
    .param p0, "currentMode"    # I
    .param p1, "enabledModes"    # I

    .line 75
    const/4 v0, 0x1

    .local v0, "offset":I
    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 76
    add-int v1, p0, v0

    rem-int/lit8 v1, v1, 0x3

    .line 77
    .local v1, "proposedMode":I
    invoke-static {v1, p1}, Landroidx/media3/common/util/RepeatModeUtil;->isRepeatModeEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    return v1

    .line 75
    .end local v1    # "proposedMode":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "offset":I
    :cond_1
    return p0
.end method

.method public static isRepeatModeEnabled(II)Z
    .locals 3
    .param p0, "repeatMode"    # I
    .param p1, "enabledModes"    # I

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 102
    return v0

    .line 100
    :pswitch_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 98
    :pswitch_1
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 96
    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
