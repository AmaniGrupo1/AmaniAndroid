.class public final synthetic Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcoil/decode/BitmapFactoryDecoder;"
    method = "decode$lambda$1$lambda$0"
    proto = "(Lcoil/decode/BitmapFactoryDecoder;)Lcoil/decode/DecodeResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcoil/decode/BitmapFactoryDecoder;


# direct methods
.method public synthetic constructor <init>(Lcoil/decode/BitmapFactoryDecoder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticLambda0;->f$0:Lcoil/decode/BitmapFactoryDecoder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticLambda0;->f$0:Lcoil/decode/BitmapFactoryDecoder;

    invoke-static {v0}, Lcoil/decode/BitmapFactoryDecoder;->decode$lambda$1$lambda$0(Lcoil/decode/BitmapFactoryDecoder;)Lcoil/decode/DecodeResult;

    move-result-object v0

    return-object v0
.end method
