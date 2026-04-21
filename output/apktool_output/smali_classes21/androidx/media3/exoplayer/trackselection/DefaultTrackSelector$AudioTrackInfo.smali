.class final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowMixedMimeTypes:Z

.field private final bitrate:I

.field private final channelCount:I

.field private final hasMainOrNoRoleFlag:Z

.field private final isDefaultSelectionFlag:Z

.field private final isObjectBasedAudio:Z

.field private final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final language:Ljava/lang/String;

.field private final localeLanguageMatchIndex:I

.field private final localeLanguageScore:I

.field private final parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field private final preferredLabelMatchIndex:I

.field private final preferredLanguageIndex:I

.field private final preferredLanguageScore:I

.field private final preferredMimeTypeMatchIndex:I

.field private final preferredRoleFlagsScore:I

.field private final sampleRate:I

.field private final selectionEligibility:I

.field private final usesHardwareAcceleration:Z

.field private final usesPrimaryDecoder:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLcom/google/common/base/Predicate;I)V
    .locals 16
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroup"    # Landroidx/media3/common/TrackGroup;
    .param p3, "trackIndex"    # I
    .param p4, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "formatSupport"    # I
    .param p6, "hasMappedVideoTracks"    # Z
    .param p8, "mixedMimeTypeAdaptationSupport"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/TrackGroup;",
            "I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "IZ",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/common/Format;",
            ">;I)V"
        }
    .end annotation

    .line 4100
    .local p7, "withinAudioChannelCountConstraints":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Landroidx/media3/common/Format;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct/range {p0 .. p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    .line 4101
    iput-object v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 4104
    iget-boolean v3, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioNonSeamlessAdaptiveness:Z

    if-eqz v3, :cond_0

    .line 4105
    const/16 v3, 0x18

    goto :goto_0

    .line 4107
    :cond_0
    const/16 v3, 0x10

    :goto_0
    nop

    .line 4108
    .local v3, "requiredAdaptiveSupport":I
    iget-boolean v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    and-int v4, p8, v3

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->allowMixedMimeTypes:Z

    .line 4111
    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    .line 4112
    nop

    .line 4113
    invoke-static {v2, v5}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v4

    iput-boolean v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    .line 4114
    const/4 v4, 0x0

    .line 4115
    .local v4, "bestLanguageScore":I
    const v7, 0x7fffffff

    .line 4116
    .local v7, "bestLanguageIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 4117
    iget-object v9, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v10, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 4120
    invoke-virtual {v10, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4118
    invoke-static {v9, v10, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v9

    .line 4122
    .local v9, "score":I
    if-lez v9, :cond_2

    .line 4123
    move v7, v8

    .line 4124
    move v4, v9

    .line 4125
    goto :goto_3

    .line 4116
    .end local v9    # "score":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4128
    .end local v8    # "i":I
    :cond_3
    :goto_3
    iput v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 4129
    iput v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    .line 4130
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->roleFlags:I

    iget v9, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioRoleFlags:I

    .line 4131
    invoke-static {v8, v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200(II)I

    move-result v8

    iput v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    .line 4132
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v9, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLabels:Lcom/google/common/collect/ImmutableList;

    invoke-static {v8, v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4300(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I

    move-result v8

    iput v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLabelMatchIndex:I

    .line 4133
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->roleFlags:I

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->roleFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v8, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v6

    :goto_5
    iput-boolean v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 4134
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_6

    move v8, v6

    goto :goto_6

    :cond_6
    move v8, v5

    :goto_6
    iput-boolean v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    .line 4135
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    invoke-static {v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4600(Landroidx/media3/common/Format;)Z

    move-result v8

    iput-boolean v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isObjectBasedAudio:Z

    .line 4136
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->channelCount:I

    iput v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    .line 4137
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->sampleRate:I

    iput v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    .line 4138
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->bitrate:I

    iput v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 4139
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->bitrate:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->bitrate:I

    iget v10, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt v8, v10, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v9, p7

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->channelCount:I

    if-eq v8, v9, :cond_9

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v8, v8, Landroidx/media3/common/Format;->channelCount:I

    iget v9, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt v8, v9, :cond_7

    :cond_9
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    .line 4143
    move-object/from16 v9, p7

    invoke-interface {v9, v8}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v6

    goto :goto_9

    :cond_a
    :goto_8
    move v8, v5

    :goto_9
    iput-boolean v8, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    .line 4144
    invoke-static {}, Landroidx/media3/common/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object v8

    .line 4145
    .local v8, "localeLanguages":[Ljava/lang/String;
    const v10, 0x7fffffff

    .line 4146
    .local v10, "bestLocaleMatchIndex":I
    const/4 v11, 0x0

    .line 4147
    .local v11, "bestLocaleMatchScore":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a
    array-length v13, v8

    if-ge v12, v13, :cond_c

    .line 4148
    iget-object v13, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    aget-object v14, v8, v12

    .line 4149
    invoke-static {v13, v14, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v13

    .line 4151
    .local v13, "score":I
    if-lez v13, :cond_b

    .line 4152
    move v10, v12

    .line 4153
    move v11, v13

    .line 4154
    goto :goto_b

    .line 4147
    .end local v13    # "score":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 4157
    .end local v12    # "i":I
    :cond_c
    :goto_b
    iput v10, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 4158
    iput v11, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    .line 4159
    const v12, 0x7fffffff

    .line 4160
    .local v12, "bestMimeTypeMatchIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c
    iget-object v14, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v14}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v14

    if-ge v13, v14, :cond_e

    .line 4161
    iget-object v14, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v14, v14, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v14, :cond_d

    iget-object v14, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v14, v14, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v15, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 4162
    invoke-virtual {v15, v13}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 4163
    move v12, v13

    .line 4164
    goto :goto_d

    .line 4160
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 4167
    .end local v13    # "i":I
    :cond_e
    :goto_d
    iput v12, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 4168
    nop

    .line 4169
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->getDecoderSupport(I)I

    move-result v13

    const/16 v14, 0x80

    if-ne v13, v14, :cond_f

    move v13, v6

    goto :goto_e

    :cond_f
    move v13, v5

    :goto_e
    iput-boolean v13, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    .line 4171
    nop

    .line 4172
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result v13

    const/16 v14, 0x40

    if-ne v13, v14, :cond_10

    move v5, v6

    :cond_10
    iput-boolean v5, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    .line 4174
    nop

    .line 4175
    move/from16 v5, p6

    invoke-direct {v0, v2, v5, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->evaluateSelectionEligibility(IZI)I

    move-result v6

    iput v6, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->selectionEligibility:I

    .line 4177
    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 4285
    .local p0, "infos1":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    .local p1, "infos2":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result v0

    return v0
.end method

.method public static createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;I)Lcom/google/common/collect/ImmutableList;
    .locals 11
    .param p0, "rendererIndex"    # I
    .param p1, "trackGroup"    # Landroidx/media3/common/TrackGroup;
    .param p2, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p3, "formatSupport"    # [I
    .param p4, "hasMappedVideoTracks"    # Z
    .param p6, "mixedMimeTypeAdaptationSupport"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/TrackGroup;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[IZ",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/common/Format;",
            ">;I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;"
        }
    .end annotation

    .line 4053
    .local p5, "withinAudioChannelCountConstraints":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Landroidx/media3/common/Format;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 4054
    .local v0, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_0
    iget v1, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_0

    .line 4055
    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    aget v7, p3, v5

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLcom/google/common/base/Predicate;I)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4054
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4066
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private evaluateSelectionEligibility(IZI)I
    .locals 4
    .param p1, "rendererSupport"    # I
    .param p2, "hasMappedVideoTracks"    # Z
    .param p3, "requiredAdaptiveSupport"    # I

    .line 4261
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4262
    return v1

    .line 4264
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v0, :cond_1

    .line 4265
    return v1

    .line 4267
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    .line 4268
    invoke-static {v0, p1, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4700(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4269
    return v1

    .line 4278
    :cond_2
    nop

    .line 4271
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget v0, v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-eq v0, v2, :cond_4

    and-int v0, p1, p3

    if-eqz v0, :cond_4

    .line 4279
    goto :goto_0

    .line 4280
    :cond_4
    const/4 v2, 0x1

    .line 4271
    :goto_0
    return v2
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I
    .locals 5
    .param p1, "other"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    .line 4205
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_0

    .line 4206
    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4500()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_0

    .line 4207
    :cond_0
    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4500()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    :goto_0
    nop

    .line 4209
    .local v0, "qualityOrdering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    .line 4210
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 4214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 4215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4216
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 4213
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    .line 4217
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    .line 4218
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLabelMatchIndex:I

    .line 4220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLabelMatchIndex:I

    .line 4221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4222
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 4219
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    .line 4224
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 4225
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 4227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 4228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4229
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 4226
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    .line 4230
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    .line 4232
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 4234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 4235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4236
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 4233
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4237
    .local v1, "comparisonChain":Lcom/google/common/collect/ComparisonChain;
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v2, :cond_1

    .line 4238
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 4239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4500()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4242
    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    .line 4244
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v4, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    .line 4245
    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isObjectBasedAudio:Z

    iget-boolean v4, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isObjectBasedAudio:Z

    .line 4247
    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    .line 4248
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    .line 4249
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4250
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4252
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    .line 4254
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4042
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p1

    return p1
.end method

.method public getSelectionEligibility()I
    .locals 1

    .line 4181
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)Z
    .locals 3
    .param p1, "otherTrack"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    .line 4186
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->channelCount:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->channelCount:I

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v2, :cond_3

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->allowMixedMimeTypes:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 4191
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 4186
    :goto_1
    return v0
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4042
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)Z

    move-result p1

    return p1
.end method
