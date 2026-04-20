.class public final synthetic Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1;"
    method = "invokeSuspend$lambda$0"
    proto = "(Lcom/google/firebase/database/DatabaseReference;Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/DatabaseReference;

.field public final synthetic f$1:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$$ExternalSyntheticLambda0;->f$1:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$$ExternalSyntheticLambda0;->f$1:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;

    invoke-static {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1;->invokeSuspend$lambda$0(Lcom/google/firebase/database/DatabaseReference;Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1$listener$1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
