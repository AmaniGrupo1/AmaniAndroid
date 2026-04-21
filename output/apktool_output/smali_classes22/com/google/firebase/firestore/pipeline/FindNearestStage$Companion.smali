.class public final Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;
.super Ljava/lang/Object;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/FindNearestStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u000eJ/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u000eJ/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u000eJ/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008\u000eJ/\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage;",
        "vectorField",
        "Lcom/google/firebase/firestore/pipeline/Field;",
        "vectorValue",
        "Lcom/google/firebase/firestore/VectorValue;",
        "distanceMeasure",
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;",
        "of$com_google_firebase_firebase_firestore",
        "",
        "",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
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

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;-><init>()V

    return-void
.end method

.method public static synthetic of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 0

    .line 679
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 684
    new-instance p4, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    invoke-direct {p4}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>()V

    .line 679
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 0

    .line 697
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 702
    new-instance p4, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    invoke-direct {p4}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>()V

    .line 697
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 0

    .line 715
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 720
    new-instance p4, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    invoke-direct {p4}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>()V

    .line 715
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 0

    .line 742
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 746
    new-instance p4, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    invoke-direct {p4}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>()V

    .line 742
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic of$com_google_firebase_firebase_firestore$default(Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;ILjava/lang/Object;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 0

    .line 733
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 738
    new-instance p4, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    invoke-direct {p4}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;-><init>()V

    .line 733
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 7
    .param p1, "vectorField"    # Lcom/google/firebase/firestore/pipeline/Field;
    .param p2, "vectorValue"    # Lcom/google/firebase/firestore/VectorValue;
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    new-instance v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/pipeline/Expression;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .end local p4    # "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v5, "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 7
    .param p1, "vectorField"    # Lcom/google/firebase/firestore/pipeline/Field;
    .param p2, "vectorValue"    # [D
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/pipeline/Expression;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vector([D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .end local p4    # "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v5, "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 7
    .param p1, "vectorField"    # Ljava/lang/String;
    .param p2, "vectorValue"    # Lcom/google/firebase/firestore/VectorValue;
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    new-instance v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/Expression;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->constant(Lcom/google/firebase/firestore/VectorValue;)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .end local p4    # "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v5, "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 7
    .param p1, "vectorField"    # Ljava/lang/String;
    .param p2, "vectorValue"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    new-instance v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/Expression;

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "vectorValue":Lcom/google/firebase/firestore/pipeline/Expression;
    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .end local p4    # "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .local v3, "vectorValue":Lcom/google/firebase/firestore/pipeline/Expression;
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v5, "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final of$com_google_firebase_firebase_firestore(Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 7
    .param p1, "vectorField"    # Ljava/lang/String;
    .param p2, "vectorValue"    # [D
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vectorField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vectorValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    new-instance v1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/firestore/pipeline/Expression;

    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->vector([D)Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, p3

    move-object v5, p4

    .end local p3    # "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .end local p4    # "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .local v4, "distanceMeasure":Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .local v5, "options":Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
