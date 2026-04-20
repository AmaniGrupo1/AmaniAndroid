.class public Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
.super Lcom/google/firebase/firestore/AggregateField;
.source "AggregateField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/AggregateField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AverageAggregateField"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/FieldPath;)V
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 229
    const-string v0, "average"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/firestore/AggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;Lcom/google/firebase/firestore/AggregateField$1;)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "x1"    # Lcom/google/firebase/firestore/AggregateField$1;

    .line 227
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;)V

    return-void
.end method


# virtual methods
.method toPipeline()Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/pipeline/Expression;->field(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/pipeline/Field;->average()Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    move-result-object v0

    return-object v0
.end method
