.class public final synthetic Lcoil/decode/ImageSources$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcoil/decode/ImageSources;"
    method = "ImageSource$lambda$3"
    proto = "(Ljava/io/File;)Ljava/io/File;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/decode/ImageSources$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcoil/decode/ImageSources$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    invoke-static {v0}, Lcoil/decode/ImageSources;->ImageSource$lambda$3(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
