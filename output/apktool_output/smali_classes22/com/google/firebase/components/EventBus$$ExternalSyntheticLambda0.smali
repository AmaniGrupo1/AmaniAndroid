.class public final synthetic Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/components/EventBus;"
    method = "lambda$publish$0"
    proto = "(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;

.field public final synthetic f$1:Lcom/google/firebase/events/Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/events/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/EventBus$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/events/Event;

    invoke-static {v0, v1}, Lcom/google/firebase/components/EventBus;->lambda$publish$0(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V

    return-void
.end method
