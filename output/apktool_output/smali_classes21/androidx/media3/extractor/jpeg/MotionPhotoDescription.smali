.class final Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPresentationTimestampUs:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .param p1, "photoPresentationTimestampUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    .line 69
    iput-object p3, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public getMotionPhotoMetadata(J)Landroidx/media3/extractor/metadata/MotionPhotoMetadata;
    .locals 27
    .param p1, "motionPhotoLength"    # J

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 83
    return-object v3

    .line 88
    :cond_0
    const-wide/16 v1, -0x1

    .line 89
    .local v1, "photoStartPosition":J
    const-wide/16 v4, -0x1

    .line 90
    .local v4, "photoLength":J
    const-wide/16 v6, -0x1

    .line 91
    .local v6, "videoStartPosition":J
    const-wide/16 v8, -0x1

    .line 92
    .local v8, "videoLength":J
    move-wide/from16 v10, p1

    .line 93
    .local v10, "itemStartPosition":J
    move-wide/from16 v12, p1

    .line 94
    .local v12, "itemEndPosition":J
    iget-object v14, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move-wide/from16 v17, v1

    move-wide/from16 v19, v4

    move-wide/from16 v23, v6

    move-wide/from16 v25, v8

    .end local v1    # "photoStartPosition":J
    .end local v4    # "photoLength":J
    .end local v6    # "videoStartPosition":J
    .end local v8    # "videoLength":J
    .local v14, "i":I
    .local v17, "photoStartPosition":J
    .local v19, "photoLength":J
    .local v23, "videoStartPosition":J
    .local v25, "videoLength":J
    :goto_0
    if-ltz v14, :cond_6

    .line 95
    iget-object v1, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 96
    .local v1, "item":Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    iget-object v2, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    .line 97
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    const-string/jumbo v4, "video/quicktime"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v15

    .line 98
    .local v2, "itemContainsBmffVideo":Z
    :goto_2
    move-wide v4, v10

    .line 99
    .end local v12    # "itemEndPosition":J
    .local v4, "itemEndPosition":J
    if-nez v14, :cond_3

    .line 101
    const-wide/16 v6, 0x0

    .line 102
    .end local v10    # "itemStartPosition":J
    .local v6, "itemStartPosition":J
    iget-wide v8, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v4, v8

    move-wide v10, v6

    move-wide v12, v4

    goto :goto_3

    .line 104
    .end local v6    # "itemStartPosition":J
    .restart local v10    # "itemStartPosition":J
    :cond_3
    iget-wide v6, v1, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long/2addr v10, v6

    move-wide v12, v4

    .line 106
    .end local v4    # "itemEndPosition":J
    .restart local v12    # "itemEndPosition":J
    :goto_3
    if-eqz v2, :cond_4

    cmp-long v4, v10, v12

    if-eqz v4, :cond_4

    .line 107
    move-wide v4, v10

    .line 108
    .end local v23    # "videoStartPosition":J
    .local v4, "videoStartPosition":J
    sub-long v6, v12, v10

    .line 110
    .end local v25    # "videoLength":J
    .local v6, "videoLength":J
    const/4 v2, 0x0

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    .line 112
    .end local v4    # "videoStartPosition":J
    .end local v6    # "videoLength":J
    .restart local v23    # "videoStartPosition":J
    .restart local v25    # "videoLength":J
    :cond_4
    if-nez v14, :cond_5

    .line 113
    move-wide v4, v10

    .line 114
    .end local v17    # "photoStartPosition":J
    .local v4, "photoStartPosition":J
    move-wide v6, v12

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 94
    .end local v1    # "item":Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    .end local v2    # "itemContainsBmffVideo":Z
    .end local v4    # "photoStartPosition":J
    .restart local v17    # "photoStartPosition":J
    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 117
    .end local v14    # "i":I
    :cond_6
    const-wide/16 v1, -0x1

    cmp-long v4, v23, v1

    if-eqz v4, :cond_8

    cmp-long v4, v25, v1

    if-eqz v4, :cond_8

    cmp-long v4, v17, v1

    if-eqz v4, :cond_8

    cmp-long v1, v19, v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 123
    :cond_7
    new-instance v16, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;

    iget-wide v1, v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    move-wide/from16 v21, v1

    invoke-direct/range {v16 .. v26}, Landroidx/media3/extractor/metadata/MotionPhotoMetadata;-><init>(JJJJJ)V

    return-object v16

    .line 121
    :cond_8
    :goto_4
    return-object v3
.end method
