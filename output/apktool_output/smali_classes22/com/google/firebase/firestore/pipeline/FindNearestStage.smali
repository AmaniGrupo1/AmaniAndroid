.class public final Lcom/google/firebase/firestore/pipeline/FindNearestStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;,
        Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u001e\u001fB+\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB)\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\t\u0010\u000cJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008H\u0010\u00a2\u0006\u0002\u0008\u000eJ\r\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u001b\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0010\u00a2\u0006\u0002\u0008\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "property",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "vector",
        "distanceMeasure",
        "Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "Lcom/google/firebase/firestore/pipeline/FindNearestOptions;",
        "(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)V",
        "self",
        "self$com_google_firebase_firebase_firestore",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "args",
        "Lkotlin/sequences/Sequence;",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "args$com_google_firebase_firebase_firestore",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "Companion",
        "DistanceMeasure",
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


# static fields
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;


# instance fields
.field private final distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

.field private final property:Lcom/google/firebase/firestore/pipeline/Expression;

.field private final vector:Lcom/google/firebase/firestore/pipeline/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)V
    .locals 1
    .param p1, "property"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;

    .line 665
    invoke-virtual {p4}, Lcom/google/firebase/firestore/pipeline/FindNearestOptions;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2
    .param p1, "property"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p2, "vector"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .param p3, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p4, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distanceMeasure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    const-string v0, "find_nearest"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 654
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->property:Lcom/google/firebase/firestore/pipeline/Expression;

    .line 655
    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->vector:Lcom/google/firebase/firestore/pipeline/Expression;

    .line 656
    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    .line 653
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 653
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 657
    sget-object p4, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 653
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 658
    return-void
.end method

.method public static final of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 1
    .param p0, "vectorField"    # Lcom/google/firebase/firestore/pipeline/Field;
    .param p1, "vectorValue"    # Lcom/google/firebase/firestore/VectorValue;
    .param p2, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p3, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object v0

    .line 685
    return-object v0
.end method

.method public static final of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 1
    .param p0, "vectorField"    # Lcom/google/firebase/firestore/pipeline/Field;
    .param p1, "vectorValue"    # [D
    .param p2, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p3, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/Field;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object v0

    .line 703
    return-object v0
.end method

.method public static final of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 1
    .param p0, "vectorField"    # Ljava/lang/String;
    .param p1, "vectorValue"    # Lcom/google/firebase/firestore/VectorValue;
    .param p2, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p3, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;Lcom/google/firebase/firestore/VectorValue;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object v0

    .line 721
    return-object v0
.end method

.method public static final of$com_google_firebase_firebase_firestore(Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 1
    .param p0, "vectorField"    # Ljava/lang/String;
    .param p1, "vectorValue"    # [D
    .param p2, "distanceMeasure"    # Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;
    .param p3, "options"    # Lcom/google/firebase/firestore/pipeline/FindNearestOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->Companion:Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$Companion;->of$com_google_firebase_firebase_firestore(Ljava/lang/String;[DLcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/FindNearestOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object v0

    .line 740
    return-object v0
.end method


# virtual methods
.method public args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;
    .locals 3
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/UserDataReader;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/firestore/v1/Value;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->property:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 775
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->vector:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 774
    nop

    .line 776
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;->getProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Value;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 774
    nop

    .line 773
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 777
    return-object v0
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 3

    .line 769
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 780
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 781
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 782
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->property:Lcom/google/firebase/firestore/pipeline/Expression;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->property:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 783
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->vector:Lcom/google/firebase/firestore/pipeline/Expression;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->vector:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 784
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 785
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 786
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->property:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Expression;->hashCode()I

    move-result v0

    .line 791
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->vector:Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/Expression;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 792
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 793
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 794
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;
    .locals 4
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    new-instance v0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->property:Lcom/google/firebase/firestore/pipeline/Expression;

    iget-object v2, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->vector:Lcom/google/firebase/firestore/pipeline/Expression;

    iget-object v3, p0, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->distanceMeasure:Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/FindNearestStage$DistanceMeasure;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 651
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/FindNearestStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/FindNearestStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object v0
.end method
