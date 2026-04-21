.class public Landroidx/media3/ui/LegacyPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "LegacyPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;,
        Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;,
        Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x3e8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adGroupTimesMs:[J

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

.field private currentBufferedPosition:J

.field private currentPosition:J

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Landroidx/media3/common/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final rewindButton:Landroid/view/View;

.field private scrubbing:Z

.field private showFastForwardButton:Z

.field private showMultiWindowTimeBar:Z

.field private showNextButton:Z

.field private showPlayButtonIfSuppressed:Z

.field private showPreviousButton:Z

.field private showRewindButton:Z

.field private showShuffleButton:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private final timeBar:Landroidx/media3/ui/TimeBar;

.field private timeBarMinUpdateIntervalMs:I

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/view/View;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$0j2aCtVAsZawYrErNZfQHISA-ak(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 252
    const-string v0, "media3.ui"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 362
    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "playbackAttrs"    # Landroid/util/AttributeSet;

    .line 375
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 376
    sget v0, Landroidx/media3/ui/R$layout;->exo_legacy_player_control_view:I

    .line 377
    .local v0, "controllerLayoutId":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPlayButtonIfSuppressed:Z

    .line 378
    const/16 v2, 0x1388

    iput v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    .line 379
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    .line 380
    const/16 v3, 0xc8

    iput v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 381
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    .line 382
    iput-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 383
    iput-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 384
    iput-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 385
    iput-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 386
    iput-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 387
    if-eqz p4, :cond_0

    .line 388
    nop

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView:[I

    .line 391
    invoke-virtual {v1, p4, v5, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 397
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_timeout:I

    iget v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    .line 398
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_controller_layout_id:I

    .line 399
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v0, v5

    .line 401
    iget v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    invoke-static {v1, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v5

    iput v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    .line 402
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_rewind_button:I

    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 403
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 404
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_fastforward_button:I

    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 405
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 407
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_previous_button:I

    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 408
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 410
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_next_button:I

    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 411
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 412
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_shuffle_button:I

    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 413
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 415
    sget v5, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_time_bar_min_update_interval:I

    iget v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 416
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 415
    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    goto :goto_0

    .line 420
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    throw v2

    .line 423
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 424
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 425
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 427
    new-instance v1, Ljava/util/Formatter;

    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    .line 428
    new-array v1, v2, [J

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    .line 429
    new-array v1, v2, [Z

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    .line 430
    new-array v1, v2, [J

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    .line 431
    new-array v1, v2, [Z

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    .line 432
    new-instance v1, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/ui/LegacyPlayerControlView$1;)V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    .line 433
    new-instance v1, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 434
    new-instance v1, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/ui/LegacyPlayerControlView$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    .line 436
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 437
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->setDescendantFocusability(I)V

    .line 439
    sget v1, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/TimeBar;

    .line 440
    .local v1, "customTimeBar":Landroidx/media3/ui/TimeBar;
    sget v6, Landroidx/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {p0, v6}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 441
    .local v6, "timeBarPlaceholder":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 442
    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    goto :goto_1

    .line 443
    :cond_1
    if-eqz v6, :cond_2

    .line 446
    new-instance v7, Landroidx/media3/ui/DefaultTimeBar;

    invoke-direct {v7, p1, v5, v2, p4}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 447
    .local v7, "defaultTimeBar":Landroidx/media3/ui/DefaultTimeBar;
    sget v5, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v7, v5}, Landroidx/media3/ui/DefaultTimeBar;->setId(I)V

    .line 448
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/media3/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 450
    .local v5, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 451
    .local v8, "timeBarIndex":I
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 453
    iput-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    .line 454
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v7    # "defaultTimeBar":Landroidx/media3/ui/DefaultTimeBar;
    .end local v8    # "timeBarIndex":I
    goto :goto_1

    .line 455
    :cond_2
    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    .line 457
    :goto_1
    sget v5, Landroidx/media3/ui/R$id;->exo_duration:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->durationView:Landroid/widget/TextView;

    .line 458
    sget v5, Landroidx/media3/ui/R$id;->exo_position:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    .line 460
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v5, :cond_3

    .line 461
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-interface {v5, v7}, Landroidx/media3/ui/TimeBar;->addListener(Landroidx/media3/ui/TimeBar$OnScrubListener;)V

    .line 463
    :cond_3
    sget v5, Landroidx/media3/ui/R$id;->exo_play:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    .line 464
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 465
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    :cond_4
    sget v5, Landroidx/media3/ui/R$id;->exo_pause:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    .line 468
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 469
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    :cond_5
    sget v5, Landroidx/media3/ui/R$id;->exo_prev:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    .line 472
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 473
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    :cond_6
    sget v5, Landroidx/media3/ui/R$id;->exo_next:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    .line 476
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 477
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    :cond_7
    sget v5, Landroidx/media3/ui/R$id;->exo_rew:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    .line 480
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 481
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    :cond_8
    sget v5, Landroidx/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 484
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 485
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    :cond_9
    sget v5, Landroidx/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 488
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    .line 489
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :cond_a
    sget v5, Landroidx/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 492
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_b

    .line 493
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    :cond_b
    sget v5, Landroidx/media3/ui/R$id;->exo_vr:I

    invoke-virtual {p0, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    .line 496
    invoke-virtual {p0, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->setShowVrButton(Z)V

    .line 497
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    invoke-direct {p0, v2, v2, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 501
    .local v2, "resources":Landroid/content/res/Resources;
    sget v5, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 502
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    iput v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaEnabled:F

    .line 503
    sget v5, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 504
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    iput v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaDisabled:F

    .line 506
    sget v5, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_off:I

    .line 507
    invoke-static {p1, v2, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    sget v5, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_one:I

    .line 509
    invoke-static {p1, v2, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    sget v5, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_all:I

    .line 511
    invoke-static {p1, v2, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    sget v5, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_shuffle_on:I

    .line 513
    invoke-static {p1, v2, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 514
    sget v5, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_shuffle_off:I

    .line 515
    invoke-static {p1, v2, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    sget v5, Landroidx/media3/ui/R$string;->exo_controls_repeat_off_description:I

    .line 517
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 518
    sget v5, Landroidx/media3/ui/R$string;->exo_controls_repeat_one_description:I

    .line 519
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 520
    sget v5, Landroidx/media3/ui/R$string;->exo_controls_repeat_all_description:I

    .line 521
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 522
    sget v5, Landroidx/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 523
    sget v5, Landroidx/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 524
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 526
    iput-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentPosition:J

    .line 527
    iput-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->currentBufferedPosition:J

    .line 528
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/Player;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/common/Player;J)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;
    .param p1, "x1"    # Landroidx/media3/common/Player;
    .param p2, "x2"    # J

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->seekToTimeBarPosition(Landroidx/media3/common/Player;J)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$2000(Landroidx/media3/ui/LegacyPlayerControlView;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method static synthetic access$2100(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    return-void
.end method

.method static synthetic access$702(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;
    .param p1, "x1"    # Z

    .line 249
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$800(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/LegacyPlayerControlView;

    .line 249
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static canShowMultiWindowTimeBar(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)Z
    .locals 7
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 1255
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1256
    return v2

    .line 1258
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    .line 1259
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1260
    invoke-virtual {p0, v1, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1261
    return v2

    .line 1259
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1264
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "defaultValue"    # I

    .line 1270
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private hideAfterTimeout()V
    .locals 4

    .line 832
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 833
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    if-lez v0, :cond_0

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    .line 835
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    iget v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 839
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    .line 841
    :cond_1
    :goto_0
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 1237
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private requestPlayPauseAccessibilityFocus()V
    .locals 3

    .line 1103
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    .line 1104
    .local v0, "shouldShowPlayButton":Z
    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1105
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1106
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1107
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1109
    :cond_1
    :goto_0
    return-void
.end method

.method private requestPlayPauseFocus()V
    .locals 2

    .line 1094
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    .line 1095
    .local v0, "shouldShowPlayButton":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1097
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1100
    :cond_1
    :goto_0
    return-void
.end method

.method private seekTo(Landroidx/media3/common/Player;IJ)V
    .locals 0
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "windowIndex"    # I
    .param p3, "positionMs"    # J

    .line 1146
    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 1147
    return-void
.end method

.method private seekToTimeBarPosition(Landroidx/media3/common/Player;J)V
    .locals 6
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "positionMs"    # J

    .line 1122
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1123
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1124
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 1125
    .local v1, "windowCount":I
    const/4 v2, 0x0

    .line 1127
    .local v2, "windowIndex":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    .line 1128
    .local v3, "windowDurationMs":J
    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    .line 1129
    goto :goto_1

    .line 1130
    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    .line 1132
    move-wide p2, v3

    .line 1133
    nop

    .line 1138
    .end local v1    # "windowCount":I
    .end local v3    # "windowDurationMs":J
    :goto_1
    goto :goto_2

    .line 1135
    .restart local v1    # "windowCount":I
    .restart local v3    # "windowDurationMs":J
    :cond_1
    sub-long/2addr p2, v3

    .line 1136
    nop

    .end local v3    # "windowDurationMs":J
    add-int/lit8 v2, v2, 0x1

    .line 1137
    goto :goto_0

    .line 1139
    .end local v1    # "windowCount":I
    .end local v2    # "windowIndex":I
    :cond_2
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 1141
    .restart local v2    # "windowIndex":I
    :goto_2
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->seekTo(Landroidx/media3/common/Player;IJ)V

    .line 1142
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    .line 1143
    return-void
.end method

.method private updateAll()V
    .locals 0

    .line 844
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updatePlayPauseButton()V

    .line 845
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    .line 846
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateRepeatModeButton()V

    .line 847
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateShuffleButton()V

    .line 848
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    .line 849
    return-void
.end method

.method private updateButton(ZZLandroid/view/View;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "enabled"    # Z
    .param p3, "view"    # Landroid/view/View;

    .line 1112
    if-nez p3, :cond_0

    .line 1113
    return-void

    .line 1115
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1116
    if-eqz p2, :cond_1

    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaEnabled:F

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->buttonAlphaDisabled:F

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1117
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    return-void
.end method

.method private updateNavigation()V
    .locals 8

    .line 879
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 884
    .local v0, "player":Landroidx/media3/common/Player;
    const/4 v1, 0x0

    .line 885
    .local v1, "enableSeeking":Z
    const/4 v2, 0x0

    .line 886
    .local v2, "enablePrevious":Z
    const/4 v3, 0x0

    .line 887
    .local v3, "enableRewind":Z
    const/4 v4, 0x0

    .line 888
    .local v4, "enableFastForward":Z
    const/4 v5, 0x0

    .line 889
    .local v5, "enableNext":Z
    if-eqz v0, :cond_1

    .line 890
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    .line 891
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    .line 892
    const/16 v6, 0xb

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    .line 893
    const/16 v6, 0xc

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    .line 894
    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v5

    .line 897
    :cond_1
    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v6, v2, v7}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 898
    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v6, v3, v7}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 899
    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v6, v4, v7}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 900
    iget-boolean v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v6, v5, v7}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 901
    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v6, :cond_2

    .line 902
    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v6, v1}, Landroidx/media3/ui/TimeBar;->setEnabled(Z)V

    .line 904
    :cond_2
    return-void

    .line 880
    .end local v0    # "player":Landroidx/media3/common/Player;
    .end local v1    # "enableSeeking":Z
    .end local v2    # "enablePrevious":Z
    .end local v3    # "enableRewind":Z
    .end local v4    # "enableFastForward":Z
    .end local v5    # "enableNext":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private updatePlayPauseButton()V
    .locals 8

    .line 852
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 855
    :cond_0
    const/4 v0, 0x0

    .line 856
    .local v0, "requestPlayPauseFocus":Z
    const/4 v1, 0x0

    .line 857
    .local v1, "requestPlayPauseAccessibilityFocus":Z
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    iget-boolean v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v2

    .line 858
    .local v2, "shouldShowPlayButton":Z
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 859
    if-nez v2, :cond_1

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    move v0, v3

    .line 860
    if-nez v2, :cond_2

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    .line 861
    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    move v1, v3

    .line 862
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->playButton:Landroid/view/View;

    if-eqz v2, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :cond_4
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 865
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_3
    or-int/2addr v0, v3

    .line 866
    if-eqz v2, :cond_6

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    .line 867
    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    or-int/2addr v1, v5

    .line 868
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->pauseButton:Landroid/view/View;

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v4, v6

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :cond_8
    if-eqz v0, :cond_9

    .line 871
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseFocus()V

    .line 873
    :cond_9
    if-eqz v1, :cond_a

    .line 874
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseAccessibilityFocus()V

    .line 876
    :cond_a
    return-void

    .line 853
    .end local v0    # "requestPlayPauseFocus":Z
    .end local v1    # "requestPlayPauseAccessibilityFocus":Z
    .end local v2    # "shouldShowPlayButton":Z
    :cond_b
    :goto_6
    return-void
.end method

.method private updateProgress()V
    .locals 22

    .line 1040
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1044
    :cond_0
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1045
    .local v1, "player":Landroidx/media3/common/Player;
    const-wide/16 v2, 0x0

    .line 1046
    .local v2, "position":J
    const-wide/16 v4, 0x0

    .line 1047
    .local v4, "bufferedPosition":J
    if-eqz v1, :cond_1

    .line 1048
    iget-wide v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v8

    add-long v2, v6, v8

    .line 1049
    iget-wide v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v8

    add-long v4, v6, v8

    .line 1051
    :cond_1
    iget-wide v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentPosition:J

    cmp-long v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    move v6, v7

    .line 1052
    .local v6, "positionChanged":Z
    :goto_0
    iget-wide v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentBufferedPosition:J

    cmp-long v9, v4, v9

    if-eqz v9, :cond_3

    move v7, v8

    .line 1053
    .local v7, "bufferedPositionChanged":Z
    :cond_3
    iput-wide v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentPosition:J

    .line 1054
    iput-wide v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentBufferedPosition:J

    .line 1058
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-boolean v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->scrubbing:Z

    if-nez v9, :cond_4

    if-eqz v6, :cond_4

    .line 1059
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->positionView:Landroid/widget/TextView;

    iget-object v10, v0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v10, v11, v2, v3}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :cond_4
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v9, :cond_5

    .line 1062
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v9, v2, v3}, Landroidx/media3/ui/TimeBar;->setPosition(J)V

    .line 1063
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v9, v4, v5}, Landroidx/media3/ui/TimeBar;->setBufferedPosition(J)V

    .line 1065
    :cond_5
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

    if-eqz v9, :cond_7

    if-nez v6, :cond_6

    if-eqz v7, :cond_7

    .line 1066
    :cond_6
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

    invoke-interface {v9, v2, v3, v4, v5}, Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    .line 1070
    :cond_7
    iget-object v9, v0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1071
    if-nez v1, :cond_8

    move v9, v8

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v9

    .line 1072
    .local v9, "playbackState":I
    :goto_1
    const-wide/16 v10, 0x3e8

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1074
    iget-object v8, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v8, :cond_9

    iget-object v8, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v8}, Landroidx/media3/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v12

    goto :goto_2

    :cond_9
    move-wide v12, v10

    .line 1077
    .local v12, "mediaTimeDelayMs":J
    :goto_2
    rem-long v14, v2, v10

    sub-long v14, v10, v14

    .line 1078
    .local v14, "mediaTimeUntilNextFullSecondMs":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1081
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1083
    .local v8, "playbackSpeed":F
    const/16 v16, 0x0

    cmpl-float v16, v8, v16

    if-lez v16, :cond_a

    long-to-float v10, v12

    div-float/2addr v10, v8

    float-to-long v10, v10

    :cond_a
    move-wide/from16 v16, v10

    .line 1086
    .local v16, "delayMs":J
    iget v10, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v10, v10

    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, v10

    invoke-static/range {v16 .. v21}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v10

    .line 1087
    .end local v16    # "delayMs":J
    .local v10, "delayMs":J
    move-object/from16 v16, v1

    .end local v1    # "player":Landroidx/media3/common/Player;
    .local v16, "player":Landroidx/media3/common/Player;
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v10, v11}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v8    # "playbackSpeed":F
    .end local v10    # "delayMs":J
    .end local v12    # "mediaTimeDelayMs":J
    .end local v14    # "mediaTimeUntilNextFullSecondMs":J
    goto :goto_3

    .line 1072
    .end local v16    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    :cond_b
    move-object/from16 v16, v1

    .line 1088
    .end local v1    # "player":Landroidx/media3/common/Player;
    .restart local v16    # "player":Landroidx/media3/common/Player;
    const/4 v1, 0x4

    if-eq v9, v1, :cond_c

    if-eq v9, v8, :cond_c

    .line 1089
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v10, v11}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1088
    :cond_c
    :goto_3
    nop

    .line 1091
    :goto_4
    return-void

    .line 1041
    .end local v2    # "position":J
    .end local v4    # "bufferedPosition":J
    .end local v6    # "positionChanged":Z
    .end local v7    # "bufferedPositionChanged":Z
    .end local v9    # "playbackState":I
    .end local v16    # "player":Landroidx/media3/common/Player;
    :cond_d
    :goto_5
    return-void
.end method

.method private updateRepeatModeButton()V
    .locals 4

    .line 907
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 911
    :cond_0
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 912
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v1, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 913
    return-void

    .line 916
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 917
    .local v0, "player":Landroidx/media3/common/Player;
    nop

    .line 924
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 917
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 918
    invoke-direct {p0, v3, v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 919
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 921
    return-void

    .line 924
    :cond_2
    invoke-direct {p0, v3, v3, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 925
    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 935
    :pswitch_0
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 937
    goto :goto_0

    .line 931
    :pswitch_1
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 933
    goto :goto_0

    .line 927
    :pswitch_2
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 929
    nop

    .line 941
    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    return-void

    .line 908
    .end local v0    # "player":Landroidx/media3/common/Player;
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateShuffleButton()V
    .locals 4

    .line 945
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_3

    .line 949
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 950
    .local v0, "player":Landroidx/media3/common/Player;
    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 951
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v2, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    goto :goto_2

    .line 952
    :cond_1
    nop

    .line 957
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 952
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 953
    invoke-direct {p0, v3, v2, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 954
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 955
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 957
    :cond_2
    invoke-direct {p0, v3, v3, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 958
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 959
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 958
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 960
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 961
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 962
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 963
    :cond_4
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 960
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 965
    :goto_2
    return-void

    .line 946
    .end local v0    # "player":Landroidx/media3/common/Player;
    :cond_5
    :goto_3
    return-void
.end method

.method private updateTimeline()V
    .locals 29

    .line 968
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 969
    .local v1, "player":Landroidx/media3/common/Player;
    if-nez v1, :cond_0

    .line 970
    return-void

    .line 972
    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 973
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v2, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->canShowMultiWindowTimeBar(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    .line 974
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    .line 975
    const-wide/16 v7, 0x0

    .line 976
    .local v7, "durationUs":J
    const/4 v2, 0x0

    .line 977
    .local v2, "adGroupCount":I
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v9

    .line 978
    .local v9, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 979
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v10

    .line 980
    .local v10, "currentWindowIndex":I
    iget-boolean v11, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    move v11, v10

    .line 981
    .local v11, "firstWindowIndex":I
    :goto_1
    iget-boolean v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v12

    sub-int/2addr v12, v4

    goto :goto_2

    :cond_3
    move v12, v10

    .line 982
    .local v12, "lastWindowIndex":I
    :goto_2
    move v13, v11

    .local v13, "i":I
    :goto_3
    if-gt v13, v12, :cond_d

    .line 983
    if-ne v13, v10, :cond_4

    .line 984
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v14

    iput-wide v14, v0, Landroidx/media3/ui/LegacyPlayerControlView;->currentWindowOffset:J

    .line 986
    :cond_4
    iget-object v14, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v9, v13, v14}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 987
    iget-object v14, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v14, v14, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 988
    iget-boolean v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v4, v5

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 989
    move-object/from16 v24, v1

    goto/16 :goto_a

    .line 991
    :cond_5
    iget-object v14, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget v14, v14, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .local v14, "j":I
    :goto_4
    iget-object v15, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget v15, v15, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v14, v15, :cond_c

    .line 992
    iget-object v15, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v14, v15}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 993
    iget-object v15, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v15}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v15

    .line 994
    .local v15, "removedGroups":I
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v4

    .line 995
    .local v4, "totalGroups":I
    move/from16 v18, v15

    move-wide/from16 v27, v5

    move/from16 v5, v18

    move-wide/from16 v18, v27

    .local v5, "adGroupIndex":I
    :goto_5
    if-ge v5, v4, :cond_b

    .line 996
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v20

    .line 997
    .local v20, "adGroupTimeInPeriodUs":J
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v6, v20, v22

    if-nez v6, :cond_7

    .line 998
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    move/from16 v23, v4

    .end local v4    # "totalGroups":I
    .local v23, "totalGroups":I
    iget-wide v3, v6, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v3, v3, v16

    if-nez v3, :cond_6

    .line 1000
    move-object/from16 v24, v1

    goto :goto_9

    .line 1002
    :cond_6
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v20, v3

    .end local v20    # "adGroupTimeInPeriodUs":J
    .local v3, "adGroupTimeInPeriodUs":J
    goto :goto_6

    .line 997
    .end local v3    # "adGroupTimeInPeriodUs":J
    .end local v23    # "totalGroups":I
    .restart local v4    # "totalGroups":I
    .restart local v20    # "adGroupTimeInPeriodUs":J
    :cond_7
    move/from16 v23, v4

    .line 1004
    .end local v4    # "totalGroups":I
    .restart local v23    # "totalGroups":I
    :goto_6
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v3, v20, v3

    .line 1005
    .local v3, "adGroupTimeInWindowUs":J
    cmp-long v6, v3, v18

    if-ltz v6, :cond_a

    .line 1006
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    array-length v6, v6

    if-ne v2, v6, :cond_9

    .line 1007
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    array-length v6, v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_7

    :cond_8
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    .line 1008
    .local v6, "newLength":I
    :goto_7
    move-object/from16 v24, v1

    .end local v1    # "player":Landroidx/media3/common/Player;
    .local v24, "player":Landroidx/media3/common/Player;
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    .line 1009
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    goto :goto_8

    .line 1006
    .end local v6    # "newLength":I
    .end local v24    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    :cond_9
    move-object/from16 v24, v1

    .line 1011
    .end local v1    # "player":Landroidx/media3/common/Player;
    .restart local v24    # "player":Landroidx/media3/common/Player;
    :goto_8
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    add-long v25, v7, v3

    invoke-static/range {v25 .. v26}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v25

    aput-wide v25, v1, v2

    .line 1012
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v5}, Landroidx/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v6

    aput-boolean v6, v1, v2

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1005
    .end local v24    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    :cond_a
    move-object/from16 v24, v1

    .line 995
    .end local v1    # "player":Landroidx/media3/common/Player;
    .end local v3    # "adGroupTimeInWindowUs":J
    .end local v20    # "adGroupTimeInPeriodUs":J
    .restart local v24    # "player":Landroidx/media3/common/Player;
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto :goto_5

    .end local v23    # "totalGroups":I
    .end local v24    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    .restart local v4    # "totalGroups":I
    :cond_b
    move-object/from16 v24, v1

    move/from16 v23, v4

    .line 991
    .end local v1    # "player":Landroidx/media3/common/Player;
    .end local v4    # "totalGroups":I
    .end local v5    # "adGroupIndex":I
    .end local v15    # "removedGroups":I
    .restart local v24    # "player":Landroidx/media3/common/Player;
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v5, v18

    const/4 v4, 0x1

    goto/16 :goto_4

    .end local v24    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    :cond_c
    move-object/from16 v24, v1

    move-wide/from16 v18, v5

    .line 1017
    .end local v1    # "player":Landroidx/media3/common/Player;
    .end local v14    # "j":I
    .restart local v24    # "player":Landroidx/media3/common/Player;
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    add-long/2addr v7, v3

    .line 982
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v24

    const/4 v4, 0x1

    goto/16 :goto_3

    .end local v24    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    :cond_d
    move-object/from16 v24, v1

    .end local v1    # "player":Landroidx/media3/common/Player;
    .restart local v24    # "player":Landroidx/media3/common/Player;
    goto :goto_a

    .line 978
    .end local v10    # "currentWindowIndex":I
    .end local v11    # "firstWindowIndex":I
    .end local v12    # "lastWindowIndex":I
    .end local v13    # "i":I
    .end local v24    # "player":Landroidx/media3/common/Player;
    .restart local v1    # "player":Landroidx/media3/common/Player;
    :cond_e
    move-object/from16 v24, v1

    .line 1020
    .end local v1    # "player":Landroidx/media3/common/Player;
    .restart local v24    # "player":Landroidx/media3/common/Player;
    :goto_a
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 1021
    .local v3, "durationMs":J
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 1022
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->durationView:Landroid/widget/TextView;

    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v5, v6, v3, v4}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    :cond_f
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v1, :cond_11

    .line 1025
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v1, v3, v4}, Landroidx/media3/ui/TimeBar;->setDuration(J)V

    .line 1026
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    array-length v1, v1

    .line 1027
    .local v1, "extraAdGroupCount":I
    add-int v5, v2, v1

    .line 1028
    .local v5, "totalAdGroupCount":I
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    array-length v6, v6

    if-le v5, v6, :cond_10

    .line 1029
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    .line 1030
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    .line 1032
    :cond_10
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v10, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    const/4 v11, 0x0

    invoke-static {v6, v11, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1033
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v10, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    invoke-static {v6, v11, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1034
    iget-object v6, v0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    iget-object v10, v0, Landroidx/media3/ui/LegacyPlayerControlView;->adGroupTimesMs:[J

    iget-object v11, v0, Landroidx/media3/ui/LegacyPlayerControlView;->playedAdGroups:[Z

    invoke-interface {v6, v10, v11, v5}, Landroidx/media3/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1036
    .end local v1    # "extraAdGroupCount":I
    .end local v5    # "totalAdGroupCount":I
    :cond_11
    invoke-direct {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgress()V

    .line 1037
    return-void
.end method


# virtual methods
.method public addVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;

    .line 616
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1186
    invoke-virtual {p0, p1}, Landroidx/media3/ui/LegacyPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1197
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1198
    .local v0, "keyCode":I
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1199
    .local v1, "player":Landroidx/media3/common/Player;
    if-eqz v1, :cond_4

    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1202
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1203
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 1204
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 1205
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekForward()V

    goto :goto_0

    .line 1207
    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    .line 1208
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekBack()V

    goto :goto_0

    .line 1209
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1210
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1219
    :sswitch_0
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    .line 1220
    goto :goto_0

    .line 1216
    :sswitch_1
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    .line 1217
    goto :goto_0

    .line 1225
    :sswitch_2
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToPrevious()V

    .line 1226
    goto :goto_0

    .line 1222
    :sswitch_3
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToNext()V

    .line 1223
    goto :goto_0

    .line 1213
    :sswitch_4
    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z

    .line 1214
    nop

    .line 1232
    :cond_3
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1200
    :cond_4
    :goto_1
    const/4 v2, 0x0

    return v2

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_4
        0x55 -> :sswitch_4
        0x57 -> :sswitch_3
        0x58 -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1178
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1179
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    .line 1181
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    .line 536
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 710
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 738
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 686
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 753
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 3

    .line 815
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;

    .line 818
    .local v1, "visibilityListener":Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 819
    .end local v1    # "visibilityListener":Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;
    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 821
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 822
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    .line 824
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 828
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    .line 1153
    iget-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1154
    iget-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAtMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1155
    .local v0, "delayMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1156
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1160
    .end local v0    # "delayMs":J
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1161
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    goto :goto_1

    .line 1160
    :cond_2
    :goto_0
    nop

    .line 1163
    :goto_1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateAll()V

    .line 1164
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->isAttachedToWindow:Z

    .line 1170
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1171
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1172
    return-void
.end method

.method public removeVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;

    .line 626
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 598
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 599
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    .line 600
    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_0

    .line 602
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 604
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraAdGroupTimesMs:[J

    .line 605
    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->extraPlayedAdGroups:[Z

    .line 607
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    .line 608
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 547
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 548
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 549
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    .line 550
    return-void

    .line 552
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_4

    .line 553
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 555
    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    .line 556
    if-eqz p1, :cond_5

    .line 557
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->componentListener:Landroidx/media3/ui/LegacyPlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 559
    :cond_5
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateAll()V

    .line 560
    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

    .line 635
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->progressUpdateListener:Landroidx/media3/ui/LegacyPlayerControlView$ProgressUpdateListener;

    .line 636
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3
    .param p1, "repeatToggleModes"    # I

    .line 719
    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->repeatToggleModes:I

    .line 720
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    .line 722
    .local v0, "currentMode":I
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 724
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    .line 725
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 727
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    .line 728
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 730
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v2, v1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    .line 733
    .end local v0    # "currentMode":I
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateRepeatModeButton()V

    .line 734
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0
    .param p1, "showFastForwardButton"    # Z

    .line 654
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showFastForwardButton:Z

    .line 655
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    .line 656
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .param p1, "showMultiWindowTimeBar"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showMultiWindowTimeBar:Z

    .line 569
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateTimeline()V

    .line 570
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0
    .param p1, "showNextButton"    # Z

    .line 674
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showNextButton:Z

    .line 675
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    .line 676
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0
    .param p1, "showPlayButtonIfSuppressed"    # Z

    .line 582
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPlayButtonIfSuppressed:Z

    .line 583
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updatePlayPauseButton()V

    .line 584
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0
    .param p1, "showPreviousButton"    # Z

    .line 664
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showPreviousButton:Z

    .line 665
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    .line 666
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0
    .param p1, "showRewindButton"    # Z

    .line 644
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showRewindButton:Z

    .line 645
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateNavigation()V

    .line 646
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0
    .param p1, "showShuffleButton"    # Z

    .line 747
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showShuffleButton:Z

    .line 748
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateShuffleButton()V

    .line 749
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 1
    .param p1, "showTimeoutMs"    # I

    .line 697
    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->showTimeoutMs:I

    .line 698
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    .line 702
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2
    .param p1, "showVrButton"    # Z

    .line 762
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 765
    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2
    .param p1, "minUpdateIntervalMs"    # I

    .line 791
    nop

    .line 792
    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    iput v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 793
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 773
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->vrButton:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView;->updateButton(ZZLandroid/view/View;)V

    .line 777
    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 800
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;

    .line 803
    .local v1, "visibilityListener":Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 804
    .end local v1    # "visibilityListener":Landroidx/media3/ui/LegacyPlayerControlView$VisibilityListener;
    goto :goto_0

    .line 805
    :cond_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->updateAll()V

    .line 806
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseFocus()V

    .line 807
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->requestPlayPauseAccessibilityFocus()V

    .line 810
    :cond_1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hideAfterTimeout()V

    .line 811
    return-void
.end method
