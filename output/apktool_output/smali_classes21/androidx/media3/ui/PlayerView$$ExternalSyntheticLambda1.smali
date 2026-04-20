.class public final synthetic Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/ui/PlayerView;"
    method = "lambda$onImageAvailable$1"
    proto = "(Landroid/graphics/Bitmap;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/ui/PlayerView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/ui/PlayerView;

    iput-object p2, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/ui/PlayerView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->lambda$onImageAvailable$1$androidx-media3-ui-PlayerView(Landroid/graphics/Bitmap;)V

    return-void
.end method
