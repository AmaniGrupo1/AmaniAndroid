.class Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeshData"
.end annotation


# instance fields
.field private final drawMode:I

.field private final textureBuffer:Ljava/nio/FloatBuffer;

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V
    .locals 1
    .param p1, "subMesh"    # Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->getVertexCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    .line 226
    iget-object v0, p1, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->vertices:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 227
    iget-object v0, p1, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->textureCoords:[F

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 228
    iget v0, p1, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 237
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_0

    .line 233
    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    .line 234
    goto :goto_0

    .line 230
    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    .line 231
    nop

    .line 240
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 218
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->drawMode:I

    return v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 218
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    return v0
.end method
