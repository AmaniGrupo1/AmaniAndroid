.class public final Landroidx/media3/common/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowedCapturePolicy:I

.field private contentType:I

.field private flags:I

.field private hapticChannelsMuted:Z

.field private isContentSpatialized:Z

.field private spatializationBehavior:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    .line 81
    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    .line 82
    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    .line 83
    iput v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    .line 84
    iput v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    .line 85
    iput-boolean v0, p0, Landroidx/media3/common/AudioAttributes$Builder;->isContentSpatialized:Z

    .line 86
    iput-boolean v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->hapticChannelsMuted:Z

    .line 87
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/AudioAttributes;
    .locals 9

    .line 142
    new-instance v0, Landroidx/media3/common/AudioAttributes;

    iget v1, p0, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    iget v3, p0, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    iget v4, p0, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    iget v5, p0, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    iget-boolean v6, p0, Landroidx/media3/common/AudioAttributes$Builder;->isContentSpatialized:Z

    iget-boolean v7, p0, Landroidx/media3/common/AudioAttributes$Builder;->hapticChannelsMuted:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/AudioAttributes;-><init>(IIIIIZZLandroidx/media3/common/AudioAttributes$1;)V

    return-object v0
.end method

.method public setAllowedCapturePolicy(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "allowedCapturePolicy"    # I

    .line 113
    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    .line 114
    return-object p0
.end method

.method public setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "contentType"    # I

    .line 92
    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    .line 93
    return-object p0
.end method

.method public setFlags(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "flags"    # I

    .line 99
    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    .line 100
    return-object p0
.end method

.method public setHapticChannelsMuted(Z)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "hapticChannelsMuted"    # Z

    .line 136
    iput-boolean p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->hapticChannelsMuted:Z

    .line 137
    return-object p0
.end method

.method public setIsContentSpatialized(Z)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "isContentSpatialized"    # Z

    .line 128
    iput-boolean p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->isContentSpatialized:Z

    .line 129
    return-object p0
.end method

.method public setSpatializationBehavior(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "spatializationBehavior"    # I

    .line 120
    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    .line 121
    return-object p0
.end method

.method public setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;
    .locals 0
    .param p1, "usage"    # I

    .line 106
    iput p1, p0, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    .line 107
    return-object p0
.end method
