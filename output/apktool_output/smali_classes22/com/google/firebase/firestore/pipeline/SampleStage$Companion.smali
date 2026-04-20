.class public final Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/SampleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;",
        "",
        "<init>",
        "()V",
        "withPercentage",
        "Lcom/google/firebase/firestore/pipeline/SampleStage;",
        "percentage",
        "",
        "withDocLimit",
        "results",
        "",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/SampleStage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final withDocLimit(I)Lcom/google/firebase/firestore/pipeline/SampleStage;
    .locals 6
    .param p1, "results"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1177
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SampleStage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    sget-object v2, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->Companion:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;->getDOCUMENTS()Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/pipeline/SampleStage;-><init>(Ljava/lang/Number;Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final withPercentage(D)Lcom/google/firebase/firestore/pipeline/SampleStage;
    .locals 6
    .param p1, "percentage"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1163
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SampleStage;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    sget-object v2, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;->Companion:Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/SampleStage$Mode$Companion;->getPERCENT()Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/pipeline/SampleStage;-><init>(Ljava/lang/Number;Lcom/google/firebase/firestore/pipeline/SampleStage$Mode;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
