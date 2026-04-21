.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"

# interfaces
.implements Landroidx/media3/common/AdViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;,
        Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;,
        Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;,
        Landroidx/media3/ui/PlayerView$ComponentListener;,
        Landroidx/media3/ui/PlayerView$Api34;,
        Landroidx/media3/ui/PlayerView$ShowBuffering;,
        Landroidx/media3/ui/PlayerView$ImageDisplayMode;,
        Landroidx/media3/ui/PlayerView$ArtworkDisplayMode;
    }
.end annotation


# static fields
.field public static final ARTWORK_DISPLAY_MODE_FILL:I = 0x2

.field public static final ARTWORK_DISPLAY_MODE_FIT:I = 0x1

.field public static final ARTWORK_DISPLAY_MODE_OFF:I = 0x0

.field public static final IMAGE_DISPLAY_MODE_FILL:I = 0x1

.field public static final IMAGE_DISPLAY_MODE_FIT:I = 0x0

.field public static final SHOW_BUFFERING_ALWAYS:I = 0x2

.field public static final SHOW_BUFFERING_NEVER:I = 0x0

.field public static final SHOW_BUFFERING_WHEN_PLAYING:I = 0x1

.field private static final SURFACE_TYPE_NONE:I = 0x0

.field private static final SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW:I = 0x3

.field private static final SURFACE_TYPE_SURFACE_VIEW:I = 0x1

.field private static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x2

.field private static final SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW:I = 0x4


# instance fields
.field private final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field private artworkDisplayMode:I

.field private final artworkView:Landroid/widget/ImageView;

.field private final bufferingView:Landroid/view/View;

.field private final componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

.field private final contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

.field private final controller:Landroidx/media3/ui/PlayerControlView;

.field private controllerAutoShow:Z

.field private controllerHideDuringAds:Z

.field private controllerHideOnTouch:Z

.field private controllerShowTimeoutMs:I

.field private controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

.field private customErrorMessage:Ljava/lang/CharSequence;

.field private defaultArtwork:Landroid/graphics/drawable/Drawable;

.field private enableComposeSurfaceSyncWorkaround:Z

.field private errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private final errorMessageView:Landroid/widget/TextView;

.field private final exoPlayerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

.field private imageDisplayMode:I

.field private final imageOutput:Ljava/lang/Object;

.field private final imageView:Landroid/widget/ImageView;

.field private keepContentOnPlayerReset:Z

.field private legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

.field private final mainLooperHandler:Landroid/os/Handler;

.field private final overlayFrameLayout:Landroid/widget/FrameLayout;

.field private player:Landroidx/media3/common/Player;

.field private final setImageOutputMethod:Ljava/lang/reflect/Method;

.field private showBuffering:I

.field private final shutterView:Landroid/view/View;

.field private final subtitleView:Landroidx/media3/ui/SubtitleView;

.field private final surfaceSyncGroupV34:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field private final surfaceView:Landroid/view/View;

.field private final surfaceViewIgnoresVideoAspectRatio:Z

.field private useController:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 355
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 357
    new-instance v0, Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-direct {v0, v1}, Landroidx/media3/ui/PlayerView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerView;)V

    iput-object v0, v1, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Landroidx/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    .line 360
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->isInEditMode()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 361
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 362
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 363
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 364
    iput-boolean v4, v1, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 365
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 366
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    .line 367
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 368
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 369
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 370
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 371
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 372
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 373
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 374
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    .line 375
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    .line 376
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    .line 377
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "logo":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroidx/media3/ui/PlayerView;->configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 379
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->addView(Landroid/view/View;)V

    .line 380
    return-void

    .line 383
    .end local v0    # "logo":Landroid/widget/ImageView;
    :cond_0
    const/4 v6, 0x0

    .line 384
    .local v6, "shutterColorSet":Z
    const/4 v7, 0x0

    .line 385
    .local v7, "shutterColor":I
    sget v8, Landroidx/media3/ui/R$layout;->exo_player_view:I

    .line 386
    .local v8, "playerLayoutId":I
    const/4 v9, 0x1

    .line 387
    .local v9, "useArtwork":Z
    const/4 v10, 0x1

    .line 388
    .local v10, "artworkDisplayMode":I
    const/4 v11, 0x0

    .line 389
    .local v11, "imageDisplayMode":I
    const/4 v12, 0x0

    .line 390
    .local v12, "defaultArtworkId":I
    const/4 v13, 0x1

    .line 391
    .local v13, "useController":Z
    const/4 v14, 0x1

    .line 392
    .local v14, "surfaceType":I
    const/4 v15, 0x0

    .line 393
    .local v15, "resizeMode":I
    const/16 v5, 0x1388

    .line 394
    .local v5, "controllerShowTimeoutMs":I
    const/4 v4, 0x1

    .line 395
    .local v4, "controllerHideOnTouch":Z
    move/from16 v17, v6

    .end local v6    # "shutterColorSet":Z
    .local v17, "shutterColorSet":Z
    const/4 v6, 0x1

    .line 396
    .local v6, "controllerAutoShow":Z
    const/4 v2, 0x1

    .line 397
    .local v2, "controllerHideDuringAds":Z
    move/from16 v18, v2

    .end local v2    # "controllerHideDuringAds":Z
    .local v18, "controllerHideDuringAds":Z
    const/4 v2, 0x0

    .line 398
    .local v2, "showBuffering":I
    if-eqz v3, :cond_1

    .line 399
    nop

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/media3/ui/R$styleable;->PlayerView:[I

    .line 402
    move/from16 v19, v2

    move/from16 v20, v6

    const/4 v6, 0x0

    move/from16 v2, p3

    .end local v2    # "showBuffering":I
    .end local v6    # "controllerAutoShow":Z
    .local v19, "showBuffering":I
    .local v20, "controllerAutoShow":Z
    invoke-virtual {v0, v3, v1, v2, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 405
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move v6, v0

    .line 406
    .end local v17    # "shutterColorSet":Z
    .local v6, "shutterColorSet":Z
    :try_start_1
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v7, v0

    .line 407
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v8, v0

    .line 408
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v1, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v9, v0

    .line 409
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_artwork_display_mode:I

    .line 410
    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v10, v0

    .line 411
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_default_artwork:I

    .line 412
    invoke-virtual {v1, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v12, v0

    .line 413
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_image_display_mode:I

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v11, v0

    .line 414
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v13, v0

    .line 415
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v14, v0

    .line 416
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v1, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v15, v0

    .line 417
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_show_timeout:I

    .line 418
    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v5, v0

    .line 419
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_hide_on_touch:I

    .line 420
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move v4, v0

    .line 421
    :try_start_2
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_auto_show:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move/from16 v2, v20

    .end local v20    # "controllerAutoShow":Z
    .local v2, "controllerAutoShow":Z
    :try_start_3
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move v2, v0

    .line 422
    :try_start_4
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_show_buffering:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v17, v2

    move/from16 v2, v19

    .end local v19    # "showBuffering":I
    .local v2, "showBuffering":I
    .local v17, "controllerAutoShow":Z
    :try_start_5
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    move v2, v0

    .line 423
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v19, v2

    move/from16 v20, v4

    move-object/from16 v2, p0

    .end local v2    # "showBuffering":I
    .end local v4    # "controllerHideOnTouch":Z
    .restart local v19    # "showBuffering":I
    .local v20, "controllerHideOnTouch":Z
    :try_start_6
    iget-boolean v4, v2, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 424
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 426
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerView_hide_during_ads:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 427
    move/from16 v4, v18

    .end local v18    # "controllerHideDuringAds":Z
    .local v4, "controllerHideDuringAds":Z
    :try_start_7
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 429
    .end local v4    # "controllerHideDuringAds":Z
    .local v0, "controllerHideDuringAds":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    move/from16 v1, v17

    move/from16 v17, v6

    move v6, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v1

    move v1, v0

    move/from16 v18, v5

    move/from16 v5, v20

    move/from16 v4, v19

    goto/16 :goto_1

    .line 429
    .end local v0    # "controllerHideDuringAds":Z
    .restart local v4    # "controllerHideDuringAds":Z
    :catchall_0
    move-exception v0

    move/from16 v18, v20

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v17

    goto/16 :goto_0

    .end local v4    # "controllerHideDuringAds":Z
    .restart local v18    # "controllerHideDuringAds":Z
    :catchall_1
    move-exception v0

    move/from16 v4, v18

    move/from16 v18, v20

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v17

    .end local v18    # "controllerHideDuringAds":Z
    .restart local v4    # "controllerHideDuringAds":Z
    goto/16 :goto_0

    .end local v19    # "showBuffering":I
    .end local v20    # "controllerHideOnTouch":Z
    .restart local v2    # "showBuffering":I
    .local v4, "controllerHideOnTouch":Z
    .restart local v18    # "controllerHideDuringAds":Z
    :catchall_2
    move-exception v0

    move/from16 v19, v2

    move/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v2, p0

    move/from16 v18, v20

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v17

    .end local v2    # "showBuffering":I
    .end local v18    # "controllerHideDuringAds":Z
    .local v4, "controllerHideDuringAds":Z
    .restart local v19    # "showBuffering":I
    .restart local v20    # "controllerHideOnTouch":Z
    goto :goto_0

    .end local v17    # "controllerAutoShow":Z
    .end local v20    # "controllerHideOnTouch":Z
    .local v2, "controllerAutoShow":Z
    .local v4, "controllerHideOnTouch":Z
    .restart local v18    # "controllerHideDuringAds":Z
    :catchall_3
    move-exception v0

    move/from16 v17, v2

    move/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v2, p0

    move/from16 v18, v20

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v17

    .end local v2    # "controllerAutoShow":Z
    .end local v18    # "controllerHideDuringAds":Z
    .local v4, "controllerHideDuringAds":Z
    .restart local v17    # "controllerAutoShow":Z
    .restart local v20    # "controllerHideOnTouch":Z
    goto :goto_0

    .end local v17    # "controllerAutoShow":Z
    .end local v20    # "controllerHideOnTouch":Z
    .restart local v2    # "controllerAutoShow":Z
    .local v4, "controllerHideOnTouch":Z
    .restart local v18    # "controllerHideDuringAds":Z
    :catchall_4
    move-exception v0

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v2

    move-object/from16 v2, p0

    move/from16 v28, v20

    move/from16 v20, v4

    move/from16 v4, v28

    .end local v2    # "controllerAutoShow":Z
    .local v4, "controllerHideDuringAds":Z
    .local v18, "controllerAutoShow":Z
    .restart local v20    # "controllerHideOnTouch":Z
    goto :goto_0

    .local v4, "controllerHideOnTouch":Z
    .local v18, "controllerHideDuringAds":Z
    .local v20, "controllerAutoShow":Z
    :catchall_5
    move-exception v0

    move/from16 v2, v20

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v2

    move-object/from16 v2, p0

    move/from16 v28, v20

    move/from16 v20, v4

    move/from16 v4, v28

    .local v4, "controllerHideDuringAds":Z
    .local v18, "controllerAutoShow":Z
    .local v20, "controllerHideOnTouch":Z
    goto :goto_0

    .local v4, "controllerHideOnTouch":Z
    .local v18, "controllerHideDuringAds":Z
    .local v20, "controllerAutoShow":Z
    :catchall_6
    move-exception v0

    move/from16 v2, v20

    move/from16 v20, v18

    move/from16 v18, v2

    move-object/from16 v2, p0

    .local v18, "controllerAutoShow":Z
    .local v20, "controllerHideDuringAds":Z
    goto :goto_0

    .end local v6    # "shutterColorSet":Z
    .local v17, "shutterColorSet":Z
    .local v18, "controllerHideDuringAds":Z
    .local v20, "controllerAutoShow":Z
    :catchall_7
    move-exception v0

    move/from16 v2, v20

    move/from16 v20, v18

    move/from16 v18, v2

    move-object/from16 v2, p0

    move/from16 v6, v17

    .end local v17    # "shutterColorSet":Z
    .restart local v6    # "shutterColorSet":Z
    .local v18, "controllerAutoShow":Z
    .local v20, "controllerHideDuringAds":Z
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    throw v0

    .line 398
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v19    # "showBuffering":I
    .end local v20    # "controllerHideDuringAds":Z
    .local v2, "showBuffering":I
    .local v6, "controllerAutoShow":Z
    .restart local v17    # "shutterColorSet":Z
    .local v18, "controllerHideDuringAds":Z
    :cond_1
    move/from16 v19, v2

    move/from16 v20, v18

    move-object v2, v1

    move/from16 v18, v6

    .end local v2    # "showBuffering":I
    .end local v6    # "controllerAutoShow":Z
    .local v18, "controllerAutoShow":Z
    .restart local v19    # "showBuffering":I
    .restart local v20    # "controllerHideDuringAds":Z
    move v6, v15

    move/from16 v1, v20

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v7, v18

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v19

    .line 433
    .end local v19    # "showBuffering":I
    .end local v20    # "controllerHideDuringAds":Z
    .local v1, "controllerHideDuringAds":Z
    .local v4, "showBuffering":I
    .local v5, "controllerHideOnTouch":Z
    .local v6, "resizeMode":I
    .local v7, "controllerAutoShow":Z
    .local v8, "shutterColor":I
    .local v9, "playerLayoutId":I
    .local v10, "useArtwork":Z
    .local v11, "artworkDisplayMode":I
    .local v12, "imageDisplayMode":I
    .local v13, "defaultArtworkId":I
    .local v14, "useController":Z
    .local v15, "surfaceType":I
    .local v18, "controllerShowTimeoutMs":I
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 434
    const/high16 v0, 0x40000

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->setDescendantFocusability(I)V

    .line 437
    sget v0, Landroidx/media3/ui/R$id;->exo_content_frame:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 438
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0, v6}, Landroidx/media3/ui/PlayerView;->setResizeModeRaw(Landroidx/media3/ui/AspectRatioFrameLayout;I)V

    .line 443
    :cond_2
    sget v0, Landroidx/media3/ui/R$id;->exo_shutter:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 444
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v17, :cond_3

    .line 445
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 449
    :cond_3
    const/16 v19, 0x0

    .line 450
    .local v19, "surfaceViewIgnoresVideoAspectRatio":Z
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    move-object/from16 v20, v0

    move/from16 v21, v6

    .end local v6    # "resizeMode":I
    .local v21, "resizeMode":I
    if-eqz v20, :cond_5

    if-eqz v15, :cond_5

    .line 451
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v6, v0

    .line 454
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    packed-switch v15, :pswitch_data_0

    .line 484
    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v8, p1

    .end local v8    # "shutterColor":I
    .end local v9    # "playerLayoutId":I
    .local v22, "shutterColor":I
    .local v23, "playerLayoutId":I
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, v8}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 485
    .local v0, "view":Landroid/view/SurfaceView;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v24, v10

    const/16 v10, 0x22

    .end local v10    # "useArtwork":Z
    .local v24, "useArtwork":Z
    if-lt v9, v10, :cond_4

    .line 486
    invoke-static {v0}, Landroidx/media3/ui/PlayerView$Api34;->setSurfaceLifecycleToFollowsAttachment(Landroid/view/SurfaceView;)V

    goto/16 :goto_3

    .line 474
    .end local v0    # "view":Landroid/view/SurfaceView;
    .end local v22    # "shutterColor":I
    .end local v23    # "playerLayoutId":I
    .end local v24    # "useArtwork":Z
    .restart local v8    # "shutterColor":I
    .restart local v9    # "playerLayoutId":I
    .restart local v10    # "useArtwork":Z
    :pswitch_0
    :try_start_8
    const-string v0, "androidx.media3.exoplayer.video.VideoDecoderGLSurfaceView"

    .line 475
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 476
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v22, v8

    move/from16 v23, v9

    const/4 v8, 0x1

    .end local v8    # "shutterColor":I
    .end local v9    # "playerLayoutId":I
    .restart local v22    # "shutterColor":I
    .restart local v23    # "playerLayoutId":I
    :try_start_9
    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v8, v9, v16

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 481
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v8, p1

    move/from16 v24, v10

    goto :goto_4

    .line 478
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v22    # "shutterColor":I
    .end local v23    # "playerLayoutId":I
    .restart local v8    # "shutterColor":I
    .restart local v9    # "playerLayoutId":I
    :catch_1
    move-exception v0

    move/from16 v22, v8

    move/from16 v23, v9

    .line 479
    .end local v8    # "shutterColor":I
    .end local v9    # "playerLayoutId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "shutterColor":I
    .restart local v23    # "playerLayoutId":I
    :goto_2
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "shutterColor":I
    .end local v23    # "playerLayoutId":I
    .restart local v8    # "shutterColor":I
    .restart local v9    # "playerLayoutId":I
    :pswitch_1
    move/from16 v22, v8

    move/from16 v23, v9

    .end local v8    # "shutterColor":I
    .end local v9    # "playerLayoutId":I
    .restart local v22    # "shutterColor":I
    .restart local v23    # "playerLayoutId":I
    :try_start_a
    const-string v0, "androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView"

    .line 462
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 463
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v8, v9, v16

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iput-object v8, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 468
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 469
    const/4 v0, 0x1

    .line 470
    .end local v19    # "surfaceViewIgnoresVideoAspectRatio":Z
    .local v0, "surfaceViewIgnoresVideoAspectRatio":Z
    move-object/from16 v8, p1

    move/from16 v19, v0

    move/from16 v24, v10

    goto :goto_4

    .line 465
    .end local v0    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v19    # "surfaceViewIgnoresVideoAspectRatio":Z
    :catch_2
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "shutterColor":I
    .end local v23    # "playerLayoutId":I
    .restart local v8    # "shutterColor":I
    .restart local v9    # "playerLayoutId":I
    :pswitch_2
    move/from16 v22, v8

    move/from16 v23, v9

    .end local v8    # "shutterColor":I
    .end local v9    # "playerLayoutId":I
    .restart local v22    # "shutterColor":I
    .restart local v23    # "playerLayoutId":I
    new-instance v0, Landroid/view/TextureView;

    move-object/from16 v8, p1

    invoke-direct {v0, v8}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 457
    move/from16 v24, v10

    goto :goto_4

    .line 488
    .end local v10    # "useArtwork":Z
    .local v0, "view":Landroid/view/SurfaceView;
    .restart local v24    # "useArtwork":Z
    :cond_4
    :goto_3
    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 491
    .end local v0    # "view":Landroid/view/SurfaceView;
    :goto_4
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    iget-object v9, v2, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 497
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    iget-object v10, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0, v10, v9}, Landroidx/media3/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 498
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    move/from16 v9, v19

    goto :goto_5

    .line 450
    .end local v22    # "shutterColor":I
    .end local v23    # "playerLayoutId":I
    .end local v24    # "useArtwork":Z
    .restart local v8    # "shutterColor":I
    .restart local v9    # "playerLayoutId":I
    .restart local v10    # "useArtwork":Z
    :cond_5
    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v8, p1

    .line 499
    .end local v8    # "shutterColor":I
    .end local v9    # "playerLayoutId":I
    .end local v10    # "useArtwork":Z
    .restart local v22    # "shutterColor":I
    .restart local v23    # "playerLayoutId":I
    .restart local v24    # "useArtwork":Z
    const/4 v6, 0x0

    iput-object v6, v2, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    move/from16 v9, v19

    .line 501
    .end local v19    # "surfaceViewIgnoresVideoAspectRatio":Z
    .local v9, "surfaceViewIgnoresVideoAspectRatio":Z
    :goto_5
    iput-boolean v9, v2, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x22

    if-ne v0, v10, :cond_6

    new-instance v0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    invoke-direct {v0, v6}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;-><init>(Landroidx/media3/ui/PlayerView$1;)V

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 505
    sget v0, Landroidx/media3/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 508
    sget v0, Landroidx/media3/ui/R$id;->exo_overlay:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 511
    sget v0, Landroidx/media3/ui/R$id;->exo_image:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    .line 512
    iput v12, v2, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    .line 519
    :try_start_b
    const-string v0, "androidx.media3.exoplayer.ExoPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 520
    .local v0, "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "androidx.media3.exoplayer.image.ImageOutput"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 521
    .local v6, "imageOutputClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "setImageOutput"
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 v19, v6

    move/from16 v20, v9

    const/4 v6, 0x1

    .end local v6    # "imageOutputClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .local v19, "imageOutputClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "surfaceViewIgnoresVideoAspectRatio":Z
    :try_start_c
    new-array v9, v6, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v19, v9, v16

    invoke-virtual {v0, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 522
    .local v6, "setImageOutputMethod":Ljava/lang/reflect/Method;
    nop

    .line 524
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v25, v0

    const/4 v10, 0x1

    .end local v0    # "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v25, "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, v10, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v19, v0, v16

    new-instance v10, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerView;)V

    .line 523
    invoke-static {v9, v0, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_3

    .line 537
    .end local v19    # "imageOutputClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "imageOutput":Ljava/lang/Object;
    move-object v10, v0

    move-object/from16 v0, v25

    goto :goto_9

    .line 532
    .end local v0    # "imageOutput":Ljava/lang/Object;
    .end local v6    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    .end local v25    # "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_8

    .end local v20    # "surfaceViewIgnoresVideoAspectRatio":Z
    .restart local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    move/from16 v20, v9

    .line 534
    .end local v9    # "surfaceViewIgnoresVideoAspectRatio":Z
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    .restart local v20    # "surfaceViewIgnoresVideoAspectRatio":Z
    :goto_8
    const/4 v6, 0x0

    .line 535
    .local v6, "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 536
    .local v9, "setImageOutputMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    move-object v0, v6

    move-object v6, v9

    .line 538
    .end local v9    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    .local v0, "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v6, "setImageOutputMethod":Ljava/lang/reflect/Method;
    .local v10, "imageOutput":Ljava/lang/Object;
    :goto_9
    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    .line 539
    iput-object v6, v2, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    .line 540
    iput-object v10, v2, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    .line 543
    sget v9, Landroidx/media3/ui/R$id;->exo_artwork:I

    invoke-virtual {v2, v9}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 544
    if-eqz v24, :cond_7

    if-eqz v11, :cond_7

    iget-object v9, v2, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_a

    :cond_7
    const/4 v9, 0x0

    .line 546
    .local v9, "isArtworkEnabled":Z
    :goto_a
    move-object/from16 v19, v0

    if-eqz v9, :cond_8

    move v0, v11

    goto :goto_b

    :cond_8
    const/4 v0, 0x0

    .end local v0    # "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v19, "exoPlayerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b
    iput v0, v2, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 547
    if-eqz v13, :cond_9

    .line 548
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 552
    :cond_9
    sget v0, Landroidx/media3/ui/R$id;->exo_subtitles:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/SubtitleView;

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    .line 553
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_a

    .line 554
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    invoke-virtual {v0}, Landroidx/media3/ui/SubtitleView;->setUserDefaultStyle()V

    .line 555
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    invoke-virtual {v0}, Landroidx/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 559
    :cond_a
    sget v0, Landroidx/media3/ui/R$id;->exo_buffering:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 560
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v0, 0x8

    if-eqz v25, :cond_b

    .line 561
    move-object/from16 v25, v6

    .end local v6    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    .local v25, "setImageOutputMethod":Ljava/lang/reflect/Method;
    iget-object v6, v2, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 560
    .end local v25    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    :cond_b
    move-object/from16 v25, v6

    .line 563
    .end local v6    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    .restart local v25    # "setImageOutputMethod":Ljava/lang/reflect/Method;
    :goto_c
    iput v4, v2, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 566
    sget v6, Landroidx/media3/ui/R$id;->exo_error_message:I

    invoke-virtual {v2, v6}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 567
    iget-object v6, v2, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 568
    iget-object v6, v2, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    :cond_c
    sget v0, Landroidx/media3/ui/R$id;->exo_controller:I

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/PlayerControlView;

    .line 573
    .local v0, "customController":Landroidx/media3/ui/PlayerControlView;
    sget v6, Landroidx/media3/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v2, v6}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 574
    .local v6, "controllerPlaceholder":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 575
    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    move-object/from16 v26, v0

    move/from16 v27, v4

    move/from16 v16, v9

    goto :goto_d

    .line 576
    :cond_d
    if-eqz v6, :cond_e

    .line 579
    move-object/from16 v26, v0

    .end local v0    # "customController":Landroidx/media3/ui/PlayerControlView;
    .local v26, "customController":Landroidx/media3/ui/PlayerControlView;
    new-instance v0, Landroidx/media3/ui/PlayerControlView;

    move/from16 v27, v4

    move/from16 v16, v9

    const/4 v4, 0x0

    const/4 v9, 0x0

    .end local v4    # "showBuffering":I
    .end local v9    # "isArtworkEnabled":Z
    .local v16, "isArtworkEnabled":Z
    .local v27, "showBuffering":I
    invoke-direct {v0, v8, v9, v4, v3}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 580
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    sget v9, Landroidx/media3/ui/R$id;->exo_controller:I

    invoke-virtual {v0, v9}, Landroidx/media3/ui/PlayerControlView;->setId(I)V

    .line 581
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/media3/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 583
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 584
    .local v9, "controllerIndex":I
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    iget-object v4, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 586
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "controllerIndex":I
    goto :goto_d

    .line 587
    .end local v16    # "isArtworkEnabled":Z
    .end local v26    # "customController":Landroidx/media3/ui/PlayerControlView;
    .end local v27    # "showBuffering":I
    .local v0, "customController":Landroidx/media3/ui/PlayerControlView;
    .restart local v4    # "showBuffering":I
    .local v9, "isArtworkEnabled":Z
    :cond_e
    move-object/from16 v26, v0

    move/from16 v27, v4

    move/from16 v16, v9

    .end local v0    # "customController":Landroidx/media3/ui/PlayerControlView;
    .end local v4    # "showBuffering":I
    .end local v9    # "isArtworkEnabled":Z
    .restart local v16    # "isArtworkEnabled":Z
    .restart local v26    # "customController":Landroidx/media3/ui/PlayerControlView;
    .restart local v27    # "showBuffering":I
    const/4 v9, 0x0

    iput-object v9, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 589
    :goto_d
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_f

    move/from16 v0, v18

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    :goto_e
    iput v0, v2, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 590
    iput-boolean v5, v2, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 591
    iput-boolean v7, v2, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    .line 592
    iput-boolean v1, v2, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    .line 593
    if-eqz v14, :cond_10

    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    goto :goto_f

    :cond_10
    const/4 v4, 0x0

    :goto_f
    iput-boolean v4, v2, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 594
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_11

    .line 595
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hideImmediately()V

    .line 596
    iget-object v0, v2, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v4, v2, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {v0, v4}, Landroidx/media3/ui/PlayerControlView;->addVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    .line 598
    :cond_11
    if-eqz v14, :cond_12

    .line 599
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media3/ui/PlayerView;->setClickable(Z)V

    .line 601
    :cond_12
    invoke-direct {v2}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    .line 602
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/SubtitleView;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideImage()V

    return-void
.end method

.method static synthetic access$1100(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    return-void
.end method

.method static synthetic access$1200(Landroidx/media3/ui/PlayerView;Z)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;
    .param p1, "x1"    # Z

    .line 191
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method static synthetic access$1400(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method static synthetic access$1500(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateControllerVisibility()V

    return-void
.end method

.method static synthetic access$1600(Landroidx/media3/ui/PlayerView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroidx/media3/ui/PlayerView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return v0
.end method

.method static synthetic access$1800(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    return-void
.end method

.method static synthetic access$1900(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/ui/PlayerView;)Landroidx/media3/common/Player;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method static synthetic access$2000(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    return-object v0
.end method

.method static synthetic access$2100(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/ui/PlayerView;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/ui/PlayerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/ui/PlayerView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/ui/PlayerView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/ui/PlayerView;)Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media3/ui/PlayerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/ui/PlayerView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/ui/PlayerView;

    .line 191
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedImageTrack()Z

    move-result v0

    return v0
.end method

.method private clearImageOutput(Landroidx/media3/common/Player;)V
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 713
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    goto :goto_1

    .line 716
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 720
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :goto_1
    return-void
.end method

.method private closeShutter()V
    .locals 2

    .line 1758
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1761
    :cond_0
    return-void
.end method

.method private static configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "logo"    # Landroid/widget/ImageView;

    .line 1833
    sget v0, Landroidx/media3/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1834
    sget v0, Landroidx/media3/ui/R$color;->exo_edit_mode_background_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1835
    return-void
.end method

.method private hasSelectedImageTrack()Z
    .locals 3

    .line 1670
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1671
    .local v0, "player":Landroidx/media3/common/Player;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1673
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1674
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1671
    :goto_0
    return v1
.end method

.method private hasSelectedVideoTrack()Z
    .locals 3

    .line 1678
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1679
    .local v0, "player":Landroidx/media3/common/Player;
    if-eqz v0, :cond_0

    .line 1680
    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1681
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1679
    :goto_0
    return v1
.end method

.method private hideAndClearImage()V
    .locals 2

    .line 1727
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideImage()V

    .line 1728
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1731
    :cond_0
    return-void
.end method

.method private hideArtwork()V
    .locals 2

    .line 1663
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1665
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1667
    :cond_0
    return-void
.end method

.method private hideImage()V
    .locals 2

    .line 1741
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1744
    :cond_0
    return-void
.end method

.method private isDpadKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .line 1844
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

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

.method private isImageSet()Z
    .locals 3

    .line 1685
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1686
    return v1

    .line 1688
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1690
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isPlayingAd()Z
    .locals 2

    .line 1568
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1569
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1570
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1571
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1568
    :goto_0
    return v0
.end method

.method private maybeShowController(Z)V
    .locals 2
    .param p1, "isForced"    # Z

    .line 1533
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    .line 1534
    return-void

    .line 1536
    :cond_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1537
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 1538
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1539
    .local v0, "wasShowingIndefinitely":Z
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    .line 1540
    .local v1, "shouldShowIndefinitely":Z
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1541
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    .line 1544
    .end local v0    # "wasShowingIndefinitely":Z
    .end local v1    # "shouldShowIndefinitely":Z
    :cond_3
    return-void
.end method

.method private onImageAvailable(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1747
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1755
    return-void
.end method

.method private setArtworkFromMediaMetadata(Landroidx/media3/common/Player;)Z
    .locals 4
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 1628
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1631
    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 1632
    .local v1, "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v2, :cond_1

    .line 1633
    return v0

    .line 1635
    :cond_1
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    array-length v3, v3

    .line 1636
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1638
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    return v2

    .line 1629
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "mediaMetadata":Landroidx/media3/common/MediaMetadata;
    :cond_2
    :goto_0
    return v0
.end method

.method private setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1642
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1643
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1644
    .local v0, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1645
    .local v2, "drawableHeight":I
    if-lez v0, :cond_1

    if-lez v2, :cond_1

    .line 1646
    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1647
    .local v3, "artworkLayoutAspectRatio":F
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 1648
    .local v4, "scaleStyle":Landroid/widget/ImageView$ScaleType;
    iget v5, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1649
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 1650
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1652
    :cond_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v5, v3}, Landroidx/media3/ui/PlayerView;->onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    .line 1653
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1654
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1656
    const/4 v1, 0x1

    return v1

    .line 1659
    .end local v0    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "artworkLayoutAspectRatio":F
    .end local v4    # "scaleStyle":Landroid/widget/ImageView$ScaleType;
    :cond_1
    return v1
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1694
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1695
    return-void

    .line 1697
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1698
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    .line 1699
    return-void
.end method

.method private setImageOutput(Landroidx/media3/common/Player;)V
    .locals 2
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 702
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    goto :goto_1

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 709
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :goto_1
    return-void
.end method

.method private static setResizeModeRaw(Landroidx/media3/ui/AspectRatioFrameLayout;I)V
    .locals 0
    .param p0, "aspectRatioFrame"    # Landroidx/media3/ui/AspectRatioFrameLayout;
    .param p1, "resizeMode"    # I

    .line 1839
    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 1840
    return-void
.end method

.method private shouldShowControllerIndefinitely()Z
    .locals 4

    .line 1547
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1548
    return v1

    .line 1550
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 1551
    .local v0, "playbackState":I
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1552
    const/16 v3, 0x11

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1553
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1556
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Player;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1551
    :goto_0
    return v1
.end method

.method private showController(Z)V
    .locals 2
    .param p1, "showIndefinitely"    # Z

    .line 1560
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1561
    return-void

    .line 1563
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 1564
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->show()V

    .line 1565
    return-void
.end method

.method private showImage()V
    .locals 2

    .line 1734
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1736
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    .line 1738
    :cond_0
    return-void
.end method

.method public static switchTargetView(Landroidx/media3/common/Player;Landroidx/media3/ui/PlayerView;Landroidx/media3/ui/PlayerView;)V
    .locals 1
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p1, "oldPlayerView"    # Landroidx/media3/ui/PlayerView;
    .param p2, "newPlayerView"    # Landroidx/media3/ui/PlayerView;

    .line 614
    if-ne p1, p2, :cond_0

    .line 615
    return-void

    .line 621
    :cond_0
    if-eqz p2, :cond_1

    .line 622
    invoke-virtual {p2, p0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 624
    :cond_1
    if-eqz p1, :cond_2

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 627
    :cond_2
    return-void
.end method

.method private toggleControllerVisibility()V
    .locals 1

    .line 1521
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1524
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_0

    .line 1526
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_2

    .line 1527
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    .line 1529
    :cond_2
    :goto_0
    return-void

    .line 1522
    :cond_3
    :goto_1
    return-void
.end method

.method private updateAspectRatio()V
    .locals 7

    .line 1815
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 1816
    .local v0, "videoSize":Landroidx/media3/common/VideoSize;
    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    .line 1817
    .local v1, "width":I
    iget v2, v0, Landroidx/media3/common/VideoSize;->height:I

    .line 1819
    .local v2, "height":I
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v4, v1

    iget v5, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    .line 1820
    .local v4, "videoAspectRatio":F
    :goto_2
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 1821
    iget-boolean v6, p0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 1820
    :goto_3
    invoke-virtual {p0, v5, v3}, Landroidx/media3/ui/PlayerView;->onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    .line 1822
    return-void
.end method

.method private updateBuffering()V
    .locals 4

    .line 1764
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1765
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1767
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1769
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v3, v1

    .line 1770
    .local v3, "showBufferingSpinner":Z
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    .end local v3    # "showBufferingSpinner":Z
    :cond_3
    return-void
.end method

.method private updateContentDescription()V
    .locals 2

    .line 1793
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1795
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1796
    nop

    .line 1797
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1

    .line 1798
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1799
    :cond_1
    nop

    .line 1796
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1801
    :cond_2
    nop

    .line 1802
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media3/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1801
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1794
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1804
    :goto_2
    return-void
.end method

.method private updateControllerVisibility()V
    .locals 1

    .line 1807
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideController()V

    goto :goto_0

    .line 1810
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    .line 1812
    :goto_0
    return-void
.end method

.method private updateErrorMessage()V
    .locals 4

    .line 1775
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1776
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1779
    return-void

    .line 1781
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1782
    .local v0, "error":Landroidx/media3/common/PlaybackException;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    if-eqz v2, :cond_2

    .line 1783
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    invoke-interface {v2, v0}, Landroidx/media3/common/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 1784
    .local v2, "errorMessage":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1786
    .end local v2    # "errorMessage":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1787
    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1790
    .end local v0    # "error":Landroidx/media3/common/PlaybackException;
    :cond_3
    :goto_1
    return-void
.end method

.method private updateForCurrentTrackSelections(Z)V
    .locals 8
    .param p1, "isNewPlayer"    # Z

    .line 1575
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 1578
    .local v0, "player":Landroidx/media3/common/Player;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1580
    const/16 v3, 0x1e

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1581
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Tracks;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1582
    .local v3, "hasTracks":Z
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 1583
    :cond_1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideArtwork()V

    .line 1584
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    .line 1585
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    .line 1587
    :cond_2
    if-nez v3, :cond_3

    .line 1589
    return-void

    .line 1592
    :cond_3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedVideoTrack()Z

    move-result v4

    .line 1593
    .local v4, "hasSelectedVideoTrack":Z
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedImageTrack()Z

    move-result v5

    .line 1598
    .local v5, "hasSelectedImageTrack":Z
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 1599
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    .line 1600
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    .line 1604
    :cond_4
    iget-object v6, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 1605
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->isImageSet()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v1

    goto :goto_1

    :cond_5
    move v6, v2

    .line 1606
    .local v6, "wasVideoAndImageSet":Z
    :goto_1
    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    if-eqz v6, :cond_6

    .line 1607
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    .line 1608
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->showImage()V

    goto :goto_2

    .line 1609
    :cond_6
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    if-eqz v6, :cond_7

    .line 1610
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    .line 1614
    :cond_7
    :goto_2
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useArtwork()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    .line 1615
    .local v1, "shouldShowArtwork":Z
    :goto_3
    if-eqz v1, :cond_a

    .line 1616
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setArtworkFromMediaMetadata(Landroidx/media3/common/Player;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1617
    return-void

    .line 1619
    :cond_9
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1620
    return-void

    .line 1624
    :cond_a
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hideArtwork()V

    .line 1625
    return-void
.end method

.method private updateImageViewAspectRatio()V
    .locals 7

    .line 1702
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1703
    return-void

    .line 1705
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1706
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 1707
    return-void

    .line 1709
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1710
    .local v1, "drawableWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1711
    .local v2, "drawableHeight":I
    if-lez v1, :cond_5

    if-gtz v2, :cond_2

    goto :goto_0

    .line 1714
    :cond_2
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 1715
    .local v3, "drawableLayoutAspectRatio":F
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 1716
    .local v4, "scaleStyle":Landroid/widget/ImageView$ScaleType;
    iget v5, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1717
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 1718
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1720
    :cond_3
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1721
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v5, v3}, Landroidx/media3/ui/PlayerView;->onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V

    .line 1723
    :cond_4
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1724
    return-void

    .line 1712
    .end local v3    # "drawableLayoutAspectRatio":F
    .end local v4    # "scaleStyle":Landroid/widget/ImageView$ScaleType;
    :cond_5
    :goto_0
    return-void
.end method

.method private useArtwork()Z
    .locals 1

    .line 1513
    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const/4 v0, 0x1

    return v0

    .line 1517
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private useController()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "controller"
        }
        result = true
    .end annotation

    .line 1505
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const/4 v0, 0x1

    return v0

    .line 1509
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1826
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->maybeMarkSyncReadyAndClear()V

    .line 1830
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 933
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 934
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 935
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 939
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    .line 940
    .local v0, "isDpadKey":Z
    const/4 v1, 0x0

    .line 941
    .local v1, "handled":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v3}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 943
    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    .line 944
    const/4 v1, 0x1

    goto :goto_1

    .line 945
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 950
    :cond_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 952
    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_1

    .line 948
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    .line 949
    const/4 v1, 0x1

    .line 954
    :cond_4
    :goto_1
    return v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 966
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v0, "overlayViews":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/AdOverlayInfo;>;"
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1489
    new-instance v1, Landroidx/media3/common/AdOverlayInfo$Builder;

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/AdOverlayInfo$Builder;-><init>(Landroid/view/View;I)V

    .line 1491
    const-string v2, "Transparent overlay does not impact viewability"

    invoke-virtual {v1, v2}, Landroidx/media3/common/AdOverlayInfo$Builder;->setDetailedReason(Ljava/lang/String;)Landroidx/media3/common/AdOverlayInfo$Builder;

    move-result-object v1

    .line 1492
    invoke-virtual {v1}, Landroidx/media3/common/AdOverlayInfo$Builder;->build()Landroidx/media3/common/AdOverlayInfo;

    move-result-object v1

    .line 1489
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_1

    .line 1495
    new-instance v1, Landroidx/media3/common/AdOverlayInfo$Builder;

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/AdOverlayInfo$Builder;-><init>(Landroid/view/View;I)V

    .line 1496
    invoke-virtual {v1}, Landroidx/media3/common/AdOverlayInfo$Builder;->build()Landroidx/media3/common/AdOverlayInfo;

    move-result-object v1

    .line 1495
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1482
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    .line 780
    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 1050
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 1028
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 1005
    iget v0, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 787
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageDisplayMode()I
    .locals 1

    .line 817
    iget v0, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1407
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    .line 632
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 745
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    .line 1419
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 755
    iget v0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .line 1394
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public hideController()V
    .locals 1

    .line 990
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    .line 993
    :cond_0
    return-void
.end method

.method public isControllerFullyVisible()Z
    .locals 1

    .line 972
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$androidx-media3-ui-PlayerView(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 527
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onImageAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->onImageAvailable(Landroid/graphics/Bitmap;)V

    .line 530
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onImageAvailable$1$androidx-media3-ui-PlayerView(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1749
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1750
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedVideoTrack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->showImage()V

    .line 1752
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->closeShutter()V

    .line 1754
    :cond_0
    return-void
.end method

.method protected onContentAspectRatioChanged(Landroidx/media3/ui/AspectRatioFrameLayout;F)V
    .locals 0
    .param p1, "contentFrame"    # Landroidx/media3/ui/AspectRatioFrameLayout;
    .param p2, "aspectRatio"    # F

    .line 1473
    if-eqz p1, :cond_0

    .line 1474
    invoke-virtual {p1, p2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1476
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1458
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1461
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1445
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1448
    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1430
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1433
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    .line 1434
    return v0

    .line 1431
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 1424
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    .line 1425
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2
    .param p1, "artworkDisplayMode"    # I

    .line 770
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 771
    iget v1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eq v1, p1, :cond_2

    .line 772
    iput p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 773
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 775
    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;

    .line 1357
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    .line 1359
    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 1
    .param p1, "animationEnabled"    # Z

    .line 1099
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setAnimationEnabled(Z)V

    .line 1101
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0
    .param p1, "controllerAutoShow"    # Z

    .line 1062
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    .line 1063
    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0
    .param p1, "controllerHideDuringAds"    # Z

    .line 1073
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    .line 1074
    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1
    .param p1, "controllerHideOnTouch"    # Z

    .line 1038
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 1040
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    .line 1041
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1178
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    .line 1180
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    .line 1181
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1
    .param p1, "controllerShowTimeoutMs"    # I

    .line 1017
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iput p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 1019
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->showController()V

    .line 1023
    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/ui/PlayerControlView$VisibilityListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_0

    .line 1118
    return-void

    .line 1121
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView;->removeVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    .line 1124
    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    .line 1125
    if-eqz p1, :cond_2

    .line 1126
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->addVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    .line 1127
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    .line 1129
    :cond_2
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    .line 1087
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->controllerVisibilityListener:Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;

    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 926
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 927
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 928
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    .line 929
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultArtwork"    # Landroid/graphics/drawable/Drawable;

    .line 798
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 799
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 800
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 802
    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0
    .param p1, "enableComposeSurfaceSyncWorkaround"    # Z

    .line 1371
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    .line 1372
    return-void
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p1, "errorMessageProvider":Landroidx/media3/common/ErrorMessageProvider;, "Landroidx/media3/common/ErrorMessageProvider<-Landroidx/media3/common/PlaybackException;>;"
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    if-eq v0, p1, :cond_0

    .line 913
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->errorMessageProvider:Landroidx/media3/common/ErrorMessageProvider;

    .line 914
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    .line 916
    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1
    .param p1, "extraAdGroupTimesMs"    # [J
    .param p2, "extraPlayedAdGroups"    # [Z

    .line 1344
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->setExtraAdGroupMarkers([J[Z)V

    .line 1346
    return-void
.end method

.method public setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    .line 1142
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->fullscreenButtonClickListener:Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;

    .line 1144
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    .line 1145
    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 1
    .param p1, "isFullscreen"    # Z

    .line 1158
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    .line 1160
    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1
    .param p1, "imageDisplayMode"    # I

    .line 807
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 808
    iget v0, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    if-eq v0, p1, :cond_1

    .line 809
    iput p1, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    .line 810
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    .line 812
    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1
    .param p1, "keepContentOnPlayerReset"    # Z

    .line 883
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    .line 884
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 887
    :cond_0
    return-void
.end method

.method public setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V
    .locals 1
    .param p1, "mediaRouteButtonViewProvider"    # Landroidx/media3/common/ViewProvider;

    .line 1287
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V

    .line 1289
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 6
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 649
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

    .line 650
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 651
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    .line 652
    return-void

    .line 655
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 656
    .local v0, "oldPlayer":Landroidx/media3/common/Player;
    const/16 v1, 0x1b

    if-eqz v0, :cond_6

    .line 657
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 658
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 659
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/TextureView;

    .line 661
    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 659
    if-eqz v4, :cond_4

    .line 660
    check-cast v5, Landroid/view/TextureView;

    invoke-interface {v0, v5}, Landroidx/media3/common/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_3

    .line 661
    :cond_4
    instance-of v4, v5, Landroid/view/SurfaceView;

    if-eqz v4, :cond_5

    .line 662
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 665
    :cond_5
    :goto_3
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->clearImageOutput(Landroidx/media3/common/Player;)V

    .line 667
    :cond_6
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v4, :cond_7

    .line 668
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 670
    :cond_7
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    .line 671
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 672
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v4, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 674
    :cond_8
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    .line 675
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    .line 676
    invoke-direct {p0, v2}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    .line 677
    if-eqz p1, :cond_e

    .line 678
    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 679
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    .line 681
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 679
    if-eqz v1, :cond_9

    .line 680
    check-cast v2, Landroid/view/TextureView;

    invoke-interface {p1, v2}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_4

    .line 681
    :cond_9
    instance-of v1, v2, Landroid/view/SurfaceView;

    if-eqz v1, :cond_a

    .line 682
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 684
    :cond_a
    :goto_4
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 685
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Tracks;->isTypeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 687
    :cond_b
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    .line 690
    :cond_c
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v1, :cond_d

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 691
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 693
    :cond_d
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 694
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->setImageOutput(Landroidx/media3/common/Player;)V

    .line 695
    invoke-direct {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    goto :goto_5

    .line 697
    :cond_e
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideController()V

    .line 699
    :goto_5
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1
    .param p1, "repeatToggleModes"    # I

    .line 1234
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    .line 1236
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1
    .param p1, "resizeMode"    # I

    .line 738
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 740
    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1
    .param p1, "showBuffering"    # I

    .line 899
    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    .line 900
    iput p1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    .line 901
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    .line 903
    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1
    .param p1, "showFastForwardButton"    # Z

    .line 1201
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    .line 1203
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .param p1, "showMultiWindowTimeBar"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1299
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    .line 1301
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1
    .param p1, "showNextButton"    # Z

    .line 1223
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    .line 1225
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 1
    .param p1, "showPlayButtonIfSuppressed"    # Z

    .line 1327
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    .line 1329
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1
    .param p1, "showPreviousButton"    # Z

    .line 1212
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    .line 1214
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1
    .param p1, "showRewindButton"    # Z

    .line 1190
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    .line 1192
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1
    .param p1, "showShuffleButton"    # Z

    .line 1245
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    .line 1247
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1
    .param p1, "showSubtitleButton"    # Z

    .line 1256
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    .line 1258
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1
    .param p1, "showVrButton"    # Z

    .line 1267
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 1269
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 857
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 860
    :cond_0
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 1
    .param p1, "timeBarScrubbingEnabled"    # Z

    .line 1312
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerControlView;->setTimeBarScrubbingEnabled(Z)V

    .line 1314
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 1
    .param p1, "useArtwork"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 764
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    .line 765
    return-void
.end method

.method public setUseController(Z)V
    .locals 3
    .param p1, "useController"    # Z

    .line 835
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 836
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setClickable(Z)V

    .line 837
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_4

    .line 838
    return-void

    .line 840
    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    .line 841
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    .line 843
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    .line 841
    if-eqz v0, :cond_5

    .line 842
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    goto :goto_2

    .line 843
    :cond_5
    if-eqz v1, :cond_6

    .line 844
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    .line 845
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 847
    :cond_6
    :goto_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    .line 848
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 724
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_0
    return-void
.end method

.method public showController()V
    .locals 1

    .line 984
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    .line 985
    return-void
.end method
