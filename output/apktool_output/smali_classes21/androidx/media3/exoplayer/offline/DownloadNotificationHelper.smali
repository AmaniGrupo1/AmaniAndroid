.class public final Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;
.super Ljava/lang/Object;
.source "DownloadNotificationHelper.java"


# static fields
.field private static final NULL_STRING_ID:I


# instance fields
.field private final notificationBuilder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "applicationContext":Landroid/content/Context;
    nop

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 49
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 51
    return-void
.end method

.method private buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "titleStringId"    # I

    .line 197
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v6

    return-object v6
.end method

.method private buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "titleStringId"    # I
    .param p6, "maxProgress"    # I
    .param p7, "currentProgress"    # I
    .param p8, "indeterminateProgress"    # Z
    .param p9, "ongoing"    # Z
    .param p10, "showWhen"    # Z

    .line 223
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 224
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 225
    const/4 v1, 0x0

    if-nez p5, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 226
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 227
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    .line 228
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 227
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 229
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p6, p7, p8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 230
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    .line 235
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;

    .line 169
    sget v5, Landroidx/media3/exoplayer/R$string;->exo_download_completed:I

    .line 170
    .local v5, "titleStringId":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "smallIcon":I
    .end local p3    # "contentIntent":Landroid/app/PendingIntent;
    .end local p4    # "message":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "smallIcon":I
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    .local v4, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;

    .line 187
    sget v5, Landroidx/media3/exoplayer/R$string;->exo_download_failed:I

    .line 188
    .local v5, "titleStringId":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "smallIcon":I
    .end local p3    # "contentIntent":Landroid/app/PendingIntent;
    .end local p4    # "message":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "smallIcon":I
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    .local v4, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smallIcon"    # I
    .param p3, "contentIntent"    # Landroid/app/PendingIntent;
    .param p4, "message"    # Ljava/lang/String;
    .param p6, "notMetRequirements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 71
    .local p5, "downloads":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/offline/Download;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "totalPercentage":F
    const/4 v1, 0x0

    .line 73
    .local v1, "downloadTaskCount":I
    const/4 v2, 0x1

    .line 74
    .local v2, "allDownloadPercentagesUnknown":Z
    const/4 v3, 0x0

    .line 75
    .local v3, "haveDownloadedBytes":Z
    const/4 v4, 0x0

    .line 76
    .local v4, "haveDownloadingTasks":Z
    const/4 v5, 0x0

    .line 77
    .local v5, "haveQueuedTasks":Z
    const/4 v6, 0x0

    .line 78
    .local v6, "haveRemovingTasks":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v8, :cond_2

    .line 79
    move-object/from16 v8, p5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/offline/Download;

    .line 80
    .local v11, "download":Landroidx/media3/exoplayer/offline/Download;
    iget v12, v11, Landroidx/media3/exoplayer/offline/Download;->state:I

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    .line 82
    :sswitch_0
    const/4 v6, 0x1

    .line 83
    goto :goto_1

    .line 89
    :sswitch_1
    const/4 v4, 0x1

    .line 90
    invoke-virtual {v11}, Landroidx/media3/exoplayer/offline/Download;->getPercentDownloaded()F

    move-result v12

    .line 91
    .local v12, "downloadPercentage":F
    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 93
    add-float/2addr v0, v12

    .line 95
    :cond_0
    invoke-virtual {v11}, Landroidx/media3/exoplayer/offline/Download;->getBytesDownloaded()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_1

    move v9, v10

    :cond_1
    or-int/2addr v3, v9

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_1

    .line 85
    .end local v12    # "downloadPercentage":F
    :sswitch_2
    const/4 v5, 0x1

    .line 86
    nop

    .line 78
    .end local v11    # "download":Landroidx/media3/exoplayer/offline/Download;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p5

    .line 108
    .end local v7    # "i":I
    const/4 v7, 0x1

    .line 109
    .local v7, "showProgress":Z
    if-eqz v4, :cond_3

    .line 110
    sget v11, Landroidx/media3/exoplayer/R$string;->exo_download_downloading:I

    move/from16 v16, v11

    .local v11, "titleStringId":I
    goto :goto_2

    .line 111
    .end local v11    # "titleStringId":I
    :cond_3
    if-eqz v5, :cond_6

    if-eqz p6, :cond_6

    .line 112
    const/4 v7, 0x0

    .line 113
    and-int/lit8 v11, p6, 0x2

    if-eqz v11, :cond_4

    .line 116
    sget v11, Landroidx/media3/exoplayer/R$string;->exo_download_paused_for_wifi:I

    move/from16 v16, v11

    .restart local v11    # "titleStringId":I
    goto :goto_2

    .line 117
    .end local v11    # "titleStringId":I
    :cond_4
    and-int/lit8 v11, p6, 0x1

    if-eqz v11, :cond_5

    .line 118
    sget v11, Landroidx/media3/exoplayer/R$string;->exo_download_paused_for_network:I

    move/from16 v16, v11

    .restart local v11    # "titleStringId":I
    goto :goto_2

    .line 120
    .end local v11    # "titleStringId":I
    :cond_5
    sget v11, Landroidx/media3/exoplayer/R$string;->exo_download_paused:I

    move/from16 v16, v11

    .restart local v11    # "titleStringId":I
    goto :goto_2

    .line 122
    .end local v11    # "titleStringId":I
    :cond_6
    if-eqz v6, :cond_7

    .line 123
    sget v11, Landroidx/media3/exoplayer/R$string;->exo_download_removing:I

    move/from16 v16, v11

    .restart local v11    # "titleStringId":I
    goto :goto_2

    .line 126
    .end local v11    # "titleStringId":I
    :cond_7
    const/4 v11, 0x0

    move/from16 v16, v11

    .line 129
    .local v16, "titleStringId":I
    :goto_2
    const/4 v11, 0x0

    .line 130
    .local v11, "maxProgress":I
    const/4 v12, 0x0

    .line 131
    .local v12, "currentProgress":I
    const/4 v13, 0x0

    .line 132
    .local v13, "indeterminateProgress":Z
    if-eqz v7, :cond_a

    .line 133
    const/16 v11, 0x64

    .line 134
    if-eqz v4, :cond_9

    .line 135
    int-to-float v14, v1

    div-float v14, v0, v14

    float-to-int v12, v14

    .line 136
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    move v9, v10

    :cond_8
    move v13, v9

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto :goto_3

    .line 138
    :cond_9
    const/4 v13, 0x1

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto :goto_3

    .line 132
    :cond_a
    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    .line 142
    .end local v11    # "maxProgress":I
    .end local v12    # "currentProgress":I
    .end local v13    # "indeterminateProgress":Z
    .local v17, "maxProgress":I
    .local v18, "currentProgress":I
    .local v19, "indeterminateProgress":Z
    :goto_3
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v11 .. v21}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v9

    return-object v9

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method
