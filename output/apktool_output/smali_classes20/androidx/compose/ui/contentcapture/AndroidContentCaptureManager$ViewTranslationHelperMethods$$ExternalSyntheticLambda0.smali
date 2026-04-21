.class public final synthetic Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods;"
    method = "onVirtualViewTranslationResponses$lambda$0"
    proto = "(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

.field public final synthetic f$1:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods$$ExternalSyntheticLambda0;->f$1:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods$$ExternalSyntheticLambda0;->f$1:Landroid/util/LongSparseArray;

    invoke-static {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods;->onVirtualViewTranslationResponses$lambda$0(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    return-void
.end method
