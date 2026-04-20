.class final Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
.super Landroid/telephony/TelephonyCallback;
.source "NetworkTypeObserver.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/NetworkTypeObserver$Api31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayInfoCallback"
.end annotation


# instance fields
.field private final instance:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 0
    .param p1, "instance"    # Landroidx/media3/common/util/NetworkTypeObserver;

    .line 284
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 285
    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 286
    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 4
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 290
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    .line 291
    .local v0, "overrideNetworkType":I
    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 295
    .local v1, "is5gNsa":Z
    :goto_1
    iget-object v3, p0, Landroidx/media3/common/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Landroidx/media3/common/util/NetworkTypeObserver;

    if-eqz v1, :cond_2

    const/16 v2, 0xa

    :cond_2
    invoke-static {v3, v2}, Landroidx/media3/common/util/NetworkTypeObserver;->access$300(Landroidx/media3/common/util/NetworkTypeObserver;I)V

    .line 296
    return-void
.end method
