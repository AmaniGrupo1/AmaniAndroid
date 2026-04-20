.class Landroidx/media3/common/util/Util$Api24;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Service;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Service;
    .param p1, "x1"    # Z

    .line 4372
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util$Api24;->stopForeground(Landroid/app/Service;Z)V

    return-void
.end method

.method private static stopForeground(Landroid/app/Service;Z)V
    .locals 1
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "removeNotification"    # Z

    .line 4375
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    .line 4376
    return-void
.end method
