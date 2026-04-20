.class public final Landroidx/media3/exoplayer/ExoTimeoutException;
.super Ljava/lang/RuntimeException;
.source "ExoTimeoutException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoTimeoutException$TimeoutOperation;
    }
.end annotation


# static fields
.field public static final TIMEOUT_OPERATION_DETACH_SURFACE:I = 0x3

.field public static final TIMEOUT_OPERATION_RELEASE:I = 0x1

.field public static final TIMEOUT_OPERATION_SET_FOREGROUND_MODE:I = 0x2

.field public static final TIMEOUT_OPERATION_UNDEFINED:I


# instance fields
.field public final timeoutOperation:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeoutOperation"    # I

    .line 76
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoTimeoutException;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    iput p1, p0, Landroidx/media3/exoplayer/ExoTimeoutException;->timeoutOperation:I

    .line 78
    return-void
.end method

.method private static getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "timeoutOperation"    # I

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 90
    const-string v0, "Undefined timeout."

    return-object v0

    .line 87
    :pswitch_0
    const-string v0, "Detaching surface timed out."

    return-object v0

    .line 85
    :pswitch_1
    const-string v0, "Setting foreground mode timed out."

    return-object v0

    .line 83
    :pswitch_2
    const-string v0, "Player release timed out."

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
