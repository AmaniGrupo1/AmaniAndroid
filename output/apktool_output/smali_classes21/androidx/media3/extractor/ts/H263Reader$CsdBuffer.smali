.class final Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H263Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# static fields
.field private static final START_CODE:[B

.field private static final STATE_EXPECT_VIDEO_OBJECT_LAYER_START:I = 0x3

.field private static final STATE_EXPECT_VIDEO_OBJECT_START:I = 0x2

.field private static final STATE_EXPECT_VISUAL_OBJECT_START:I = 0x1

.field private static final STATE_SKIP_TO_VISUAL_OBJECT_SEQUENCE_START:I = 0x0

.field private static final STATE_WAIT_FOR_VOP_START:I = 0x4


# instance fields
.field public data:[B

.field private isFilling:Z

.field public length:I

.field private state:I

.field public volStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    .line 358
    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 3
    .param p1, "newData"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .line 425
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 428
    :cond_0
    sub-int v0, p3, p2

    .line 429
    .local v0, "readLength":I
    iget-object v1, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    array-length v1, v1

    iget v2, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 430
    iget-object v1, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v2, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    .line 432
    :cond_1
    iget-object v1, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v2, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget v1, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 434
    return-void
.end method

.method public onStartCode(II)Z
    .locals 6
    .param p1, "startCodeValue"    # I
    .param p2, "bytesAlreadyPassed"    # I

    .line 377
    iget v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    const/16 v1, 0xb5

    const-string v2, "Unexpected start code value"

    const-string v3, "H263Reader"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 410
    :pswitch_0
    const/16 v0, 0xb3

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_4

    .line 412
    :cond_0
    iget v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 413
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 414
    return v4

    .line 401
    :pswitch_1
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 402
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_0

    .line 405
    :cond_1
    iget v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    .line 406
    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 408
    goto :goto_0

    .line 393
    :pswitch_2
    const/16 v0, 0x1f

    if-le p1, v0, :cond_2

    .line 394
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_0

    .line 397
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 399
    goto :goto_0

    .line 385
    :pswitch_3
    if-eq p1, v1, :cond_3

    .line 386
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    goto :goto_0

    .line 389
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 391
    goto :goto_0

    .line 379
    :pswitch_4
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_4

    .line 380
    iput v4, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 381
    iput-boolean v4, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 420
    :cond_4
    :goto_0
    sget-object v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    sget-object v1, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v5, v1}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 421
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    .line 362
    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    .line 363
    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    .line 364
    return-void
.end method
