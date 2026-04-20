.class public final Landroidx/media3/ui/DefaultMediaDescriptionAdapter;
.super Ljava/lang/Object;
.source "DefaultMediaDescriptionAdapter.java"

# interfaces
.implements Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media3/ui/DefaultMediaDescriptionAdapter;->pendingIntent:Landroid/app/PendingIntent;

    .line 49
    return-void
.end method


# virtual methods
.method public createCurrentContentIntent(Landroidx/media3/common/Player;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 68
    iget-object v0, p0, Landroidx/media3/ui/DefaultMediaDescriptionAdapter;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getCurrentContentText(Landroidx/media3/common/Player;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 74
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    .line 78
    .local v0, "artist":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    return-object v0

    .line 82
    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCurrentContentTitle(Landroidx/media3/common/Player;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 53
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 54
    return-object v1

    .line 56
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    .line 57
    .local v0, "displayTitle":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    return-object v0

    .line 61
    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    .line 62
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public getCurrentLargeIcon(Landroidx/media3/common/Player;Landroidx/media3/ui/PlayerNotificationManager$BitmapCallback;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "callback"    # Landroidx/media3/ui/PlayerNotificationManager$BitmapCallback;

    .line 88
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return-object v1

    .line 91
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    .line 92
    .local v0, "data":[B
    if-nez v0, :cond_1

    .line 93
    return-object v1

    .line 95
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
