.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "QuestionnaireViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuestionnaireViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuestionnaireViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,118:1\n1915#2:119\n1916#2:121\n1#3:120\n85#4:122\n117#4,2:123\n*S KotlinDebug\n*F\n+ 1 QuestionnaireViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel\n*L\n91#1:119\n91#1:121\n77#1:122\n77#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u0015J\u0006\u0010\u001e\u001a\u00020\u001bR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R+\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR&\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "questions",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/Question;",
        "getQuestions",
        "()Ljava/util/List;",
        "<set-?>",
        "",
        "actualQuestion",
        "getActualQuestion",
        "()I",
        "setActualQuestion",
        "(I)V",
        "actualQuestion$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "selectedAnswers",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "",
        "",
        "getSelectedAnswers",
        "()Landroidx/compose/runtime/snapshots/SnapshotStateList;",
        "setSelectedAnswers",
        "(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V",
        "changeAnswer",
        "",
        "index",
        "value",
        "nextQuestion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final actualQuestion$delegate:Landroidx/compose/runtime/MutableState;

.field private final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Question;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAnswers:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 31
    nop

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/ies/tierno/applicationamani/domain/models/Question;

    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/Question;

    .line 33
    nop

    .line 35
    nop

    .line 36
    nop

    .line 35
    nop

    .line 37
    nop

    .line 35
    nop

    .line 38
    const-string v2, "Respuesta 1"

    const-string v3, "Respuesta 2"

    const-string v4, "Respuesta 3"

    const-string v5, "Respuesta 4"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 35
    nop

    .line 34
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 32
    const-string v7, "Pregunta 1"

    invoke-direct {v1, v7, v6}, Lorg/ies/tierno/applicationamani/domain/models/Question;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v6, 0x0

    aput-object v1, v0, v6

    .line 41
    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/Question;

    .line 42
    nop

    .line 44
    nop

    .line 45
    nop

    .line 44
    nop

    .line 46
    nop

    .line 44
    nop

    .line 47
    nop

    .line 44
    nop

    .line 48
    nop

    .line 44
    nop

    .line 49
    const-string v12, "Respuesta 6"

    const-string v7, "Respuesta 1"

    const-string v8, "Respuesta 2"

    const-string v9, "Respuesta 3"

    const-string v10, "Respuesta 4"

    const-string v11, "Respuesta 5"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    .line 44
    nop

    .line 43
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 41
    const-string v8, "Pregunta 2"

    invoke-direct {v1, v8, v7}, Lorg/ies/tierno/applicationamani/domain/models/Question;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v7, 0x1

    aput-object v1, v0, v7

    .line 32
    nop

    .line 52
    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/Question;

    .line 53
    nop

    .line 55
    nop

    .line 56
    nop

    .line 55
    nop

    .line 57
    nop

    .line 55
    nop

    .line 58
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v7

    .line 55
    nop

    .line 54
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 52
    const-string v8, "Pregunta 3"

    invoke-direct {v1, v8, v7}, Lorg/ies/tierno/applicationamani/domain/models/Question;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v7, 0x2

    aput-object v1, v0, v7

    .line 32
    nop

    .line 61
    new-instance v1, Lorg/ies/tierno/applicationamani/domain/models/Question;

    .line 62
    nop

    .line 64
    nop

    .line 65
    nop

    .line 64
    nop

    .line 66
    nop

    .line 64
    nop

    .line 67
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 64
    nop

    .line 63
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 61
    const-string v3, "Pregunta 4"

    invoke-direct {v1, v3, v2}, Lorg/ies/tierno/applicationamani/domain/models/Question;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 32
    nop

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->questions:Ljava/util/List;

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v7, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->actualQuestion$delegate:Landroidx/compose/runtime/MutableState;

    .line 88
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->selectedAnswers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 90
    nop

    .line 91
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->questions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach\\1":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$forEach\\1\\91":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element\\1":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/ies/tierno/applicationamani/domain/models/Question;

    .local v4, "question\\2":Lorg/ies/tierno/applicationamani/domain/models/Question;
    const/4 v5, 0x0

    .line 92
    .local v5, "$i$a$-forEach-QuestionnaireViewModel$1\\2\\119\\0":I
    iget-object v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->selectedAnswers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 93
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/Question;->getAnswers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v6

    :goto_1
    if-ge v10, v8, :cond_0

    .line 120
    move v11, v10

    .local v11, "it\\3":I
    const/4 v12, 0x0

    .line 93
    .local v12, "$i$a$-MutableList-QuestionnaireViewModel$1$1\\3\\93\\2":I
    nop

    .end local v11    # "it\\3":I
    .end local v12    # "$i$a$-MutableList-QuestionnaireViewModel$1$1\\3\\93\\2":I
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    check-cast v9, Ljava/util/List;

    .line 92
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 95
    nop

    .line 119
    .end local v4    # "question\\2":Lorg/ies/tierno/applicationamani/domain/models/Question;
    .end local v5    # "$i$a$-forEach-QuestionnaireViewModel$1\\2\\119\\0":I
    nop

    .end local v3    # "element\\1":Ljava/lang/Object;
    goto :goto_0

    .line 121
    :cond_1
    nop

    .line 96
    .end local v0    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach\\1\\91":I
    nop

    .line 23
    return-void
.end method

.method private final setActualQuestion(I)V
    .locals 5
    .param p1, "<set-?>"    # I

    .line 77
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->actualQuestion$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "value\\1":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_\\1":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 123
    .local v4, "$i$f$setValue\\1\\77":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 124
    nop

    .line 77
    .end local v0    # "$this$setValue\\1":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "value\\1":Ljava/lang/Object;
    .end local v3    # "this_\\1":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue\\1\\77":I
    return-void
.end method


# virtual methods
.method public final changeAnswer(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 105
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->selectedAnswers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final getActualQuestion()I
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->actualQuestion$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue\\1":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property\\1":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "this_\\1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 122
    .local v3, "$i$f$getValue\\1\\77":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue\\1":Landroidx/compose/runtime/State;
    .end local v1    # "property\\1":Lkotlin/reflect/KProperty;
    .end local v2    # "this_\\1":Ljava/lang/Object;
    .end local v3    # "$i$f$getValue\\1\\77":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 77
    return v0
.end method

.method public final getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Question;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->questions:Ljava/util/List;

    return-object v0
.end method

.method public final getSelectedAnswers()Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->selectedAnswers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-object v0
.end method

.method public final nextQuestion()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v0

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->getActualQuestion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->setActualQuestion(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public final setSelectedAnswers(Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/QuestionnaireViewModel;->selectedAnswers:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    return-void
.end method
