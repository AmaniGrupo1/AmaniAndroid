.class final Landroidx/media3/common/util/GlProgram$Attribute;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Attribute"
.end annotation


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private final location:I

.field public final name:Ljava/lang/String;

.field private size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Attribute;->name:Ljava/lang/String;

    .line 337
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->location:I

    .line 338
    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Attribute;
    .locals 13
    .param p0, "programId"    # I
    .param p1, "index"    # I

    .line 300
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 301
    .local v11, "attributeNameMaxLength":[I
    const v2, 0x8b8a

    const/4 v12, 0x0

    invoke-static {p0, v2, v11, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 306
    aget v2, v11, v12

    new-array v9, v2, [B

    .line 308
    .local v9, "nameBytes":[B
    aget v2, v11, v12

    new-array v3, v1, [I

    new-array v5, v1, [I

    new-array v7, v1, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 320
    new-instance v1, Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v2

    invoke-direct {v1, v9, v12, v2}, Ljava/lang/String;-><init>([BII)V

    .line 321
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1}, Landroidx/media3/common/util/GlProgram;->access$100(ILjava/lang/String;)I

    move-result v2

    .line 323
    .local v2, "location":I
    new-instance v3, Landroidx/media3/common/util/GlProgram$Attribute;

    invoke-direct {v3, v1, v2}, Landroidx/media3/common/util/GlProgram$Attribute;-><init>(Ljava/lang/String;I)V

    return-object v3
.end method


# virtual methods
.method public bind()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    const-string v1, "call setBuffer before bind"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/nio/Buffer;

    .line 359
    .local v6, "buffer":Ljava/nio/Buffer;
    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 360
    iget v1, p0, Landroidx/media3/common/util/GlProgram$Attribute;->location:I

    iget v2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->size:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x1406

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 362
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Attribute;->location:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 363
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 364
    return-void
.end method

.method public setBuffer([FI)V
    .locals 1
    .param p1, "buffer"    # [F
    .param p2, "size"    # I

    .line 348
    invoke-static {p1}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram$Attribute;->buffer:Ljava/nio/Buffer;

    .line 349
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Attribute;->size:I

    .line 350
    return-void
.end method
