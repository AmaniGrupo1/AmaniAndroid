.class public Landroidx/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;,
        Landroidx/media3/ui/PlayerControlView$SettingsAdapter;,
        Landroidx/media3/ui/PlayerControlView$ComponentListener;,
        Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;,
        Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;,
        Landroidx/media3/ui/PlayerControlView$VisibilityListener;,
        Landroidx/media3/ui/PlayerControlView$TrackInformation;,
        Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;,
        Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$SettingViewHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x3e8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64

.field private static final PLAYBACK_SPEEDS:[F

.field private static final SETTINGS_AUDIO_TRACK_SELECTION_POSITION:I = 0x1

.field private static final SETTINGS_PLAYBACK_SPEED_POSITION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlayerControlView"


# instance fields
.field private adGroupTimesMs:[J

.field private final audioTrackButton:Landroid/view/View;

.field private final audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

.field private final compositionPlayerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final compositionPlayerIsScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

.field private final compositionPlayerSetScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

.field private final controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;

.field private final exoplayerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private final fastForwardButtonTextView:Landroid/widget/TextView;

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final fullscreenButton:Landroid/widget/ImageView;

.field private final fullscreenEnterContentDescription:Ljava/lang/String;

.field private final fullscreenEnterDrawable:Landroid/graphics/drawable/Drawable;

.field private final fullscreenExitContentDescription:Ljava/lang/String;

.field private final fullscreenExitDrawable:Landroid/graphics/drawable/Drawable;

.field private final handler:Landroid/os/Handler;

.field private isAttachedToWindow:Z

.field private isFullscreen:Z

.field private final isScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

.field private final minimalFullscreenButton:Landroid/widget/ImageView;

.field private multiWindowTimeBar:Z

.field private needToHideBars:Z

.field private final nextButton:Landroid/widget/ImageView;

.field private onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

.field private final pauseButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final playButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final playPauseButton:Landroid/widget/ImageView;

.field private final playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field private final playbackSpeedButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Landroidx/media3/common/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/widget/ImageView;

.field private progressUpdateListener:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private final resources:Landroid/content/res/Resources;

.field private final rewindButton:Landroid/view/View;

.field private final rewindButtonTextView:Landroid/widget/TextView;

.field private scrubbing:Z

.field private final setScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

.field private final settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

.field private final settingsButton:Landroid/view/View;

.field private final settingsView:Landroidx/recyclerview/widget/RecyclerView;

.field private final settingsWindow:Landroid/widget/PopupWindow;

.field private final settingsWindowMargin:I

.field private showMultiWindowTimeBar:Z

.field private showPlayButtonIfSuppressed:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private final subtitleButton:Landroid/widget/ImageView;

.field private final subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOffContentDescription:Ljava/lang/String;

.field private final subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOnContentDescription:Ljava/lang/String;

.field private final textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field private final timeBar:Landroidx/media3/ui/TimeBar;

.field private timeBarMinUpdateIntervalMs:I

.field private timeBarScrubbingEnabled:Z

.field private final trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/ui/PlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/widget/ImageView;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$KhCtrIPwnfekhKTmchWRbwQURM4(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroidx/media3/ui/PlayerControlView;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$fA_GCUtqcqNfkXcjodDFOHMvm0o(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public static synthetic $r8$lambda$mIBsYqyl1jVkZycUoNSySZ3hOj8(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->onFullscreenButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 309
    const-string v0, "media3.ui"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 483
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 487
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 490
    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 491
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 50
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "playbackAttrs"    # Landroid/util/AttributeSet;

    .line 507
    move-object/from16 v1, p0

    move-object/from16 v6, p4

    const-string v2, "isScrubbingModeEnabled"

    const-string/jumbo v3, "setScrubbingModeEnabled"

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 508
    sget v4, Landroidx/media3/ui/R$layout;->exo_player_control_view:I

    .line 509
    .local v4, "controllerLayoutId":I
    sget v5, Landroidx/media3/ui/R$drawable;->exo_styled_controls_play:I

    .line 510
    .local v5, "playDrawableResId":I
    sget v7, Landroidx/media3/ui/R$drawable;->exo_styled_controls_pause:I

    .line 511
    .local v7, "pauseDrawableResId":I
    sget v8, Landroidx/media3/ui/R$drawable;->exo_styled_controls_next:I

    .line 512
    .local v8, "nextDrawableResId":I
    sget v9, Landroidx/media3/ui/R$drawable;->exo_styled_controls_simple_fastforward:I

    .line 513
    .local v9, "fastForwardDrawableResId":I
    sget v10, Landroidx/media3/ui/R$drawable;->exo_styled_controls_previous:I

    .line 514
    .local v10, "previousDrawableResId":I
    sget v11, Landroidx/media3/ui/R$drawable;->exo_styled_controls_simple_rewind:I

    .line 515
    .local v11, "rewindDrawableResId":I
    sget v12, Landroidx/media3/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    .line 516
    .local v12, "fullscreenExitDrawableResId":I
    sget v13, Landroidx/media3/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    .line 517
    .local v13, "fullscreenEnterDrawableResId":I
    sget v14, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_off:I

    .line 518
    .local v14, "repeatOffDrawableResId":I
    sget v15, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_one:I

    .line 519
    .local v15, "repeatOneDrawableResId":I
    move-object/from16 v16, v2

    sget v2, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_all:I

    .line 520
    .local v2, "repeatAllDrawableResId":I
    move-object/from16 v17, v3

    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    .line 521
    .local v3, "shuffleOnDrawableResId":I
    move/from16 v18, v3

    .end local v3    # "shuffleOnDrawableResId":I
    .local v18, "shuffleOnDrawableResId":I
    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    .line 522
    .local v3, "shuffleOffDrawableResId":I
    move/from16 v19, v3

    .end local v3    # "shuffleOffDrawableResId":I
    .local v19, "shuffleOffDrawableResId":I
    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    .line 523
    .local v3, "subtitleOnDrawableResId":I
    move/from16 v20, v3

    .end local v3    # "subtitleOnDrawableResId":I
    .local v20, "subtitleOnDrawableResId":I
    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    .line 524
    .local v3, "subtitleOffDrawableResId":I
    move/from16 v21, v3

    .end local v3    # "subtitleOffDrawableResId":I
    .local v21, "subtitleOffDrawableResId":I
    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_vr:I

    .line 526
    .local v3, "vrDrawableResId":I
    move/from16 v22, v3

    .end local v3    # "vrDrawableResId":I
    .local v22, "vrDrawableResId":I
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    .line 527
    const/16 v0, 0x1388

    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    .line 528
    const/4 v3, 0x0

    iput v3, v1, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    .line 529
    const/16 v0, 0xc8

    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 530
    const/4 v3, 0x1

    .line 531
    .local v3, "showRewindButton":Z
    move/from16 v25, v3

    .end local v3    # "showRewindButton":Z
    .local v25, "showRewindButton":Z
    const/4 v3, 0x1

    .line 532
    .local v3, "showFastForwardButton":Z
    move/from16 v26, v3

    .end local v3    # "showFastForwardButton":Z
    .local v26, "showFastForwardButton":Z
    const/4 v3, 0x1

    .line 533
    .local v3, "showPreviousButton":Z
    move/from16 v27, v3

    .end local v3    # "showPreviousButton":Z
    .local v27, "showPreviousButton":Z
    const/4 v3, 0x1

    .line 534
    .local v3, "showNextButton":Z
    move/from16 v28, v3

    .end local v3    # "showNextButton":Z
    .local v28, "showNextButton":Z
    const/4 v3, 0x0

    .line 535
    .local v3, "showShuffleButton":Z
    move/from16 v29, v3

    .end local v3    # "showShuffleButton":Z
    .local v29, "showShuffleButton":Z
    const/4 v3, 0x0

    .line 536
    .local v3, "showSubtitleButton":Z
    move/from16 v30, v3

    .end local v3    # "showSubtitleButton":Z
    .local v30, "showSubtitleButton":Z
    const/4 v3, 0x1

    .line 537
    .local v3, "animationEnabled":Z
    move/from16 v31, v3

    .end local v3    # "animationEnabled":Z
    .local v31, "animationEnabled":Z
    const/4 v3, 0x0

    .line 539
    .local v3, "showVrButton":Z
    if-eqz v6, :cond_0

    .line 540
    nop

    .line 542
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    move/from16 v32, v3

    .end local v3    # "showVrButton":Z
    .local v32, "showVrButton":Z
    sget-object v3, Landroidx/media3/ui/R$styleable;->PlayerControlView:[I

    .line 543
    move/from16 v1, p3

    move/from16 v33, v2

    const/4 v2, 0x0

    .end local v2    # "repeatAllDrawableResId":I
    .local v33, "repeatAllDrawableResId":I
    invoke-virtual {v0, v6, v3, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 546
    .local v3, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 547
    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v4, v0

    .line 548
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_play_icon:I

    .line 549
    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v5, v0

    .line 550
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_pause_icon:I

    .line 551
    invoke-virtual {v3, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v7, v0

    .line 552
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_next_icon:I

    .line 553
    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v8, v0

    .line 554
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fastforward_icon:I

    .line 555
    invoke-virtual {v3, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v9, v0

    .line 557
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_previous_icon:I

    .line 558
    invoke-virtual {v3, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v10, v0

    .line 559
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_rewind_icon:I

    .line 560
    invoke-virtual {v3, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v11, v0

    .line 561
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fullscreen_exit_icon:I

    .line 562
    invoke-virtual {v3, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v12, v0

    .line 564
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fullscreen_enter_icon:I

    .line 565
    invoke-virtual {v3, v0, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v13, v0

    .line 567
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_off_icon:I

    .line 568
    invoke-virtual {v3, v0, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v14, v0

    .line 569
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_one_icon:I

    .line 570
    invoke-virtual {v3, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v15, v0

    .line 571
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_all_icon:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 572
    move/from16 v2, v33

    .end local v33    # "repeatAllDrawableResId":I
    .restart local v2    # "repeatAllDrawableResId":I
    :try_start_1
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v2, v0

    .line 573
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_shuffle_on_icon:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_11

    .line 574
    move/from16 v1, v18

    .end local v18    # "shuffleOnDrawableResId":I
    .local v1, "shuffleOnDrawableResId":I
    :try_start_2
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v1, v0

    .line 575
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_shuffle_off_icon:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    .line 576
    move/from16 v18, v1

    move/from16 v1, v19

    .end local v19    # "shuffleOffDrawableResId":I
    .local v1, "shuffleOffDrawableResId":I
    .restart local v18    # "shuffleOnDrawableResId":I
    :try_start_3
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v1, v0

    .line 578
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_subtitle_on_icon:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_f

    .line 579
    move/from16 v19, v1

    move/from16 v1, v20

    .end local v20    # "subtitleOnDrawableResId":I
    .local v1, "subtitleOnDrawableResId":I
    .restart local v19    # "shuffleOffDrawableResId":I
    :try_start_4
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v1, v0

    .line 581
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_subtitle_off_icon:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 582
    move/from16 v20, v1

    move/from16 v1, v21

    .end local v21    # "subtitleOffDrawableResId":I
    .local v1, "subtitleOffDrawableResId":I
    .restart local v20    # "subtitleOnDrawableResId":I
    :try_start_5
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v1, v0

    .line 584
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_vr_icon:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    move/from16 v21, v1

    move/from16 v1, v22

    .end local v22    # "vrDrawableResId":I
    .local v1, "vrDrawableResId":I
    .restart local v21    # "subtitleOffDrawableResId":I
    :try_start_6
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    move v1, v0

    .line 585
    :try_start_7
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_timeout:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    move/from16 v33, v1

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v1    # "vrDrawableResId":I
    .end local v4    # "controllerLayoutId":I
    .local v22, "controllerLayoutId":I
    .local v33, "vrDrawableResId":I
    :try_start_8
    iget v1, v4, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v4, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    .line 586
    iget v0, v4, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    invoke-static {v3, v0}, Landroidx/media3/ui/PlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, v4, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    .line 587
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_rewind_button:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 588
    move/from16 v1, v25

    .end local v25    # "showRewindButton":Z
    .local v1, "showRewindButton":Z
    :try_start_9
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v1, v0

    .line 589
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_fastforward_button:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 590
    move/from16 v25, v1

    move/from16 v1, v26

    .end local v26    # "showFastForwardButton":Z
    .local v1, "showFastForwardButton":Z
    .restart local v25    # "showRewindButton":Z
    :try_start_a
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v1, v0

    .line 592
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_previous_button:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 593
    move/from16 v26, v1

    move/from16 v1, v27

    .end local v27    # "showPreviousButton":Z
    .local v1, "showPreviousButton":Z
    .restart local v26    # "showFastForwardButton":Z
    :try_start_b
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v1, v0

    .line 594
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_next_button:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 595
    move/from16 v27, v1

    move/from16 v1, v28

    .end local v28    # "showNextButton":Z
    .local v1, "showNextButton":Z
    .restart local v27    # "showPreviousButton":Z
    :try_start_c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v1, v0

    .line 596
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_shuffle_button:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 597
    move/from16 v28, v1

    move/from16 v1, v29

    .end local v29    # "showShuffleButton":Z
    .local v1, "showShuffleButton":Z
    .restart local v28    # "showNextButton":Z
    :try_start_d
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v1, v0

    .line 598
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_subtitle_button:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 599
    move/from16 v29, v1

    move/from16 v1, v30

    .end local v30    # "showSubtitleButton":Z
    .local v1, "showSubtitleButton":Z
    .restart local v29    # "showShuffleButton":Z
    :try_start_e
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v1, v0

    .line 600
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_vr_button:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move/from16 v30, v1

    move/from16 v1, v32

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v30    # "showSubtitleButton":Z
    :try_start_f
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move v1, v0

    .line 601
    :try_start_10
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_time_bar_scrubbing_enabled:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 602
    move/from16 v32, v1

    const/4 v1, 0x0

    .end local v1    # "showVrButton":Z
    .restart local v32    # "showVrButton":Z
    :try_start_11
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v4, Landroidx/media3/ui/PlayerControlView;->timeBarScrubbingEnabled:Z

    .line 603
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    iget v1, v4, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 604
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 603
    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 607
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_animation_enabled:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 608
    move/from16 v1, v31

    .end local v31    # "animationEnabled":Z
    .local v1, "animationEnabled":Z
    :try_start_12
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 610
    .end local v1    # "animationEnabled":Z
    .local v0, "animationEnabled":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 611
    move/from16 v31, v0

    move/from16 v34, v8

    move/from16 v39, v13

    move/from16 v13, v25

    move/from16 v8, v33

    move v1, v2

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v38, v12

    move/from16 v40, v14

    move/from16 v41, v15

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v2, v22

    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v3, v28

    goto/16 :goto_1

    .line 610
    .end local v0    # "animationEnabled":Z
    .restart local v1    # "animationEnabled":Z
    :catchall_0
    move-exception v0

    move/from16 v31, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    goto/16 :goto_0

    .end local v1    # "animationEnabled":Z
    .restart local v31    # "animationEnabled":Z
    :catchall_1
    move-exception v0

    move/from16 v1, v31

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v31    # "animationEnabled":Z
    .restart local v1    # "animationEnabled":Z
    goto/16 :goto_0

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v31    # "animationEnabled":Z
    :catchall_2
    move-exception v0

    move/from16 v32, v1

    move/from16 v1, v31

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v31    # "animationEnabled":Z
    .local v1, "animationEnabled":Z
    .restart local v32    # "showVrButton":Z
    goto/16 :goto_0

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v31    # "animationEnabled":Z
    :catchall_3
    move-exception v0

    move/from16 v32, v25

    move/from16 v25, v33

    goto/16 :goto_0

    .end local v30    # "showSubtitleButton":Z
    .local v1, "showSubtitleButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_4
    move-exception v0

    move/from16 v30, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v30    # "showSubtitleButton":Z
    goto/16 :goto_0

    .end local v29    # "showShuffleButton":Z
    .local v1, "showShuffleButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_5
    move-exception v0

    move/from16 v29, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v29    # "showShuffleButton":Z
    goto/16 :goto_0

    .end local v28    # "showNextButton":Z
    .local v1, "showNextButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_6
    move-exception v0

    move/from16 v28, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v28    # "showNextButton":Z
    goto/16 :goto_0

    .end local v27    # "showPreviousButton":Z
    .local v1, "showPreviousButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_7
    move-exception v0

    move/from16 v27, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v27    # "showPreviousButton":Z
    goto/16 :goto_0

    .end local v26    # "showFastForwardButton":Z
    .local v1, "showFastForwardButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_8
    move-exception v0

    move/from16 v26, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v26    # "showFastForwardButton":Z
    goto/16 :goto_0

    .end local v25    # "showRewindButton":Z
    .local v1, "showRewindButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_9
    move-exception v0

    move/from16 v25, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v25    # "showRewindButton":Z
    goto/16 :goto_0

    .end local v1    # "showVrButton":Z
    .restart local v32    # "showVrButton":Z
    :catchall_a
    move-exception v0

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v32    # "showVrButton":Z
    .restart local v1    # "showVrButton":Z
    goto/16 :goto_0

    .end local v22    # "controllerLayoutId":I
    .end local v33    # "vrDrawableResId":I
    .local v1, "vrDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .restart local v32    # "showVrButton":Z
    :catchall_b
    move-exception v0

    move/from16 v33, v1

    move/from16 v22, v4

    move/from16 v1, v32

    move-object/from16 v4, p0

    move/from16 v32, v25

    move/from16 v25, v33

    .end local v4    # "controllerLayoutId":I
    .end local v32    # "showVrButton":Z
    .local v1, "showVrButton":Z
    .restart local v22    # "controllerLayoutId":I
    .restart local v33    # "vrDrawableResId":I
    goto/16 :goto_0

    .end local v22    # "controllerLayoutId":I
    .end local v33    # "vrDrawableResId":I
    .local v1, "vrDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .restart local v32    # "showVrButton":Z
    :catchall_c
    move-exception v0

    move/from16 v22, v25

    move/from16 v25, v1

    move/from16 v1, v32

    move/from16 v32, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .local v1, "showVrButton":Z
    .restart local v22    # "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    goto/16 :goto_0

    .end local v21    # "subtitleOffDrawableResId":I
    .local v1, "subtitleOffDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    .local v32, "showVrButton":Z
    :catchall_d
    move-exception v0

    move/from16 v21, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .local v1, "showVrButton":Z
    .restart local v21    # "subtitleOffDrawableResId":I
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    goto :goto_0

    .end local v20    # "subtitleOnDrawableResId":I
    .local v1, "subtitleOnDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    .local v32, "showVrButton":Z
    :catchall_e
    move-exception v0

    move/from16 v20, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .local v1, "showVrButton":Z
    .restart local v20    # "subtitleOnDrawableResId":I
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    goto :goto_0

    .end local v19    # "shuffleOffDrawableResId":I
    .local v1, "shuffleOffDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    .local v32, "showVrButton":Z
    :catchall_f
    move-exception v0

    move/from16 v19, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .local v1, "showVrButton":Z
    .restart local v19    # "shuffleOffDrawableResId":I
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    goto :goto_0

    .end local v18    # "shuffleOnDrawableResId":I
    .local v1, "shuffleOnDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    .local v32, "showVrButton":Z
    :catchall_10
    move-exception v0

    move/from16 v18, v1

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .local v1, "showVrButton":Z
    .restart local v18    # "shuffleOnDrawableResId":I
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    goto :goto_0

    .end local v1    # "showVrButton":Z
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    .local v32, "showVrButton":Z
    :catchall_11
    move-exception v0

    move/from16 v1, v32

    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .restart local v1    # "showVrButton":Z
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    goto :goto_0

    .end local v1    # "showVrButton":Z
    .end local v2    # "repeatAllDrawableResId":I
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    .local v32, "showVrButton":Z
    .local v33, "repeatAllDrawableResId":I
    :catchall_12
    move-exception v0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object/from16 v4, p0

    .end local v4    # "controllerLayoutId":I
    .end local v33    # "repeatAllDrawableResId":I
    .restart local v1    # "showVrButton":Z
    .restart local v2    # "repeatAllDrawableResId":I
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .local v32, "showRewindButton":Z
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 611
    throw v0

    .line 539
    .end local v1    # "showVrButton":Z
    .end local v32    # "showRewindButton":Z
    .local v3, "showVrButton":Z
    .restart local v4    # "controllerLayoutId":I
    .local v22, "vrDrawableResId":I
    .local v25, "showRewindButton":Z
    :cond_0
    move/from16 v32, v25

    move/from16 v25, v22

    move/from16 v22, v4

    move-object v4, v1

    move v1, v3

    .end local v3    # "showVrButton":Z
    .end local v4    # "controllerLayoutId":I
    .restart local v1    # "showVrButton":Z
    .local v22, "controllerLayoutId":I
    .local v25, "vrDrawableResId":I
    .restart local v32    # "showRewindButton":Z
    move/from16 v34, v8

    move/from16 v39, v13

    move/from16 v8, v25

    move/from16 v13, v32

    move/from16 v32, v1

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v38, v12

    move/from16 v40, v14

    move/from16 v41, v15

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v3, v28

    move v1, v2

    move/from16 v2, v22

    .line 614
    .end local v18    # "shuffleOnDrawableResId":I
    .end local v19    # "shuffleOffDrawableResId":I
    .end local v20    # "subtitleOnDrawableResId":I
    .end local v21    # "subtitleOffDrawableResId":I
    .end local v22    # "controllerLayoutId":I
    .end local v25    # "vrDrawableResId":I
    .end local v26    # "showFastForwardButton":Z
    .end local v27    # "showPreviousButton":Z
    .end local v28    # "showNextButton":Z
    .local v1, "repeatAllDrawableResId":I
    .local v2, "controllerLayoutId":I
    .local v3, "showNextButton":Z
    .local v8, "vrDrawableResId":I
    .local v9, "shuffleOnDrawableResId":I
    .local v10, "shuffleOffDrawableResId":I
    .local v11, "subtitleOnDrawableResId":I
    .local v12, "subtitleOffDrawableResId":I
    .local v13, "showRewindButton":Z
    .local v14, "showFastForwardButton":Z
    .local v15, "showPreviousButton":Z
    .local v32, "showVrButton":Z
    .local v34, "nextDrawableResId":I
    .local v35, "fastForwardDrawableResId":I
    .local v36, "previousDrawableResId":I
    .local v37, "rewindDrawableResId":I
    .local v38, "fullscreenExitDrawableResId":I
    .local v39, "fullscreenEnterDrawableResId":I
    .local v40, "repeatOffDrawableResId":I
    .local v41, "repeatOneDrawableResId":I
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 615
    const/high16 v0, 0x40000

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->setDescendantFocusability(I)V

    .line 617
    new-instance v0, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    move/from16 v18, v5

    .end local v5    # "playDrawableResId":I
    .local v18, "playDrawableResId":I
    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroidx/media3/ui/PlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$1;)V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 618
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 619
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    .line 620
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 622
    new-instance v0, Ljava/util/Formatter;

    iget-object v5, v4, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    move/from16 v20, v2

    .end local v2    # "controllerLayoutId":I
    .local v20, "controllerLayoutId":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    .line 623
    const/4 v2, 0x0

    new-array v0, v2, [J

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 624
    new-array v0, v2, [Z

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    .line 625
    new-array v0, v2, [J

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 626
    new-array v0, v2, [Z

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    .line 627
    new-instance v0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 630
    const/4 v2, 0x0

    .line 631
    .local v2, "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 632
    .local v5, "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    .line 634
    .local v21, "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    :try_start_13
    const-string v0, "androidx.media3.exoplayer.ExoPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_13} :catch_8

    move-object v2, v0

    .line 635
    move/from16 v22, v3

    const/4 v3, 0x1

    .end local v3    # "showNextButton":Z
    .local v22, "showNextButton":Z
    :try_start_14
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v25, v3

    const/4 v3, 0x0

    aput-object v25, v0, v3
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_14} :catch_6

    .line 636
    move-object/from16 v3, v17

    :try_start_15
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_15} :catch_4

    move-object v5, v0

    .line 637
    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v17, "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    :try_start_16
    new-array v0, v5, [Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_16} :catch_2

    move-object/from16 v5, v16

    :try_start_17
    invoke-virtual {v2, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_17} :catch_0

    move-object/from16 v21, v0

    .line 640
    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v16

    move/from16 v16, v15

    move-object/from16 v15, v17

    move/from16 v17, v13

    move-object/from16 v13, v21

    goto :goto_9

    .line 638
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move-object/from16 v5, v16

    :goto_3
    move-object/from16 v16, v2

    move-object v2, v5

    move-object/from16 v5, v17

    goto :goto_8

    .end local v17    # "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v49, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v49

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    :goto_5
    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v17

    .end local v2    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v16, "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6
    goto :goto_8

    .end local v16    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "showNextButton":Z
    .restart local v2    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "showNextButton":Z
    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    :goto_7
    move-object/from16 v22, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v22

    move/from16 v22, v3

    move-object/from16 v3, v17

    .end local v2    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "showNextButton":Z
    .restart local v16    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "showNextButton":Z
    :goto_8
    move/from16 v17, v15

    move-object v15, v5

    move-object/from16 v5, v16

    move/from16 v16, v17

    move/from16 v17, v13

    move-object/from16 v13, v21

    .line 641
    .end local v21    # "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v5, "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v15, "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v16, "showPreviousButton":Z
    .local v17, "showRewindButton":Z
    :goto_9
    iput-object v5, v4, Landroidx/media3/ui/PlayerControlView;->exoplayerClazz:Ljava/lang/Class;

    .line 642
    iput-object v15, v4, Landroidx/media3/ui/PlayerControlView;->setScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    .line 643
    iput-object v13, v4, Landroidx/media3/ui/PlayerControlView;->isScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    .line 645
    const/16 v21, 0x0

    .line 646
    .local v21, "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v25, 0x0

    .line 647
    .local v25, "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    const/16 v26, 0x0

    .line 649
    .local v26, "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    :try_start_18
    const-string v0, "androidx.media3.transformer.CompositionPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_18} :catch_12

    move-object/from16 v21, v0

    .line 650
    move-object/from16 v27, v5

    const/4 v5, 0x1

    .end local v5    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v27, "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_19
    new-array v0, v5, [Ljava/lang/Class;

    sget-object v23, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_19} :catch_10

    const/4 v5, 0x0

    :try_start_1a
    aput-object v23, v0, v5
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_1a} :catch_e

    .line 651
    move-object/from16 v5, v21

    .end local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1b
    invoke-virtual {v5, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_1b} :catch_c

    move-object/from16 v25, v0

    .line 652
    const/4 v3, 0x0

    :try_start_1c
    new-array v0, v3, [Ljava/lang/Class;

    .line 653
    invoke-virtual {v5, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_1c} :catch_a

    move-object/from16 v26, v0

    .line 656
    move-object v0, v5

    move-object/from16 v2, v25

    move-object/from16 v5, v26

    goto :goto_11

    .line 654
    :catch_a
    move-exception v0

    goto :goto_b

    :catch_b
    move-exception v0

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_a

    :catch_d
    move-exception v0

    :goto_a
    const/4 v3, 0x0

    :goto_b
    move-object/from16 v21, v5

    goto :goto_10

    .end local v5    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_e
    move-exception v0

    goto :goto_c

    :catch_f
    move-exception v0

    :goto_c
    move v3, v5

    move-object/from16 v5, v21

    goto :goto_e

    :catch_10
    move-exception v0

    goto :goto_d

    :catch_11
    move-exception v0

    :goto_d
    move-object/from16 v5, v21

    const/4 v3, 0x0

    .end local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_e
    goto :goto_10

    .end local v27    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_12
    move-exception v0

    goto :goto_f

    :catch_13
    move-exception v0

    :goto_f
    move-object/from16 v27, v5

    const/4 v3, 0x0

    .end local v5    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v27    # "exoplayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    move-object/from16 v0, v21

    move-object/from16 v2, v25

    move-object/from16 v5, v26

    .line 657
    .end local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v25    # "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v26    # "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v0, "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v5, "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    :goto_11
    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->compositionPlayerClazz:Ljava/lang/Class;

    .line 658
    iput-object v2, v4, Landroidx/media3/ui/PlayerControlView;->compositionPlayerSetScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    .line 660
    iput-object v5, v4, Landroidx/media3/ui/PlayerControlView;->compositionPlayerIsScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    .line 663
    sget v3, Landroidx/media3/ui/R$id;->exo_duration:I

    invoke-virtual {v4, v3}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Landroidx/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    .line 664
    sget v3, Landroidx/media3/ui/R$id;->exo_position:I

    invoke-virtual {v4, v3}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Landroidx/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    .line 666
    sget v3, Landroidx/media3/ui/R$id;->exo_subtitle:I

    invoke-virtual {v4, v3}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    .line 667
    iget-object v3, v4, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 668
    iget-object v3, v4, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .end local v0    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 667
    .end local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v21, v0

    .line 671
    .end local v0    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "compositionPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_12
    sget v0, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    .line 672
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v4}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-static {v0, v3}, Landroidx/media3/ui/PlayerControlView;->initializeFullscreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 673
    sget v0, Landroidx/media3/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    .line 674
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    new-instance v3, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v4}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-static {v0, v3}, Landroidx/media3/ui/PlayerControlView;->initializeFullscreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 676
    sget v0, Landroidx/media3/ui/R$id;->exo_settings:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    .line 677
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    iget-object v3, v4, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    :cond_2
    sget v0, Landroidx/media3/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    .line 682
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    iget-object v3, v4, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    :cond_3
    sget v0, Landroidx/media3/ui/R$id;->exo_audio_track:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    .line 687
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, v4, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    iget-object v3, v4, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    :cond_4
    sget v0, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v4, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/TimeBar;

    .line 692
    .local v0, "customTimeBar":Landroidx/media3/ui/TimeBar;
    sget v3, Landroidx/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v4, v3}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 693
    .local v3, "timeBarPlaceholder":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 694
    iput-object v0, v4, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move/from16 v28, v9

    move/from16 v24, v10

    move-object/from16 v33, v13

    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v42, v22

    move/from16 v43, v29

    move/from16 v44, v30

    move/from16 v10, v31

    move/from16 v45, v32

    const/4 v9, 0x0

    const/16 v23, 0x1

    move-object v5, v3

    move-object v13, v4

    move/from16 v22, v14

    move-object/from16 v3, p1

    move v14, v7

    goto/16 :goto_13

    .line 695
    :cond_5
    if-eqz v3, :cond_6

    .line 698
    move-object/from16 v25, v2

    .end local v2    # "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v25    # "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    new-instance v2, Landroidx/media3/ui/DefaultTimeBar;

    move-object/from16 v26, v5

    .end local v5    # "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v26    # "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    move/from16 v23, v7

    .end local v7    # "pauseDrawableResId":I
    .local v23, "pauseDrawableResId":I
    sget v7, Landroidx/media3/ui/R$style;->ExoStyledControls_TimeBar:I

    const/4 v4, 0x0

    move/from16 v28, v9

    move/from16 v24, v10

    move-object/from16 v33, v13

    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v42, v22

    move/from16 v43, v29

    move/from16 v44, v30

    move/from16 v10, v31

    move/from16 v45, v32

    const/4 v9, 0x0

    move-object/from16 v13, p0

    move-object/from16 v18, v3

    move/from16 v22, v14

    move/from16 v14, v23

    const/16 v23, 0x1

    move-object/from16 v3, p1

    .end local v3    # "timeBarPlaceholder":Landroid/view/View;
    .end local v9    # "shuffleOnDrawableResId":I
    .end local v13    # "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v23    # "pauseDrawableResId":I
    .end local v29    # "showShuffleButton":Z
    .end local v30    # "showSubtitleButton":Z
    .end local v31    # "animationEnabled":Z
    .end local v32    # "showVrButton":Z
    .local v10, "animationEnabled":Z
    .local v14, "pauseDrawableResId":I
    .local v15, "playDrawableResId":I
    .local v18, "timeBarPlaceholder":Landroid/view/View;
    .local v19, "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v22, "showFastForwardButton":Z
    .local v24, "shuffleOffDrawableResId":I
    .local v28, "shuffleOnDrawableResId":I
    .local v33, "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v42, "showNextButton":Z
    .local v43, "showShuffleButton":Z
    .local v44, "showSubtitleButton":Z
    .local v45, "showVrButton":Z
    invoke-direct/range {v2 .. v7}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 700
    .local v2, "defaultTimeBar":Landroidx/media3/ui/DefaultTimeBar;
    sget v4, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v2, v4}, Landroidx/media3/ui/DefaultTimeBar;->setId(I)V

    .line 701
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/media3/ui/DefaultTimeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 703
    .local v4, "parent":Landroid/view/ViewGroup;
    move-object/from16 v5, v18

    .end local v18    # "timeBarPlaceholder":Landroid/view/View;
    .local v5, "timeBarPlaceholder":Landroid/view/View;
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 704
    .local v6, "timeBarIndex":I
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 705
    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 706
    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    .line 707
    .end local v2    # "defaultTimeBar":Landroidx/media3/ui/DefaultTimeBar;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "timeBarIndex":I
    goto :goto_13

    .line 708
    .end local v19    # "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v24    # "shuffleOffDrawableResId":I
    .end local v25    # "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v26    # "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v28    # "shuffleOnDrawableResId":I
    .end local v33    # "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v42    # "showNextButton":Z
    .end local v43    # "showShuffleButton":Z
    .end local v44    # "showSubtitleButton":Z
    .end local v45    # "showVrButton":Z
    .local v2, "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "timeBarPlaceholder":Landroid/view/View;
    .local v5, "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "pauseDrawableResId":I
    .restart local v9    # "shuffleOnDrawableResId":I
    .local v10, "shuffleOffDrawableResId":I
    .restart local v13    # "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v14, "showFastForwardButton":Z
    .local v15, "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v18, "playDrawableResId":I
    .local v22, "showNextButton":Z
    .restart local v29    # "showShuffleButton":Z
    .restart local v30    # "showSubtitleButton":Z
    .restart local v31    # "animationEnabled":Z
    .restart local v32    # "showVrButton":Z
    :cond_6
    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move/from16 v28, v9

    move/from16 v24, v10

    move-object/from16 v33, v13

    move-object/from16 v19, v15

    move/from16 v15, v18

    move/from16 v42, v22

    move/from16 v43, v29

    move/from16 v44, v30

    move/from16 v10, v31

    move/from16 v45, v32

    const/4 v9, 0x0

    const/16 v23, 0x1

    move-object v5, v3

    move-object v13, v4

    move/from16 v22, v14

    move-object/from16 v3, p1

    move v14, v7

    .end local v2    # "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v3    # "timeBarPlaceholder":Landroid/view/View;
    .end local v7    # "pauseDrawableResId":I
    .end local v9    # "shuffleOnDrawableResId":I
    .end local v13    # "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .end local v18    # "playDrawableResId":I
    .end local v29    # "showShuffleButton":Z
    .end local v30    # "showSubtitleButton":Z
    .end local v31    # "animationEnabled":Z
    .end local v32    # "showVrButton":Z
    .local v5, "timeBarPlaceholder":Landroid/view/View;
    .local v10, "animationEnabled":Z
    .local v14, "pauseDrawableResId":I
    .local v15, "playDrawableResId":I
    .restart local v19    # "setScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .local v22, "showFastForwardButton":Z
    .restart local v24    # "shuffleOffDrawableResId":I
    .restart local v25    # "compositionPlayerSetScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v26    # "compositionPlayerIsScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v28    # "shuffleOnDrawableResId":I
    .restart local v33    # "isScrubbingModeEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v42    # "showNextButton":Z
    .restart local v43    # "showShuffleButton":Z
    .restart local v44    # "showSubtitleButton":Z
    .restart local v45    # "showVrButton":Z
    iput-object v9, v13, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    .line 710
    :goto_13
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v2, :cond_7

    .line 711
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-interface {v2, v4}, Landroidx/media3/ui/TimeBar;->addListener(Landroidx/media3/ui/TimeBar$OnScrubListener;)V

    .line 714
    :cond_7
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->handler:Landroid/os/Handler;

    .line 715
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    .line 716
    sget v2, Landroidx/media3/ui/R$id;->exo_play_pause:I

    invoke-virtual {v13, v2}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    .line 717
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 718
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    :cond_8
    sget v2, Landroidx/media3/ui/R$id;->exo_prev:I

    invoke-virtual {v13, v2}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    .line 721
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 722
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v6, v36

    .end local v36    # "previousDrawableResId":I
    .local v6, "previousDrawableResId":I
    invoke-static {v3, v4, v6}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_14

    .line 721
    .end local v6    # "previousDrawableResId":I
    .restart local v36    # "previousDrawableResId":I
    :cond_9
    move/from16 v6, v36

    .line 725
    .end local v36    # "previousDrawableResId":I
    .restart local v6    # "previousDrawableResId":I
    :goto_14
    sget v2, Landroidx/media3/ui/R$id;->exo_next:I

    invoke-virtual {v13, v2}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    .line 726
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 727
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v7, v34

    .end local v34    # "nextDrawableResId":I
    .local v7, "nextDrawableResId":I
    invoke-static {v3, v4, v7}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15

    .line 726
    .end local v7    # "nextDrawableResId":I
    .restart local v34    # "nextDrawableResId":I
    :cond_a
    move/from16 v7, v34

    .line 730
    .end local v34    # "nextDrawableResId":I
    .restart local v7    # "nextDrawableResId":I
    :goto_15
    sget v2, Landroidx/media3/ui/R$font;->roboto_medium_numbers:I

    invoke-static {v3, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 731
    .local v2, "typeface":Landroid/graphics/Typeface;
    sget v4, Landroidx/media3/ui/R$id;->exo_rew:I

    invoke-virtual {v13, v4}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 732
    .local v4, "rewButton":Landroid/widget/ImageView;
    sget v9, Landroidx/media3/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v13, v9}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 733
    .local v9, "rewButtonWithAmount":Landroid/widget/TextView;
    if-eqz v4, :cond_b

    .line 735
    move-object/from16 v29, v0

    .end local v0    # "customTimeBar":Landroidx/media3/ui/TimeBar;
    .local v29, "customTimeBar":Landroidx/media3/ui/TimeBar;
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move-object/from16 v30, v5

    move/from16 v5, v37

    .end local v37    # "rewindDrawableResId":I
    .local v5, "rewindDrawableResId":I
    .local v30, "timeBarPlaceholder":Landroid/view/View;
    invoke-static {v3, v0, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iput-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    .line 737
    move-object v0, v4

    const/4 v4, 0x0

    .end local v4    # "rewButton":Landroid/widget/ImageView;
    .local v0, "rewButton":Landroid/widget/ImageView;
    iput-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    goto :goto_16

    .line 738
    .end local v29    # "customTimeBar":Landroidx/media3/ui/TimeBar;
    .end local v30    # "timeBarPlaceholder":Landroid/view/View;
    .local v0, "customTimeBar":Landroidx/media3/ui/TimeBar;
    .restart local v4    # "rewButton":Landroid/widget/ImageView;
    .local v5, "timeBarPlaceholder":Landroid/view/View;
    .restart local v37    # "rewindDrawableResId":I
    :cond_b
    move-object/from16 v29, v0

    move-object v0, v4

    move-object/from16 v30, v5

    move/from16 v5, v37

    .end local v4    # "rewButton":Landroid/widget/ImageView;
    .end local v37    # "rewindDrawableResId":I
    .local v0, "rewButton":Landroid/widget/ImageView;
    .local v5, "rewindDrawableResId":I
    .restart local v29    # "customTimeBar":Landroidx/media3/ui/TimeBar;
    .restart local v30    # "timeBarPlaceholder":Landroid/view/View;
    if-eqz v9, :cond_c

    .line 740
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 741
    iput-object v9, v13, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    .line 742
    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    iput-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    goto :goto_16

    .line 744
    :cond_c
    const/4 v4, 0x0

    iput-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    .line 745
    iput-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    .line 747
    :goto_16
    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 748
    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    move-object/from16 v31, v0

    .end local v0    # "rewButton":Landroid/widget/ImageView;
    .local v31, "rewButton":Landroid/widget/ImageView;
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_17

    .line 747
    .end local v31    # "rewButton":Landroid/widget/ImageView;
    .restart local v0    # "rewButton":Landroid/widget/ImageView;
    :cond_d
    move-object/from16 v31, v0

    .line 750
    .end local v0    # "rewButton":Landroid/widget/ImageView;
    .restart local v31    # "rewButton":Landroid/widget/ImageView;
    :goto_17
    sget v0, Landroidx/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {v13, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 751
    .local v0, "ffwdButton":Landroid/widget/ImageView;
    sget v4, Landroidx/media3/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v13, v4}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 752
    .local v4, "ffwdButtonWithAmount":Landroid/widget/TextView;
    if-eqz v0, :cond_e

    .line 754
    move/from16 v32, v5

    .end local v5    # "rewindDrawableResId":I
    .local v32, "rewindDrawableResId":I
    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v34, v6

    move/from16 v6, v35

    .end local v35    # "fastForwardDrawableResId":I
    .local v6, "fastForwardDrawableResId":I
    .local v34, "previousDrawableResId":I
    invoke-static {v3, v5, v6}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 756
    const/4 v5, 0x0

    iput-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    goto :goto_18

    .line 757
    .end local v32    # "rewindDrawableResId":I
    .end local v34    # "previousDrawableResId":I
    .restart local v5    # "rewindDrawableResId":I
    .local v6, "previousDrawableResId":I
    .restart local v35    # "fastForwardDrawableResId":I
    :cond_e
    move/from16 v32, v5

    move/from16 v34, v6

    move/from16 v6, v35

    .end local v5    # "rewindDrawableResId":I
    .end local v35    # "fastForwardDrawableResId":I
    .local v6, "fastForwardDrawableResId":I
    .restart local v32    # "rewindDrawableResId":I
    .restart local v34    # "previousDrawableResId":I
    if-eqz v4, :cond_f

    .line 759
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 760
    iput-object v4, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    .line 761
    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    iput-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    goto :goto_18

    .line 763
    :cond_f
    const/4 v5, 0x0

    iput-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    .line 764
    iput-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 766
    :goto_18
    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v5, :cond_10

    .line 767
    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    move-object/from16 v35, v0

    .end local v0    # "ffwdButton":Landroid/widget/ImageView;
    .local v35, "ffwdButton":Landroid/widget/ImageView;
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    .line 766
    .end local v35    # "ffwdButton":Landroid/widget/ImageView;
    .restart local v0    # "ffwdButton":Landroid/widget/ImageView;
    :cond_10
    move-object/from16 v35, v0

    .line 769
    .end local v0    # "ffwdButton":Landroid/widget/ImageView;
    .restart local v35    # "ffwdButton":Landroid/widget/ImageView;
    :goto_19
    sget v0, Landroidx/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v13, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    .line 770
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 771
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    :cond_11
    sget v0, Landroidx/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {v13, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 774
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 775
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    :cond_12
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 779
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    iput v0, v13, Landroidx/media3/ui/PlayerControlView;->buttonAlphaEnabled:F

    .line 780
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v36, v5

    sget v5, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 781
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v0, v36

    iput v0, v13, Landroidx/media3/ui/PlayerControlView;->buttonAlphaDisabled:F

    .line 783
    sget v0, Landroidx/media3/ui/R$id;->exo_vr:I

    invoke-virtual {v13, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    .line 784
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 785
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    iget-object v5, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v5, v8}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-direct {v13, v5, v0}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    goto :goto_1a

    .line 784
    :cond_13
    const/4 v5, 0x0

    .line 789
    :goto_1a
    new-instance v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {v0, v13}, Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 790
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0, v10}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    .line 792
    const/4 v0, 0x2

    move/from16 v46, v5

    new-array v5, v0, [Ljava/lang/String;

    .line 793
    .local v5, "settingTexts":[Ljava/lang/String;
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 794
    .local v0, "settingIcons":[Landroid/graphics/drawable/Drawable;
    move-object/from16 v36, v2

    .end local v2    # "typeface":Landroid/graphics/Typeface;
    .local v36, "typeface":Landroid/graphics/Typeface;
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move-object/from16 v37, v4

    .end local v4    # "ffwdButtonWithAmount":Landroid/widget/TextView;
    .local v37, "ffwdButtonWithAmount":Landroid/widget/TextView;
    sget v4, Landroidx/media3/ui/R$string;->exo_controls_playback_speed:I

    .line 795
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v46

    .line 796
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Landroidx/media3/ui/R$drawable;->exo_styled_controls_speed:I

    .line 797
    invoke-static {v3, v2, v4}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v46

    .line 798
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Landroidx/media3/ui/R$string;->exo_track_selection_title_audio:I

    .line 799
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v23

    .line 800
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Landroidx/media3/ui/R$drawable;->exo_styled_controls_audiotrack:I

    .line 801
    invoke-static {v3, v2, v4}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v23

    .line 802
    new-instance v2, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-direct {v2, v13, v5, v0}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 803
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Landroidx/media3/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    .line 804
    nop

    .line 806
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Landroidx/media3/ui/R$layout;->exo_styled_settings_list:I

    .line 807
    move-object/from16 v47, v5

    const/4 v5, 0x0

    .end local v5    # "settingTexts":[Ljava/lang/String;
    .local v47, "settingTexts":[Ljava/lang/String;
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 808
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 809
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v13}, Landroidx/media3/ui/PlayerControlView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 810
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, -0x2

    move/from16 v48, v6

    move/from16 v6, v23

    .end local v6    # "fastForwardDrawableResId":I
    .local v48, "fastForwardDrawableResId":I
    invoke-direct {v2, v4, v5, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    .line 812
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 813
    iput-boolean v6, v13, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    .line 815
    new-instance v2, Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {v13}, Landroidx/media3/ui/PlayerControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

    .line 816
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v2, v11}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 817
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v2, v12}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 818
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Landroidx/media3/ui/R$string;->exo_controls_cc_enabled_description:I

    .line 819
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    .line 820
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Landroidx/media3/ui/R$string;->exo_controls_cc_disabled_description:I

    .line 821
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    .line 822
    new-instance v2, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    const/4 v5, 0x0

    invoke-direct {v2, v13, v5}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$1;)V

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 823
    new-instance v2, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-direct {v2, v13, v5}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$1;)V

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 824
    new-instance v2, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v4, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Landroidx/media3/ui/R$array;->exo_controls_playback_speeds:I

    .line 826
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    invoke-direct {v2, v13, v4, v5}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 828
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v2, v15}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->playButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 829
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v2, v14}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->pauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 830
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v4, v38

    .end local v38    # "fullscreenExitDrawableResId":I
    .local v4, "fullscreenExitDrawableResId":I
    invoke-static {v3, v2, v4}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->fullscreenExitDrawable:Landroid/graphics/drawable/Drawable;

    .line 831
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v5, v39

    .end local v39    # "fullscreenEnterDrawableResId":I
    .local v5, "fullscreenEnterDrawableResId":I
    invoke-static {v3, v2, v5}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->fullscreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    .line 832
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v6, v40

    .end local v40    # "repeatOffDrawableResId":I
    .local v6, "repeatOffDrawableResId":I
    invoke-static {v3, v2, v6}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 833
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v18, v4

    move/from16 v4, v41

    .end local v41    # "repeatOneDrawableResId":I
    .local v4, "repeatOneDrawableResId":I
    .local v18, "fullscreenExitDrawableResId":I
    invoke-static {v3, v2, v4}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 834
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 835
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v38, v1

    move/from16 v1, v28

    .end local v28    # "shuffleOnDrawableResId":I
    .local v1, "shuffleOnDrawableResId":I
    .local v38, "repeatAllDrawableResId":I
    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 836
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move/from16 v1, v24

    .end local v24    # "shuffleOffDrawableResId":I
    .local v1, "shuffleOffDrawableResId":I
    .restart local v28    # "shuffleOnDrawableResId":I
    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 837
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    .end local v0    # "settingIcons":[Landroid/graphics/drawable/Drawable;
    .local v24, "settingIcons":[Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_exit_description:I

    .line 838
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->fullscreenExitContentDescription:Ljava/lang/String;

    .line 839
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_enter_description:I

    .line 840
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->fullscreenEnterContentDescription:Ljava/lang/String;

    .line 841
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_repeat_off_description:I

    .line 842
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 843
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_repeat_one_description:I

    .line 844
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 845
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_repeat_all_description:I

    .line 846
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 847
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 848
    iget-object v0, v13, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 849
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 852
    sget v0, Landroidx/media3/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v13, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 853
    .local v0, "bottomBar":Landroid/view/ViewGroup;
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    move/from16 v39, v1

    const/4 v1, 0x1

    .end local v1    # "shuffleOffDrawableResId":I
    .local v39, "shuffleOffDrawableResId":I
    invoke-virtual {v2, v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 854
    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    move/from16 v3, v22

    .end local v22    # "showFastForwardButton":Z
    .local v3, "showFastForwardButton":Z
    invoke-virtual {v2, v1, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 855
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    move/from16 v3, v17

    .end local v17    # "showRewindButton":Z
    .local v3, "showRewindButton":Z
    .restart local v22    # "showFastForwardButton":Z
    invoke-virtual {v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 856
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    move/from16 v3, v16

    .end local v16    # "showPreviousButton":Z
    .local v3, "showPreviousButton":Z
    .restart local v17    # "showRewindButton":Z
    invoke-virtual {v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 857
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    move/from16 v3, v42

    .end local v42    # "showNextButton":Z
    .local v3, "showNextButton":Z
    .restart local v16    # "showPreviousButton":Z
    invoke-virtual {v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 858
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    move/from16 v3, v43

    .end local v43    # "showShuffleButton":Z
    .local v3, "showShuffleButton":Z
    .restart local v42    # "showNextButton":Z
    invoke-virtual {v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 859
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    move/from16 v3, v44

    .end local v44    # "showSubtitleButton":Z
    .local v3, "showSubtitleButton":Z
    .restart local v43    # "showShuffleButton":Z
    invoke-virtual {v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 860
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    move/from16 v3, v45

    .end local v45    # "showVrButton":Z
    .local v3, "showVrButton":Z
    .restart local v44    # "showSubtitleButton":Z
    invoke-virtual {v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 861
    iget-object v1, v13, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, v13, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    .end local v0    # "bottomBar":Landroid/view/ViewGroup;
    .local v40, "bottomBar":Landroid/view/ViewGroup;
    iget v0, v13, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_1b

    :cond_14
    move/from16 v0, v46

    :goto_1b
    invoke-virtual {v1, v2, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 863
    new-instance v0, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v13}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v13, v0}, Landroidx/media3/ui/PlayerControlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 864
    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    return-void
.end method

.method static synthetic access$1100(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateTrackLists()V

    return-void
.end method

.method static synthetic access$1202(Landroidx/media3/ui/PlayerControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # Z

    .line 305
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$1300(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/media3/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/Player;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method static synthetic access$1700(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->timeBarScrubbingEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # Landroidx/media3/common/Player;

    .line 305
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->isExoPlayer(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->setScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2000(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # Landroidx/media3/common/Player;

    .line 305
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->isCompositionPlayer(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->compositionPlayerSetScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2200(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # Landroidx/media3/common/Player;

    .line 305
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->isScrubbingModeEnabled(Landroidx/media3/common/Player;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # Landroidx/media3/common/Player;
    .param p2, "x2"    # J

    .line 305
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/PlayerControlView;->seekToTimeBarPosition(Landroidx/media3/common/Player;J)V

    return-void
.end method

.method static synthetic access$2400(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    return v0
.end method

.method static synthetic access$2500(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlViewLayoutManager;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    return-object v0
.end method

.method static synthetic access$3000(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    return v0
.end method

.method static synthetic access$3100(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3200(Landroidx/media3/ui/PlayerControlView;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method static synthetic access$3300(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$SettingsAdapter;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "x2"    # Landroid/view/View;

    .line 305
    invoke-direct {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3700(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    return-object v0
.end method

.method static synthetic access$3900(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$4000(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$4100(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$4600(Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # I

    .line 305
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->onSettingViewClicked(I)V

    return-void
.end method

.method static synthetic access$4700(Landroidx/media3/ui/PlayerControlView;F)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;
    .param p1, "x1"    # F

    .line 305
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic access$4800(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4900(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$5000(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5100(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$900(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerControlView;

    .line 305
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z
    .locals 9
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 1885
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1886
    return v1

    .line 1888
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1889
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    .line 1890
    .local v2, "windowCount":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    const/16 v4, 0x64

    if-le v2, v4, :cond_1

    goto :goto_1

    .line 1893
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 1894
    invoke-virtual {v0, v4, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 1895
    return v1

    .line 1893
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1898
    .end local v4    # "i":I
    :cond_3
    return v3

    .line 1891
    :cond_4
    :goto_1
    return v1
.end method

.method private displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 3
    .param p2, "anchorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1645
    .local p1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1647
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    .line 1649
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    .line 1650
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1651
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    .line 1653
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v0, v1

    .line 1654
    .local v0, "xoff":I
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v1, v2

    .line 1656
    .local v1, "yoff":I
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p2, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1657
    return-void
.end method

.method private gatherSupportedTrackInfosOfType(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .param p1, "tracks"    # Landroidx/media3/common/Tracks;
    .param p2, "trackType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Tracks;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/ui/PlayerControlView$TrackInformation;",
            ">;"
        }
    .end annotation

    .line 1468
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1469
    .local v0, "trackInfos":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/ui/PlayerControlView$TrackInformation;>;"
    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1470
    .local v1, "trackGroups":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Tracks$Group;>;"
    const/4 v2, 0x0

    .local v2, "trackGroupIndex":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1471
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks$Group;

    .line 1472
    .local v3, "trackGroup":Landroidx/media3/common/Tracks$Group;
    invoke-virtual {v3}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v4

    if-eq v4, p2, :cond_0

    .line 1473
    goto :goto_3

    .line 1475
    :cond_0
    const/4 v4, 0x0

    .local v4, "trackIndex":I
    :goto_1
    iget v5, v3, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v4, v5, :cond_3

    .line 1476
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1477
    goto :goto_2

    .line 1479
    :cond_1
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    .line 1480
    .local v5, "trackFormat":Landroidx/media3/common/Format;
    iget v6, v5, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 1481
    goto :goto_2

    .line 1483
    :cond_2
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

    invoke-interface {v6, v5}, Landroidx/media3/ui/TrackNameProvider;->getTrackName(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v6

    .line 1484
    .local v6, "trackName":Ljava/lang/String;
    new-instance v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    invoke-direct {v7, p1, v2, v4, v6}, Landroidx/media3/ui/PlayerControlView$TrackInformation;-><init>(Landroidx/media3/common/Tracks;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1475
    .end local v5    # "trackFormat":Landroidx/media3/common/Format;
    .end local v6    # "trackName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1470
    .end local v3    # "trackGroup":Landroidx/media3/common/Tracks$Group;
    .end local v4    # "trackIndex":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1487
    .end local v2    # "trackGroupIndex":I
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "defaultValue"    # I

    .line 1924
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method private initTrackSelectionAdapter()V
    .locals 3

    .line 1450
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->clear()V

    .line 1451
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->clear()V

    .line 1452
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1453
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1454
    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1457
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    .line 1458
    .local v0, "tracks":Landroidx/media3/common/Tracks;
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->gatherSupportedTrackInfosOfType(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->init(Ljava/util/List;)V

    .line 1459
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v1

    .line 1462
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 1459
    if-eqz v1, :cond_1

    .line 1460
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->gatherSupportedTrackInfosOfType(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    goto :goto_0

    .line 1462
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    .line 1464
    :goto_0
    return-void

    .line 1455
    .end local v0    # "tracks":Landroidx/media3/common/Tracks;
    :cond_2
    :goto_1
    return-void
.end method

.method private static initializeFullscreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p0, "fullscreenButton"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1902
    if-nez p0, :cond_0

    .line 1903
    return-void

    .line 1905
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1906
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1907
    return-void
.end method

.method private isCompositionPlayer(Landroidx/media3/common/Player;)Z
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 1950
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->compositionPlayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->compositionPlayerClazz:Ljava/lang/Class;

    .line 1952
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1950
    :goto_0
    return v0
.end method

.method private isExoPlayer(Landroidx/media3/common/Player;)Z
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 1943
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->exoplayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->exoplayerClazz:Ljava/lang/Class;

    .line 1945
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1943
    :goto_0
    return v0
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 1867
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

.method private isScrubbingModeEnabled(Landroidx/media3/common/Player;)Z
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    .line 1930
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->isExoPlayer(Landroidx/media3/common/Player;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->isScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    .line 1931
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1932
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->isCompositionPlayer(Landroidx/media3/common/Player;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->compositionPlayerIsScrubbingModeEnabledMethod:Ljava/lang/reflect/Method;

    .line 1935
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1934
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1930
    :goto_0
    return v1

    .line 1936
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1937
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onFullscreenButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1708
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isFullscreen:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    .line 1709
    return-void
.end method

.method private onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1852
    sub-int v0, p4, p2

    .line 1853
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 1854
    .local v1, "height":I
    sub-int v2, p8, p6

    .line 1855
    .local v2, "oldWidth":I
    sub-int v3, p9, p7

    .line 1857
    .local v3, "oldHeight":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1858
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    .line 1859
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int v8, v4, v5

    .line 1860
    .local v8, "xOffset":I
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int v9, v4, v5

    .line 1861
    .local v9, "yOffset":I
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1863
    .end local v8    # "xOffset":I
    .end local v9    # "yOffset":I
    :cond_1
    return-void
.end method

.method private onSettingViewClicked(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1750
    if-nez p1, :cond_0

    .line 1751
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    .line 1752
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1753
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    .line 1755
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1757
    :goto_0
    return-void
.end method

.method private seekToTimeBarPosition(Landroidx/media3/common/Player;J)V
    .locals 6
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "positionMs"    # J

    .line 1681
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v0, :cond_2

    .line 1682
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1683
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1684
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1685
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 1686
    .local v1, "windowCount":I
    const/4 v2, 0x0

    .line 1688
    .local v2, "windowIndex":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    .line 1689
    .local v3, "windowDurationMs":J
    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    .line 1690
    goto :goto_1

    .line 1691
    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    .line 1693
    move-wide p2, v3

    .line 1694
    nop

    .line 1699
    .end local v3    # "windowDurationMs":J
    :goto_1
    invoke-interface {p1, v2, p2, p3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 1700
    .end local v0    # "timeline":Landroidx/media3/common/Timeline;
    .end local v1    # "windowCount":I
    .end local v2    # "windowIndex":I
    goto :goto_2

    .line 1696
    .restart local v0    # "timeline":Landroidx/media3/common/Timeline;
    .restart local v1    # "windowCount":I
    .restart local v2    # "windowIndex":I
    .restart local v3    # "windowDurationMs":J
    :cond_1
    sub-long/2addr p2, v3

    .line 1697
    nop

    .end local v3    # "windowDurationMs":J
    add-int/lit8 v2, v2, 0x1

    .line 1698
    goto :goto_0

    .line 1701
    .end local v0    # "timeline":Landroidx/media3/common/Timeline;
    .end local v1    # "windowCount":I
    .end local v2    # "windowIndex":I
    :cond_2
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1702
    invoke-interface {p1, p2, p3}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 1704
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    .line 1705
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .line 1660
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1663
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1664
    return-void

    .line 1661
    :cond_1
    :goto_0
    return-void
.end method

.method private updateButton(ZLandroid/view/View;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "view"    # Landroid/view/View;

    .line 1673
    if-nez p2, :cond_0

    .line 1674
    return-void

    .line 1676
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1677
    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->buttonAlphaEnabled:F

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->buttonAlphaDisabled:F

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1678
    return-void
.end method

.method private updateFastForwardButton()V
    .locals 7

    .line 1369
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    .line 1370
    .local v0, "fastForwardMs":J
    :goto_0
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 1371
    .local v2, "fastForwardSec":I
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1372
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    :cond_1
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1375
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Landroidx/media3/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    .line 1379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1376
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_2
    return-void
.end method

.method private updateFullscreenButtonForState(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "fullscreenButton"    # Landroid/widget/ImageView;
    .param p2, "isFullscreen"    # Z

    .line 1737
    if-nez p1, :cond_0

    .line 1738
    return-void

    .line 1740
    :cond_0
    if-eqz p2, :cond_1

    .line 1741
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fullscreenExitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1742
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fullscreenExitContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1744
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fullscreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1745
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fullscreenEnterContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1747
    :goto_0
    return-void
.end method

.method private static updateFullscreenButtonVisibility(Landroid/view/View;Z)V
    .locals 1
    .param p0, "fullscreenButton"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .line 1911
    if-nez p0, :cond_0

    .line 1912
    return-void

    .line 1914
    :cond_0
    if-eqz p1, :cond_1

    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1917
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1919
    :goto_0
    return-void
.end method

.method private updateNavigation()V
    .locals 7

    .line 1316
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1320
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1321
    .local v0, "player":Landroidx/media3/common/Player;
    const/4 v1, 0x0

    .line 1322
    .local v1, "enableSeeking":Z
    const/4 v2, 0x0

    .line 1323
    .local v2, "enablePrevious":Z
    const/4 v3, 0x0

    .line 1324
    .local v3, "enableRewind":Z
    const/4 v4, 0x0

    .line 1325
    .local v4, "enableFastForward":Z
    const/4 v5, 0x0

    .line 1326
    .local v5, "enableNext":Z
    if-eqz v0, :cond_2

    .line 1328
    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v6}, Landroidx/media3/ui/PlayerControlView;->canShowMultiWindowTimeBar(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1329
    const/16 v6, 0xa

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    goto :goto_0

    .line 1330
    :cond_1
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    :goto_0
    move v1, v6

    .line 1331
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    .line 1332
    const/16 v6, 0xb

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    .line 1333
    const/16 v6, 0xc

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    .line 1334
    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v5

    .line 1337
    :cond_2
    if-eqz v3, :cond_3

    .line 1338
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateRewindButton()V

    .line 1340
    :cond_3
    if-eqz v4, :cond_4

    .line 1341
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateFastForwardButton()V

    .line 1344
    :cond_4
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v6}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1345
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v3, v6}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1346
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v4, v6}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1347
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v6}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1348
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v6, :cond_5

    .line 1349
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v6, v1}, Landroidx/media3/ui/TimeBar;->setEnabled(Z)V

    .line 1351
    :cond_5
    return-void

    .line 1317
    .end local v0    # "player":Landroidx/media3/common/Player;
    .end local v1    # "enableSeeking":Z
    .end local v2    # "enablePrevious":Z
    .end local v3    # "enableRewind":Z
    .end local v4    # "enableFastForward":Z
    .end local v5    # "enableNext":Z
    :cond_6
    :goto_1
    return-void
.end method

.method private updatePlayPauseButton()V
    .locals 5

    .line 1296
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1299
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1300
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result v0

    .line 1301
    .local v0, "shouldShowPlayButton":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->playButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->pauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1304
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_2

    .line 1305
    sget v2, Landroidx/media3/ui/R$string;->exo_controls_play_description:I

    goto :goto_1

    .line 1306
    :cond_2
    sget v2, Landroidx/media3/ui/R$string;->exo_controls_pause_description:I

    :goto_1
    nop

    .line 1307
    .local v2, "stringRes":I
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1308
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->shouldEnablePlayPauseButton(Landroidx/media3/common/Player;)Z

    move-result v3

    .line 1311
    .local v3, "enablePlayPause":Z
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1313
    .end local v0    # "shouldShowPlayButton":Z
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stringRes":I
    .end local v3    # "enablePlayPause":Z
    :cond_3
    return-void

    .line 1297
    :cond_4
    :goto_2
    return-void
.end method

.method private updatePlaybackSpeedList()V
    .locals 3

    .line 1617
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    .line 1618
    return-void

    .line 1620
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->updateSelectedIndex(F)V

    .line 1621
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 1622
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1621
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    .line 1623
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsButton()V

    .line 1624
    return-void
.end method

.method private updateProgress()V
    .locals 20

    .line 1570
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1573
    :cond_0
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1574
    .local v1, "player":Landroidx/media3/common/Player;
    const-wide/16 v2, 0x0

    .line 1575
    .local v2, "position":J
    const-wide/16 v4, 0x0

    .line 1576
    .local v4, "bufferedPosition":J
    if-eqz v1, :cond_1

    const/16 v6, 0x10

    invoke-interface {v1, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1577
    iget-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v8

    add-long v2, v6, v8

    .line 1578
    iget-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v8

    add-long v4, v6, v8

    .line 1580
    :cond_1
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Landroidx/media3/ui/PlayerControlView;->scrubbing:Z

    if-nez v6, :cond_2

    .line 1581
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    iget-object v7, v0, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v7, v8, v2, v3}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    :cond_2
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v6, :cond_4

    .line 1584
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v6, v2, v3}, Landroidx/media3/ui/TimeBar;->setPosition(J)V

    .line 1586
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-direct {v0, v1}, Landroidx/media3/ui/PlayerControlView;->isScrubbingModeEnabled(Landroidx/media3/common/Player;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-wide v7, v2

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :goto_0
    invoke-interface {v6, v7, v8}, Landroidx/media3/ui/TimeBar;->setBufferedPosition(J)V

    .line 1588
    :cond_4
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->progressUpdateListener:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

    if-eqz v6, :cond_5

    .line 1589
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->progressUpdateListener:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

    invoke-interface {v6, v2, v3, v4, v5}, Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    .line 1593
    :cond_5
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroidx/media3/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1594
    const/4 v6, 0x1

    if-nez v1, :cond_6

    move v7, v6

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v7

    .line 1595
    .local v7, "playbackState":I
    :goto_1
    const-wide/16 v8, 0x3e8

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1597
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v6, :cond_7

    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v6}, Landroidx/media3/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v10

    goto :goto_2

    :cond_7
    move-wide v10, v8

    .line 1600
    .local v10, "mediaTimeDelayMs":J
    :goto_2
    rem-long v12, v2, v8

    sub-long v12, v8, v12

    .line 1601
    .local v12, "mediaTimeUntilNextFullSecondMs":J
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1604
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1606
    .local v6, "playbackSpeed":F
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-lez v14, :cond_8

    long-to-float v8, v10

    div-float/2addr v8, v6

    float-to-long v8, v8

    :cond_8
    move-wide v14, v8

    .line 1609
    .local v14, "delayMs":J
    iget v8, v0, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v8, v8

    const-wide/16 v18, 0x3e8

    move-wide/from16 v16, v8

    invoke-static/range {v14 .. v19}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v8

    .line 1610
    .end local v14    # "delayMs":J
    .local v8, "delayMs":J
    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v14, v8, v9}, Landroidx/media3/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v6    # "playbackSpeed":F
    .end local v8    # "delayMs":J
    .end local v10    # "mediaTimeDelayMs":J
    .end local v12    # "mediaTimeUntilNextFullSecondMs":J
    goto :goto_3

    .line 1611
    :cond_9
    const/4 v10, 0x4

    if-eq v7, v10, :cond_a

    if-eq v7, v6, :cond_a

    .line 1612
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v8, v9}, Landroidx/media3/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1611
    :cond_a
    :goto_3
    nop

    .line 1614
    :goto_4
    return-void

    .line 1571
    .end local v1    # "player":Landroidx/media3/common/Player;
    .end local v2    # "position":J
    .end local v4    # "bufferedPosition":J
    .end local v7    # "playbackState":I
    :cond_b
    :goto_5
    return-void
.end method

.method private updateRepeatModeButton()V
    .locals 3

    .line 1384
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1388
    :cond_0
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1389
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1390
    return-void

    .line 1393
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1394
    .local v0, "player":Landroidx/media3/common/Player;
    if-eqz v0, :cond_3

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1401
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1402
    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1412
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1413
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1414
    goto :goto_0

    .line 1408
    :pswitch_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1409
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1410
    goto :goto_0

    .line 1404
    :pswitch_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1405
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1406
    nop

    .line 1418
    :goto_0
    return-void

    .line 1395
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1396
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1398
    return-void

    .line 1385
    .end local v0    # "player":Landroidx/media3/common/Player;
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRewindButton()V
    .locals 7

    .line 1355
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getSeekBackIncrement()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    .line 1356
    .local v0, "rewindMs":J
    :goto_0
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v2, v2

    .line 1357
    .local v2, "rewindSec":I
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1358
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    :cond_1
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1361
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Landroidx/media3/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    .line 1363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 1362
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1361
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1365
    :cond_2
    return-void
.end method

.method private updateSettingsButton()V
    .locals 2

    .line 1627
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->hasSettingsToShow()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1628
    return-void
.end method

.method private updateSettingsWindowSize()V
    .locals 7

    .line 1631
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->measure(II)V

    .line 1633
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1634
    .local v0, "maxWidth":I
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    .line 1635
    .local v1, "itemWidth":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1636
    .local v2, "width":I
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1638
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->getHeight()I

    move-result v3

    iget v4, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 1639
    .local v3, "maxHeight":I
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v4

    .line 1640
    .local v4, "totalHeight":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1641
    .local v5, "height":I
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1642
    return-void
.end method

.method private updateShuffleButton()V
    .locals 3

    .line 1421
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_4

    .line 1425
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1426
    .local v0, "player":Landroidx/media3/common/Player;
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1427
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    goto :goto_3

    .line 1428
    :cond_1
    if-eqz v0, :cond_5

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1433
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1434
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1435
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1434
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1436
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1437
    invoke-interface {v0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1438
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 1439
    :cond_4
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 1436
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1429
    :cond_5
    :goto_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1430
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1431
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1441
    :goto_3
    return-void

    .line 1422
    .end local v0    # "player":Landroidx/media3/common/Player;
    :cond_6
    :goto_4
    return-void
.end method

.method private updateTimeline()V
    .locals 30

    .line 1491
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1492
    .local v1, "player":Landroidx/media3/common/Player;
    if-nez v1, :cond_0

    .line 1493
    return-void

    .line 1495
    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v1, v2}, Landroidx/media3/ui/PlayerControlView;->canShowMultiWindowTimeBar(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    .line 1496
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    .line 1497
    const-wide/16 v7, 0x0

    .line 1498
    .local v7, "durationUs":J
    const/4 v2, 0x0

    .line 1500
    .local v2, "adGroupCount":I
    const/16 v9, 0x11

    invoke-interface {v1, v9}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1501
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v9

    goto :goto_1

    .line 1502
    :cond_2
    sget-object v9, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_1
    nop

    .line 1503
    .local v9, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v10, :cond_f

    .line 1504
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v10

    .line 1505
    .local v10, "currentWindowIndex":I
    iget-boolean v13, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    move v13, v10

    .line 1506
    .local v13, "firstWindowIndex":I
    :goto_2
    iget-boolean v14, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v14, :cond_4

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v14

    sub-int/2addr v14, v4

    goto :goto_3

    :cond_4
    move v14, v10

    .line 1507
    .local v14, "lastWindowIndex":I
    :goto_3
    move v15, v13

    .local v15, "i":I
    :goto_4
    if-gt v15, v14, :cond_e

    .line 1508
    if-ne v15, v10, :cond_5

    .line 1509
    move/from16 v16, v4

    move-wide/from16 v17, v5

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/ui/PlayerControlView;->currentWindowOffset:J

    goto :goto_5

    .line 1508
    :cond_5
    move/from16 v16, v4

    move-wide/from16 v17, v5

    .line 1511
    :goto_5
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v9, v15, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 1512
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v4, v4, v11

    if-nez v4, :cond_6

    .line 1513
    iget-boolean v4, v0, Landroidx/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1514
    goto/16 :goto_d

    .line 1516
    :cond_6
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget v4, v4, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .local v4, "j":I
    :goto_6
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, v5, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v4, v5, :cond_d

    .line 1517
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v4, v5}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 1518
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v5

    .line 1519
    .local v5, "removedGroups":I
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v6

    .line 1520
    .local v6, "totalGroups":I
    move/from16 v19, v5

    move-wide/from16 v28, v11

    move/from16 v11, v19

    move-wide/from16 v19, v28

    .local v11, "adGroupIndex":I
    :goto_7
    if-ge v11, v6, :cond_c

    .line 1521
    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v12, v11}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v21

    .line 1522
    .local v21, "adGroupTimeInPeriodUs":J
    const-wide/high16 v23, -0x8000000000000000L

    cmp-long v12, v21, v23

    if-nez v12, :cond_8

    .line 1523
    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    move/from16 v24, v4

    .end local v4    # "j":I
    .local v24, "j":I
    iget-wide v3, v12, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v3, v3, v19

    if-nez v3, :cond_7

    .line 1525
    move/from16 v25, v2

    goto :goto_b

    .line 1527
    :cond_7
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v21, v3

    .end local v21    # "adGroupTimeInPeriodUs":J
    .local v3, "adGroupTimeInPeriodUs":J
    goto :goto_8

    .line 1522
    .end local v3    # "adGroupTimeInPeriodUs":J
    .end local v24    # "j":I
    .restart local v4    # "j":I
    .restart local v21    # "adGroupTimeInPeriodUs":J
    :cond_8
    move/from16 v24, v4

    .line 1529
    .end local v4    # "j":I
    .restart local v24    # "j":I
    :goto_8
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v3, v21, v3

    .line 1530
    .local v3, "adGroupTimeInWindowUs":J
    cmp-long v12, v3, v17

    if-ltz v12, :cond_b

    .line 1531
    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v12, v12

    if-ne v2, v12, :cond_a

    .line 1532
    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v12, v12

    if-nez v12, :cond_9

    move/from16 v12, v16

    goto :goto_9

    :cond_9
    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x2

    .line 1533
    .local v12, "newLength":I
    :goto_9
    move/from16 v25, v2

    .end local v2    # "adGroupCount":I
    .local v25, "adGroupCount":I
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 1534
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    goto :goto_a

    .line 1531
    .end local v12    # "newLength":I
    .end local v25    # "adGroupCount":I
    .restart local v2    # "adGroupCount":I
    :cond_a
    move/from16 v25, v2

    .line 1536
    .end local v2    # "adGroupCount":I
    .restart local v25    # "adGroupCount":I
    :goto_a
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    add-long v26, v7, v3

    invoke-static/range {v26 .. v27}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v26

    aput-wide v26, v2, v25

    .line 1537
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v12, v11}, Landroidx/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v12

    aput-boolean v12, v2, v25

    .line 1538
    add-int/lit8 v2, v25, 0x1

    .end local v25    # "adGroupCount":I
    .restart local v2    # "adGroupCount":I
    goto :goto_c

    .line 1530
    :cond_b
    move/from16 v25, v2

    .line 1520
    .end local v2    # "adGroupCount":I
    .end local v3    # "adGroupTimeInWindowUs":J
    .end local v21    # "adGroupTimeInPeriodUs":J
    .restart local v25    # "adGroupCount":I
    :goto_b
    move/from16 v2, v25

    .end local v25    # "adGroupCount":I
    .restart local v2    # "adGroupCount":I
    :goto_c
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v24

    goto :goto_7

    .end local v24    # "j":I
    .restart local v4    # "j":I
    :cond_c
    move/from16 v25, v2

    move/from16 v24, v4

    .line 1516
    .end local v2    # "adGroupCount":I
    .end local v4    # "j":I
    .end local v5    # "removedGroups":I
    .end local v6    # "totalGroups":I
    .end local v11    # "adGroupIndex":I
    .restart local v24    # "j":I
    .restart local v25    # "adGroupCount":I
    add-int/lit8 v4, v24, 0x1

    move-wide/from16 v11, v19

    .end local v24    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_6

    .end local v25    # "adGroupCount":I
    .restart local v2    # "adGroupCount":I
    :cond_d
    move/from16 v24, v4

    move-wide/from16 v19, v11

    .line 1542
    .end local v4    # "j":I
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->window:Landroidx/media3/common/Timeline$Window;

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    add-long/2addr v7, v3

    .line 1507
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move-wide/from16 v5, v17

    goto/16 :goto_4

    .line 1544
    .end local v10    # "currentWindowIndex":I
    .end local v13    # "firstWindowIndex":I
    .end local v14    # "lastWindowIndex":I
    .end local v15    # "i":I
    :cond_e
    :goto_d
    goto :goto_e

    :cond_f
    move-wide/from16 v19, v11

    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1545
    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentDuration()J

    move-result-wide v3

    .line 1546
    .local v3, "playerDurationMs":J
    cmp-long v5, v3, v19

    if-eqz v5, :cond_10

    .line 1547
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 1550
    .end local v3    # "playerDurationMs":J
    :cond_10
    :goto_e
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    .line 1551
    .local v3, "durationMs":J
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v5, :cond_11

    .line 1552
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v6, v10, v3, v4}, Landroidx/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    :cond_11
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    if-eqz v5, :cond_13

    .line 1555
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    invoke-interface {v5, v3, v4}, Landroidx/media3/ui/TimeBar;->setDuration(J)V

    .line 1556
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    array-length v5, v5

    .line 1557
    .local v5, "extraAdGroupCount":I
    add-int v6, v2, v5

    .line 1558
    .local v6, "totalAdGroupCount":I
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v10, v10

    if-le v6, v10, :cond_12

    .line 1559
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    iput-object v10, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 1560
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v10

    iput-object v10, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    .line 1562
    :cond_12
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v11, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    const/4 v12, 0x0

    invoke-static {v10, v12, v11, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1563
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v11, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v10, v12, v11, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1564
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->timeBar:Landroidx/media3/ui/TimeBar;

    iget-object v11, v0, Landroidx/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v12, v0, Landroidx/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-interface {v10, v11, v12, v6}, Landroidx/media3/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1566
    .end local v5    # "extraAdGroupCount":I
    .end local v6    # "totalAdGroupCount":I
    :cond_13
    invoke-direct {v0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    .line 1567
    return-void
.end method

.method private updateTrackLists()V
    .locals 2

    .line 1444
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->initTrackSelectionAdapter()V

    .line 1445
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1446
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsButton()V

    .line 1447
    return-void
.end method


# virtual methods
.method public addVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/ui/PlayerControlView$VisibilityListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 960
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1781
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 1792
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1793
    .local v0, "keyCode":I
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 1794
    .local v1, "player":Landroidx/media3/common/Player;
    if-eqz v1, :cond_4

    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1797
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1798
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    .line 1799
    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 1800
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1801
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekForward()V

    goto :goto_0

    .line 1803
    :cond_1
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2

    .line 1804
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1805
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekBack()V

    goto :goto_0

    .line 1806
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1807
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1816
    :sswitch_0
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    .line 1817
    goto :goto_0

    .line 1813
    :sswitch_1
    invoke-static {v1}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    .line 1814
    goto :goto_0

    .line 1824
    :sswitch_2
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1825
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToPrevious()V

    goto :goto_0

    .line 1819
    :sswitch_3
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1820
    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToNext()V

    goto :goto_0

    .line 1810
    :sswitch_4
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;Z)Z

    .line 1811
    nop

    .line 1833
    :cond_3
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1795
    :cond_4
    :goto_1
    const/4 v2, 0x0

    return v2

    nop

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

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    .line 877
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1056
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    .line 1086
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    .line 1101
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1033
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    .line 1170
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 1260
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hide()V

    .line 1261
    return-void
.end method

.method public hideImmediately()V
    .locals 1

    .line 1265
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideImmediately()V

    .line 1266
    return-void
.end method

.method public isAnimationEnabled()Z
    .locals 1

    .line 1205
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isFullyVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1275
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyOnVisibilityChange()V
    .locals 3

    .line 1280
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    .line 1281
    .local v1, "visibilityListener":Landroidx/media3/ui/PlayerControlView$VisibilityListener;
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/media3/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 1282
    .end local v1    # "visibilityListener":Landroidx/media3/ui/PlayerControlView$VisibilityListener;
    goto :goto_0

    .line 1283
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1761
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1762
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->onAttachedToWindow()V

    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 1764
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1767
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateAll()V

    .line 1768
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1772
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1773
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->onDetachedFromWindow()V

    .line 1774
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 1775
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1776
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1777
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1838
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1839
    move v1, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v1, "changed":Z
    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "right":I
    .end local p5    # "bottom":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->onLayout(ZIIII)V

    .line 1840
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "right":I
    .end local v5    # "bottom":I
    .restart local p2    # "left":I
    .restart local p3    # "top":I
    .restart local p4    # "right":I
    .restart local p5    # "bottom":I
    return-void
.end method

.method public removeVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/ui/PlayerControlView$VisibilityListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 973
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 974
    return-void
.end method

.method requestPlayPauseFocus()V
    .locals 1

    .line 1667
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1670
    :cond_0
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1
    .param p1, "animationEnabled"    # Z

    .line 1200
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    .line 1201
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 939
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 940
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 941
    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_0

    .line 943
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 945
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 946
    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    .line 948
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    .line 949
    return-void
.end method

.method public setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V
    .locals 6
    .param p1, "mediaRouteButtonViewProvider"    # Landroidx/media3/common/ViewProvider;

    .line 1128
    sget v0, Landroidx/media3/ui/R$id;->exo_media_route_button_placeholder:I

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1129
    .local v0, "mediaRouteButtonPlaceholder":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1132
    if-nez p1, :cond_0

    .line 1133
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    return-void

    .line 1137
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1138
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 1141
    nop

    .line 1142
    invoke-interface {p1, v1}, Landroidx/media3/common/ViewProvider;->getView(Landroid/view/ViewGroup;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Landroidx/media3/ui/PlayerControlView$1;

    invoke-direct {v3, p0, v0, v1}, Landroidx/media3/ui/PlayerControlView$1;-><init>(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->handler:Landroid/os/Handler;

    .line 1165
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroidx/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    .line 1141
    invoke-static {v2, v3, v5}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 1166
    return-void

    .line 1139
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The media route button placeholder has no parent view."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1130
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The media route button placeholder is missing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    .line 1246
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v3}, Landroidx/media3/ui/PlayerControlView;->updateFullscreenButtonVisibility(Landroid/view/View;Z)V

    .line 1247
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->updateFullscreenButtonVisibility(Landroid/view/View;Z)V

    .line 1248
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 888
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

    .line 889
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

    .line 890
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    .line 891
    return-void

    .line 893
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_4

    .line 894
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 896
    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    .line 897
    if-eqz p1, :cond_5

    .line 898
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->componentListener:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 900
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateAll()V

    .line 901
    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

    .line 982
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->progressUpdateListener:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

    .line 983
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 5
    .param p1, "repeatToggleModes"    # I

    .line 1065
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    .line 1066
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/16 v3, 0xf

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    .line 1068
    .local v0, "currentMode":I
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v3, v1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    .line 1071
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 1073
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v3, v2}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    .line 1074
    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 1076
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-interface {v4, v3}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    .line 1079
    .end local v0    # "currentMode":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1081
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    .line 1082
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2
    .param p1, "showFastForwardButton"    # Z

    .line 1001
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1002
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    .line 1003
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .param p1, "showMultiWindowTimeBar"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    .line 910
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    .line 911
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2
    .param p1, "showNextButton"    # Z

    .line 1021
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1022
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    .line 1023
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0
    .param p1, "showPlayButtonIfSuppressed"    # Z

    .line 923
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    .line 924
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    .line 925
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2
    .param p1, "showPreviousButton"    # Z

    .line 1011
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1012
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    .line 1013
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2
    .param p1, "showRewindButton"    # Z

    .line 991
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 992
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    .line 993
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2
    .param p1, "showShuffleButton"    # Z

    .line 1095
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1096
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    .line 1097
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2
    .param p1, "showSubtitleButton"    # Z

    .line 1110
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1111
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 1
    .param p1, "showTimeoutMs"    # I

    .line 1044
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->showTimeoutMs:I

    .line 1045
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1048
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2
    .param p1, "showVrButton"    # Z

    .line 1179
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1180
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2
    .param p1, "minUpdateIntervalMs"    # I

    .line 1231
    nop

    .line 1232
    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    iput v0, p0, Landroidx/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 1233
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0
    .param p1, "timeBarScrubbingEnabled"    # Z

    .line 1216
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->timeBarScrubbingEnabled:Z

    .line 1217
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 1188
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1192
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 1255
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->show()V

    .line 1256
    return-void
.end method

.method updateAll()V
    .locals 0

    .line 1286
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    .line 1287
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    .line 1288
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    .line 1289
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    .line 1290
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateTrackLists()V

    .line 1291
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    .line 1292
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    .line 1293
    return-void
.end method

.method public updateIsFullscreen(Z)V
    .locals 1
    .param p1, "isFullscreen"    # Z

    .line 1722
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->isFullscreen:Z

    if-ne v0, p1, :cond_0

    .line 1723
    return-void

    .line 1726
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->isFullscreen:Z

    .line 1727
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->updateFullscreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1728
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->updateFullscreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1730
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    if-eqz v0, :cond_1

    .line 1731
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    invoke-interface {v0, p1}, Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;->onFullScreenModeChanged(Z)V

    .line 1733
    :cond_1
    return-void
.end method
