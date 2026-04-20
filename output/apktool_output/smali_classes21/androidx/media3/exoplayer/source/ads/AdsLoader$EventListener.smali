.class public interface abstract Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public onAdClicked()V
    .locals 0

    .line 92
    return-void
.end method

.method public onAdLoadError(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;Landroidx/media3/datasource/DataSpec;)V
    .locals 0
    .param p1, "error"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;

    .line 89
    return-void
.end method

.method public onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V
    .locals 0
    .param p1, "adPlaybackState"    # Landroidx/media3/common/AdPlaybackState;

    .line 81
    return-void
.end method

.method public onAdTapped()V
    .locals 0

    .line 95
    return-void
.end method
