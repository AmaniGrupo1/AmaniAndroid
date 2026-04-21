.class final Landroidx/media3/common/AudioAttributes$Api32;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api32"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIsContentSpatialized(Landroid/media/AudioAttributes$Builder;Z)V
    .locals 0
    .param p0, "builder"    # Landroid/media/AudioAttributes$Builder;
    .param p1, "isContentSpatialized"    # Z

    .line 430
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setIsContentSpatialized(Z)Landroid/media/AudioAttributes$Builder;

    .line 431
    return-void
.end method

.method public static setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V
    .locals 0
    .param p0, "builder"    # Landroid/media/AudioAttributes$Builder;
    .param p1, "spatializationBehavior"    # I

    .line 425
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;

    .line 426
    return-void
.end method
