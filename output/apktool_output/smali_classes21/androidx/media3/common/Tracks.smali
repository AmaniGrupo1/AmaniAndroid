.class public final Landroidx/media3/common/Tracks;
.super Ljava/lang/Object;
.source "Tracks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Tracks$Group;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/common/Tracks;

.field private static final FIELD_TRACK_GROUPS:Ljava/lang/String;


# instance fields
.field private final groups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 273
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    .line 385
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Tracks$Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    .line 285
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Tracks;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 397
    sget-object v0, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 399
    .local v0, "groupBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 401
    :cond_0
    new-instance v1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Landroidx/media3/common/util/BundleCollectionUtil;->fromBundleList(Lcom/google/common/base/Function;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    nop

    .line 402
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Tracks$Group;>;"
    new-instance v2, Landroidx/media3/common/Tracks;

    invoke-direct {v2, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public containsType(I)Z
    .locals 2
    .param p1, "trackType"    # I

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 300
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 301
    const/4 v1, 0x1

    return v1

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 370
    if-ne p0, p1, :cond_0

    .line 371
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/common/Tracks;

    .line 377
    .local v0, "that":Landroidx/media3/common/Tracks;
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 374
    .end local v0    # "that":Landroidx/media3/common/Tracks;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroups()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Tracks$Group;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 382
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 294
    iget-object v0, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTypeSelected(I)Z
    .locals 3
    .param p1, "trackType"    # I

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 360
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    .line 361
    .local v1, "group":Landroidx/media3/common/Tracks$Group;
    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 362
    const/4 v2, 0x1

    return v2

    .line 359
    .end local v1    # "group":Landroidx/media3/common/Tracks$Group;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSupported(I)Z
    .locals 1
    .param p1, "trackType"    # I

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks;->isTypeSupported(IZ)Z

    move-result v0

    return v0
.end method

.method public isTypeSupported(IZ)Z
    .locals 2
    .param p1, "trackType"    # I
    .param p2, "allowExceedsCapabilities"    # Z

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 328
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 329
    iget-object v1, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1, p2}, Landroidx/media3/common/Tracks$Group;->isSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x1

    return v1

    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSupportedOrEmpty(I)Z
    .locals 1
    .param p1, "trackType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Tracks;->isTypeSupportedOrEmpty(IZ)Z

    move-result v0

    return v0
.end method

.method public isTypeSupportedOrEmpty(IZ)Z
    .locals 1
    .param p1, "trackType"    # I
    .param p2, "allowExceedsCapabilities"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-virtual {p0, p1}, Landroidx/media3/common/Tracks;->containsType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Tracks;->isTypeSupported(IZ)Z

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

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/Tracks;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Landroidx/media3/common/util/BundleCollectionUtil;->toBundleArrayList(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    return-object v0
.end method
