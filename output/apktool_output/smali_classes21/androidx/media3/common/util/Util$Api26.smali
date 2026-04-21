.class Landroidx/media3/common/util/Util$Api26;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/NotificationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 4382
    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/Util$Api26;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "notificationManager"    # Landroid/app/NotificationManager;
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/String;

    .line 4385
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4387
    .local v0, "channel":Landroid/app/NotificationChannel;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_0

    .line 4391
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 4393
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4394
    return-void
.end method
