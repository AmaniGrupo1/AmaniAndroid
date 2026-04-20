.class public final Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;",
        "",
        "<init>",
        "()V",
        "FULL_REPLACE",
        "Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;",
        "getFULL_REPLACE",
        "()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;",
        "MERGE_PREFER_NEXT",
        "getMERGE_PREFER_NEXT",
        "MERGE_PREFER_PARENT",
        "getMERGE_PREFER_PARENT",
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

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFULL_REPLACE()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .locals 1

    .line 1093
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->access$getFULL_REPLACE$cp()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getMERGE_PREFER_NEXT()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .locals 1

    .line 1094
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->access$getMERGE_PREFER_NEXT$cp()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getMERGE_PREFER_PARENT()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;
    .locals 1

    .line 1095
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;->access$getMERGE_PREFER_PARENT$cp()Lcom/google/firebase/firestore/pipeline/ReplaceStage$Mode;

    move-result-object v0

    return-object v0
.end method
