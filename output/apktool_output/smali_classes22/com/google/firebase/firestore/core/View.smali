.class public Lcom/google/firebase/firestore/core/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/View$DocumentChanges;,
        Lcom/google/firebase/firestore/core/View$LimitEdges;
    }
.end annotation


# instance fields
.field private current:Z

.field private documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

.field private limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

.field private syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

.field private syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/QueryOrPipeline;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p2, "remoteDocuments":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    .line 113
    sget-object v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->NONE:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 114
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentSet;->emptySet(Ljava/util/Comparator;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 115
    iput-object p2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 116
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 117
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 118
    return-void
.end method

.method private applyTargetChange(Lcom/google/firebase/firestore/remote/TargetChange;)V
    .locals 5
    .param p1, "targetChange"    # Lcom/google/firebase/firestore/remote/TargetChange;

    .line 404
    if-eqz p1, :cond_3

    .line 405
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 406
    .local v1, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 407
    .end local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 409
    .restart local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 410
    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 409
    const-string v4, "Modified document %s not found in view."

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 413
    .end local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 414
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 415
    .restart local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 416
    .end local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_2

    .line 417
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->isCurrent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    .line 419
    :cond_3
    return-void
.end method

.method private static changeTypeOrder(Lcom/google/firebase/firestore/core/DocumentViewChange;)I
    .locals 3
    .param p0, "change"    # Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 491
    sget-object v0, Lcom/google/firebase/firestore/core/View$1;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown change type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 500
    :pswitch_1
    return v1

    .line 495
    :pswitch_2
    return v1

    .line 493
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLimit(Lcom/google/firebase/firestore/core/QueryOrPipeline;)Ljava/lang/Long;
    .locals 3
    .param p0, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;

    .line 509
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->isPipeline()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 510
    nop

    .line 511
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->pipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/core/PipelineUtilKt;->getLastEffectiveLimit(Lcom/google/firebase/firestore/RealtimePipeline;)Ljava/lang/Integer;

    move-result-object v0

    .line 512
    .local v0, "limit":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 513
    return-object v1

    .line 515
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 517
    .end local v0    # "limit":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->query()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    .line 518
    .local v0, "q":Lcom/google/firebase/firestore/core/Query;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->hasLimit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 519
    return-object v1

    .line 521
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getLimit()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private static getLimitEdges(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/DocumentSet;)Lcom/google/firebase/firestore/core/View$LimitEdges;
    .locals 8
    .param p0, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;
    .param p1, "oldDocumentSet"    # Lcom/google/firebase/firestore/model/DocumentSet;

    .line 536
    invoke-static {p0}, Lcom/google/firebase/firestore/core/View;->getLimit(Lcom/google/firebase/firestore/core/QueryOrPipeline;)Ljava/lang/Long;

    move-result-object v0

    .line 537
    .local v0, "limit":Ljava/lang/Long;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 538
    new-instance v2, Lcom/google/firebase/firestore/core/View$LimitEdges;

    invoke-direct {v2, v1, v1}, Lcom/google/firebase/firestore/core/View$LimitEdges;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V

    return-object v2

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->isPipeline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 544
    new-instance v2, Lcom/google/firebase/firestore/core/View$LimitEdges;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->getLastDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/firebase/firestore/core/View$LimitEdges;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V

    return-object v2

    .line 545
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 546
    new-instance v2, Lcom/google/firebase/firestore/core/View$LimitEdges;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->getFirstDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/firebase/firestore/core/View$LimitEdges;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V

    return-object v2

    .line 549
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->query()Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    .line 550
    .local v2, "q":Lcom/google/firebase/firestore/core/Query;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v3, v4, :cond_3

    .line 551
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query;->getLimit()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 552
    new-instance v3, Lcom/google/firebase/firestore/core/View$LimitEdges;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->getLastDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/firebase/firestore/core/View$LimitEdges;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V

    return-object v3

    .line 553
    :cond_3
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v3, v4, :cond_4

    .line 554
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query;->getLimit()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 555
    new-instance v3, Lcom/google/firebase/firestore/core/View$LimitEdges;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->getFirstDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/firebase/firestore/core/View$LimitEdges;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V

    return-object v3

    .line 558
    .end local v2    # "q":Lcom/google/firebase/firestore/core/Query;
    :cond_4
    new-instance v2, Lcom/google/firebase/firestore/core/View$LimitEdges;

    invoke-direct {v2, v1, v1}, Lcom/google/firebase/firestore/core/View$LimitEdges;-><init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)V

    return-object v2
.end method

.method private static getLimitType(Lcom/google/firebase/firestore/core/QueryOrPipeline;)Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 5
    .param p0, "query"    # Lcom/google/firebase/firestore/core/QueryOrPipeline;

    .line 526
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->isPipeline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-static {p0}, Lcom/google/firebase/firestore/core/View;->getLimit(Lcom/google/firebase/firestore/core/QueryOrPipeline;)Ljava/lang/Long;

    move-result-object v0

    .line 529
    .local v0, "limit":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    :goto_0
    return-object v1

    .line 531
    .end local v0    # "limit":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->query()Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$applyChanges$0(Ljava/util/Comparator;Lcom/google/firebase/firestore/core/DocumentViewChange;Lcom/google/firebase/firestore/core/DocumentViewChange;)I
    .locals 4
    .param p0, "queryComparator"    # Ljava/util/Comparator;
    .param p1, "o1"    # Lcom/google/firebase/firestore/core/DocumentViewChange;
    .param p2, "o2"    # Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 346
    invoke-static {p1}, Lcom/google/firebase/firestore/core/View;->changeTypeOrder(Lcom/google/firebase/firestore/core/DocumentViewChange;)I

    move-result v0

    .line 347
    .local v0, "i1":I
    invoke-static {p2}, Lcom/google/firebase/firestore/core/View;->changeTypeOrder(Lcom/google/firebase/firestore/core/DocumentViewChange;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 348
    .local v1, "typeComp":I
    if-eqz v1, :cond_0

    .line 349
    return v1

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method private shouldBeLimboDoc(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 456
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    return v1

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/DocumentSet;->getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    .line 461
    .local v0, "doc":Lcom/google/firebase/firestore/model/Document;
    if-nez v0, :cond_1

    .line 462
    return v1

    .line 469
    :cond_1
    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    return v1

    .line 474
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldWaitForSyncedDocument(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)Z
    .locals 1
    .param p1, "oldDoc"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "newDoc"    # Lcom/google/firebase/firestore/model/Document;

    .line 293
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {p2}, Lcom/google/firebase/firestore/model/Document;->hasCommittedMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {p2}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0
.end method

.method private updateLimboDocuments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;"
        }
    .end annotation

    .line 423
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    if-nez v0, :cond_0

    .line 424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 430
    .local v0, "oldLimboDocs":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 431
    iget-object v1, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 432
    .local v2, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/core/View;->shouldBeLimboDoc(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 435
    .end local v2    # "doc":Lcom/google/firebase/firestore/model/Document;
    :cond_1
    goto :goto_0

    .line 438
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 439
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .local v1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 441
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 442
    new-instance v4, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    sget-object v5, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange;-><init>(Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_3
    goto :goto_1

    .line 446
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 447
    .restart local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v0, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 448
    new-instance v4, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    sget-object v5, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange;-><init>(Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_5
    goto :goto_2

    .line 451
    :cond_6
    return-object v1
.end method


# virtual methods
.method public applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 1
    .param p1, "docChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v0

    return-object v0
.end method

.method public applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 1
    .param p1, "docChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .param p2, "targetChange"    # Lcom/google/firebase/firestore/remote/TargetChange;

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;Z)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v0

    return-object v0
.end method

.method public applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;Z)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 19
    .param p1, "docChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .param p2, "targetChange"    # Lcom/google/firebase/firestore/remote/TargetChange;
    .param p3, "targetIsPendingReset"    # Z

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v1}, Lcom/google/firebase/firestore/core/View$DocumentChanges;->access$100(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "Cannot apply changes that need a refill"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v11, v0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 336
    .local v11, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    iget-object v3, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    iput-object v3, v0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 337
    iget-object v3, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iput-object v3, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 341
    iget-object v3, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->changeSet:Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->getChanges()Ljava/util/List;

    move-result-object v12

    .line 342
    .local v12, "viewChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    iget-object v3, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->comparator()Ljava/util/Comparator;

    move-result-object v3

    .line 343
    .local v3, "queryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v5, Lcom/google/firebase/firestore/core/View$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/google/firebase/firestore/core/View$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    invoke-static {v12, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    invoke-direct {v0, v2}, Lcom/google/firebase/firestore/core/View;->applyTargetChange(Lcom/google/firebase/firestore/remote/TargetChange;)V

    .line 355
    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/google/firebase/firestore/core/View;->updateLimboDocuments()Ljava/util/List;

    move-result-object v5

    .line 359
    .local v5, "limboDocumentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    :goto_0
    iget-object v7, v0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v7}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, v0, Lcom/google/firebase/firestore/core/View;->current:Z

    if-eqz v7, :cond_1

    if-nez p3, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v6

    .line 360
    .local v7, "synced":Z
    :goto_1
    if-eqz v7, :cond_2

    sget-object v8, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->SYNCED:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->LOCAL:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 361
    .local v8, "newSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    :goto_2
    iget-object v9, v0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    if-eq v8, v9, :cond_3

    move v15, v4

    goto :goto_3

    :cond_3
    move v15, v6

    .line 362
    .local v15, "syncStatedChanged":Z
    :goto_3
    iput-object v8, v0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 363
    const/16 v18, 0x0

    .line 365
    .local v18, "snapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    if-eqz v15, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v8

    move-object/from16 v6, v18

    goto :goto_7

    .line 366
    :cond_5
    :goto_4
    sget-object v9, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->LOCAL:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    if-ne v8, v9, :cond_6

    move v13, v4

    goto :goto_5

    :cond_6
    move v13, v6

    .line 368
    .local v13, "fromCache":Z
    :goto_5
    if-nez v2, :cond_8

    :cond_7
    move/from16 v17, v6

    goto :goto_6

    :cond_8
    invoke-virtual {v2}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    move/from16 v17, v4

    .line 369
    .local v17, "hasCachedResults":Z
    :goto_6
    move-object v4, v8

    .end local v8    # "newSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    .local v4, "newSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    new-instance v8, Lcom/google/firebase/firestore/core/ViewSnapshot;

    iget-object v9, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    iget-object v10, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    iget-object v14, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/google/firebase/firestore/core/ViewSnapshot;-><init>(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/model/DocumentSet;Ljava/util/List;ZLcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)V

    move-object/from16 v18, v8

    move-object/from16 v6, v18

    .line 381
    .end local v13    # "fromCache":Z
    .end local v17    # "hasCachedResults":Z
    .end local v18    # "snapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    .local v6, "snapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    :goto_7
    new-instance v8, Lcom/google/firebase/firestore/core/ViewChange;

    invoke-direct {v8, v6, v5}, Lcom/google/firebase/firestore/core/ViewChange;-><init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Ljava/util/List;)V

    return-object v8
.end method

.method public applyOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 7
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 389
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    if-ne p1, v0, :cond_0

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    .line 394
    new-instance v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    new-instance v3, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    invoke-direct {v3}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;-><init>()V

    iget-object v4, p0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/core/View$DocumentChanges;-><init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZLcom/google/firebase/firestore/core/View$1;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v0

    return-object v0

    .line 399
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/core/ViewChange;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/ViewChange;-><init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Ljava/util/List;)V

    return-object v0
.end method

.method public computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)",
            "Lcom/google/firebase/firestore/core/View$DocumentChanges;"
        }
    .end annotation

    .line 133
    .local p1, "docChanges":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v0

    return-object v0
.end method

.method public computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .locals 20
    .param p2, "previousChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/firestore/core/View$DocumentChanges;",
            ")",
            "Lcom/google/firebase/firestore/core/View$DocumentChanges;"
        }
    .end annotation

    .line 150
    .local p1, "docChanges":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->changeSet:Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    invoke-direct {v2}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;-><init>()V

    :goto_0
    move-object v5, v2

    .line 152
    .local v5, "changeSet":Lcom/google/firebase/firestore/core/DocumentViewChangeSet;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 154
    .local v2, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 155
    .local v3, "newMutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    :goto_2
    move-object v4, v2

    .line 156
    .local v4, "newDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    const/4 v6, 0x0

    .line 166
    .local v6, "needsRefill":Z
    iget-object v7, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-static {v7, v2}, Lcom/google/firebase/firestore/core/View;->getLimitEdges(Lcom/google/firebase/firestore/core/QueryOrPipeline;Lcom/google/firebase/firestore/model/DocumentSet;)Lcom/google/firebase/firestore/core/View$LimitEdges;

    move-result-object v9

    .line 167
    .local v9, "limitEdges":Lcom/google/firebase/firestore/core/View$LimitEdges;
    iget-object v10, v9, Lcom/google/firebase/firestore/core/View$LimitEdges;->first:Lcom/google/firebase/firestore/model/Document;

    .line 168
    .local v10, "lastDocInLimit":Lcom/google/firebase/firestore/model/Document;
    iget-object v11, v9, Lcom/google/firebase/firestore/core/View$LimitEdges;->second:Lcom/google/firebase/firestore/model/Document;

    .line 170
    .local v11, "firstDocInLimit":Lcom/google/firebase/firestore/model/Document;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 171
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 172
    .local v14, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v2, v14}, Lcom/google/firebase/firestore/model/DocumentSet;->getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v15

    .line 173
    .local v15, "oldDoc":Lcom/google/firebase/firestore/model/Document;
    iget-object v12, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v12, v13}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/model/Document;

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    .line 175
    .local v12, "newDoc":Lcom/google/firebase/firestore/model/Document;
    :goto_4
    if-eqz v15, :cond_4

    iget-object v13, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 176
    invoke-interface {v15}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 180
    .local v1, "oldDocHadPendingMutations":Z
    :goto_5
    if-eqz v12, :cond_6

    .line 182
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 183
    move-object/from16 v17, v2

    .end local v2    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .local v17, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 184
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->hasCommittedMutations()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    .line 182
    .end local v17    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v2    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :cond_5
    move-object/from16 v17, v2

    .line 184
    .end local v2    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v17    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :goto_6
    const/16 v16, 0x1

    goto :goto_7

    .line 180
    .end local v17    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v2    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :cond_6
    move-object/from16 v17, v2

    .line 184
    .end local v2    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v17    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :cond_7
    const/16 v16, 0x0

    :goto_7
    move/from16 v2, v16

    .line 186
    .local v2, "newDocHasPendingMutations":Z
    const/4 v13, 0x0

    .line 189
    .local v13, "changeApplied":Z
    if-eqz v15, :cond_d

    if-eqz v12, :cond_d

    .line 190
    move/from16 v18, v6

    .end local v6    # "needsRefill":Z
    .local v18, "needsRefill":Z
    invoke-interface {v15}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v6

    move-object/from16 v19, v7

    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/model/ObjectValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 191
    .local v6, "docsEqual":Z
    if-nez v6, :cond_b

    .line 192
    invoke-direct {v0, v15, v12}, Lcom/google/firebase/firestore/core/View;->shouldWaitForSyncedDocument(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 193
    sget-object v7, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v7, v12}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 194
    const/4 v7, 0x1

    .line 196
    .end local v13    # "changeApplied":Z
    .local v7, "changeApplied":Z
    iget-object v13, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-virtual {v13}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->comparator()Ljava/util/Comparator;

    move-result-object v13

    .line 197
    .local v13, "queryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/firebase/firestore/model/Document;>;"
    if-eqz v10, :cond_8

    invoke-interface {v13, v12, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    if-gtz v16, :cond_9

    :cond_8
    if-eqz v11, :cond_a

    .line 199
    invoke-interface {v13, v12, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    if-gez v16, :cond_a

    .line 202
    :cond_9
    const/16 v16, 0x1

    .end local v18    # "needsRefill":Z
    .local v16, "needsRefill":Z
    goto :goto_8

    .line 204
    .end local v13    # "queryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/firebase/firestore/model/Document;>;"
    .end local v16    # "needsRefill":Z
    .restart local v18    # "needsRefill":Z
    :cond_a
    move/from16 v16, v18

    .end local v18    # "needsRefill":Z
    .restart local v16    # "needsRefill":Z
    :goto_8
    move v13, v7

    move/from16 v6, v16

    goto :goto_9

    .line 205
    .end local v7    # "changeApplied":Z
    .end local v16    # "needsRefill":Z
    .local v13, "changeApplied":Z
    .restart local v18    # "needsRefill":Z
    :cond_b
    if-eq v1, v2, :cond_c

    .line 206
    sget-object v7, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v7, v12}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 207
    const/4 v7, 0x1

    move v13, v7

    move/from16 v6, v18

    .end local v13    # "changeApplied":Z
    .restart local v7    # "changeApplied":Z
    goto :goto_9

    .line 209
    .end local v6    # "docsEqual":Z
    .end local v7    # "changeApplied":Z
    .restart local v13    # "changeApplied":Z
    :cond_c
    move/from16 v6, v18

    .end local v18    # "needsRefill":Z
    .local v6, "needsRefill":Z
    :goto_9
    goto :goto_b

    .line 189
    :cond_d
    move/from16 v18, v6

    move-object/from16 v19, v7

    .line 209
    .end local v6    # "needsRefill":Z
    .restart local v18    # "needsRefill":Z
    if-nez v15, :cond_e

    if-eqz v12, :cond_e

    .line 210
    sget-object v6, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v6, v12}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 211
    const/4 v13, 0x1

    move/from16 v6, v18

    goto :goto_b

    .line 212
    :cond_e
    if-eqz v15, :cond_11

    if-nez v12, :cond_11

    .line 213
    sget-object v6, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v6, v15}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 214
    const/4 v13, 0x1

    .line 215
    if-nez v10, :cond_10

    if-eqz v11, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v6, v18

    goto :goto_b

    .line 218
    :cond_10
    :goto_a
    const/4 v6, 0x1

    .end local v18    # "needsRefill":Z
    .restart local v6    # "needsRefill":Z
    goto :goto_b

    .line 222
    .end local v6    # "needsRefill":Z
    .restart local v18    # "needsRefill":Z
    :cond_11
    move/from16 v6, v18

    .end local v18    # "needsRefill":Z
    .restart local v6    # "needsRefill":Z
    :goto_b
    if-eqz v13, :cond_14

    .line 223
    if-eqz v12, :cond_13

    .line 224
    invoke-virtual {v4, v12}, Lcom/google/firebase/firestore/model/DocumentSet;->add(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 225
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 226
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    goto :goto_c

    .line 228
    :cond_12
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    goto :goto_c

    .line 231
    :cond_13
    invoke-virtual {v4, v14}, Lcom/google/firebase/firestore/model/DocumentSet;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 232
    invoke-virtual {v3, v14}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 235
    .end local v1    # "oldDocHadPendingMutations":Z
    .end local v2    # "newDocHasPendingMutations":Z
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v12    # "newDoc":Lcom/google/firebase/firestore/model/Document;
    .end local v13    # "changeApplied":Z
    .end local v14    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v15    # "oldDoc":Lcom/google/firebase/firestore/model/Document;
    :cond_14
    :goto_c
    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v7, v19

    goto/16 :goto_3

    .line 238
    .end local v17    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .local v2, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :cond_15
    move-object/from16 v17, v2

    move/from16 v18, v6

    .end local v2    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .end local v6    # "needsRefill":Z
    .restart local v17    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v18    # "needsRefill":Z
    iget-object v1, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-static {v1}, Lcom/google/firebase/firestore/core/View;->getLimit(Lcom/google/firebase/firestore/core/QueryOrPipeline;)Ljava/lang/Long;

    move-result-object v1

    .line 239
    .local v1, "limit":Ljava/lang/Long;
    if-eqz v1, :cond_1d

    .line 240
    iget-object v2, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->isPipeline()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/model/Document;

    .line 245
    .local v7, "doc":Lcom/google/firebase/firestore/model/Document;
    move-object v8, v7

    check-cast v8, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v7    # "doc":Lcom/google/firebase/firestore/model/Document;
    goto :goto_d

    .line 247
    :cond_16
    iget-object v6, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    .line 249
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->pipeline$com_google_firebase_firebase_firestore()Lcom/google/firebase/firestore/RealtimePipeline;

    move-result-object v6

    .line 250
    invoke-virtual {v6, v2}, Lcom/google/firebase/firestore/RealtimePipeline;->evaluate$com_google_firebase_firebase_firestore(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 251
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    iget-object v7, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/QueryOrPipeline;->comparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/firestore/model/DocumentSet;->emptySet(Ljava/util/Comparator;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v7

    .line 252
    .local v7, "newResults":Lcom/google/firebase/firestore/model/DocumentSet;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 253
    .local v12, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {v7, v12}, Lcom/google/firebase/firestore/model/DocumentSet;->add(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v7

    .line 254
    .end local v12    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    goto :goto_e

    .line 256
    :cond_17
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/firestore/model/Document;

    .line 257
    .local v12, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/google/firebase/firestore/model/DocumentSet;->contains(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 258
    invoke-interface {v12}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 259
    sget-object v13, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v13, v12}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 261
    .end local v12    # "doc":Lcom/google/firebase/firestore/model/Document;
    :cond_18
    goto :goto_f

    .line 263
    :cond_19
    move-object v4, v7

    .line 264
    .end local v2    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v7    # "newResults":Lcom/google/firebase/firestore/model/DocumentSet;
    move-object v6, v3

    goto :goto_12

    .line 265
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 266
    .local v6, "absLimit":J
    iget-object v2, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/QueryOrPipeline;

    invoke-static {v2}, Lcom/google/firebase/firestore/core/View;->getLimitType(Lcom/google/firebase/firestore/core/QueryOrPipeline;)Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v2

    .line 267
    .local v2, "limitType":Lcom/google/firebase/firestore/core/Query$LimitType;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v8

    int-to-long v12, v8

    sub-long/2addr v12, v6

    .local v12, "i":J
    :goto_10
    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-lez v8, :cond_1c

    .line 269
    sget-object v8, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v2, v8, :cond_1b

    .line 270
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->getLastDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v8

    goto :goto_11

    .line 271
    :cond_1b
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->getFirstDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v8

    :goto_11
    nop

    .line 272
    .local v8, "oldDoc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v8}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/google/firebase/firestore/model/DocumentSet;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 273
    invoke-interface {v8}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 274
    sget-object v14, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v14, v8}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 267
    .end local v8    # "oldDoc":Lcom/google/firebase/firestore/model/Document;
    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    goto :goto_10

    :cond_1c
    move-object v6, v3

    goto :goto_12

    .line 239
    .end local v2    # "limitType":Lcom/google/firebase/firestore/core/Query$LimitType;
    .end local v6    # "absLimit":J
    .end local v12    # "i":J
    :cond_1d
    move-object v6, v3

    .line 279
    .end local v3    # "newMutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .local v6, "newMutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    :goto_12
    if-eqz v18, :cond_1f

    if-nez p2, :cond_1e

    goto :goto_13

    :cond_1e
    const/4 v12, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v12, 0x1

    :goto_14
    const-string v2, "View was refilled using docs that themselves needed refilling."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v12, v2, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v3, Lcom/google/firebase/firestore/core/View$DocumentChanges;

    const/4 v8, 0x0

    move/from16 v7, v18

    .end local v18    # "needsRefill":Z
    .local v7, "needsRefill":Z
    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/core/View$DocumentChanges;-><init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZLcom/google/firebase/firestore/core/View$1;)V

    .end local v7    # "needsRefill":Z
    .restart local v18    # "needsRefill":Z
    return-object v3
.end method

.method getLimboDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getSyncState()Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    return-object v0
.end method

.method getSyncedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method
