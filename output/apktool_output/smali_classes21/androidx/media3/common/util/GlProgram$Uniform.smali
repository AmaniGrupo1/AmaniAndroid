.class final Landroidx/media3/common/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Uniform"
.end annotation


# instance fields
.field private final floatValue:[F

.field private final intValue:[I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texMinFilter:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # I
    .param p3, "type"    # I

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 417
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    .line 418
    iput p3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    .line 419
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    .line 420
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    .line 421
    const/16 v0, 0x2601

    iput v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 422
    return-void
.end method

.method public static create(II)Landroidx/media3/common/util/GlProgram$Uniform;
    .locals 13
    .param p0, "programId"    # I
    .param p1, "index"    # I

    .line 378
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 379
    .local v11, "length":[I
    const v2, 0x8b87

    const/4 v12, 0x0

    invoke-static {p0, v2, v11, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 382
    new-array v7, v1, [I

    .line 383
    .local v7, "type":[I
    aget v2, v11, v12

    new-array v9, v2, [B

    .line 385
    .local v9, "nameBytes":[B
    aget v2, v11, v12

    new-array v3, v1, [I

    new-array v5, v1, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 397
    new-instance v1, Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v2

    invoke-direct {v1, v9, v12, v2}, Ljava/lang/String;-><init>([BII)V

    .line 398
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1}, Landroidx/media3/common/util/GlProgram;->access$200(ILjava/lang/String;)I

    move-result v2

    .line 400
    .local v2, "location":I
    new-instance v3, Landroidx/media3/common/util/GlProgram$Uniform;

    aget v4, v7, v12

    invoke-direct {v3, v1, v2, v4}, Landroidx/media3/common/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method


# virtual methods
.method public bind(Z)V
    .locals 5
    .param p1, "externalTexturesRequireNearestSampling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 480
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected uniform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :sswitch_0
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    if-eqz v0, :cond_5

    .line 529
    const v0, 0x84c0

    iget v1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 530
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 532
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    const/16 v1, 0xde1

    const v2, 0x8b5e    # 4.9996E-41f

    if-ne v0, v2, :cond_0

    .line 533
    move v0, v1

    goto :goto_0

    .line 534
    :cond_0
    const v0, 0x8d65

    :goto_0
    iget v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 536
    iget v4, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    if-eq v4, v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 538
    :cond_1
    const/16 v4, 0x2600

    goto :goto_2

    .line 537
    :cond_2
    :goto_1
    const/16 v4, 0x2601

    .line 531
    :goto_2
    invoke-static {v0, v3, v4}, Landroidx/media3/common/util/GlUtil;->bindTexture(III)V

    .line 539
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->type:I

    if-ne v0, v2, :cond_4

    .line 540
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    const/16 v2, 0x2703

    if-ne v0, v2, :cond_3

    .line 541
    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 542
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 544
    :cond_3
    const/16 v0, 0x2801

    iget v2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 546
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 548
    :cond_4
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget v1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 549
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 550
    goto/16 :goto_3

    .line 527
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No call to setSamplerTexId() before bind."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :sswitch_1
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 521
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 522
    goto :goto_3

    .line 514
    :sswitch_2
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 516
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 517
    goto :goto_3

    .line 494
    :sswitch_3
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    .line 495
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 496
    goto :goto_3

    .line 490
    :sswitch_4
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    .line 491
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 492
    goto :goto_3

    .line 486
    :sswitch_5
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    .line 487
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 488
    goto :goto_3

    .line 510
    :sswitch_6
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 511
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 512
    goto :goto_3

    .line 506
    :sswitch_7
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 507
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 508
    goto :goto_3

    .line 502
    :sswitch_8
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 503
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 504
    goto :goto_3

    .line 498
    :sswitch_9
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 499
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 500
    goto :goto_3

    .line 482
    :sswitch_a
    iget v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 483
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 484
    nop

    .line 554
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_a
        0x1406 -> :sswitch_9
        0x8b50 -> :sswitch_8
        0x8b51 -> :sswitch_7
        0x8b52 -> :sswitch_6
        0x8b53 -> :sswitch_5
        0x8b54 -> :sswitch_4
        0x8b55 -> :sswitch_3
        0x8b5b -> :sswitch_2
        0x8b5c -> :sswitch_1
        0x8b5e -> :sswitch_0
        0x8be7 -> :sswitch_0
        0x8d66 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFloat(F)V
    .locals 2
    .param p1, "value"    # F

    .line 461
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 462
    return-void
.end method

.method public setFloats([F)V
    .locals 3
    .param p1, "value"    # [F

    .line 466
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->floatValue:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    return-void
.end method

.method public setInt(I)V
    .locals 2
    .param p1, "value"    # I

    .line 451
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 452
    return-void
.end method

.method public setInts([I)V
    .locals 3
    .param p1, "value"    # [I

    .line 456
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram$Uniform;->intValue:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0
    .param p1, "texId"    # I
    .param p2, "texUnitIndex"    # I

    .line 432
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texIdValue:I

    .line 433
    iput p2, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texUnitIndex:I

    .line 434
    return-void
.end method

.method public setTexMinFilter(I)V
    .locals 0
    .param p1, "texMinFilter"    # I

    .line 446
    iput p1, p0, Landroidx/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    .line 447
    return-void
.end method
