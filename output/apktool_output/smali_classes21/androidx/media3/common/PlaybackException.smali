.class public Landroidx/media3/common/PlaybackException;
.super Ljava/lang/Exception;
.source "PlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/PlaybackException$ErrorCode;
    }
.end annotation


# static fields
.field public static final CUSTOM_ERROR_CODE_BASE:I = 0xf4240

.field public static final ERROR_CODE_AUDIO_TRACK_INIT_FAILED:I = 0x1389

.field public static final ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED:I = 0x138c

.field public static final ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED:I = 0x138b

.field public static final ERROR_CODE_AUDIO_TRACK_WRITE_FAILED:I = 0x138a

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = -0x66

.field public static final ERROR_CODE_BAD_VALUE:I = -0x3

.field public static final ERROR_CODE_BEHIND_LIVE_WINDOW:I = 0x3ea

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = -0x68

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = -0x6e

.field public static final ERROR_CODE_DECODER_INIT_FAILED:I = 0xfa1

.field public static final ERROR_CODE_DECODER_QUERY_FAILED:I = 0xfa2

.field public static final ERROR_CODE_DECODING_FAILED:I = 0xfa3

.field public static final ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES:I = 0xfa4

.field public static final ERROR_CODE_DECODING_FORMAT_UNSUPPORTED:I = 0xfa5

.field public static final ERROR_CODE_DECODING_RESOURCES_RECLAIMED:I = 0xfa6

.field public static final ERROR_CODE_DISCONNECTED:I = -0x64

.field public static final ERROR_CODE_DRM_CONTENT_ERROR:I = 0x1773

.field public static final ERROR_CODE_DRM_DEVICE_REVOKED:I = 0x1777

.field public static final ERROR_CODE_DRM_DISALLOWED_OPERATION:I = 0x1775

.field public static final ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED:I = 0x1774

.field public static final ERROR_CODE_DRM_LICENSE_EXPIRED:I = 0x1778

.field public static final ERROR_CODE_DRM_PROVISIONING_FAILED:I = 0x1772

.field public static final ERROR_CODE_DRM_SCHEME_UNSUPPORTED:I = 0x1771

.field public static final ERROR_CODE_DRM_SYSTEM_ERROR:I = 0x1776

.field public static final ERROR_CODE_DRM_UNSPECIFIED:I = 0x1770

.field public static final ERROR_CODE_END_OF_PLAYLIST:I = -0x6d

.field public static final ERROR_CODE_FAILED_RUNTIME_CHECK:I = 0x3ec

.field public static final ERROR_CODE_INVALID_STATE:I = -0x2

.field public static final ERROR_CODE_IO_BAD_HTTP_STATUS:I = 0x7d4

.field public static final ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED:I = 0x7d7

.field public static final ERROR_CODE_IO_FILE_NOT_FOUND:I = 0x7d5

.field public static final ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE:I = 0x7d3

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_FAILED:I = 0x7d1

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT:I = 0x7d2

.field public static final ERROR_CODE_IO_NO_PERMISSION:I = 0x7d6

.field public static final ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE:I = 0x7d8

.field public static final ERROR_CODE_IO_UNSPECIFIED:I = 0x7d0

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = -0x6a

.field public static final ERROR_CODE_NOT_SUPPORTED:I = -0x6

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = -0x69

.field public static final ERROR_CODE_PARSING_CONTAINER_MALFORMED:I = 0xbb9

.field public static final ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED:I = 0xbbb

.field public static final ERROR_CODE_PARSING_MANIFEST_MALFORMED:I = 0xbba

.field public static final ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED:I = 0xbbc

.field public static final ERROR_CODE_PERMISSION_DENIED:I = -0x4

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = -0x67

.field public static final ERROR_CODE_REMOTE_ERROR:I = 0x3e9

.field public static final ERROR_CODE_SETUP_REQUIRED:I = -0x6c

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = -0x6b

.field public static final ERROR_CODE_TIMEOUT:I = 0x3eb

.field public static final ERROR_CODE_UNSPECIFIED:I = 0x3e8

.field public static final ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED:I = 0x1b59

.field public static final ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED:I = 0x1b58

.field private static final FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

.field protected static final FIELD_CUSTOM_ID_BASE:I = 0x3e8

.field private static final FIELD_INT_ERROR_CODE:Ljava/lang/String;

.field private static final FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

.field private static final FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

.field private static final FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

.field private static final FIELD_STRING_MESSAGE:Ljava/lang/String;


# instance fields
.field public final errorCode:I

.field public final extras:Landroid/os/Bundle;

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 587
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    .line 588
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    .line 589
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    .line 590
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    .line 591
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    .line 592
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 516
    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    .line 517
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    invoke-static {p1}, Landroidx/media3/common/PlaybackException;->getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;

    move-result-object v3

    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    .line 519
    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 521
    invoke-static {p1}, Landroidx/media3/common/PlaybackException;->getExtrasFromBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 522
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 516
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    .line 524
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I

    .line 492
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "cause":Ljava/lang/Throwable;
    .end local p3    # "errorCode":I
    .local v1, "message":Ljava/lang/String;
    .local v2, "cause":Ljava/lang/Throwable;
    .local v3, "errorCode":I
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    .line 493
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 510
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "cause":Ljava/lang/Throwable;
    .end local p3    # "errorCode":I
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v2, "message":Ljava/lang/String;
    .local v3, "cause":Ljava/lang/Throwable;
    .local v4, "errorCode":I
    .local v5, "extras":Landroid/os/Bundle;
    invoke-direct/range {v1 .. v7}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    .line 511
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "errorCode"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "timestampMs"    # J

    .line 534
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    iput p3, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 536
    iput-object p4, p0, Landroidx/media3/common/PlaybackException;->extras:Landroid/os/Bundle;

    .line 537
    iput-wide p5, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    .line 538
    return-void
.end method

.method public static areErrorInfosEqual(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/PlaybackException;)Z
    .locals 1
    .param p0, "playbackException1"    # Landroidx/media3/common/PlaybackException;
    .param p1, "playbackException2"    # Landroidx/media3/common/PlaybackException;

    .line 581
    if-eqz p0, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Landroidx/media3/common/PlaybackException;->errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z

    move-result v0

    return v0

    .line 584
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 636
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 630
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/PlaybackException;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 606
    new-instance v0, Landroidx/media3/common/PlaybackException;

    invoke-direct {v0, p0}, Landroidx/media3/common/PlaybackException;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 646
    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "causeClassName":Ljava/lang/String;
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "causeMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 649
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 651
    :try_start_0
    const-class v3, Landroidx/media3/common/PlaybackException;

    .line 653
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 652
    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 654
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    invoke-static {v3, v1}, Landroidx/media3/common/PlaybackException;->createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 661
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-nez v2, :cond_1

    .line 664
    goto :goto_0

    .line 657
    :catchall_0
    move-exception v3

    .line 661
    if-nez v2, :cond_1

    .line 664
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/PlaybackException;->createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v2

    .line 668
    :cond_1
    return-object v2
.end method

.method public static getErrorCodeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .line 348
    sparse-switch p0, :sswitch_data_0

    .line 456
    const v0, 0xf4240

    if-lt p0, v0, :cond_0

    .line 457
    const-string v0, "custom error code"

    return-object v0

    .line 454
    :sswitch_0
    const-string v0, "ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED"

    return-object v0

    .line 452
    :sswitch_1
    const-string v0, "ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED"

    return-object v0

    .line 450
    :sswitch_2
    const-string v0, "ERROR_CODE_DRM_LICENSE_EXPIRED"

    return-object v0

    .line 448
    :sswitch_3
    const-string v0, "ERROR_CODE_DRM_DEVICE_REVOKED"

    return-object v0

    .line 446
    :sswitch_4
    const-string v0, "ERROR_CODE_DRM_SYSTEM_ERROR"

    return-object v0

    .line 444
    :sswitch_5
    const-string v0, "ERROR_CODE_DRM_DISALLOWED_OPERATION"

    return-object v0

    .line 442
    :sswitch_6
    const-string v0, "ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED"

    return-object v0

    .line 440
    :sswitch_7
    const-string v0, "ERROR_CODE_DRM_CONTENT_ERROR"

    return-object v0

    .line 438
    :sswitch_8
    const-string v0, "ERROR_CODE_DRM_PROVISIONING_FAILED"

    return-object v0

    .line 436
    :sswitch_9
    const-string v0, "ERROR_CODE_DRM_SCHEME_UNSUPPORTED"

    return-object v0

    .line 434
    :sswitch_a
    const-string v0, "ERROR_CODE_DRM_UNSPECIFIED"

    return-object v0

    .line 432
    :sswitch_b
    const-string v0, "ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED"

    return-object v0

    .line 430
    :sswitch_c
    const-string v0, "ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED"

    return-object v0

    .line 428
    :sswitch_d
    const-string v0, "ERROR_CODE_AUDIO_TRACK_WRITE_FAILED"

    return-object v0

    .line 426
    :sswitch_e
    const-string v0, "ERROR_CODE_AUDIO_TRACK_INIT_FAILED"

    return-object v0

    .line 424
    :sswitch_f
    const-string v0, "ERROR_CODE_DECODING_RESOURCES_RECLAIMED"

    return-object v0

    .line 422
    :sswitch_10
    const-string v0, "ERROR_CODE_DECODING_FORMAT_UNSUPPORTED"

    return-object v0

    .line 420
    :sswitch_11
    const-string v0, "ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES"

    return-object v0

    .line 418
    :sswitch_12
    const-string v0, "ERROR_CODE_DECODING_FAILED"

    return-object v0

    .line 416
    :sswitch_13
    const-string v0, "ERROR_CODE_DECODER_QUERY_FAILED"

    return-object v0

    .line 414
    :sswitch_14
    const-string v0, "ERROR_CODE_DECODER_INIT_FAILED"

    return-object v0

    .line 412
    :sswitch_15
    const-string v0, "ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED"

    return-object v0

    .line 410
    :sswitch_16
    const-string v0, "ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED"

    return-object v0

    .line 408
    :sswitch_17
    const-string v0, "ERROR_CODE_PARSING_MANIFEST_MALFORMED"

    return-object v0

    .line 406
    :sswitch_18
    const-string v0, "ERROR_CODE_PARSING_CONTAINER_MALFORMED"

    return-object v0

    .line 404
    :sswitch_19
    const-string v0, "ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE"

    return-object v0

    .line 402
    :sswitch_1a
    const-string v0, "ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED"

    return-object v0

    .line 400
    :sswitch_1b
    const-string v0, "ERROR_CODE_IO_NO_PERMISSION"

    return-object v0

    .line 398
    :sswitch_1c
    const-string v0, "ERROR_CODE_IO_FILE_NOT_FOUND"

    return-object v0

    .line 396
    :sswitch_1d
    const-string v0, "ERROR_CODE_IO_BAD_HTTP_STATUS"

    return-object v0

    .line 394
    :sswitch_1e
    const-string v0, "ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE"

    return-object v0

    .line 392
    :sswitch_1f
    const-string v0, "ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT"

    return-object v0

    .line 390
    :sswitch_20
    const-string v0, "ERROR_CODE_IO_NETWORK_CONNECTION_FAILED"

    return-object v0

    .line 388
    :sswitch_21
    const-string v0, "ERROR_CODE_IO_UNSPECIFIED"

    return-object v0

    .line 386
    :sswitch_22
    const-string v0, "ERROR_CODE_FAILED_RUNTIME_CHECK"

    return-object v0

    .line 384
    :sswitch_23
    const-string v0, "ERROR_CODE_TIMEOUT"

    return-object v0

    .line 382
    :sswitch_24
    const-string v0, "ERROR_CODE_BEHIND_LIVE_WINDOW"

    return-object v0

    .line 380
    :sswitch_25
    const-string v0, "ERROR_CODE_REMOTE_ERROR"

    return-object v0

    .line 378
    :sswitch_26
    const-string v0, "ERROR_CODE_UNSPECIFIED"

    return-object v0

    .line 350
    :sswitch_27
    const-string v0, "ERROR_CODE_INVALID_STATE"

    return-object v0

    .line 352
    :sswitch_28
    const-string v0, "ERROR_CODE_BAD_VALUE"

    return-object v0

    .line 354
    :sswitch_29
    const-string v0, "ERROR_CODE_PERMISSION_DENIED"

    return-object v0

    .line 356
    :sswitch_2a
    const-string v0, "ERROR_CODE_NOT_SUPPORTED"

    return-object v0

    .line 358
    :sswitch_2b
    const-string v0, "ERROR_CODE_DISCONNECTED"

    return-object v0

    .line 360
    :sswitch_2c
    const-string v0, "ERROR_CODE_AUTHENTICATION_EXPIRED"

    return-object v0

    .line 362
    :sswitch_2d
    const-string v0, "ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED"

    return-object v0

    .line 364
    :sswitch_2e
    const-string v0, "ERROR_CODE_CONCURRENT_STREAM_LIMIT"

    return-object v0

    .line 366
    :sswitch_2f
    const-string v0, "ERROR_CODE_PARENTAL_CONTROL_RESTRICTED"

    return-object v0

    .line 368
    :sswitch_30
    const-string v0, "ERROR_CODE_NOT_AVAILABLE_IN_REGION"

    return-object v0

    .line 370
    :sswitch_31
    const-string v0, "ERROR_CODE_SKIP_LIMIT_REACHED"

    return-object v0

    .line 372
    :sswitch_32
    const-string v0, "ERROR_CODE_SETUP_REQUIRED"

    return-object v0

    .line 374
    :sswitch_33
    const-string v0, "ERROR_CODE_END_OF_PLAYLIST"

    return-object v0

    .line 376
    :sswitch_34
    const-string v0, "ERROR_CODE_CONTENT_ALREADY_PLAYING"

    return-object v0

    .line 459
    :cond_0
    const-string v0, "invalid error code"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_34
        -0x6d -> :sswitch_33
        -0x6c -> :sswitch_32
        -0x6b -> :sswitch_31
        -0x6a -> :sswitch_30
        -0x69 -> :sswitch_2f
        -0x68 -> :sswitch_2e
        -0x67 -> :sswitch_2d
        -0x66 -> :sswitch_2c
        -0x64 -> :sswitch_2b
        -0x6 -> :sswitch_2a
        -0x4 -> :sswitch_29
        -0x3 -> :sswitch_28
        -0x2 -> :sswitch_27
        0x3e8 -> :sswitch_26
        0x3e9 -> :sswitch_25
        0x3ea -> :sswitch_24
        0x3eb -> :sswitch_23
        0x3ec -> :sswitch_22
        0x7d0 -> :sswitch_21
        0x7d1 -> :sswitch_20
        0x7d2 -> :sswitch_1f
        0x7d3 -> :sswitch_1e
        0x7d4 -> :sswitch_1d
        0x7d5 -> :sswitch_1c
        0x7d6 -> :sswitch_1b
        0x7d7 -> :sswitch_1a
        0x7d8 -> :sswitch_19
        0xbb9 -> :sswitch_18
        0xbba -> :sswitch_17
        0xbbb -> :sswitch_16
        0xbbc -> :sswitch_15
        0xfa1 -> :sswitch_14
        0xfa2 -> :sswitch_13
        0xfa3 -> :sswitch_12
        0xfa4 -> :sswitch_11
        0xfa5 -> :sswitch_10
        0xfa6 -> :sswitch_f
        0x1389 -> :sswitch_e
        0x138a -> :sswitch_d
        0x138b -> :sswitch_c
        0x138c -> :sswitch_b
        0x1770 -> :sswitch_a
        0x1771 -> :sswitch_9
        0x1772 -> :sswitch_8
        0x1773 -> :sswitch_7
        0x1774 -> :sswitch_6
        0x1775 -> :sswitch_5
        0x1776 -> :sswitch_4
        0x1777 -> :sswitch_3
        0x1778 -> :sswitch_2
        0x1b58 -> :sswitch_1
        0x1b59 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getExtrasFromBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 640
    sget-object v0, Landroidx/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->convertToNullIfInvalid(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 641
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z
    .locals 8
    .param p1, "other"    # Landroidx/media3/common/PlaybackException;

    .line 549
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 550
    return v0

    .line 552
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 557
    .local v2, "thisCause":Ljava/lang/Throwable;
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 558
    .local v3, "thatCause":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 559
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 560
    return v1

    .line 562
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 563
    return v1

    .line 565
    :cond_3
    if-nez v2, :cond_6

    if-eqz v3, :cond_4

    goto :goto_1

    .line 568
    :cond_4
    iget v4, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    iget v5, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    if-ne v4, v5, :cond_5

    .line 569
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v4, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    iget-wide v6, p1, Landroidx/media3/common/PlaybackException;->timestampMs:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    .line 568
    :goto_0
    return v0

    .line 566
    :cond_6
    :goto_1
    return v1

    .line 553
    .end local v2    # "thisCause":Ljava/lang/Throwable;
    .end local v3    # "thatCause":Ljava/lang/Throwable;
    :cond_7
    :goto_2
    return v1
.end method

.method public final getErrorCodeName()Ljava/lang/String;
    .locals 1

    .line 469
    iget v0, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v0}, Landroidx/media3/common/PlaybackException;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 614
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_INT_ERROR_CODE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_LONG_TIMESTAMP_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/PlaybackException;->timestampMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 616
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_STRING_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    sget-object v1, Landroidx/media3/common/PlaybackException;->FIELD_BUNDLE_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/PlaybackException;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 618
    invoke-virtual {p0}, Landroidx/media3/common/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 619
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 620
    sget-object v2, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sget-object v2, Landroidx/media3/common/PlaybackException;->FIELD_STRING_CAUSE_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    return-object v0
.end method
