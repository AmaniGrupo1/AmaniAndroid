.class final Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;
.super Landroidx/compose/foundation/BaseAndroidExternalSurfaceState;
.source "AndroidExternalSurface.android.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidExternalSurface.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidExternalSurface.android.kt\nandroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,456:1\n54#2:457\n59#2:459\n54#2:461\n59#2:463\n85#3:458\n90#3:460\n85#3:462\n90#3:464\n*S KotlinDebug\n*F\n+ 1 AndroidExternalSurface.android.kt\nandroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState\n*L\n330#1:457\n331#1:459\n350#1:461\n351#1:463\n330#1:458\n331#1:460\n350#1:462\n351#1:464\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J \u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u0017H\u0016R\u001c\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;",
        "Landroidx/compose/foundation/BaseAndroidExternalSurfaceState;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "surfaceSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSurfaceSize-YbymL2g",
        "()J",
        "setSurfaceSize-ozmzZPI",
        "(J)V",
        "J",
        "matrix",
        "Landroid/graphics/Matrix;",
        "getMatrix",
        "()Landroid/graphics/Matrix;",
        "surfaceTextureSurface",
        "Landroid/view/Surface;",
        "onSurfaceTextureAvailable",
        "",
        "surfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "width",
        "",
        "height",
        "onSurfaceTextureSizeChanged",
        "onSurfaceTextureDestroyed",
        "",
        "onSurfaceTextureUpdated",
        "surface",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final matrix:Landroid/graphics/Matrix;

.field private surfaceSize:J

.field private surfaceTextureSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 313
    nop

    .line 314
    nop

    .line 313
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BaseAndroidExternalSurfaceState;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 316
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    .line 317
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->matrix:Landroid/graphics/Matrix;

    .line 313
    return-void
.end method


# virtual methods
.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getSurfaceSize-YbymL2g()J
    .locals 2

    .line 316
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    return-wide v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 10
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 326
    move v0, p2

    .line 327
    .local v0, "w":I
    move v1, p3

    .line 329
    .local v1, "h":I
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    sget-object v4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 457
    .local v4, "$i$f$getWidth-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 458
    .local v7, "$i$f$unpackInt1":I
    const/16 v8, 0x20

    shr-long v8, v5, v8

    long-to-int v5, v8

    .line 457
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt1":I
    nop

    .line 330
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getWidth-impl":I
    move v0, v5

    .line 331
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    .restart local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 459
    .local v4, "$i$f$getHeight-impl":I
    move-wide v5, v2

    .restart local v5    # "value$iv$iv":J
    const/4 v7, 0x0

    .line 460
    .local v7, "$i$f$unpackInt2":I
    const-wide v8, 0xffffffffL

    and-long/2addr v8, v5

    long-to-int v5, v8

    .line 459
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt2":I
    nop

    .line 331
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getHeight-impl":I
    move v1, v5

    .line 332
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 335
    :cond_0
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 336
    .local v2, "surface":Landroid/view/Surface;
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceTextureSurface:Landroid/view/Surface;

    .line 338
    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->dispatchSurfaceCreated(Landroid/view/Surface;II)V

    .line 339
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 359
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceTextureSurface:Landroid/view/Surface;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->dispatchSurfaceDestroyed(Landroid/view/Surface;)V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceTextureSurface:Landroid/view/Surface;

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 10
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 346
    move v0, p2

    .line 347
    .local v0, "w":I
    move v1, p3

    .line 349
    .local v1, "h":I
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    sget-object v4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    .local v2, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 461
    .local v4, "$i$f$getWidth-impl":I
    move-wide v5, v2

    .local v5, "value$iv$iv":J
    const/4 v7, 0x0

    .line 462
    .local v7, "$i$f$unpackInt1":I
    const/16 v8, 0x20

    shr-long v8, v5, v8

    long-to-int v5, v8

    .line 461
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt1":I
    nop

    .line 350
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getWidth-impl":I
    move v0, v5

    .line 351
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    .restart local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v4, 0x0

    .line 463
    .local v4, "$i$f$getHeight-impl":I
    move-wide v5, v2

    .restart local v5    # "value$iv$iv":J
    const/4 v7, 0x0

    .line 464
    .local v7, "$i$f$unpackInt2":I
    const-wide v8, 0xffffffffL

    and-long/2addr v8, v5

    long-to-int v5, v8

    .line 463
    .end local v5    # "value$iv$iv":J
    .end local v7    # "$i$f$unpackInt2":I
    nop

    .line 351
    .end local v2    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v4    # "$i$f$getHeight-impl":I
    move v1, v5

    .line 352
    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 355
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceTextureSurface:Landroid/view/Surface;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0, v1}, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->dispatchSurfaceChanged(Landroid/view/Surface;II)V

    .line 356
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 367
    return-void
.end method

.method public final setSurfaceSize-ozmzZPI(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-unit-IntSize$-<set-?>$0"    # J

    .line 316
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;->surfaceSize:J

    return-void
.end method
