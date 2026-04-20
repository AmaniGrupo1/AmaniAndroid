.class public final Lcom/google/firebase/firestore/pipeline/SortStage;
.super Lcom/google/firebase/firestore/pipeline/Stage;
.source "stage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/SortStage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/pipeline/Stage<",
        "Lcom/google/firebase/firestore/pipeline/SortStage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/SortStage\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1328:1\n1682#2,6:1329\n37#3,2:1335\n*S KotlinDebug\n*F\n+ 1 stage.kt\ncom/google/firebase/firestore/pipeline/SortStage\n*L\n1010#1:1329,6\n1013#1:1335,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 +2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001+B#\u0008\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\u000c\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u000eJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0010\u00a2\u0006\u0002\u0008\u0010J\u001b\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0010\u00a2\u0006\u0002\u0008\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J)\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0010\u00a2\u0006\u0002\u0008#J%\u0010$\u001a\u0012\u0012\u0004\u0012\u00020&0%j\u0008\u0012\u0004\u0012\u00020&`\'2\u0006\u0010 \u001a\u00020!H\u0000\u00a2\u0006\u0002\u0008(J\r\u0010)\u001a\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008*R\u001b\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006,"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/SortStage;",
        "Lcom/google/firebase/firestore/pipeline/Stage;",
        "orders",
        "",
        "Lcom/google/firebase/firestore/pipeline/Ordering;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "getOrders",
        "()[Lcom/google/firebase/firestore/pipeline/Ordering;",
        "[Lcom/google/firebase/firestore/pipeline/Ordering;",
        "canonicalId",
        "",
        "canonicalId$com_google_firebase_firebase_firestore",
        "self",
        "self$com_google_firebase_firebase_firestore",
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
        "evaluate",
        "",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "context",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
        "inputs",
        "evaluate$com_google_firebase_firebase_firestore",
        "comparator",
        "Ljava/util/Comparator;",
        "Lcom/google/firebase/firestore/model/Document;",
        "Lkotlin/Comparator;",
        "comparator$com_google_firebase_firebase_firestore",
        "withStableOrdering",
        "withStableOrdering$com_google_firebase_firebase_firestore",
        "Companion",
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
.field private static final BY_DOCUMENT_ID:Lcom/google/firebase/firestore/pipeline/SortStage;

.field public static final Companion:Lcom/google/firebase/firestore/pipeline/SortStage$Companion;


# instance fields
.field private final orders:[Lcom/google/firebase/firestore/pipeline/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/firebase/firestore/pipeline/SortStage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/SortStage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SortStage;->Companion:Lcom/google/firebase/firestore/pipeline/SortStage$Companion;

    .line 978
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/firebase/firestore/pipeline/Ordering;

    sget-object v3, Lcom/google/firebase/firestore/pipeline/Field;->DOCUMENT_ID:Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/Field;->ascending()Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/SortStage;->BY_DOCUMENT_ID:Lcom/google/firebase/firestore/pipeline/SortStage;

    return-void
.end method

.method public constructor <init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 2
    .param p1, "orders"    # [Lcom/google/firebase/firestore/pipeline/Ordering;
    .param p2, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "orders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 972
    const-string v0, "sort"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/firebase/firestore/pipeline/Stage;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 970
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 969
    return-void
.end method

.method public synthetic constructor <init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 969
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 971
    sget-object p2, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 969
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 972
    return-void
.end method

.method public static final synthetic access$getBY_DOCUMENT_ID$cp()Lcom/google/firebase/firestore/pipeline/SortStage;
    .locals 1

    .line 968
    sget-object v0, Lcom/google/firebase/firestore/pipeline/SortStage;->BY_DOCUMENT_ID:Lcom/google/firebase/firestore/pipeline/SortStage;

    return-object v0
.end method

.method static final args$lambda$1(Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "$userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .param p1, "it"    # Lcom/google/firebase/firestore/pipeline/Ordering;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    invoke-virtual {p1, p0}, Lcom/google/firebase/firestore/pipeline/Ordering;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method static final canonicalId$lambda$0(Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "it"    # Lcom/google/firebase/firestore/pipeline/Ordering;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/Ordering;->canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public args$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lkotlin/sequences/Sequence;
    .locals 2
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

    .line 983
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/UserDataReader;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public canonicalId$com_google_firebase_firebase_firestore()Ljava/lang/String;
    .locals 10

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SortStage;->getName$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    const-string v2, ","

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/google/firebase/firestore/pipeline/SortStage$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final comparator$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Ljava/util/Comparator;
    .locals 1
    .param p1, "context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/pipeline/StageKt;->access$comparatorFromOrderings(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;[Lcom/google/firebase/firestore/pipeline/Ordering;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 986
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 987
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/pipeline/SortStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/SortStage;

    iget-object v3, v3, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 989
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SortStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/pipeline/SortStage;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/SortStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 990
    :cond_3
    return v0
.end method

.method public evaluate$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;
    .param p2, "inputs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/SortStage;->comparator$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getOrders()[Lcom/google/firebase/firestore/pipeline/Ordering;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 995
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SortStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 996
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/SortStage;
    .locals 2
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method public bridge synthetic self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 1
    .param p1, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 968
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/pipeline/SortStage;->self$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/pipeline/InternalOptions;)Lcom/google/firebase/firestore/pipeline/SortStage;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Stage;

    return-object v0
.end method

.method public final withStableOrdering$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/SortStage;
    .locals 9

    .line 1010
    iget-object v0, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    .local v0, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1329
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 1330
    aget-object v4, v0, v2

    .local v4, "it":Lcom/google/firebase/firestore/pipeline/Ordering;
    const/4 v5, 0x0

    .line 1010
    .local v5, "$i$a$-indexOfFirst-SortStage$withStableOrdering$position$1":I
    invoke-virtual {v4}, Lcom/google/firebase/firestore/pipeline/Ordering;->getExpr()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v6

    instance-of v7, v6, Lcom/google/firebase/firestore/pipeline/Field;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Lcom/google/firebase/firestore/pipeline/Field;

    goto :goto_1

    :cond_0
    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/Field;->getAlias$com_google_firebase_firebase_firestore()Ljava/lang/String;

    move-result-object v8

    :cond_1
    const-string v6, "__name__"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 1330
    .end local v4    # "it":Lcom/google/firebase/firestore/pipeline/Ordering;
    .end local v5    # "$i$a$-indexOfFirst-SortStage$withStableOrdering$position$1":I
    if-eqz v4, :cond_2

    .line 1331
    goto :goto_2

    .line 1329
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1334
    .end local v2    # "index$iv":I
    :cond_3
    const/4 v2, -0x1

    .line 1010
    .end local v0    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_2
    nop

    .line 1011
    .local v2, "position":I
    if-gez v2, :cond_4

    .line 1013
    new-instance v0, Lcom/google/firebase/firestore/pipeline/SortStage;

    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/SortStage;->orders:[Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    sget-object v3, Lcom/google/firebase/firestore/pipeline/Field;->DOCUMENT_ID:Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/pipeline/Field;->ascending()Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 1335
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v1

    .line 1336
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 1013
    invoke-virtual {p0}, Lcom/google/firebase/firestore/pipeline/SortStage;->getOptions$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/pipeline/InternalOptions;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    goto :goto_3

    .line 1015
    :cond_4
    move-object v0, p0

    .line 1011
    :goto_3
    return-object v0
.end method
