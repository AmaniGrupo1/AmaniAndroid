.class public final Landroidx/media3/container/Mp4Box$ContainerBox;
.super Landroidx/media3/container/Mp4Box;
.source "Mp4Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/Mp4Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerBox"
.end annotation


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field public final endPosition:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/container/Mp4Box$LeafBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "endPosition"    # J

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/container/Mp4Box;-><init>(ILandroidx/media3/container/Mp4Box$1;)V

    .line 538
    iput-wide p2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->endPosition:J

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    .line 541
    return-void
.end method


# virtual methods
.method public add(Landroidx/media3/container/Mp4Box$ContainerBox;)V
    .locals 1
    .param p1, "box"    # Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 558
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public add(Landroidx/media3/container/Mp4Box$LeafBox;)V
    .locals 1
    .param p1, "box"    # Landroidx/media3/container/Mp4Box$LeafBox;

    .line 549
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public getContainerBoxOfType(I)Landroidx/media3/container/Mp4Box$ContainerBox;
    .locals 4
    .param p1, "type"    # I

    .line 593
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 594
    .local v0, "childrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 595
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 596
    .local v2, "box":Landroidx/media3/container/Mp4Box$ContainerBox;
    iget v3, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    if-ne v3, p1, :cond_0

    .line 597
    return-object v2

    .line 594
    .end local v2    # "box":Landroidx/media3/container/Mp4Box$ContainerBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLeafBoxOfType(I)Landroidx/media3/container/Mp4Box$LeafBox;
    .locals 4
    .param p1, "type"    # I

    .line 572
    iget-object v0, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 573
    .local v0, "childrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 574
    iget-object v2, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 575
    .local v2, "box":Landroidx/media3/container/Mp4Box$LeafBox;
    iget v3, v2, Landroidx/media3/container/Mp4Box$LeafBox;->type:I

    if-ne v3, p1, :cond_0

    .line 576
    return-object v2

    .line 573
    .end local v2    # "box":Landroidx/media3/container/Mp4Box$LeafBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->type:I

    invoke-static {v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 607
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    .line 609
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    return-object v0
.end method
