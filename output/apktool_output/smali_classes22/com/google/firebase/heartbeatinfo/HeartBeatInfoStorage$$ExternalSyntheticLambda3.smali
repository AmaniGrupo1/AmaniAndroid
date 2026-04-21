.class public final synthetic Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;"
    method = "lambda$deleteAllHeartBeats$0"
    proto = "(Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-virtual {v0, p1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->lambda$deleteAllHeartBeats$0$com-google-firebase-heartbeatinfo-HeartBeatInfoStorage(Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
