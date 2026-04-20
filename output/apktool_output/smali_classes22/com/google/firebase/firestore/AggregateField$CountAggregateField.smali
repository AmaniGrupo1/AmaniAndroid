.class public Lcom/google/firebase/firestore/AggregateField$CountAggregateField;
.super Lcom/google/firebase/firestore/AggregateField;
.source "AggregateField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/AggregateField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountAggregateField"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 203
    const/4 v0, 0x0

    const-string v1, "count"

    invoke-direct {p0, v0, v1, v0}, Lcom/google/firebase/firestore/AggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;Lcom/google/firebase/firestore/AggregateField$1;)V

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/AggregateField$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/AggregateField$1;

    .line 201
    invoke-direct {p0}, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;-><init>()V

    return-void
.end method


# virtual methods
.method toPipeline()Lcom/google/firebase/firestore/pipeline/AliasedAggregate;
    .locals 2

    .line 209
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->countAll()Lcom/google/firebase/firestore/pipeline/AggregateFunction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/pipeline/AggregateFunction;->alias(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/AliasedAggregate;

    move-result-object v0

    return-object v0
.end method
