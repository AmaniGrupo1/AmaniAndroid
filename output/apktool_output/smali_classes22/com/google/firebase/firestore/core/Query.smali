.class public final Lcom/google/firebase/firestore/core/Query;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/Query$LimitType;,
        Lcom/google/firebase/firestore/core/Query$QueryComparator;
    }
.end annotation


# static fields
.field private static final KEY_ORDERING_ASC:Lcom/google/firebase/firestore/core/OrderBy;

.field private static final KEY_ORDERING_DESC:Lcom/google/firebase/firestore/core/OrderBy;


# instance fields
.field private final collectionGroup:Ljava/lang/String;

.field private final endAt:Lcom/google/firebase/firestore/core/Bound;

.field private final explicitSortOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:J

.field private final limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

.field private memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;

.field private memoizedNormalizedOrderBys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedTarget:Lcom/google/firebase/firestore/core/Target;

.field private final path:Lcom/google/firebase/firestore/model/ResourcePath;

.field private final startAt:Lcom/google/firebase/firestore/core/Bound;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    .line 83
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_ASC:Lcom/google/firebase/firestore/core/OrderBy;

    .line 84
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    .line 85
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_DESC:Lcom/google/firebase/firestore/core/OrderBy;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "collectionGroup"    # Ljava/lang/String;

    .line 138
    nop

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 138
    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "path":Lcom/google/firebase/firestore/model/ResourcePath;
    .end local p2    # "collectionGroup":Ljava/lang/String;
    .local v1, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    .local v2, "collectionGroup":Ljava/lang/String;
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "collectionGroup"    # Ljava/lang/String;
    .param p5, "limit"    # J
    .param p7, "limitType"    # Lcom/google/firebase/firestore/core/Query$LimitType;
    .param p8, "startAt"    # Lcom/google/firebase/firestore/core/Bound;
    .param p9, "endAt"    # Lcom/google/firebase/firestore/core/Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;J",
            "Lcom/google/firebase/firestore/core/Query$LimitType;",
            "Lcom/google/firebase/firestore/core/Bound;",
            "Lcom/google/firebase/firestore/core/Bound;",
            ")V"
        }
    .end annotation

    .line 122
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    .local p4, "explicitSortOrder":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 124
    iput-object p2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    .line 126
    iput-object p3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    .line 127
    iput-wide p5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    .line 128
    iput-object p7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 129
    iput-object p8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    .line 130
    iput-object p9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    .line 131
    return-void
.end method

.method public static atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;
    .locals 2
    .param p0, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 79
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertToStages(Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/List;
    .locals 11
    .param p1, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/UserDataReader;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;>;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v0, "stages":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Stage<*>;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/UserDataReader;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/Query;->pipelineSource(Lcom/google/firebase/firestore/model/DatabaseId;)Lcom/google/firebase/firestore/pipeline/Stage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 556
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    new-instance v3, Lcom/google/firebase/firestore/pipeline/WhereStage;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Filter;->toPipelineExpr()Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v1

    .line 561
    .local v1, "normalizedOrderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Field;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .local v3, "orderings":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Ordering;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/core/OrderBy;

    .line 565
    .local v5, "order":Lcom/google/firebase/firestore/core/OrderBy;
    new-instance v6, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/firebase/firestore/pipeline/Field;-><init>(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 566
    .local v6, "field":Lcom/google/firebase/firestore/pipeline/Field;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    if-ne v7, v8, :cond_1

    .line 568
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/Field;->ascending()Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 570
    :cond_1
    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/Field;->descending()Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v5    # "order":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v6    # "field":Lcom/google/firebase/firestore/pipeline/Field;
    :goto_2
    goto :goto_1

    .line 578
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v4, "existenceCheckFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Field;>;"
    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/OrderBy;

    .line 580
    .local v6, "order":Lcom/google/firebase/firestore/core/OrderBy;
    new-instance v7, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/firebase/firestore/pipeline/Field;-><init>(Lcom/google/firebase/firestore/model/FieldPath;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v6    # "order":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_3

    .line 582
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    .line 583
    new-instance v5, Lcom/google/firebase/firestore/pipeline/WhereStage;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/pipeline/Field;->exists()Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v6

    sget-object v8, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v5, v6, v8}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 584
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_5

    .line 585
    new-instance v5, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda0;-><init>()V

    sget-object v6, Lcom/google/firebase/firestore/pipeline/Expression;->Companion:Lcom/google/firebase/firestore/pipeline/Expression$Companion;

    .line 587
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda1;

    invoke-direct {v8, v6}, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/pipeline/Expression$Companion;)V

    .line 586
    invoke-static {v4, v5, v8}, Lcom/google/firebase/firestore/core/Query;->skipFirstToArray(Ljava/util/List;Lcom/google/firebase/firestore/util/IntFunction;Lcom/google/firebase/firestore/util/Function;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 588
    .local v5, "conditions":[Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    new-instance v6, Lcom/google/firebase/firestore/pipeline/WhereStage;

    .line 590
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/Field;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Field;->exists()Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/google/firebase/firestore/pipeline/Expression;->and(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v8

    sget-object v9, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v6, v8, v9}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 588
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    .end local v5    # "conditions":[Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v5, :cond_6

    .line 594
    new-instance v5, Lcom/google/firebase/firestore/pipeline/WhereStage;

    iget-object v6, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    new-instance v8, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda2;-><init>()V

    .line 596
    invoke-static {v6, v2, v8}, Lcom/google/firebase/firestore/core/Query;->whereConditionsFromCursor(Lcom/google/firebase/firestore/core/Bound;Ljava/util/List;Lcom/google/firebase/firestore/util/BiFunction;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v6

    sget-object v8, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v5, v6, v8}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 594
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_6
    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v5, :cond_7

    .line 601
    new-instance v5, Lcom/google/firebase/firestore/pipeline/WhereStage;

    iget-object v6, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    new-instance v8, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/google/firebase/firestore/core/Query$$ExternalSyntheticLambda3;-><init>()V

    .line 603
    invoke-static {v6, v2, v8}, Lcom/google/firebase/firestore/core/Query;->whereConditionsFromCursor(Lcom/google/firebase/firestore/core/Bound;Ljava/util/List;Lcom/google/firebase/firestore/util/BiFunction;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v6

    sget-object v8, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v5, v6, v8}, Lcom/google/firebase/firestore/pipeline/WhereStage;-><init>(Lcom/google/firebase/firestore/pipeline/Expression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 601
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_7
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->hasLimit()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 610
    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    sget-object v6, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v5, v6, :cond_8

    .line 611
    new-instance v5, Lcom/google/firebase/firestore/pipeline/SortStage;

    new-array v6, v7, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/firebase/firestore/pipeline/Ordering;

    sget-object v7, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v5, v6, v7}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v5, Lcom/google/firebase/firestore/pipeline/LimitStage;

    iget-wide v6, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    long-to-int v6, v6

    sget-object v7, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v5, v6, v7}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 614
    :cond_8
    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 619
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v5, "reversedOrderings":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Ordering;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 622
    .local v8, "ordering":Lcom/google/firebase/firestore/pipeline/Ordering;
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Ordering;->getDir()Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    move-result-object v9

    sget-object v10, Lcom/google/firebase/firestore/pipeline/Ordering$Direction;->ASCENDING:Lcom/google/firebase/firestore/pipeline/Ordering$Direction;

    if-ne v9, v10, :cond_9

    .line 623
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Ordering;->getExpr()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/firestore/pipeline/Expression;->descending()Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v9

    goto :goto_6

    .line 624
    :cond_9
    invoke-virtual {v8}, Lcom/google/firebase/firestore/pipeline/Ordering;->getExpr()Lcom/google/firebase/firestore/pipeline/Expression;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/firestore/pipeline/Expression;->ascending()Lcom/google/firebase/firestore/pipeline/Ordering;

    move-result-object v9

    :goto_6
    nop

    .line 625
    .local v9, "reversed":Lcom/google/firebase/firestore/pipeline/Ordering;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v8    # "ordering":Lcom/google/firebase/firestore/pipeline/Ordering;
    .end local v9    # "reversed":Lcom/google/firebase/firestore/pipeline/Ordering;
    goto :goto_5

    .line 627
    :cond_a
    new-instance v6, Lcom/google/firebase/firestore/pipeline/SortStage;

    new-array v8, v7, [Lcom/google/firebase/firestore/pipeline/Ordering;

    .line 628
    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/firebase/firestore/pipeline/Ordering;

    sget-object v9, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v6, v8, v9}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    .line 627
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v6, Lcom/google/firebase/firestore/pipeline/LimitStage;

    iget-wide v8, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    long-to-int v8, v8

    sget-object v9, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v6, v8, v9}, Lcom/google/firebase/firestore/pipeline/LimitStage;-><init>(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v6, Lcom/google/firebase/firestore/pipeline/SortStage;

    new-array v7, v7, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/firebase/firestore/pipeline/Ordering;

    sget-object v8, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v5    # "reversedOrderings":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Ordering;>;"
    goto :goto_7

    .line 615
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "limitToLast() queries require specifying at least one orderBy() clause"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 633
    :cond_c
    new-instance v5, Lcom/google/firebase/firestore/pipeline/SortStage;

    new-array v6, v7, [Lcom/google/firebase/firestore/pipeline/Ordering;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/firebase/firestore/pipeline/Ordering;

    sget-object v7, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v5, v6, v7}, Lcom/google/firebase/firestore/pipeline/SortStage;-><init>([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :goto_7
    return-object v0
.end method

.method static synthetic lambda$convertToStages$0(I)[Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 1
    .param p0, "x$0"    # I

    .line 587
    new-array v0, p0, [Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    return-object v0
.end method

.method private matchesBounds(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 3
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 432
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/firebase/firestore/core/Bound;->sortsBeforeDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    return v1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/firebase/firestore/core/Bound;->sortsAfterDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    return v1

    .line 438
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesFilters(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 3
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 404
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 405
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Filter;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    const/4 v0, 0x0

    return v0

    .line 408
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesOrderBy(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 4
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 421
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/OrderBy;

    .line 423
    .local v1, "order":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {p1, v2}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    if-nez v2, :cond_0

    .line 424
    const/4 v0, 0x0

    return v0

    .line 426
    .end local v1    # "order":Lcom/google/firebase/firestore/core/OrderBy;
    :cond_0
    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesPathAndCollectionGroup(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 391
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 392
    .local v0, "docPath":Lcom/google/firebase/firestore/model/ResourcePath;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 395
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/firebase/firestore/model/DocumentKey;->hasCollectionId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v1

    .line 399
    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 396
    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {v4, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 399
    :cond_2
    invoke-virtual {v4, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method private pipelineSource(Lcom/google/firebase/firestore/model/DatabaseId;)Lcom/google/firebase/firestore/pipeline/Stage;
    .locals 4
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DatabaseId;",
            ")",
            "Lcom/google/firebase/firestore/pipeline/Stage<",
            "*>;"
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->isDocumentQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Lcom/google/firebase/firestore/pipeline/DocumentsSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/pipeline/DocumentsSource;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    new-instance v2, Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;

    invoke-direct {v2}, Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/pipeline/CollectionGroupSource;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/CollectionGroupOptions;)V

    return-object v0

    .line 675
    :cond_1
    new-instance v0, Lcom/google/firebase/firestore/pipeline/CollectionSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    new-instance v2, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-direct {v2, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    sget-object v3, Lcom/google/firebase/firestore/pipeline/InternalOptions;->EMPTY:Lcom/google/firebase/firestore/pipeline/InternalOptions;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/pipeline/CollectionSource;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V

    return-object v0
.end method

.method private static skipFirstToArray(Ljava/util/List;Lcom/google/firebase/firestore/util/IntFunction;Lcom/google/firebase/firestore/util/Function;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/IntFunction<",
            "[TR;>;",
            "Lcom/google/firebase/firestore/util/Function<",
            "TT;TR;>;)[TR;"
        }
    .end annotation

    .line 642
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "generator":Lcom/google/firebase/firestore/util/IntFunction;, "Lcom/google/firebase/firestore/util/IntFunction<[TR;>;"
    .local p2, "map":Lcom/google/firebase/firestore/util/Function;, "Lcom/google/firebase/firestore/util/Function<TT;TR;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 643
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Lcom/google/firebase/firestore/util/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 644
    .local v1, "result":[Ljava/lang/Object;, "[TR;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 645
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static whereConditionsFromCursor(Lcom/google/firebase/firestore/core/Bound;Ljava/util/List;Lcom/google/firebase/firestore/util/BiFunction;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    .locals 13
    .param p0, "bound"    # Lcom/google/firebase/firestore/core/Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Bound;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/pipeline/Field;",
            ">;",
            "Lcom/google/firebase/firestore/util/BiFunction<",
            "Lcom/google/firebase/firestore/pipeline/Expression;",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;",
            ">;)",
            "Lcom/google/firebase/firestore/pipeline/BooleanExpression;"
        }
    .end annotation

    .line 652
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/pipeline/Field;>;"
    .local p2, "cmp":Lcom/google/firebase/firestore/util/BiFunction;, "Lcom/google/firebase/firestore/util/BiFunction<Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;Lcom/google/firebase/firestore/pipeline/BooleanExpression;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v0

    .line 653
    .local v0, "boundPosition":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 654
    .local v1, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "Bound positions must not exceed order fields."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 655
    add-int/lit8 v2, v1, -0x1

    .line 656
    .local v2, "last":I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lcom/google/firebase/firestore/util/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    .line 657
    .local v5, "condition":Lcom/google/firebase/firestore/pipeline/BooleanExpression;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 658
    new-array v6, v3, [Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/pipeline/Expression;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/firebase/firestore/pipeline/Expression;->equal(Lcom/google/firebase/firestore/pipeline/Expression;Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/pipeline/Expression;->or(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v5

    .line 660
    :cond_1
    add-int/lit8 v6, v1, -0x2

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 661
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/pipeline/Field;

    .line 662
    .local v7, "field":Lcom/google/firebase/firestore/pipeline/Field;
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firestore/v1/Value;

    .line 663
    .local v8, "value":Lcom/google/firestore/v1/Value;
    invoke-interface {p2, v7, v8}, Lcom/google/firebase/firestore/util/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    new-array v10, v3, [Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/pipeline/Field;->equal(Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v11

    new-array v12, v3, [Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    aput-object v5, v12, v4

    invoke-static {v11, v12}, Lcom/google/firebase/firestore/pipeline/Expression;->and(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Lcom/google/firebase/firestore/pipeline/Expression;->or(Lcom/google/firebase/firestore/pipeline/BooleanExpression;[Lcom/google/firebase/firestore/pipeline/BooleanExpression;)Lcom/google/firebase/firestore/pipeline/BooleanExpression;

    move-result-object v5

    .line 660
    .end local v7    # "field":Lcom/google/firebase/firestore/pipeline/Field;
    .end local v8    # "value":Lcom/google/firestore/v1/Value;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 665
    .end local v6    # "i":I
    :cond_2
    return-object v5
.end method


# virtual methods
.method public asCollectionQueryAtPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;
    .locals 10
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 319
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    const/4 v2, 0x0

    move-object v1, p1

    .end local p1    # "path":Lcom/google/firebase/firestore/model/ResourcePath;
    .local v1, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 452
    new-instance v0, Lcom/google/firebase/firestore/core/Query$QueryComparator;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/Query$QueryComparator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;
    .locals 10
    .param p1, "bound"    # Lcom/google/firebase/firestore/core/Bound;

    .line 309
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v9, p1

    .end local p1    # "bound":Lcom/google/firebase/firestore/core/Bound;
    .local v9, "bound":Lcom/google/firebase/firestore/core/Bound;
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 703
    if-ne p0, p1, :cond_0

    .line 704
    const/4 v0, 0x1

    return v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/Query;

    .line 712
    .local v1, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-eq v2, v3, :cond_2

    .line 713
    return v0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/Target;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 707
    .end local v1    # "query":Lcom/google/firebase/firestore/core/Query;
    :cond_3
    :goto_0
    return v0
.end method

.method public filter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Query;
    .locals 12
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 232
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->isDocumentQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No filter is allowed for document query"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    .line 235
    .local v5, "updatedFilter":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v2, Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v7, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v10, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v11, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v2
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 2

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getCanonicalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionGroup()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getEndAt()Lcom/google/firebase/firestore/core/Bound;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    return-object v0
.end method

.method public getExplicitOrderBy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getInequalityFilterFields()Ljava/util/SortedSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 214
    .local v0, "result":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 215
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 216
    .local v4, "subFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->isInequality()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v4    # "subFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_1

    .line 220
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_1
    goto :goto_0

    .line 222
    :cond_2
    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    return-wide v0
.end method

.method public getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v0
.end method

.method public declared-synchronized getNormalizedOrderBy()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedNormalizedOrderBys:Ljava/util/List;

    if-nez v0, :cond_6

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 356
    .local v1, "fieldsNormalized":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 357
    .local v3, "explicit":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v4, v3, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    nop

    .end local v3    # "explicit":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_0

    .line 363
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v2

    goto :goto_1

    .line 365
    :cond_1
    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    :goto_1
    nop

    .line 373
    .local v2, "lastDirection":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getInequalityFilterFields()Ljava/util/SortedSet;

    move-result-object v3

    .line 374
    .local v3, "inequalityFields":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldPath;

    .line 375
    .local v5, "field":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v6

    if-nez v6, :cond_2

    .line 376
    invoke-static {v2, v5}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v5    # "field":Lcom/google/firebase/firestore/model/FieldPath;
    :cond_2
    goto :goto_2

    .line 381
    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 382
    sget-object v4, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_ASC:Lcom/google/firebase/firestore/core/OrderBy;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_DESC:Lcom/google/firebase/firestore/core/OrderBy;

    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/firebase/firestore/core/Query;->memoizedNormalizedOrderBys:Ljava/util/List;

    .line 387
    .end local v0    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    .end local v1    # "fieldsNormalized":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "lastDirection":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .end local v3    # "inequalityFields":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedNormalizedOrderBys:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method public getStartAt()Lcom/google/firebase/firestore/core/Bound;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    return-object v0
.end method

.method public hasLimit()Z
    .locals 4

    .line 193
    iget-wide v0, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 721
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query$LimitType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCollectionGroupQuery()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDocumentQuery()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public limitToFirst(J)Lcom/google/firebase/firestore/core/Query;
    .locals 10
    .param p1, "limit"    # J

    .line 262
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-wide v5, p1

    .end local p1    # "limit":J
    .local v5, "limit":J
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v0
.end method

.method public limitToLast(J)Lcom/google/firebase/firestore/core/Query;
    .locals 10
    .param p1, "limit"    # J

    .line 280
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-wide v5, p1

    .end local p1    # "limit":J
    .local v5, "limit":J
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v0
.end method

.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 1
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 443
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->isFoundDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesPathAndCollectionGroup(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesOrderBy(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesFilters(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesBounds(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0
.end method

.method public matchesAllDocuments()Z
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/OrderBy;

    iget-object v0, v0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 173
    :goto_0
    return v1
.end method

.method public orderBy(Lcom/google/firebase/firestore/core/OrderBy;)Lcom/google/firebase/firestore/core/Query;
    .locals 12
    .param p1, "order"    # Lcom/google/firebase/firestore/core/OrderBy;

    .line 247
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->isDocumentQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No ordering is allowed for document query"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    .line 250
    .local v6, "updatedSortOrder":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v2, Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-wide v7, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v10, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v11, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v2
.end method

.method public startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;
    .locals 10
    .param p1, "bound"    # Lcom/google/firebase/firestore/core/Bound;

    .line 298
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v8, p1

    .end local p1    # "bound":Lcom/google/firebase/firestore/core/Bound;
    .local v8, "bound":Lcom/google/firebase/firestore/core/Bound;
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v0
.end method

.method public declared-synchronized toAggregateTarget()Lcom/google/firebase/firestore/core/Target;
    .locals 1

    monitor-enter p0

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/Query;->toTarget(Ljava/util/List;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;

    .line 689
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 685
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toPipeline(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    .line 536
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/core/Query;->convertToStages(Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;)V

    return-object v0
.end method

.method public toRealtimePipeline(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;)Lcom/google/firebase/firestore/RealtimePipeline;
    .locals 6
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "userDataReader"    # Lcom/google/firebase/firestore/UserDataReader;

    .line 542
    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline;

    new-instance v2, Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 544
    invoke-virtual {p2}, Lcom/google/firebase/firestore/UserDataReader;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;)V

    .line 546
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/core/Query;->convertToStages(Lcom/google/firebase/firestore/UserDataReader;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    .end local p2    # "userDataReader":Lcom/google/firebase/firestore/UserDataReader;
    .local v1, "firestore":Lcom/google/firebase/firestore/FirebaseFirestore;
    .local v3, "userDataReader":Lcom/google/firebase/firestore/UserDataReader;
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/RealtimePipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/remote/RemoteSerializer;Lcom/google/firebase/firestore/UserDataReader;Ljava/util/List;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;)V

    .line 542
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Query(target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, ";limitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query$LimitType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized toTarget()Lcom/google/firebase/firestore/core/Target;
    .locals 1

    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedTarget:Lcom/google/firebase/firestore/core/Target;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/Query;->toTarget(Ljava/util/List;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedTarget:Lcom/google/firebase/firestore/core/Target;

    .line 490
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedTarget:Lcom/google/firebase/firestore/core/Target;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized toTarget(Ljava/util/List;)Lcom/google/firebase/firestore/core/Target;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;)",
            "Lcom/google/firebase/firestore/core/Target;"
        }
    .end annotation

    .local p1, "orderBys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v0, v1, :cond_0

    .line 496
    new-instance v2, Lcom/google/firebase/firestore/core/Target;

    .line 497
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 498
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getCollectionGroup()Ljava/lang/String;

    move-result-object v4

    .line 499
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v5

    iget-wide v7, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    .line 502
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v9

    .line 503
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v10

    move-object v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/firestore/core/Target;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-object v2

    .line 506
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 507
    .local v5, "newOrderBy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/OrderBy;

    .line 509
    .local v1, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    if-ne v2, v3, :cond_1

    .line 510
    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    goto :goto_1

    .line 511
    :cond_1
    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    :goto_1
    nop

    .line 512
    .local v2, "dir":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    nop

    .end local v1    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v2    # "dir":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/firebase/firestore/core/Bound;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v8, v1

    .line 519
    .local v8, "newStartAt":Lcom/google/firebase/firestore/core/Bound;
    :goto_2
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v0, :cond_4

    .line 520
    new-instance v1, Lcom/google/firebase/firestore/core/Bound;

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    move-object v9, v1

    goto :goto_3

    .line 521
    :cond_4
    move-object v9, v1

    :goto_3
    nop

    .line 523
    .local v9, "newEndAt":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/core/Target;

    .line 524
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .line 525
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/core/Target;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-object v1

    .line 494
    .end local v5    # "newOrderBy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/core/OrderBy;>;"
    .end local v8    # "newStartAt":Lcom/google/firebase/firestore/core/Bound;
    .end local v9    # "newEndAt":Lcom/google/firebase/firestore/core/Bound;
    .end local p1    # "orderBys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
