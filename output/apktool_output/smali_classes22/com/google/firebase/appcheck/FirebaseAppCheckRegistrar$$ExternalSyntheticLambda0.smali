.class public final synthetic Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;"
    method = "lambda$getComponents$0"
    proto = "(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/appcheck/FirebaseAppCheck;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/components/Qualified;

.field public final synthetic f$1:Lcom/google/firebase/components/Qualified;

.field public final synthetic f$2:Lcom/google/firebase/components/Qualified;

.field public final synthetic f$3:Lcom/google/firebase/components/Qualified;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/components/Qualified;

    iput-object p2, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/components/Qualified;

    iput-object p3, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/components/Qualified;

    iput-object p4, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/components/Qualified;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/components/Qualified;

    iget-object v1, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/components/Qualified;

    iget-object v2, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/components/Qualified;

    iget-object v3, p0, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar$$ExternalSyntheticLambda0;->f$3:Lcom/google/firebase/components/Qualified;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/appcheck/FirebaseAppCheck;

    move-result-object p1

    return-object p1
.end method
