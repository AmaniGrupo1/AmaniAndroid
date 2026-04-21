.class public final Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/UnnestStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;",
        "",
        "<init>",
        "()V",
        "withField",
        "Lcom/google/firebase/firestore/pipeline/UnnestStage;",
        "arrayWithAlias",
        "Lcom/google/firebase/firestore/pipeline/Selectable;",
        "arrayField",
        "",
        "alias",
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

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/UnnestStage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final withField(Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/pipeline/UnnestStage;
    .locals 3
    .param p1, "arrayWithAlias"    # Lcom/google/firebase/firestore/pipeline/Selectable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "arrayWithAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1253
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/google/firebase/firestore/pipeline/UnnestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final withField(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/UnnestStage;
    .locals 4
    .param p1, "arrayField"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "arrayField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1268
    new-instance v0, Lcom/google/firebase/firestore/pipeline/UnnestStage;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/firestore/pipeline/Field;->alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedExpression;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/pipeline/Selectable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/firebase/firestore/pipeline/UnnestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
