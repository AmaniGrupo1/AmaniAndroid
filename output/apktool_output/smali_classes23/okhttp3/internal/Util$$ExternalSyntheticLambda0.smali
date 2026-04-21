.class public final synthetic Lokhttp3/internal/Util$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lokhttp3/internal/Util;"
    method = "asFactory$lambda$8"
    proto = "(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lokhttp3/EventListener;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/EventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Lokhttp3/EventListener;

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    .line 0
    iget-object v0, p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;->f$0:Lokhttp3/EventListener;

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->asFactory$lambda$8(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method
