.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Landroidx/media3/common/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    .line 142
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    .line 152
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 153
    return-void
.end method


# virtual methods
.method public bridge synthetic addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "override"    # Landroidx/media3/common/TrackSelectionOverride;

    .line 665
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 666
    return-object p0
.end method

.method public bridge synthetic build()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 874
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "trackGroup"    # Landroidx/media3/common/TrackGroup;

    .line 673
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 674
    return-object p0
.end method

.method public bridge synthetic clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 697
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 698
    return-object p0
.end method

.method public bridge synthetic clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "trackType"    # I

    .line 689
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 690
    return-object p0
.end method

.method public clearSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 839
    return-object p0
.end method

.method public clearSelectionOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 867
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 868
    return-object p0
.end method

.method public clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "rendererIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 854
    return-object p0
.end method

.method public bridge synthetic clearVideoSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearVideoSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearVideoSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearVideoSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 178
    return-object p0
.end method

.method public bridge synthetic clearViewportSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->clearViewportSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearViewportSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 322
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearViewportSizeConstraints()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 323
    return-object p0
.end method

.method protected bridge synthetic set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "parameters"    # Landroidx/media3/common/TrackSelectionParameters;

    .line 159
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 160
    return-object p0
.end method

.method public setAllowAudioMixedChannelCountAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowAudioMixedChannelCountAdaptiveness"    # Z

    .line 489
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedChannelCountAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 490
    return-object p0
.end method

.method public setAllowAudioMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowAudioMixedDecoderSupportAdaptiveness"    # Z

    .line 506
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 508
    return-object p0
.end method

.method public setAllowAudioMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowAudioMixedMimeTypeAdaptiveness"    # Z

    .line 455
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 456
    return-object p0
.end method

.method public setAllowAudioMixedSampleRateAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowAudioMixedSampleRateAdaptiveness"    # Z

    .line 472
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedSampleRateAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 473
    return-object p0
.end method

.method public setAllowMultipleAdaptiveSelections(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowMultipleAdaptiveSelections"    # Z

    .line 772
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowMultipleAdaptiveSelections(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 773
    return-object p0
.end method

.method public setAllowVideoMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowVideoMixedDecoderSupportAdaptiveness"    # Z

    .line 295
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedDecoderSupportAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 297
    return-object p0
.end method

.method public setAllowVideoMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowVideoMixedMimeTypeAdaptiveness"    # Z

    .line 262
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedMimeTypeAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 263
    return-object p0
.end method

.method public setAllowVideoNonSeamlessAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "allowVideoNonSeamlessAdaptiveness"    # Z

    .line 278
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoNonSeamlessAdaptiveness(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 279
    return-object p0
.end method

.method public bridge synthetic setAudioOffloadPreferences(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setAudioOffloadPreferences(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAudioOffloadPreferences(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "audioOffloadPreferences"    # Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 540
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setAudioOffloadPreferences(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 541
    return-object p0
.end method

.method public setDisabledTextTrackSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "disabledTextTrackSelectionFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 629
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTextTrackSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 630
    return-object p0
.end method

.method public bridge synthetic setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;"
        }
    .end annotation

    .line 705
    .local p1, "disabledTrackTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 706
    return-object p0
.end method

.method public setExceedAudioConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "exceedAudioConstraintsIfNecessary"    # Z

    .line 436
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedAudioConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 437
    return-object p0
.end method

.method public setExceedRendererCapabilitiesIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "exceedRendererCapabilitiesIfNecessary"    # Z

    .line 733
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 734
    return-object p0
.end method

.method public setExceedVideoConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "exceedVideoConstraintsIfNecessary"    # Z

    .line 243
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 244
    return-object p0
.end method

.method public bridge synthetic setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "forceHighestSupportedBitrate"    # Z

    .line 657
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 658
    return-object p0
.end method

.method public bridge synthetic setForceLowestBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceLowestBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setForceLowestBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "forceLowestBitrate"    # Z

    .line 649
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceLowestBitrate(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 650
    return-object p0
.end method

.method public bridge synthetic setIgnoredTextSelectionFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setIgnoredTextSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIgnoredTextSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "ignoredTextSelectionFlags"    # I

    .line 608
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setIgnoredTextSelectionFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 609
    return-object p0
.end method

.method public bridge synthetic setMaxAudioBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAudioBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "maxAudioBitrate"    # I

    .line 420
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 421
    return-object p0
.end method

.method public bridge synthetic setMaxAudioChannelCount(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioChannelCount(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAudioChannelCount(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "maxAudioChannelCount"    # I

    .line 412
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioChannelCount(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 413
    return-object p0
.end method

.method public bridge synthetic setMaxVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "maxVideoBitrate"    # I

    .line 202
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 203
    return-object p0
.end method

.method public bridge synthetic setMaxVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "maxVideoFrameRate"    # I

    .line 194
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 195
    return-object p0
.end method

.method public bridge synthetic setMaxVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "maxVideoWidth"    # I
    .param p2, "maxVideoHeight"    # I

    .line 186
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 187
    return-object p0
.end method

.method public bridge synthetic setMaxVideoSizeSd()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSizeSd()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxVideoSizeSd()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSizeSd()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 170
    return-object p0
.end method

.method public bridge synthetic setMinVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "minVideoBitrate"    # I

    .line 227
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoBitrate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 228
    return-object p0
.end method

.method public bridge synthetic setMinVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "minVideoFrameRate"    # I

    .line 219
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoFrameRate(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 220
    return-object p0
.end method

.method public bridge synthetic setMinVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "minVideoWidth"    # I
    .param p2, "minVideoHeight"    # I

    .line 211
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoSize(II)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 212
    return-object p0
.end method

.method public bridge synthetic setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "override"    # Landroidx/media3/common/TrackSelectionOverride;

    .line 681
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 682
    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLabels([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredAudioLabels"    # [Ljava/lang/String;

    .line 531
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 532
    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredAudioLanguage"    # Ljava/lang/String;

    .line 388
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 389
    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredAudioLanguages"    # [Ljava/lang/String;

    .line 396
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 397
    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 516
    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 523
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 524
    return-object p0
.end method

.method public bridge synthetic setPreferredAudioRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredAudioRoleFlags"    # I

    .line 404
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 405
    return-object p0
.end method

.method public bridge synthetic setPreferredTextLabels([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredTextLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredTextLabels"    # [Ljava/lang/String;

    .line 599
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 600
    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredTextLanguage"    # Ljava/lang/String;

    .line 575
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 576
    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 558
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 559
    return-object p0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 567
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 568
    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredTextLanguages"    # [Ljava/lang/String;

    .line 583
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 584
    return-object p0
.end method

.method public bridge synthetic setPreferredTextRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredTextRoleFlags"    # I

    .line 591
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 592
    return-object p0
.end method

.method public bridge synthetic setPreferredVideoLabels([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredVideoLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredVideoLabels"    # [Ljava/lang/String;

    .line 369
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoLabels([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 370
    return-object p0
.end method

.method public bridge synthetic setPreferredVideoLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredVideoLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredVideoLanguage"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoLanguage(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 355
    return-object p0
.end method

.method public bridge synthetic setPreferredVideoLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredVideoLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredVideoLanguages"    # [Ljava/lang/String;

    .line 361
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoLanguages([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 362
    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 340
    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 347
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 348
    return-object p0
.end method

.method public bridge synthetic setPreferredVideoRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredVideoRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "preferredVideoRoleFlags"    # I

    .line 378
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoRoleFlags(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 379
    return-object p0
.end method

.method public bridge synthetic setPrioritizeImageOverVideoEnabled(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setPrioritizeImageOverVideoEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPrioritizeImageOverVideoEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "isPrioritizeImageOverVideoEnabled"    # Z

    .line 639
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setPrioritizeImageOverVideoEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 640
    return-object p0
.end method

.method public setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "disabled"    # Z

    .line 789
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 790
    return-object p0
.end method

.method public bridge synthetic setSelectTextByDefault(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectTextByDefault(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSelectTextByDefault(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "selectTextByDefault"    # Z

    .line 550
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectTextByDefault(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 551
    return-object p0
.end method

.method public bridge synthetic setSelectUndeterminedTextLanguage(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSelectUndeterminedTextLanguage(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "selectUndeterminedTextLanguage"    # Z

    .line 617
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 618
    return-object p0
.end method

.method public setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "override"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 822
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 823
    return-object p0
.end method

.method public bridge synthetic setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setTrackTypeDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTrackTypeDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "trackType"    # I
    .param p2, "disabled"    # Z

    .line 713
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 714
    return-object p0
.end method

.method public setTunnelingEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "tunnelingEnabled"    # Z

    .line 758
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 759
    return-object p0
.end method

.method public bridge synthetic setViewportSize(IIZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setViewportSize(IIZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "viewportOrientationMayChange"    # Z

    .line 331
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSize(IIZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 332
    return-object p0
.end method

.method public bridge synthetic setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setViewportSizeToPhysicalDisplaySize(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewportOrientationMayChange"    # Z

    .line 314
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 315
    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1
    .param p1, "viewportOrientationMayChange"    # Z

    .line 305
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;->delegate:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSizeToPhysicalDisplaySize(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 306
    return-object p0
.end method
