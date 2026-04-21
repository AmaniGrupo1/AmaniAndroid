.class final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;
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
    name = "TextTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final hasCaptionRoleFlags:Z

.field private final isDefault:Z

.field private final isForced:Z

.field private final isWithinRendererCapabilities:Z

.field private final preferredLabelMatchIndex:I

.field private final preferredLanguageIndex:I

.field private final preferredLanguageScore:I

.field private final preferredRoleFlagsScore:I

.field private final selectedAudioLanguageScore:I

.field private final selectionEligibility:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroup"    # Landroidx/media3/common/TrackGroup;
    .param p3, "trackIndex"    # I
    .param p4, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p5, "trackFormatSupport"    # I
    .param p6, "selectedAudioLanguage"    # Ljava/lang/String;
    .param p7, "preferredCaptioningLanguage"    # Ljava/lang/String;

    .line 4333
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct/range {p0 .. p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    .line 4334
    nop

    .line 4335
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 4336
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->selectionFlags:I

    iget v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->ignoredTextSelectionFlags:I

    not-int v4, v4

    and-int/2addr v3, v4

    .line 4337
    .local v3, "maskedSelectionFlags":I
    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    .line 4338
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput-boolean v4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 4339
    const v4, 0x7fffffff

    .line 4340
    .local v4, "bestLanguageIndex":I
    const/4 v6, 0x0

    .line 4344
    .local v6, "bestLanguageScore":I
    if-eqz p7, :cond_2

    .line 4345
    invoke-static/range {p7 .. p7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    goto :goto_2

    .line 4346
    :cond_2
    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4347
    const-string v7, ""

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    goto :goto_2

    .line 4348
    :cond_3
    iget-object v7, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :goto_2
    nop

    .line 4349
    .local v7, "preferredLanguages":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 4350
    iget-object v9, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Landroidx/media3/common/Format;

    .line 4352
    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-boolean v11, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 4351
    invoke-static {v9, v10, v11}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v9

    .line 4353
    .local v9, "score":I
    if-lez v9, :cond_4

    .line 4354
    move v4, v8

    .line 4355
    move v6, v9

    .line 4356
    goto :goto_4

    .line 4349
    .end local v9    # "score":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4359
    .end local v8    # "i":I
    :cond_5
    :goto_4
    iput v4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4360
    iput v6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    .line 4362
    const/16 v8, 0x440

    if-eqz p7, :cond_6

    .line 4363
    move v9, v8

    goto :goto_5

    .line 4364
    :cond_6
    iget v9, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredTextRoleFlags:I

    :goto_5
    nop

    .line 4365
    .local v9, "preferredRoleFlags":I
    iget-object v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Landroidx/media3/common/Format;

    iget v10, v10, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {v10, v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200(II)I

    move-result v10

    iput v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 4366
    iget-object v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Landroidx/media3/common/Format;

    iget v10, v10, Landroidx/media3/common/Format;->roleFlags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_7

    move v8, v5

    goto :goto_6

    :cond_7
    move v8, v2

    :goto_6
    iput-boolean v8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    .line 4368
    iget-object v8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v10, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredTextLabels:Lcom/google/common/collect/ImmutableList;

    invoke-static {v8, v10}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4300(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I

    move-result v8

    iput v8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLabelMatchIndex:I

    .line 4369
    nop

    .line 4370
    invoke-static/range {p6 .. p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    move v8, v5

    goto :goto_7

    :cond_8
    move v8, v2

    .line 4371
    .local v8, "selectedAudioLanguageUndetermined":Z
    :goto_7
    iget-object v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->format:Landroidx/media3/common/Format;

    .line 4372
    move-object/from16 v11, p6

    invoke-static {v10, v11, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v10

    iput v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    .line 4373
    iget v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    if-gtz v10, :cond_d

    iget-object v10, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 4375
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    if-gtz v10, :cond_d

    :cond_9
    iget-object v10, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 4376
    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLabelMatchIndex:I

    const v12, 0x7fffffff

    if-ne v10, v12, :cond_d

    :cond_a
    iget-boolean v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    if-nez v10, :cond_d

    iget-boolean v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    if-eqz v10, :cond_b

    iget v10, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    if-gtz v10, :cond_d

    :cond_b
    iget-boolean v10, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectTextByDefault:Z

    if-eqz v10, :cond_c

    goto :goto_8

    :cond_c
    move v10, v2

    goto :goto_9

    :cond_d
    :goto_8
    move v10, v5

    .line 4381
    .local v10, "isWithinConstraints":Z
    :goto_9
    nop

    .line 4383
    iget-boolean v12, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 4382
    invoke-static {v1, v12}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v10, :cond_e

    .line 4384
    move v2, v5

    goto :goto_a

    .line 4385
    :cond_e
    nop

    :goto_a
    iput v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    .line 4386
    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 4432
    .local p0, "infos1":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    .local p1, "infos2":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result v0

    return v0
.end method

.method public static createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .param p0, "rendererIndex"    # I
    .param p1, "trackGroup"    # Landroidx/media3/common/TrackGroup;
    .param p2, "params"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p3, "formatSupport"    # [I
    .param p4, "selectedAudioLanguage"    # Ljava/lang/String;
    .param p5, "preferredCaptioningLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/TrackGroup;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;",
            ">;"
        }
    .end annotation

    .line 4299
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 4300
    .local v0, "listBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_0
    iget v1, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v5, v1, :cond_0

    .line 4301
    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    aget v7, p3, v5

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p4

    move-object v9, p5

    .end local p0    # "rendererIndex":I
    .end local p1    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local p2    # "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .end local p4    # "selectedAudioLanguage":Ljava/lang/String;
    .end local p5    # "preferredCaptioningLanguage":Ljava/lang/String;
    .local v3, "rendererIndex":I
    .local v4, "trackGroup":Landroidx/media3/common/TrackGroup;
    .local v6, "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .local v8, "selectedAudioLanguage":Ljava/lang/String;
    .local v9, "preferredCaptioningLanguage":Ljava/lang/String;
    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4300
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v3    # "rendererIndex":I
    .end local v4    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v6    # "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .end local v8    # "selectedAudioLanguage":Ljava/lang/String;
    .end local v9    # "preferredCaptioningLanguage":Ljava/lang/String;
    .restart local p0    # "rendererIndex":I
    .restart local p1    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .restart local p2    # "params":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .restart local p4    # "selectedAudioLanguage":Ljava/lang/String;
    .restart local p5    # "preferredCaptioningLanguage":Ljava/lang/String;
    :cond_0
    move v3, p0

    .line 4311
    .end local v5    # "i":I
    .end local p0    # "rendererIndex":I
    .restart local v3    # "rendererIndex":I
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I
    .locals 4
    .param p1, "other"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 4401
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isWithinRendererCapabilities:Z

    .line 4402
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageIndex:I

    .line 4407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4408
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 4405
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    .line 4409
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    .line 4410
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLabelMatchIndex:I

    .line 4412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLabelMatchIndex:I

    .line 4413
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4414
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 4411
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isDefault:Z

    .line 4416
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 4418
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isForced:Z

    .line 4419
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4423
    iget v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredLanguageScore:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 4417
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    iget v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectedAudioLanguageScore:I

    .line 4424
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 4425
    .local v0, "chain":Lcom/google/common/collect/ComparisonChain;
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->preferredRoleFlagsScore:I

    if-nez v1, :cond_1

    .line 4426
    iget-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    iget-boolean v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->hasCaptionRoleFlags:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 4428
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v1

    return v1
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

    .line 4289
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)I

    move-result p1

    return p1
.end method

.method public getSelectionEligibility()I
    .locals 1

    .line 4390
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->selectionEligibility:I

    return v0
.end method

.method public isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)Z
    .locals 1
    .param p1, "otherTrack"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 4395
    const/4 v0, 0x0

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

    .line 4289
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;->isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;)Z

    move-result p1

    return p1
.end method
