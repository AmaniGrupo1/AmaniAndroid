.class final Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "LegacyPlayerControlView.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/LegacyPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/LegacyPlayerControlView;


# direct methods
.method private constructor <init>(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1273
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/ui/LegacyPlayerControlView$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;
    .param p2, "x1"    # Landroidx/media3/ui/LegacyPlayerControlView$1;

    .line 1273
    invoke-direct {p0, p1}, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1329
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;

    move-result-object v0

    .line 1330
    .local v0, "player":Landroidx/media3/common/Player;
    if-nez v0, :cond_0

    .line 1331
    return-void

    .line 1333
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1300(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1334
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToNext()V

    goto/16 :goto_0

    .line 1335
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1400(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1336
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekToPrevious()V

    goto :goto_0

    .line 1337
    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1500(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1338
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    .line 1339
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekForward()V

    goto :goto_0

    .line 1341
    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1600(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1342
    invoke-interface {v0}, Landroidx/media3/common/Player;->seekBack()V

    goto :goto_0

    .line 1343
    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1700(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 1344
    invoke-static {v0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_0

    .line 1345
    :cond_5
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 1346
    invoke-static {v0}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    goto :goto_0

    .line 1347
    :cond_6
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1900(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 1348
    nop

    .line 1349
    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v2}, Landroidx/media3/ui/LegacyPlayerControlView;->access$2000(Landroidx/media3/ui/LegacyPlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result v1

    .line 1348
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    .line 1350
    :cond_7
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$2100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 1351
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setShuffleModeEnabled(Z)V

    .line 1353
    :cond_8
    :goto_0
    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 5
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 1278
    const/4 v0, 0x4

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v2}, Landroidx/media3/ui/LegacyPlayerControlView;->access$100(Landroidx/media3/ui/LegacyPlayerControlView;)V

    .line 1281
    :cond_0
    const/4 v2, 0x7

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$200(Landroidx/media3/ui/LegacyPlayerControlView;)V

    .line 1285
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1286
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$300(Landroidx/media3/ui/LegacyPlayerControlView;)V

    .line 1288
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$Events;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1289
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v2}, Landroidx/media3/ui/LegacyPlayerControlView;->access$400(Landroidx/media3/ui/LegacyPlayerControlView;)V

    .line 1291
    :cond_3
    const/16 v2, 0xd

    const/16 v3, 0xb

    const/4 v4, 0x0

    filled-new-array {v0, v1, v3, v4, v2}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1297
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$500(Landroidx/media3/ui/LegacyPlayerControlView;)V

    .line 1299
    :cond_4
    filled-new-array {v3, v4}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1300
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$600(Landroidx/media3/ui/LegacyPlayerControlView;)V

    .line 1302
    :cond_5
    return-void
.end method

.method public onScrubMove(Landroidx/media3/ui/TimeBar;J)V
    .locals 3
    .param p1, "timeBar"    # Landroidx/media3/ui/TimeBar;
    .param p2, "position"    # J

    .line 1314
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$900(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v2}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1000(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    :cond_0
    return-void
.end method

.method public onScrubStart(Landroidx/media3/ui/TimeBar;J)V
    .locals 3
    .param p1, "timeBar"    # Landroidx/media3/ui/TimeBar;
    .param p2, "position"    # J

    .line 1306
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$702(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z

    .line 1307
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$900(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v2}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1000(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    :cond_0
    return-void
.end method

.method public onScrubStop(Landroidx/media3/ui/TimeBar;JZ)V
    .locals 2
    .param p1, "timeBar"    # Landroidx/media3/ui/TimeBar;
    .param p2, "position"    # J
    .param p4, "canceled"    # Z

    .line 1321
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$702(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z

    .line 1322
    if-nez p4, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/LegacyPlayerControlView;

    invoke-static {v1}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->access$1200(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/common/Player;J)V

    .line 1325
    :cond_0
    return-void
.end method
