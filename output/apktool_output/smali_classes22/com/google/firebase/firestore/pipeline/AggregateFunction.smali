.class public final Lcom/google/firebase/firestore/pipeline/AggregateFunction;
.super Ljava/lang/Object;
.source "aggregates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B+\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\u0011\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\u000bB\u0019\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\rB\u0019\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\u000fJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0003J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/firebase/firestore/pipeline/AggregateFunction;",
        "",
        "name",
        "",
        "params",
        "",
        "Lcom/google/firebase/firestore/pipeline/Expression;",
        "options",
        "Lcom/google/firebase/firestore/pipeline/InternalOptions;",
        "<init>",
        "(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V",
        "(Ljava/lang/String;)V",
        "expr",
        "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)V",
        "fieldName",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "[Lcom/google/firebase/firestore/pipeline/Expression;",
        "alias",
        "Lcom/google/firebase/firestore/pipeline/AliasedAggregate;",
        "toProto",
        "Lcom/google/firestore/v1/Value;",
        "userDataReader",
        "Lcom/google/firebase/firestore/UserDataReader;",
        "toProto$com_google_firebase_firebase_firestore",
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
.field public static final Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final options:Lcom/google/firebase/firestore/pipeline/InternalOptions;

.field private final params:[Lcom/google/firebase/firestore/pipeline/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    new-array v3, v0, [Lcom/google/firebase/firestore/pipeline/Expression;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expr"    # Lcom/google/firebase/firestore/pipeline/Expression;

    .line 32
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/google/firebase/firestore/pipeline/Expression;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/pipeline/Expression$Companion;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/Expression;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .param p3, "options"    # Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->params:[Lcom/google/firebase/firestore/pipeline/Expression;

    .line 29
    iput-object p3, p0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->options:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 29
    sget-object p3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;-><init>(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 30
    return-void
.end method

.method public static final average(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->average(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public static final average(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->average(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method public static final count(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->count(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public static final count(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->count(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public static final countAll()Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countAll()Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method public static final countDistinct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countDistinct(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public static final countDistinct(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countDistinct(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 160
    return-object v0
.end method

.method public static final countIf(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "condition"    # Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->countIf(Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public static final maximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->maximum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public static final maximum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->maximum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public static final minimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->minimum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public static final minimum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->minimum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 125
    return-object v0
.end method

.method public static final varargs rawAggregate(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "expr"    # [Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->rawAggregate(Ljava/lang/String;[Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static final sum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "expression"    # Lcom/google/firebase/firestore/pipeline/Expression;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->sum(Lcom/google/firebase/firestore/pipeline/Expression;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public static final sum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->Companion:Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$Companion;->sum(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    .line 90
    return-object v0
.end method


# virtual methods
.method public final alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    invoke-direct {v0, p1, p0}, Lcom/google/firebase/firestore/pipeline/AliasedAggregate;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/AggregateFunction;)V

    return-object v0
.end method

.method public final toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;
    .locals 6
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    const-string v0, "userDataReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/google/firestore/v1/Function;->newBuilder()Lcom/google/firestore/v1/Function$Builder;

    move-result-object v0

    .line 184
    .local v0, "builder":Lcom/google/firestore/v1/Function$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Function$Builder;->setName(Ljava/lang/String;)Lcom/google/firestore/v1/Function$Builder;

    .line 185
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->params:[Lcom/google/firebase/firestore/pipeline/Expression;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 186
    .local v4, "param":Lcom/google/firebase/firestore/pipeline/Expression;
    invoke-virtual {v4, p1}, Lcom/google/firebase/firestore/pipeline/Expression;->toProto$com_google_firebase_firebase_firestore(Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/firestore/v1/Function$Builder;->addArgs(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;

    .line 185
    .end local v4    # "param":Lcom/google/firebase/firestore/pipeline/Expression;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->options:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    new-instance v2, Lcom/google/firebase/firestore/pipeline/AggregateFunction$toProto$1;

    invoke-direct {v2, v0}, Lcom/google/firebase/firestore/pipeline/AggregateFunction$toProto$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/pipeline/InternalOptions;->forEach$com_google_firebase_firebase_firestore(Lkotlin/jvm/functions/Function2;)V

    .line 189
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setFunctionValue(Lcom/google/firestore/v1/Function$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firestore/v1/Value;

    return-object v1
.end method
