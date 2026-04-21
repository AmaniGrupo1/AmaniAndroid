.class public Lcom/google/firebase/database/core/view/ViewProcessor;
.super Ljava/lang/Object;
.source "ViewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;,
        Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;
    }
.end annotation


# static fields
.field private static NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 674
    new-instance v0, Lcom/google/firebase/database/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 47
    return-void
.end method

.method private ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 9
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "ackPath"    # Lcom/google/firebase/database/core/Path;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/google/firebase/database/core/view/ViewCache;"
        }
    .end annotation

    .line 539
    .local p3, "affectedTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Ljava/lang/Boolean;>;"
    invoke-virtual {p4, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    return-object p1

    .line 544
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v7

    .line 548
    .local v7, "filterServerNode":Z
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 549
    .local v0, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 551
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 552
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    :cond_2
    nop

    .line 556
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 553
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p2    # "ackPath":Lcom/google/firebase/database/core/Path;
    .end local p4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p5    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .end local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local v2, "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v3, "ackPath":Lcom/google/firebase/database/core/Path;
    .local v5, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v6, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local v8, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1

    .line 561
    .end local v2    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v3    # "ackPath":Lcom/google/firebase/database/core/Path;
    .end local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .end local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p2    # "ackPath":Lcom/google/firebase/database/core/Path;
    .restart local p4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local p5    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    :cond_3
    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p2    # "ackPath":Lcom/google/firebase/database/core/Path;
    .end local p4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p5    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .end local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v2    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v3    # "ackPath":Lcom/google/firebase/database/core/Path;
    .restart local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 564
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 565
    .local p1, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, p1

    .end local p1    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    .local v4, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 566
    .local p1, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    invoke-virtual {v4, p4, p5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    .line 567
    .end local p1    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 568
    :cond_4
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1

    .line 577
    .end local v4    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_5
    return-object v2

    .line 581
    .end local v2    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v3    # "ackPath":Lcom/google/firebase/database/core/Path;
    .end local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .end local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local p1, "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p2    # "ackPath":Lcom/google/firebase/database/core/Path;
    .restart local p4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local p5    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    :cond_6
    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .end local p1    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p2    # "ackPath":Lcom/google/firebase/database/core/Path;
    .end local p4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p5    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .end local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v2    # "viewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v3    # "ackPath":Lcom/google/firebase/database/core/Path;
    .restart local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p1

    .line 582
    .local p1, "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, p1

    .end local p1    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    .restart local v4    # "changedChildren":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 583
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/database/core/Path;

    .line 584
    .local p4, "mergePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v3, p4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p5

    .line 585
    .local p5, "serverCachePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v0, p5}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result p6

    if-eqz p6, :cond_7

    .line 586
    nop

    .line 587
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p6

    invoke-interface {p6, p5}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p6

    invoke-virtual {v4, p4, p6}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p6

    move-object v4, p6

    .line 589
    .end local p1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Ljava/lang/Boolean;>;"
    .end local p4    # "mergePath":Lcom/google/firebase/database/core/Path;
    .end local p5    # "serverCachePath":Lcom/google/firebase/database/core/Path;
    :cond_7
    goto :goto_1

    .line 590
    :cond_8
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1
.end method

.method private applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 27
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    return-object p1

    .line 482
    :cond_0
    move-object/from16 v0, p1

    .line 483
    .local v0, "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v4, "Can\'t have a merge that is an overwrite"

    invoke-static {v1, v4}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    move-object/from16 v1, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .local v1, "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    goto :goto_1

    .line 488
    .end local v1    # "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :cond_2
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v1, v4, v5}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    .line 490
    .restart local v1    # "actualMerge":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 491
    .local v6, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v7

    .line 492
    .local v7, "childCompoundWrites":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v10, v0

    .end local v0    # "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v10, "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    .local v0, "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 494
    .local v9, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v6, v9}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 495
    invoke-interface {v6, v9}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 496
    .local v11, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v12, v11}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    .line 497
    .local v12, "newChild":Lcom/google/firebase/database/snapshot/Node;
    move-object v13, v11

    .end local v11    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .local v13, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    new-instance v11, Lcom/google/firebase/database/core/Path;

    new-array v14, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v9, v14, v3

    invoke-direct {v11, v14}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 498
    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, v9

    move-object/from16 v18, v13

    move-object/from16 v9, p0

    move-object/from16 v13, p4

    .end local v9    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v13    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .local v17, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .local v18, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-direct/range {v9 .. v16}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v10

    goto :goto_3

    .line 494
    .end local v12    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v17    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v18    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v9    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_3
    move-object/from16 v17, v9

    .line 507
    .end local v0    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    .end local v9    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :goto_3
    goto :goto_2

    .line 508
    :cond_4
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v20, v10

    .end local v10    # "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v20, "curViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 509
    .local v8, "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 510
    .restart local v9    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/database/core/CompoundWrite;

    .line 511
    .local v10, "childCompoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    nop

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 513
    invoke-virtual {v10}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    if-nez v11, :cond_5

    move v11, v2

    goto :goto_5

    :cond_5
    move v11, v3

    .line 514
    .local v11, "isUnknownDeepMerge":Z
    :goto_5
    invoke-interface {v6, v9}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v12

    if-nez v12, :cond_6

    if-nez v11, :cond_6

    .line 515
    invoke-interface {v6, v9}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    .line 516
    .local v12, "serverChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v13, v12}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v22

    .line 517
    .local v22, "newChild":Lcom/google/firebase/database/snapshot/Node;
    new-instance v13, Lcom/google/firebase/database/core/Path;

    new-array v14, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v9, v14, v3

    invoke-direct {v13, v14}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 518
    move-object/from16 v19, p0

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move/from16 v25, p6

    move-object/from16 v26, p7

    move-object/from16 v21, v13

    invoke-direct/range {v19 .. v26}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v13

    move-object/from16 v20, v13

    .line 527
    .end local v8    # "childMerge":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/CompoundWrite;>;"
    .end local v9    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v10    # "childCompoundWrite":Lcom/google/firebase/database/core/CompoundWrite;
    .end local v11    # "isUnknownDeepMerge":Z
    .end local v12    # "serverChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v22    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_6
    goto :goto_4

    .line 529
    :cond_7
    return-object v20
.end method

.method private applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 15
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "filterServerNode"    # Z
    .param p7, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 290
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    .line 292
    .local v2, "oldServerSnap":Lcom/google/firebase/database/core/view/CacheNode;
    iget-object v4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v4

    :goto_0
    move-object v5, v4

    .line 293
    .local v5, "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_1

    .line 294
    nop

    .line 296
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 297
    invoke-interface {v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v7

    .line 295
    invoke-interface {v5, v4, v7, v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    move-object v10, v4

    move-object v9, v5

    move-object/from16 v4, p2

    .local v4, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_1

    .line 299
    .end local v4    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_1
    invoke-interface {v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    nop

    .line 303
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v12

    .line 302
    const-string v7, "An empty path should have been caught in the other branch"

    invoke-static {v4, v7}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    .line 305
    .local v4, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 306
    .local v7, "updatePath":Lcom/google/firebase/database/core/Path;
    nop

    .line 307
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    invoke-interface {v8, v7, v1}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 308
    .local v8, "newChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v9

    .line 309
    .local v9, "newServerNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 310
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    invoke-interface {v5, v10, v9, v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 311
    .end local v7    # "updatePath":Lcom/google/firebase/database/core/Path;
    .end local v8    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v9    # "newServerNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v4, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    move-object v10, v4

    move-object v9, v5

    move-object/from16 v4, p2

    goto :goto_1

    .line 312
    .end local v4    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    .line 313
    .local v7, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v6

    if-le v6, v12, :cond_3

    .line 315
    return-object v0

    .line 317
    :cond_3
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v9

    .line 318
    .local v9, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-interface {v6, v7}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v13

    .line 319
    .local v13, "childNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v13, v9, v1}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 320
    .local v8, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 321
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    move-object v9, v5

    move-object v10, v6

    .local v6, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_1

    .line 323
    .end local v6    # "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_4
    nop

    .line 325
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    sget-object v10, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    .line 324
    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    move-object v14, v9

    move-object v9, v5

    move-object v5, v14

    move-object v10, v6

    .line 333
    .end local v5    # "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .end local v7    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v8    # "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v13    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    .local v9, "serverFilter":Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .local v10, "newServerCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_1
    nop

    .line 336
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 337
    :cond_6
    :goto_2
    invoke-interface {v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v5

    .line 334
    invoke-virtual {v0, v10, v12, v5}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v5

    .line 338
    .local v5, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    new-instance v7, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v6, p4

    move-object/from16 v11, p5

    invoke-direct {v7, v6, v5, v11}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 340
    .local v7, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p0

    move-object/from16 v8, p7

    .end local v5    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v4, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v12

    return-object v12
.end method

.method private applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 12
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedChildren"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 429
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t have a merge that is an overwrite"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 430
    move-object v0, p1

    .line 431
    .local v0, "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v0

    .end local v0    # "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v3, "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 432
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    .line 433
    .local v4, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    nop

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/firebase/database/snapshot/Node;

    .line 435
    move-object v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    .line 443
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v4    # "writePath":Lcom/google/firebase/database/core/Path;
    :cond_1
    goto :goto_1

    .line 445
    :cond_2
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v3

    .end local v3    # "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v6, "currentViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 446
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 447
    .local v7, "writePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 448
    nop

    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/firebase/database/snapshot/Node;

    .line 449
    move-object v5, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v2

    move-object v6, v2

    .line 457
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v7    # "writePath":Lcom/google/firebase/database/core/Path;
    :cond_3
    goto :goto_2

    .line 458
    :cond_4
    return-object v6
.end method

.method private applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 9
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "changedSnap"    # Lcom/google/firebase/database/snapshot/Node;
    .param p4, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p5, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p6, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 351
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 353
    .local v0, "oldEventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    new-instance v1, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v1, p4, p1, p5}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    move-object v7, v1

    .line 355
    .local v7, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 357
    .local v1, "newIndexed":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 359
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 358
    invoke-interface {v2, v3, v1, p6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 360
    .local v2, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v3, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v4, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 361
    .end local v2    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object v8, p6

    goto/16 :goto_1

    .line 362
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    .line 363
    .local v4, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 365
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 366
    .local v1, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 368
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    .line 367
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 369
    .local v1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object v8, p6

    goto/16 :goto_1

    .line 370
    .end local v1    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 371
    .local v6, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 373
    .local v1, "oldChild":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v6}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    move-object v2, p3

    move-object v5, v2

    .local v2, "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 377
    .end local v2    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_2
    invoke-interface {v7, v4}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 378
    .local v2, "childNode":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v2, :cond_4

    .line 379
    invoke-virtual {v6}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    invoke-virtual {v6}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    move-object v3, v2

    move-object v5, v3

    .local v3, "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 385
    .end local v3    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_3
    invoke-interface {v2, v6, p3}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object v5, v3

    .restart local v3    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 389
    .end local v3    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_4
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    move-object v5, v3

    .line 392
    .end local v2    # "childNode":Lcom/google/firebase/database/snapshot/Node;
    .local v5, "newChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 393
    iget-object v2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 395
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 394
    move-object v8, p6

    .end local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local v8, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-interface/range {v2 .. v8}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p6

    .line 401
    .local p6, "newEventSnap":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 403
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v3

    .line 402
    invoke-virtual {p1, p6, v2, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p6

    .line 404
    .local p6, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object v1, p6

    goto :goto_1

    .line 405
    .end local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local p6, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    :cond_5
    move-object v8, p6

    .end local p6    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    move-object p6, p1

    move-object v1, p6

    .line 409
    .end local v4    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v5    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v6    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .local v1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_1
    return-object v1
.end method

.method private static cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .locals 1
    .param p0, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;

    .line 413
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    return v0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 18
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "changePath"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "source"    # Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v4

    .line 194
    .local v4, "oldEventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v3, v2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 196
    return-object v1

    .line 199
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 201
    nop

    .line 202
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v5

    .line 201
    const-string v8, "If change path is empty, we must have complete server data"

    invoke-static {v5, v8}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 211
    .local v5, "serverCache":Lcom/google/firebase/database/snapshot/Node;
    instance-of v8, v5, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v8, :cond_1

    move-object v8, v5

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v8

    .line 212
    .local v8, "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    invoke-virtual {v3, v8}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 213
    .end local v8    # "completeChildren":Lcom/google/firebase/database/snapshot/Node;
    .local v5, "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 214
    .end local v5    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    :cond_2
    nop

    .line 215
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 217
    .restart local v5    # "nodeWithLocalWrites":Lcom/google/firebase/database/snapshot/Node;
    :goto_1
    iget-object v8, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v8}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    .line 218
    .local v8, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v9, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 220
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    .line 219
    move-object/from16 v11, p5

    invoke-interface {v9, v10, v8, v11}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .line 221
    .end local v8    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local v5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto/16 :goto_6

    .line 222
    .end local v5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_3
    move-object/from16 v11, p5

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v13

    .line 223
    .local v13, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v13}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 224
    nop

    .line 225
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v5

    if-ne v5, v7, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    .line 224
    :goto_2
    const-string v8, "Can\'t have a priority with additional path components"

    invoke-static {v5, v8}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 227
    .local v5, "oldEventNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 229
    .local v8, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 230
    invoke-virtual {v3, v2, v5, v8}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 231
    .local v9, "updatedPriority":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v9, :cond_5

    .line 232
    iget-object v10, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 233
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    invoke-interface {v10, v12, v9}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    move-object v5, v10

    .local v10, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_3

    .line 236
    .end local v10    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_5
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    move-object v5, v10

    .line 238
    .end local v8    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v9    # "updatedPriority":Lcom/google/firebase/database/snapshot/Node;
    .local v5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_3
    goto :goto_6

    .line 239
    .end local v5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_6
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v15

    .line 242
    .local v15, "childChangePath":Lcom/google/firebase/database/core/Path;
    invoke-virtual {v4, v13}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 243
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 244
    .local v5, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 246
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 245
    invoke-virtual {v3, v2, v8, v5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 247
    .local v8, "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v8, :cond_7

    .line 248
    nop

    .line 250
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 251
    invoke-interface {v9, v13}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 252
    invoke-interface {v9, v15, v8}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .local v9, "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_4

    .line 255
    .end local v9    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_7
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-interface {v9, v13}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    .line 257
    .end local v5    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v8    # "eventChildUpdate":Lcom/google/firebase/database/snapshot/Node;
    .restart local v9    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_4
    move-object v14, v9

    goto :goto_5

    .line 258
    .end local v9    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :cond_8
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    invoke-virtual {v3, v13, v5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    move-object v14, v9

    .line 260
    .local v14, "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_5
    if-eqz v14, :cond_9

    .line 261
    iget-object v11, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 263
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v12

    .line 262
    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-interface/range {v11 .. v17}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .local v5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_6

    .line 271
    .end local v5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_9
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .line 275
    .end local v13    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v14    # "newEventChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v15    # "childChangePath":Lcom/google/firebase/database/core/Path;
    .restart local v5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_6
    nop

    .line 277
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    move v6, v7

    :cond_b
    iget-object v7, v0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 278
    invoke-interface {v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v7

    .line 275
    invoke-virtual {v1, v5, v6, v7}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v6

    return-object v6
.end method

.method private listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 10
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "serverCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 663
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 664
    .local v0, "oldServerNode":Lcom/google/firebase/database/core/view/CacheNode;
    nop

    .line 666
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 667
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 668
    :goto_1
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v3

    .line 665
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v5

    .line 669
    .local v5, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    sget-object v8, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    .end local p2    # "path":Lcom/google/firebase/database/core/Path;
    .end local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p5    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local v6, "path":Lcom/google/firebase/database/core/Path;
    .local v7, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v9, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    return-object p2
.end method

.method private maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V
    .locals 4
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "newViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 173
    .local v0, "eventSnap":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 175
    .local v1, "isLeafOrEmpty":Z
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 182
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v1    # "isLeafOrEmpty":Z
    :cond_4
    return-void
.end method


# virtual methods
.method public applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    .locals 9
    .param p1, "oldViewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "operation"    # Lcom/google/firebase/database/core/operation/Operation;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteCache"    # Lcom/google/firebase/database/snapshot/Node;

    .line 65
    new-instance v0, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;-><init>()V

    move-object v7, v0

    .line 67
    .local v7, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 162
    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p4    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local v2, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v5, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v6, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown operation: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 155
    .end local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local p4    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    :pswitch_0
    nop

    .line 157
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 156
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v7

    .end local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .end local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p4    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v4, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v5, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local v6, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    .line 158
    move-object v6, v5

    move-object v5, v4

    .end local v4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v5, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v6, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local p1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_2

    .line 132
    .end local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local p1, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local p4    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    :pswitch_1
    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local p4    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    move-object p1, p2

    check-cast p1, Lcom/google/firebase/database/core/operation/AckUserWrite;

    .line 133
    .local p1, "ackUserWrite":Lcom/google/firebase/database/core/operation/AckUserWrite;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/AckUserWrite;->isRevert()Z

    move-result p3

    if-nez p3, :cond_0

    .line 134
    nop

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 138
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getAffectedTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    .line 135
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p3

    move-object p1, p3

    .local p3, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_2

    .line 143
    .end local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_0
    nop

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 144
    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v5, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local v6, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p3

    .line 151
    move-object p4, v2

    move-object v6, v5

    move-object v5, v4

    .end local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v4    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v5, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local v6, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .restart local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local p4, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object p1, p3

    goto/16 :goto_2

    .line 103
    .end local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local p1, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local p3, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local p4, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    :pswitch_2
    move-object v5, p3

    move-object v6, p4

    move-object p4, p1

    .end local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local p4, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object p1, p2

    check-cast p1, Lcom/google/firebase/database/core/operation/Merge;

    .line 104
    .local p1, "merge":Lcom/google/firebase/database/core/operation/Merge;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 105
    nop

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 109
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    .line 106
    move-object v1, p0

    move-object v2, p4

    .end local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p3

    move-object p1, p3

    .end local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local p3, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto/16 :goto_2

    .line 114
    .end local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result p3

    invoke-static {p3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 116
    nop

    .line 117
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    move v1, v2

    .line 118
    .local v1, "filterServerNode":Z
    :cond_3
    nop

    .line 121
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    .line 119
    move-object v2, p4

    move-object v8, v7

    move v7, v1

    move-object v1, p0

    .end local v1    # "filterServerNode":Z
    .end local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v7, "filterServerNode":Z
    .local v8, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p3

    .line 128
    move-object v7, v8

    .end local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local v7, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object p1, p3

    goto/16 :goto_2

    .line 70
    .end local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .end local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local p1, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local p3, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .local p4, "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    :pswitch_3
    move-object v5, p3

    move-object v6, p4

    move-object p4, p1

    .end local p1    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .end local p3    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v5    # "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    .restart local v6    # "optCompleteCache":Lcom/google/firebase/database/snapshot/Node;
    .local p4, "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object p1, p2

    check-cast p1, Lcom/google/firebase/database/core/operation/Overwrite;

    .line 71
    .local p1, "overwrite":Lcom/google/firebase/database/core/operation/Overwrite;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 72
    nop

    .line 75
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 73
    move-object v1, p0

    move-object v2, p4

    .end local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p3

    move-object p1, p3

    .end local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local p3, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    goto :goto_2

    .line 81
    .end local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromServer()Z

    move-result p3

    invoke-static {p3}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 85
    nop

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result p3

    if-nez p3, :cond_6

    .line 87
    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 88
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_1

    :cond_6
    :goto_0
    move v1, v2

    .line 89
    .restart local v1    # "filterServerNode":Z
    :goto_1
    nop

    .line 92
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 90
    move-object v2, p4

    move-object v8, v7

    move v7, v1

    move-object v1, p0

    .end local v1    # "filterServerNode":Z
    .end local p4    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .restart local v2    # "oldViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local v7, "filterServerNode":Z
    .restart local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p3

    .line 99
    move-object v7, v8

    .end local v8    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local v7, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    move-object p1, p3

    .line 165
    .end local p3    # "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    .local p1, "newViewCache":Lcom/google/firebase/database/core/view/ViewCache;
    :goto_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    .local p3, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Change;>;"
    invoke-direct {p0, v2, p1, p3}, Lcom/google/firebase/database/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    .line 167
    new-instance p4, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    invoke-direct {p4, p1, p3}, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    return-object p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .locals 8
    .param p1, "viewCache"    # Lcom/google/firebase/database/core/view/ViewCache;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "writesCache"    # Lcom/google/firebase/database/core/WriteTreeRef;
    .param p4, "optCompleteServerCache"    # Lcom/google/firebase/database/snapshot/Node;
    .param p5, "accumulator"    # Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    .line 607
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    return-object p1

    .line 610
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v0, p3, p1, p4}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    move-object v6, v0

    .line 612
    .local v6, "source":Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 614
    .local v2, "oldEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v7, p5

    goto/16 :goto_2

    .line 624
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 625
    .local v3, "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 626
    .local v0, "newChild":Lcom/google/firebase/database/snapshot/Node;
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 629
    :cond_2
    move-object v4, v0

    .end local v0    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .local v4, "newChild":Lcom/google/firebase/database/snapshot/Node;
    :goto_0
    if-eqz v4, :cond_3

    .line 630
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 632
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    .line 631
    move-object v7, p5

    .end local p5    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local v7, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    invoke-interface/range {v1 .. v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p5

    move-object v0, v4

    .end local v4    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v0    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .local p5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_1

    .line 633
    .end local v0    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v4    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .local p5, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    :cond_3
    move-object v7, p5

    move-object v0, v4

    .end local v4    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local p5    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v0    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .restart local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    invoke-interface {p5, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 635
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 637
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    .line 636
    invoke-interface/range {v1 .. v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p5

    .local p5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    goto :goto_1

    .line 639
    .end local p5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :cond_4
    move-object p5, v2

    .line 641
    .restart local p5    # "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    :goto_1
    invoke-virtual {p5}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 643
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 644
    .local v1, "complete":Lcom/google/firebase/database/snapshot/Node;
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 645
    iget-object v4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 646
    .local v4, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v5, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v5, p5, v4, v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p5

    goto :goto_4

    .line 614
    .end local v0    # "newChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v1    # "complete":Lcom/google/firebase/database/snapshot/Node;
    .end local v3    # "childKey":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v4    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .end local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .local p5, "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    :cond_5
    move-object v7, p5

    .line 616
    .end local p5    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    .restart local v7    # "accumulator":Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;
    :goto_2
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 617
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    .local p5, "newNode":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_3

    .line 619
    .end local p5    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    .line 621
    .restart local p5    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    :goto_3
    iget-object v0, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v0}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 622
    .local v0, "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v1, v2, v0, v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p5

    .line 623
    .end local v0    # "indexedNode":Lcom/google/firebase/database/snapshot/IndexedNode;
    .local p5, "newEventCache":Lcom/google/firebase/database/snapshot/IndexedNode;
    nop

    .line 650
    :cond_7
    :goto_4
    nop

    .line 651
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 652
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x1

    .line 653
    .local v0, "complete":Z
    :goto_6
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v1

    invoke-virtual {p1, p5, v0, v1}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    return-object v1
.end method
