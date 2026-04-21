.class Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x2

.field private static final MSG_PROVISION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field private final callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

.field private cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

.field private currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

.field private currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

.field private currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

.field private final eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/CopyOnWriteMultiset<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlaceholderSession:Z

.field private final keyRequestInfoLock:Ljava/lang/Object;

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private final playClearSamplesWithoutKeys:Z

.field private final playbackLooper:Landroid/os/Looper;

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

.field private referenceCount:I

.field private final referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

.field private requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private final responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B

.field private state:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mediaDrm"    # Landroidx/media3/exoplayer/drm/ExoMediaDrm;
    .param p3, "provisioningManager"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;
    .param p4, "referenceCountListener"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;
    .param p6, "mode"    # I
    .param p7, "playClearSamplesWithoutKeys"    # Z
    .param p8, "isPlaceholderSession"    # Z
    .param p9, "offlineLicenseKeySetId"    # [B
    .param p11, "callback"    # Landroidx/media3/exoplayer/drm/MediaDrmCallback;
    .param p12, "playbackLooper"    # Landroid/os/Looper;
    .param p13, "loadErrorHandlingPolicy"    # Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .param p14, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/media3/exoplayer/drm/ExoMediaDrm;",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 192
    .local p5, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/DrmInitData$SchemeData;>;"
    .local p10, "keyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 195
    :cond_0
    invoke-static {p9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 198
    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 199
    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    .line 200
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 201
    iput p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    .line 202
    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 203
    iput-boolean p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    .line 204
    if-eqz p9, :cond_2

    .line 205
    iput-object p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 210
    :goto_0
    iput-object p10, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 211
    iput-object p11, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    .line 212
    new-instance v0, Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-direct {v0}, Landroidx/media3/common/util/CopyOnWriteMultiset;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 213
    iput-object p13, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 214
    iput-object p14, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 215
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 216
    iput-object p12, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 217
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {v0, p0, p12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestInfoLock:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/MediaDrmCallback;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    return-object v0
.end method

.method private dispatchEvent(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p1, "event":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0}, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 613
    .local v1, "eventDispatcher":Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 614
    .end local v1    # "eventDispatcher":Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method private doLicense(Z)V
    .locals 8
    .param p1, "allowRetry"    # Z
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId"
        }
    .end annotation

    .line 439
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 443
    .local v0, "sessionId":[B
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 472
    :pswitch_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    .line 475
    goto :goto_1

    .line 467
    :pswitch_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 468
    :cond_1
    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_1

    .line 446
    :pswitch_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v1, :cond_2

    .line 447
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_1

    .line 448
    :cond_2
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v4

    .line 450
    .local v4, "licenseDurationRemainingSec":J
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v1, :cond_4

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultDrmSession"

    invoke-static {v3, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    goto :goto_0

    .line 458
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    .line 459
    new-instance v1, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 461
    :cond_5
    iput v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 462
    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 464
    .end local v4    # "licenseDurationRemainingSec":J
    :goto_0
    nop

    .line 479
    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .locals 5

    .line 493
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 496
    :cond_0
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/WidevineUtil;->getLicenseDurationRemainingSec(Landroidx/media3/exoplayer/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 497
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private isOpen()Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 608
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method static synthetic lambda$onError$2(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 590
    move-object v0, p0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onKeyResponse$1(Landroidx/media3/exoplayer/drm/KeyRequestInfo;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0
    .param p0, "keyRequestInfo"    # Landroidx/media3/exoplayer/drm/KeyRequestInfo;
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 552
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded(Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    return-void
.end method

.method static synthetic lambda$openInternal$0(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0
    .param p0, "localState"    # I
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 398
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    return-void
.end method

.method private onError(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorSource"    # I

    .line 586
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 587
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/drm/DrmUtil;->getErrorCodeForMediaDrmException(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 588
    const-string v0, "DefaultDrmSession"

    const-string v1, "DRM session error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    goto :goto_0

    .line 591
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_4

    .line 593
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructResourceBusyException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 600
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 601
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 603
    :cond_3
    return-void

    .line 598
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected Throwable subclass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 520
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 522
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->build()Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    move-result-object v2

    .line 526
    .local v2, "keyRequestInfo":Landroidx/media3/exoplayer/drm/KeyRequestInfo;
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    .line 527
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    instance-of v0, p2, Ljava/lang/Exception;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_1

    goto :goto_3

    .line 535
    :cond_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->data:[B

    .line 537
    .local v0, "responseData":[B
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 543
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 537
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 538
    :try_start_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v3, v1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 541
    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v3, v1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    .line 544
    .local v1, "keySetId":[B
    iget v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    array-length v3, v1

    if-eqz v3, :cond_4

    .line 549
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 551
    :cond_4
    const/4 v3, 0x4

    iput v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 552
    new-instance v3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    .line 556
    .end local v0    # "responseData":[B
    .end local v1    # "keySetId":[B
    :goto_0
    goto :goto_2

    .line 554
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    .line 557
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 530
    :cond_5
    :goto_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    .line 531
    return-void

    .line 527
    .end local v2    # "keyRequestInfo":Landroidx/media3/exoplayer/drm/KeyRequestInfo;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 518
    :cond_6
    :goto_4
    return-void
.end method

.method private onKeysError(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 570
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-nez v0, :cond_2

    .line 571
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 574
    :cond_0
    nop

    .line 576
    if-eqz p2, :cond_1

    .line 577
    const/4 v0, 0x1

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x2

    .line 574
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_2

    .line 572
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 580
    :goto_2
    return-void
.end method

.method private onKeysRequired()V
    .locals 2

    .line 560
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 561
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    .line 564
    :cond_0
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "request"    # Ljava/lang/Object;
    .param p2, "response"    # Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 422
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    move-object v1, p2

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 424
    return-void

    .line 428
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    move-object v1, p2

    check-cast v1, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;->data:[B

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    nop

    .line 434
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    .line 435
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 431
    return-void

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private openInternal()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "sessionId"
        }
        result = true
    .end annotation

    .line 386
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 388
    return v1

    .line 392
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 393
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->setPlayerIdForSession([BLandroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 394
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 395
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 397
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 398
    .local v0, "localState":I
    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/util/Consumer;)V

    .line 399
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    return v1

    .line 403
    .end local v0    # "localState":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    goto :goto_1

    .line 408
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 401
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 402
    .local v0, "e":Landroid/media/NotProvisionedException;
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 410
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    nop

    .line 412
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private postKeyRequest([BIZ)V
    .locals 3
    .param p1, "scope"    # [B
    .param p2, "type"    # I
    .param p3, "allowRetry"    # Z

    .line 502
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestInfoLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :try_start_1
    new-instance v1, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    .line 504
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;->setSchemeDatas(Ljava/util/List;)Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    .line 507
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :try_start_2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, p2, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 509
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    .line 512
    goto :goto_1

    .line 507
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "scope":[B
    .end local p2    # "type":I
    .end local p3    # "allowRetry":Z
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0

    .line 510
    .restart local p1    # "scope":[B
    .restart local p2    # "type":I
    .restart local p3    # "allowRetry":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    .line 513
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private restoreKeys()Z
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sessionId",
            "offlineLicenseKeySetId"
        }
    .end annotation

    .line 484
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    return v0

    .line 486
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    .line 489
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method private verifyPlaybackThread()V
    .locals 3

    .line 618
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nExpected thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 624
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 619
    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 4
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 314
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 315
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session reference count less than zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 319
    :cond_0
    if-eqz p1, :cond_1

    .line 320
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->add(Ljava/lang/Object;)V

    .line 322
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-ne v0, v2, :cond_3

    .line 323
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 324
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DrmRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 325
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 326
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 327
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0

    .line 330
    :cond_3
    if-eqz p1, :cond_4

    .line 331
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 332
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 335
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 337
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {v0, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountIncremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 338
    return-void
.end method

.method public final getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;
    .locals 1

    .line 288
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 289
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    return-object v0
.end method

.method public final getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 275
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 276
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .line 302
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 303
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 1

    .line 281
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 282
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 262
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 263
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .locals 1
    .param p1, "sessionId"    # [B

    .line 222
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 223
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method onMediaDrmEvent(I)V
    .locals 0
    .param p1, "what"    # I

    .line 227
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysRequired()V

    .line 230
    nop

    .line 234
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method onProvisionCompleted()V
    .locals 1

    .line 245
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    .line 248
    :cond_0
    return-void
.end method

.method onProvisionError(Ljava/lang/Exception;Z)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 251
    nop

    .line 253
    if-eqz p2, :cond_0

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    const/4 v0, 0x3

    .line 251
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    .line 256
    return-void
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 1

    .line 268
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 269
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return v0
.end method

.method provision()V
    .locals 3

    .line 239
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 240
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 241
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V

    .line 242
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 296
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 3
    .param p1, "eventDispatcher"    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 342
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 343
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-gtz v0, :cond_0

    .line 344
    const-string v0, "DefaultDrmSession"

    const-string/jumbo v1, "release() called on a session that\'s already fully released."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 347
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-nez v0, :cond_1

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 350
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->release()V

    .line 352
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 353
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 354
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 355
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 356
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 357
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 358
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequestInfo:Landroidx/media3/exoplayer/drm/KeyRequestInfo$Builder;

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 362
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    .line 364
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 367
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 368
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->remove(Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    .line 371
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 374
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {v0, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountDecremented(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 375
    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 309
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->requiresSecureDecoder([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method
