.class final Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;
.super Ljava/lang/Object;
.source "Logical.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;->INSTANCE:Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "a"    # Lcom/google/firestore/v1/Value;
    .param p2, "b"    # Lcom/google/firestore/v1/Value;

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    if-nez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/model/Values$Enterprise;->INSTANCE:Lcom/google/firebase/firestore/model/Values$Enterprise;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/Values$Enterprise;->getCompare$com_google_firebase_firebase_firestore()Lkotlin/reflect/KFunction;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 119
    .local v0, "result":I
    if-nez v0, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    if-lez v0, :cond_1

    .line 120
    .end local v0    # "result":I
    :goto_0
    move-object v0, p2

    goto :goto_2

    :goto_1
    move-object v0, p1

    :goto_2
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/google/firestore/v1/Value;

    move-object v1, p2

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/pipeline/evaluation/LogicalKt$evaluateLogicalMinimum$1$minimum$1;->invoke(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method
