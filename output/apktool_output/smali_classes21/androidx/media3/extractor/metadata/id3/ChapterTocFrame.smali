.class public final Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;
.super Landroidx/media3/extractor/metadata/id3/Id3Frame;
.source "ChapterTocFrame.java"


# static fields
.field public static final ID:Ljava/lang/String; = "CTOC"


# instance fields
.field public final children:[Ljava/lang/String;

.field public final elementId:Ljava/lang/String;

.field public final isOrdered:Z

.field public final isRoot:Z

.field private final subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V
    .locals 1
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "isRoot"    # Z
    .param p3, "isOrdered"    # Z
    .param p4, "children"    # [Ljava/lang/String;
    .param p5, "subFrames"    # [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 41
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Landroidx/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    .line 44
    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    .line 45
    iput-object p4, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 46
    iput-object p5, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 62
    return v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    .line 68
    .local v2, "other":Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;
    iget-boolean v3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v4, v2, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    iget-boolean v4, v2, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    .line 70
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    .line 71
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    iget-object v4, v2, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    .line 72
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 65
    .end local v2    # "other":Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;
    :cond_3
    :goto_1
    return v1
.end method

.method public getSubFrame(I)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 1
    .param p1, "index"    # I

    .line 56
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubFrameCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->subFrames:[Landroidx/media3/extractor/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 77
    const/16 v0, 0x11

    .line 78
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isRoot:Z

    add-int/2addr v1, v2

    .line 79
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->isOrdered:Z

    add-int/2addr v0, v2

    .line 80
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 81
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
