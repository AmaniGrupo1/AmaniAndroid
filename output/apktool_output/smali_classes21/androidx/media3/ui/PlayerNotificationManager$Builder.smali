.class public Landroidx/media3/ui/PlayerNotificationManager$Builder;
.super Ljava/lang/Object;
.source "PlayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected channelDescriptionResourceId:I

.field protected final channelId:Ljava/lang/String;

.field protected channelImportance:I

.field protected channelNameResourceId:I

.field protected final context:Landroid/content/Context;

.field protected customActionReceiver:Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;

.field protected fastForwardActionIconResourceId:I

.field protected groupKey:Ljava/lang/String;

.field protected mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

.field protected nextActionIconResourceId:I

.field protected final notificationId:I

.field protected notificationListener:Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;

.field protected pauseActionIconResourceId:I

.field protected playActionIconResourceId:I

.field protected previousActionIconResourceId:I

.field protected rewindActionIconResourceId:I

.field protected smallIconResourceId:I

.field protected stopActionIconResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 366
    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    .line 367
    iput p2, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->notificationId:I

    .line 368
    iput-object p3, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelImportance:I

    .line 370
    new-instance v0, Landroidx/media3/ui/DefaultMediaDescriptionAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/ui/DefaultMediaDescriptionAdapter;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 371
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_small_icon:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    .line 372
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_play:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    .line 373
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_pause:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    .line 374
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_stop:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    .line 375
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_rewind:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    .line 376
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_fastforward:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    .line 377
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_previous:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    .line 378
    sget v0, Landroidx/media3/ui/R$drawable;->exo_notification_next:I

    iput v0, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "mediaDescriptionAdapter"    # Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/PlayerNotificationManager$Builder;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 352
    iput-object p4, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 353
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/ui/PlayerNotificationManager;
    .locals 22

    .line 571
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelNameResourceId:I

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    iget-object v2, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    iget v3, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelNameResourceId:I

    iget v4, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelDescriptionResourceId:I

    iget v5, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelImportance:I

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/media3/common/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 580
    :cond_0
    new-instance v6, Landroidx/media3/ui/PlayerNotificationManager;

    iget-object v7, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    iget-object v8, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    iget v9, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->notificationId:I

    iget-object v10, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    iget-object v11, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->notificationListener:Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;

    iget-object v12, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->customActionReceiver:Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;

    iget v13, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    iget v14, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    iget v15, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    iget v1, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    iget v2, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    iget v3, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    iget v4, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    iget v5, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    move/from16 v16, v1

    iget-object v1, v0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->groupKey:Ljava/lang/String;

    move-object/from16 v21, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-direct/range {v6 .. v21}, Landroidx/media3/ui/PlayerNotificationManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;IIIIIIIILjava/lang/String;)V

    return-object v6
.end method

.method public setChannelDescriptionResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "channelDescriptionResourceId"    # I

    .line 405
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelDescriptionResourceId:I

    .line 406
    return-object p0
.end method

.method public setChannelImportance(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "channelImportance"    # I

    .line 419
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelImportance:I

    .line 420
    return-object p0
.end method

.method public setChannelNameResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "channelNameResourceId"    # I

    .line 391
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelNameResourceId:I

    .line 392
    return-object p0
.end method

.method public setCustomActionReceiver(Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "customActionReceiver"    # Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 443
    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->customActionReceiver:Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 444
    return-object p0
.end method

.method public setFastForwardActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "fastForwardActionIconResourceId"    # I

    .line 517
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    .line 518
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 553
    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->groupKey:Ljava/lang/String;

    .line 554
    return-object p0
.end method

.method public setMediaDescriptionAdapter(Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "mediaDescriptionAdapter"    # Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 565
    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    .line 566
    return-object p0
.end method

.method public setNextActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "nextActionIconResourceId"    # I

    .line 541
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    .line 542
    return-object p0
.end method

.method public setNotificationListener(Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "notificationListener"    # Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;

    .line 431
    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->notificationListener:Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;

    .line 432
    return-object p0
.end method

.method public setPauseActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "pauseActionIconResourceId"    # I

    .line 480
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    .line 481
    return-object p0
.end method

.method public setPlayActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "playActionIconResourceId"    # I

    .line 468
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    .line 469
    return-object p0
.end method

.method public setPreviousActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "previousActionIconResourceId"    # I

    .line 529
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    .line 530
    return-object p0
.end method

.method public setRewindActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "rewindActionIconResourceId"    # I

    .line 504
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    .line 505
    return-object p0
.end method

.method public setSmallIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "smallIconResourceId"    # I

    .line 456
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    .line 457
    return-object p0
.end method

.method public setStopActionIconResourceId(I)Landroidx/media3/ui/PlayerNotificationManager$Builder;
    .locals 0
    .param p1, "stopActionIconResourceId"    # I

    .line 492
    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    .line 493
    return-object p0
.end method
