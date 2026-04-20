.class public interface abstract Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationListener"
.end annotation


# virtual methods
.method public onNotificationCancelled(IZ)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "dismissedByUser"    # Z

    .line 302
    return-void
.end method

.method public onNotificationPosted(ILandroid/app/Notification;Z)V
    .locals 0
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "ongoing"    # Z

    .line 315
    return-void
.end method
