.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
.super Ljava/io/IOException;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalClippingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_INVALID_PERIOD_COUNT:I = 0x0

.field public static final REASON_NOT_SEEKABLE_TO_START:I = 0x1

.field public static final REASON_START_EXCEEDS_END:I = 0x2


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 273
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move v1, p1

    .end local p1    # "reason":I
    .local v1, "reason":I
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    .line 274
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "startUs"    # J
    .param p4, "endUs"    # J

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal clipping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;->getReasonDescription(IJJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    iput p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;->reason:I

    .line 279
    return-void
.end method

.method private static getReasonDescription(IJJ)Ljava/lang/String;
    .locals 3
    .param p0, "reason"    # I
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .line 282
    packed-switch p0, :pswitch_data_0

    .line 291
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 288
    :pswitch_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start exceeds end. Start time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", End time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_1
    const-string/jumbo v0, "not seekable to start"

    return-object v0

    .line 284
    :pswitch_2
    const-string v0, "invalid period count"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
